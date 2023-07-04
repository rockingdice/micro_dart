import 'package:url_launcher/src/url_launcher_string.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';
import 'package:url_launcher/src/type_conversion.dart';
import 'package:url_launcher/src/types.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:url_launcher/src/url_launcher_string.dart@@launchUrlString': (m.Scope scope)=>launchUrlString,
'package:url_launcher/src/url_launcher_string.dart@@canLaunchUrlString': (m.Scope scope)=>canLaunchUrlString,

};
}