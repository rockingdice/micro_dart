import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:micro_dart_flutter/micro_dart_flutter.dart' as mdf;
import 'generated2/micro_dart.dart' as g;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var d1 = DateTime.now();
  debugPrint("start load data... ");
  var data = await rootBundle.load('assets/micro_dart.data');
  var d2 = DateTime.now();
  debugPrint("end load data usetime:${d2.difference(d1).inSeconds}");
  var engine = mdf.MicroDartEngine.fromData(data);
  var d3 = DateTime.now();
  debugPrint(
      "end create micro dart engine  usetime:${d3.difference(d1).inSeconds}");
  engine.setExternalFunctions(g.libraryMirrors);
  engine.debug = false;
  var d4 = DateTime.now();
  debugPrint(
      "end set external functions usetime: ${d4.difference(d1).inSeconds}");
  runApp(engine.callStaticFunction(
      "package:flutter_plugin_gallery/flutter_plugin_gallery.dart",
      "createApp", [], {}));
  var d5 = DateTime.now();
  debugPrint("end callStaticFunction usetime:${d5.difference(d1).inSeconds}");
  //runApp(const GalleryApp());
}
