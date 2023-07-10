import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
//import 'package:flutter_plugin_gallery/flutter_plugin_gallery.dart';
import 'package:micro_dart_flutter/generated2/micro_dart.dart' as mdf;
import 'generated/micro_dart.dart' as g;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var d1 = DateTime.now();
  debugPrint("start load data... ");
  var data = await rootBundle.load('assets/micro_dart.data');
  var d2 = DateTime.now();
  debugPrint("start createMicroDartEngine... ${d2.difference(d1).inSeconds}");
  var engine = mdf.createMicroDartEngine(data);
  var d3 = DateTime.now();
  debugPrint("start addMicroDartLibrary... ${d3.difference(d2).inSeconds}");
  g.addMicroDartLibrary(engine);
  engine.debug = false;
  var d4 = DateTime.now();
  debugPrint("start callStaticFunction... ${d4.difference(d3).inSeconds}");
  runApp(engine.callStaticFunction(
      "package:flutter_plugin_gallery/flutter_plugin_gallery.dart",
      "createApp", [], {}));
  var d5 = DateTime.now();
  debugPrint("end callStaticFunction... ${d5.difference(d4).inSeconds}");
  //runApp(const GalleryApp());
}
