import 'package:url_launcher/src/url_launcher_uri.dart';
import 'dart:async';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher/src/type_conversion.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:url_launcher/src/url_launcher_uri.dart@@launchUrl': (m.Scope scope)=>launchUrl,
'package:url_launcher/src/url_launcher_uri.dart@@canLaunchUrl': (m.Scope scope)=>canLaunchUrl,
'package:url_launcher/src/url_launcher_uri.dart@@closeInAppWebView': (m.Scope scope)=>closeInAppWebView,

};
}