import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
//import 'package:flutter_plugin_gallery/flutter_plugin_gallery.dart';
import 'package:micro_dart_flutter/generated/micro_dart.dart' as mdf;
import 'generated/micro_dart.dart' as g;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var data = await rootBundle.load('assets/micro_dart.data');
  var engine = mdf.createMicroDartEngine(data);
  g.addMicroDartLibrary(engine);
  engine.debug = true;
  runApp(engine.callStaticFunction(
      "package:flutter_plugin_gallery/flutter_plugin_gallery.dart",
      "createApp", [], {}));

  //runApp(const GalleryApp());
}
