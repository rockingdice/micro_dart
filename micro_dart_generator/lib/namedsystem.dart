const Map<String, String> unaryOperatorList = {
  "unary-": "-",
  "unary+": "++",
  "~": "~",
};
const Map<String, String> binaryOperatorList = {
  "#as": "as",
  "#is": "is",
  "&": "&",
  "|": "|",
  "^": "^",
  "==": "==",
  "+": "+",
  "-": "-",
  "*": "*",
  "~/": "~/",
  "<": "<",
  ">": ">",
  "<=": "<=",
  ">=": ">=",
  "/": "/",
  "%": "%",
  "<<": "<<",
  ">>": ">>",
  ">>>": ">>>"
};

const List<String> specialOperatorList = ["[]", "[]="];

abstract class Namer<T> {
  int index = 0;
  final Map<T, String> map = <T, String>{};

  String getName(T key) => map.putIfAbsent(key, () => '$prefix${++index}');

  String get prefix;
}

class NormalNamer<T> extends Namer<T> {
  @override
  final String prefix;

  NormalNamer(this.prefix);
}

class NamedSystem {
  final Namer<String> _libraries = NormalNamer<String>('l');

  String coreLibraryName = "";

  String generate() {
    StringBuffer buffer = StringBuffer();
    _libraries.map.forEach((key, value) {
      buffer
          .write("import '${getLibraryNameFileName(key)}.g.dart' as $value;\n");
    });

    buffer.write(
        "import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;\n");
    buffer.write("import 'dart:typed_data';\n");
    buffer.write('''m.MicroDartEngine createMicroDartEngine(ByteData data) {
var engine = m.MicroDartEngine.fromData(data);
${_libraries.map.values.map((e) => "engine.addExternalFunctions($e.getLibrary(engine));\n").toList().join()}
return engine;
}

''');
    return buffer.toString();
  }

  String getLibraryName(String identifier) {
    var name = _libraries.getName(identifier);
    if (isCoreLibrary(identifier)) {
      coreLibraryName = name;
    }
    return name;
  }

  String getLibraryNameFileName(String identifier) {
    var s = identifier.split(":");
    var s2 = s[1].split("/");
    List<String> s3 = ["_"];

    s3.add(s[0]);
    s3.addAll(s2);

    var r = s3.join("_");
    if (!r.endsWith(".dart")) {
      r = "$r.dart";
    }
    return r;
  }

  bool isCoreLibrary(String identifier) {
    return identifier == "dart:core";
  }

  bool isCoreLibraryName(String name) {
    return name == coreLibraryName;
  }
}
