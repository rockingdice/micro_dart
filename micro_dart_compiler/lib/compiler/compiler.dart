import 'package:front_end/src/api_unstable/vm.dart';
import 'package:front_end/src/testing/compiler_common.dart';
import 'package:front_end/src/api_prototype/kernel_generator.dart'
    show kernelForProgramInternal;
import 'package:kernel/ast.dart';
import 'package:kernel/core_types.dart';
import 'package:micro_dart_compiler/compiler/program.dart';

import '../test/print_tramsformer.dart';
import 'context.dart';
import 'namednode.dart';

class MicroCompiler {
  void compilePlugin(Uri mainSource, List<Uri> additionalSources,
      String pluginUri, CompilerOptions compilerOptions) async {
    var result = await kernelForProgramInternal(mainSource, compilerOptions,
        additionalSources: additionalSources, requireMain: false);

    transformComponent(pluginUri, result!.component!);
  }

  Future<Program> compileSource(String pluginUri, CompilerOptions options,
      Map<String, String> sources) async {
    var component =
        await compileUnit(sources.keys.toList(), sources, options: options);

    return transformComponent(pluginUri, component!);
  }

  Program transformComponent(String pluginUri, Component component) {
    //删除pluginUri以外的library
    component.libraries
        .removeWhere((element) => element.importUri.toString() != pluginUri);

    PrintTransformer().transform(pluginUri, component);

    //初始化编译上下文
    var compilerContext = MicroCompilerContext(CoreTypes(component));

    component.libraries.forEach((library) {
      int libraryIndex =
          compilerContext.lookupLibraryIndex(library.importUri.toString());

      if (compilerContext.topLevelDeclarationPositions[libraryIndex] == null) {
        compilerContext.topLevelDeclarationPositions[libraryIndex] = {};
      }
      if (compilerContext.topLevelProceduresIndexes[libraryIndex] == null) {
        compilerContext.topLevelProceduresIndexes[libraryIndex] = {};
      }

      if (compilerContext.topLevelProceduresIndexes[libraryIndex] == null) {
        compilerContext.topLevelProceduresIndexes[libraryIndex] = {};
      }

      //顶部方法索引
      library.procedures.forEach((procedure) {
        compilerContext.topLevelProceduresIndexes[libraryIndex]
                ?[procedure.name.text] =
            compilerContext.lookupDeclarationIndex(procedure);
      });

      if (compilerContext.topLevelFieldIndexes[libraryIndex] == null) {
        compilerContext.topLevelFieldIndexes[libraryIndex] = {};
      }

      //顶部参数索引
      library.fields.forEach((field) {
        compilerContext.topLevelFieldIndexes[libraryIndex]?[field.name.text] =
            compilerContext.lookupDeclarationIndex(field);
      });

      if (compilerContext.classIndexes[libraryIndex] == null) {
        compilerContext.classIndexes[libraryIndex] = {};
      }

      if (compilerContext.topLevelConstructors[libraryIndex] == null) {
        compilerContext.topLevelConstructors[libraryIndex] = {};
      }

      if (compilerContext.topLevelRedirectingFactories[libraryIndex] == null) {
        compilerContext.topLevelRedirectingFactories[libraryIndex] = {};
      }

      if (compilerContext.proceduresIndexes[libraryIndex] == null) {
        compilerContext.proceduresIndexes[libraryIndex] = {};
      }

      if (compilerContext.fieldIndexes[libraryIndex] == null) {
        compilerContext.fieldIndexes[libraryIndex] = {};
      }

      library.classes.forEach((clazz) {
        //类索引
        compilerContext.classIndexes[libraryIndex]![clazz.name] =
            compilerContext.lookupDeclarationIndex(clazz);
        //方法索引
        if (compilerContext.proceduresIndexes[libraryIndex]![clazz.name] ==
            null) {
          compilerContext.proceduresIndexes[libraryIndex]![clazz.name] = {};
        }
        //参数索引
        if (compilerContext.fieldIndexes[libraryIndex]![clazz.name] == null) {
          compilerContext.fieldIndexes[libraryIndex]![clazz.name] = {};
        }

        clazz.fields.forEach((field) {
          if (field.isStatic) {
            //静态参数
            compilerContext.topLevelFieldIndexes[libraryIndex]![
                    '${clazz.name}.${field.name.text}'] =
                compilerContext.lookupDeclarationIndex(field);
          } else {
            //类参数
            compilerContext
                    .fieldIndexes[libraryIndex]![clazz.name]![field.name.text] =
                compilerContext.lookupDeclarationIndex(field);
          }
        });

        clazz.procedures.forEach((procedure) {
          var procedureName = procedure.getNamedName();
          if (procedure.isStatic) {
            //静态函数
            compilerContext.topLevelProceduresIndexes[libraryIndex]![
                    '${clazz.name}.$procedureName'] =
                compilerContext.lookupDeclarationIndex(procedure);
          } else {
            //类函数
            compilerContext.proceduresIndexes[libraryIndex]![clazz.name]![
                    procedureName] =
                compilerContext.lookupDeclarationIndex(procedure);
          }
        });

        clazz.constructors.forEach((constructor) {
          compilerContext.topLevelConstructors[libraryIndex]![
                  "${constructor.enclosingClass.name}.${constructor.name}"] =
              compilerContext.lookupDeclarationIndex(constructor);
        });

        clazz.redirectingFactories.forEach((redirectingFactory) {
          compilerContext.topLevelRedirectingFactories[libraryIndex]![
                  "${redirectingFactory.enclosingClass.name}.${redirectingFactory.name}"] =
              compilerContext.lookupDeclarationIndex(redirectingFactory);
        });
      });
    });

    // compilerContext.topLevelFieldIndexes.forEach((libraryIndex, fieldMap) {
    //   fieldMap.forEach((fieldName, index) {
    //     compileNamedNode(
    //         compilerContext, fieldName, compilerContext.declarations[index]);
    //   });
    // });

    compilerContext.topLevelProceduresIndexes
        .forEach((libraryIndex, procedureIndexMap) {
      compilerContext.currentlibraryIndex = libraryIndex;
      procedureIndexMap.forEach((procedureName, index) {
        compileTopLecelNamedNode(compilerContext, libraryIndex, procedureName,
            compilerContext.declarations[index]);
      });
    });

    return Program(
        compilerContext.topLevelDeclarationPositions,
        {},
        {},
        [],
        compilerContext.ops,
        compilerContext.libraryIndexes,
        {},
        compilerContext.constantPool.pool,
        [],
        {});
  }
}
