import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_plugin_2/plugin_2.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //runApp(createMyApp());
  var data = await rootBundle.load('assets/micro_dart.data');

  var engine = MicroDartEngine.fromData(data);
  //engine.setExternalFunctions(libraryMirrors);
  engine.debug = true;
  runApp(engine.callStaticFunction(
      "package:flutter_plugin_2/plugin_2.dart", "createMyApp", [], {}));
}
