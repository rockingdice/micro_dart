import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:micro_dart_flutter/generated/micro_dart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var data = await rootBundle.load('assets/micro_dart.data');
  var engine = createMicroDartEngine(data);
  //engine.debug = true;
  runApp(engine.callStaticFunction(
      "package:flutter_plugin_1/plugin_1.dart", "createMyApp", [], {}));
}
