import 'package:url_launcher/src/type_conversion.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';
import 'package:url_launcher/src/types.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:url_launcher/src/type_conversion.dart@@convertConfiguration': (m.Scope scope)=>convertConfiguration,
'package:url_launcher/src/type_conversion.dart@@convertLaunchMode': (m.Scope scope)=>convertLaunchMode,

};
}