import 'dart:typed_data';

import 'package:micro_dart_proxy_core/generated/core.g.dart';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'dart:io';

void main(List<String> arguments) {
  var file = File("assets/dart_example_1.data");
  var engine =
      MicroDartEngine.fromData(file.readAsBytesSync().buffer.asByteData());
  engine.setExternalFunctions(libraryMirrors);
  var start = DateTime.now();
  var returnValue = engine.callStaticFunction(
      "package:dart_example_1/dart_example_1.dart", "test1", [], {});
  var end = DateTime.now();
  var difference = end.difference(start).inMicroseconds;
  print("test1 use time: $difference ms");

  start = DateTime.now();
  returnValue = engine.callStaticFunction(
      "package:dart_example_1/dart_example_1.dart", "test2", [], {});
  end = DateTime.now();
  difference = end.difference(start).inMicroseconds;
  print("test2 use time: $difference ms");

  start = DateTime.now();
  returnValue = engine.callStaticFunction(
      "package:dart_example_1/dart_example_1.dart", "test3", [], {});
  end = DateTime.now();
  difference = end.difference(start).inMicroseconds;
  print("test3 use time: $difference ms");

  start = DateTime.now();
  returnValue = engine.callStaticFunction(
      "package:dart_example_1/dart_example_1.dart", "test4", [], {});
  end = DateTime.now();
  difference = end.difference(start).inMicroseconds;
  print("test4 use time: $difference ms");

  start = DateTime.now();
  returnValue = engine.callStaticFunction(
      "package:dart_example_1/dart_example_1.dart", "test5", [], {});
  end = DateTime.now();
  difference = end.difference(start).inMicroseconds;
  print("test5 use time: $difference ms");

  start = DateTime.now();
  returnValue = engine.callStaticFunction(
      "package:dart_example_1/dart_example_1.dart", "test6", [], {});
  end = DateTime.now();
  difference = end.difference(start).inMicroseconds;
  print("test6 use time: $difference ms");
}
