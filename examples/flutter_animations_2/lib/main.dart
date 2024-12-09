import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'generated/micro_dart.dart';

void main() async {
  //runApp(myApp());

  WidgetsFlutterBinding.ensureInitialized();
  //runApp(createMyApp());
  //var filePath = "assets/micro_dart1.data";
  //var packegeUri = "package:flutter_plugin_1/plugin_1.dart";

  var filePath = "assets/micro_dart.data";
  var packegeUri = "package:animations/main.dart";
  var data = await rootBundle.load(filePath);

  var engine = MicroDartEngine.fromData(data);
  engine.setExternalFunctions(libraryMirrors);
  engine.debug = false;
  runApp(engine.callStaticFunction(packegeUri, "myApp", [], {}));
}
