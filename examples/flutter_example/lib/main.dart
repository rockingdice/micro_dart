import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:micro_dart_flutter/generated/micro_dart.dart';
import 'package:flutter_plugin_2/plugin_2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //runApp(createMyApp());
  var data = await rootBundle.load('assets/micro_dart.data');
  var engine = createMicroDartEngine(data);
  engine.debug = true;
  runApp(engine.callStaticFunction(
      "package:flutter_plugin_2/plugin_2.dart", "createMyApp", [], {}));
}
