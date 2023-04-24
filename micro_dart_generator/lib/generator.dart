import 'dart:io';

import 'package:front_end/src/api_unstable/vm.dart';

import 'package:front_end/src/api_prototype/kernel_generator.dart'
    show kernelForProgramInternal;
import 'package:kernel/kernel.dart';
import 'package:micro_dart_compiler/util.dart';
import 'package:micro_dart_compiler/compiler/ast/ast.dart';
import 'package:micro_dart_generator/utils.dart';

class LibraryPrefix {
  final Map<String, String> _libraryPrefixList = {};

  int index = 0;
  String lookupPrefix(String libraryUri) {
    if (libraryUri == "dart:core") {
      return "";
    }
    if (_libraryPrefixList.containsKey(libraryUri)) {
      return _libraryPrefixList[libraryUri]!;
    }
    _libraryPrefixList[libraryUri] = "p${index++}";
    return _libraryPrefixList[libraryUri]!;
  }

  String generate() {
    StringBuffer buffer = StringBuffer();
    buffer.write("import 'dart:core';\n");
    _libraryPrefixList.forEach((key, value) {
      buffer.write("import '$key' as $value;\n");
    });
    return buffer.toString();
  }

  void init() {
    _libraryPrefixList.clear();
  }
}

class MicroExtension {
  final String key;
  final String libraryUri;
  final String className;
  final String procedureName;
  final bool isGetter;
  final bool isSetter;
  final bool isStatic;

  const MicroExtension(
    this.key,
    this.libraryUri,
    this.className,
    this.procedureName,
    this.isGetter,
    this.isSetter,
    this.isStatic,
  );
}

class ExtensionHelper {
  final Map<String, MicroExtension> extensionLibraryList = {};

  final Set<String> _generated = Set();

  bool isExtension(String name) {
    return extensionLibraryList.containsKey(name);
  }

  bool isGenerated(String key) {
    return _generated.contains(key);
  }

  void generated(String key) {
    _generated.add(key);
  }

  void add(Extension extension) {
    var libraryUri = "";
    var className = "";
    var classNamedName = "";
    final dartType = extension.onType;

    if (dartType is InterfaceType) {
      classNamedName = dartType.className.asClass.getNamedName();
      className = dartType.className.asClass.name;
      libraryUri = dartType.className.asClass.stringLibraryUri;
    }

    extension.members.forEach((element) {
      var key = "$classNamedName:procedure@${element.name}";
      var procedureName = element.name.text;
      bool isGetter = element.kind == ExtensionMemberKind.Getter;
      bool isSetter = element.kind == ExtensionMemberKind.Setter;
      bool isStatic = element.isStatic;
      if (isStatic) {
        className = extension.name;
        libraryUri = element.member.asProcedure.stringLibraryUri;
        classNamedName =
            key = "$libraryUri@$className:procedure@${element.name}";
      }
      extensionLibraryList[element.member.asProcedure.getNamedName()] =
          MicroExtension(key, libraryUri, className, procedureName, isGetter,
              isSetter, isStatic);
    });
  }
}

final List<String> _ingoreLibraries = [
  "dart:async",
  "dart:collection",
  "dart:convert",
  "dart:developer",
  "dart:ffi",
  "dart:isolate",
  "dart:math",
  "dart:mirrors",
  "dart:typed_data",
  "dart:nativewrappers",
  "dart:io",
  "dart:ui",
  "dart:vmservice_io",
  "dart:_internal",
  //"dart:core",
];

final List<String> _operatorFunctions = [
  "&",
  "|",
  "^",
  "==",
  "+",
  "-",
  "*",
  "~/",
  "<",
  ">",
  "<=",
  ">=",
];

void scanDartFile(Directory root, List<Uri> fileList) {
  final files = root.listSync();

  files.forEach((element) {
    if (element is File && element.path.endsWith('.dart')) {
      fileList.add(Uri.parse("file://${element.path}"));
    } else if (element is Directory) {
      scanDartFile(element, fileList);
    }
  });
}

class MicroDartGenerator {
  final libraryPrefix = LibraryPrefix();
  final extensionHelper = ExtensionHelper();

  Future generate(String projectPath, String mainFilePath,
      String flatterPatchedSdk, String output) async {
    final Uri projectUri = resolveInputUri(projectPath);

    final Uri mainFileUri = projectUri.resolve(mainFilePath);
    final Uri packagesFileUri =
        projectUri.resolve(".dart_tool/package_config.json");

    final Uri sdkRoot = ensureFolderPath(flatterPatchedSdk);
    final Uri sdkSummary = sdkRoot.resolve('platform_strong.dill');
    final CompilerOptions options = CompilerOptions()
      ..sdkRoot = sdkRoot
      ..sdkSummary = sdkSummary
      ..verbose = false
      ..fileSystem = StandardFileSystem.instance
      ..packagesFileUri = packagesFileUri
      ..nnbdMode = NnbdMode.Strong;
    var result = await kernelForProgramInternal(mainFileUri, options,
        additionalSources: [], requireMain: false);

    generateCompoment(result!.component!, output);
  }

  Future generateModule(String modulePath, String flatterPatchedSdk,
      String packageFilePath, String output) async {
    final Uri sdkRoot = ensureFolderPath(flatterPatchedSdk);
    final Uri sdkSummary = sdkRoot.resolve('platform_strong.dill');
    final Uri packagesFileUri = resolveInputUri(packageFilePath);
    final CompilerOptions options = CompilerOptions()
      ..sdkRoot = sdkRoot
      ..sdkSummary = sdkSummary
      ..verbose = false
      ..packagesFileUri = packagesFileUri
      ..fileSystem = StandardFileSystem.instance
      ..nnbdMode = NnbdMode.Strong;

    final List<Uri> sources = [];
    var root = Directory("$modulePath/lib");
    scanDartFile(root, sources);
    var result = await kernelForModule(sources, options);

    generateCompoment(result!.component!, output);
  }

  void generateCompoment(Component component, String output) {
    component.libraries.removeWhere((element) {
      if (_ingoreLibraries.contains(element.importUri.toString()) ||
          element.importUri.path.startsWith("_")) {
        return true;
      }

      print(element.importUri.toString());
      return false;
    });

    libraryPrefix.init();

    final List<NamedNode> _topLecelDeclarations = [];

    component.libraries.forEach((library) {
      if (library.importUri.path.toString().startsWith("_") ||
          library.importUri.toString().startsWith("file")) {
        return;
      }

      library.extensions.forEach((node) {
        if (node.name.startsWith("_") || isDeprecated(node)) {
          return;
        }

        extensionHelper.add(node);
      });

      library.procedures.forEach((node) {
        if (node.name.text.startsWith("_") || isDeprecated(node)) {
          return;
        }
        if (node.isAbstract) {
          return;
        }
        _topLecelDeclarations.add(node);
      });

      library.fields.forEach((node) {
        if (node.name.text.startsWith("_") || isDeprecated(node)) {
          return;
        }
        _topLecelDeclarations.add(node);
      });

      library.classes.forEach((clazz) {
        if (clazz.name.startsWith("_") || isDeprecated(clazz)) {
          return;
        }
        if (clazz.isAnonymousMixin) {
          return;
        }

        clazz.procedures.forEach((procedure) {
          if (procedure.name.text.startsWith("_") || isDeprecated(clazz)) {
            return;
          }
          procedure.annotations.forEach((element) {});
          if (procedure.isAbstract) {
            return;
          }
          _topLecelDeclarations.add(procedure);
        });

        clazz.fields.forEach((field) {
          if (field.name.text.startsWith("_") || isDeprecated(clazz)) {
            return;
          }
          if (field.isAbstract) {
            return;
          }
          _topLecelDeclarations.add(field);
        });
        //对类的构造函数进行索引

        if (!clazz.isAbstract) {
          clazz.constructors.forEach((constructor) {
            if (constructor.name.text.startsWith("_") || isDeprecated(clazz)) {
              return;
            }

            _topLecelDeclarations.add(constructor);
          });
          //对类的构造工厂进行索引
          clazz.redirectingFactories.forEach((redirectingFactory) {
            if (redirectingFactory.name.text.startsWith("_") ||
                isDeprecated(clazz)) {
              return;
            }
            _topLecelDeclarations.add(redirectingFactory);
          });
        }
      });
    });
    StringBuffer buffer = StringBuffer();

    buffer.write("var data = { \n");
    _topLecelDeclarations.forEach((element) {
      buffer.write(generateNamedNode(element));
    });

    buffer.write("};");

    File(output).writeAsStringSync("${libraryPrefix.generate()}$buffer");
  }

  String generateNamedNode(NamedNode node) {
    if (node is Procedure) {
      return generateProcedure(node);
    } else if (node is Constructor) {
      return generateConstructor(node);
    } else if (node is RedirectingFactory) {
      return generateRedirectingFactory(node);
    } else if (node is Extension) {
      return generateExtension(node);
    }
    return "";
  }

  void generateFunction(String name, FunctionNode function, StringBuffer buffer,
      {required bool isStatic,
      required bool isGetter,
      required bool isSetter,
      bool isExtension = false}) {
    if (isExtension && !isStatic) {
      function.positionalParameters.removeLast();
    }
    int totalParamCount =
        function.positionalParameters.length + function.namedParameters.length;

    if (!isStatic) {
      buffer.write("instance");
      if (_operatorFunctions.contains(name)) {
        buffer.write(name);
        buffer.write("p[0],\n");
        return;
      } else if (name == "[]") {
        buffer.write("[p[0]],\n");
        return;
      } else if (name == "[]=") {
        buffer.write("[p[0]]=p[1],\n");
        return;
      } else if (name == "unary-") {
        buffer.write("-instance,\n");
        return;
      } else if (name == "unary+") {
        buffer.write("+instance,\n");
        return;
      } else {
        buffer.write(".");
      }
    }

    buffer.write("$name");
    if (isGetter) {
      buffer.write(",\n");
      return;
    } else if (isSetter) {
      buffer.write("=p[0],\n");
      return;
    }
    buffer.write("(");
    int index = 0;
    function.positionalParameters.forEach((element) {
      buffer.write("p[$index]");
      index++;
      if (index < totalParamCount) {
        buffer.write(",");
      }
    });

    if (function.namedParameters.isNotEmpty) {
      function.namedParameters.forEach((element) {
        buffer.write("${element.name}:n['${element.name}']");
        index++;
        if (index < totalParamCount) {
          buffer.write(",");
        }
      });
    }

    buffer.write("),\n");
  }

  String generateExtensionProcedure(Procedure node) {
    var ext = extensionHelper.extensionLibraryList[node.getNamedName()];
    if (ext == null) {
      return "";
    }
    if (extensionHelper.isGenerated(ext.key)) {
      return "";
    }
    var libraryName = libraryPrefix.lookupPrefix(ext.libraryUri);
    if (libraryName.isNotEmpty) {
      libraryName = "$libraryName.";
    }
    var className = ext.className;
    var procedureName = ext.procedureName;
    var name = "$procedureName";
    StringBuffer buffer = StringBuffer();
    if (ext.isStatic) {
      if (className.isNotEmpty && procedureName.isNotEmpty) {
        className = "$className.";
      }
      name = "$libraryName$className$procedureName";
      buffer.write("(p,n)=>");
    } else {
      name = "$procedureName";
      buffer.write("($libraryName$className instance,p,n)=>");
    }

    generateFunction(name, node.function, buffer,
        isGetter: ext.isGetter,
        isSetter: ext.isSetter,
        isStatic: ext.isStatic,
        isExtension: true);
    extensionHelper.generated(ext.key);
    return "'${ext.key}':${buffer.toString()}";
  }

  String generateProcedure(Procedure node) {
    if (extensionHelper.isExtension(node.getNamedName())) {
      return generateExtensionProcedure(node);
    }
    StringBuffer buffer = StringBuffer();
    var libraryName = libraryPrefix.lookupPrefix(node.stringLibraryUri);

    if (libraryName.isNotEmpty) {
      libraryName = "$libraryName.";
    }
    var className = "";
    var procedureName = node.name.text;
    var name = "";

    if (node.isStatic) {
      className = node.stringClassName ?? "";
      if (className.isNotEmpty && procedureName.isNotEmpty) {
        className = "$className.";
      }

      name = "$libraryName$className$procedureName";
      buffer.write("(p,n)=>");
    } else {
      className = (node.parent as Class).name;
      name = "$procedureName";
      buffer.write("($libraryName$className instance,p,n)=>");
    }

    generateFunction(name, node.function, buffer,
        isGetter: node.isGetter,
        isSetter: node.isSetter,
        isStatic: node.isStatic);
    return "'${node.getNamedName()}':${buffer.toString()}";
  }

  String generateConstructor(Constructor node) {
    StringBuffer buffer = StringBuffer();

    var name = "";
    var libraryName = libraryPrefix.lookupPrefix(node.stringLibraryUri);
    if (libraryName.isNotEmpty) {
      libraryName = "$libraryName.";
    }
    buffer.write("(p,n)=>");
    if (node.name.text.isEmpty) {
      name = "$libraryName${node.stringClassName}";
    } else {
      if (node.stringClassName == null) {
        name = "$libraryName${node.name.text}";
      } else {
        name = "$libraryName${node.stringClassName}.${node.name.text}";
      }
    }

    generateFunction(name, node.function, buffer,
        isGetter: false, isSetter: false, isStatic: true);
    return "'${node.getNamedName()}':${buffer.toString()}";
  }

  String generateRedirectingFactory(RedirectingFactory node) {
    StringBuffer buffer = StringBuffer();

    var name = "";
    var libraryName = libraryPrefix.lookupPrefix(node.stringLibraryUri);
    if (libraryName.isNotEmpty) {
      libraryName = "$libraryName.";
    }
    buffer.write("(p,n)=>");
    if (node.name.text.isEmpty) {
      name = "$libraryName${node.stringClassName}";
    } else {
      if (node.stringClassName == null) {
        name = "$libraryName${node.name.text}";
      } else {
        name = "$libraryName${node.stringClassName}.${node.name.text}";
      }
    }

    generateFunction(name, node.function, buffer,
        isGetter: false, isSetter: false, isStatic: true);
    return "'${node.getNamedName()}':${buffer.toString()}";
  }

  String generateExtension(Extension node) {
    return "";
  }
}
