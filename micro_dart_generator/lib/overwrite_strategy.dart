import 'dart:convert';
import 'dart:io';

class OverwriteStrategy {
  final List<dynamic> ingoreKeys;
  final Map<String, dynamic> libraryIngoreImports;
  final Map<String, dynamic> libraryAddImports;
  final Map<String, dynamic> defaultValueCodeOverwrites;
  final Map<String, dynamic> keyOverwrites;

  OverwriteStrategy(
      this.ingoreKeys,
      this.libraryIngoreImports,
      this.libraryAddImports,
      this.defaultValueCodeOverwrites,
      this.keyOverwrites);
  factory OverwriteStrategy.fromFile(File file) {
    var jsonMap = jsonDecode(file.readAsStringSync());
    return OverwriteStrategy.fromJsonMap(jsonMap);
  }

  factory OverwriteStrategy.fromString(String text) {
    return OverwriteStrategy.fromJsonMap(jsonDecode(text));
  }

  factory OverwriteStrategy.fromJsonMap(Map<String, dynamic> map) {
    return OverwriteStrategy(
        map["ingoreKeys"],
        map["libraryIngoreImports"],
        map["libraryAddImports"],
        map["defaultValueCodeOverwrites"],
        map["keyOverwrites"]);
  }
}
