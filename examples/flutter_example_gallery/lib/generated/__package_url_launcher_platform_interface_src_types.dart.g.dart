import 'package:url_launcher_platform_interface/src/types.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:url_launcher_platform_interface/src/types.dart@InAppWebViewConfiguration@#as': (m.Scope scope, target)=>()=>target as InAppWebViewConfiguration,
'package:url_launcher_platform_interface/src/types.dart@InAppWebViewConfiguration@#is': (m.Scope scope, target)=>()=>target is InAppWebViewConfiguration,
'package:url_launcher_platform_interface/src/types.dart@InAppWebViewConfiguration@enableJavaScript': (m.Scope scope, InAppWebViewConfiguration target)=>target.enableJavaScript,
'package:url_launcher_platform_interface/src/types.dart@InAppWebViewConfiguration@enableDomStorage': (m.Scope scope, InAppWebViewConfiguration target)=>target.enableDomStorage,
'package:url_launcher_platform_interface/src/types.dart@InAppWebViewConfiguration@headers': (m.Scope scope, InAppWebViewConfiguration target)=>target.headers,
'package:url_launcher_platform_interface/src/types.dart@InAppWebViewConfiguration@': (m.Scope scope)=>({ enableDomStorage,  enableJavaScript,  headers}){
return InAppWebViewConfiguration(enableDomStorage:enableDomStorage ?? true, enableJavaScript:enableJavaScript ?? true, headers:headers ?? const <String, String>{});
},
'package:url_launcher_platform_interface/src/types.dart@LaunchOptions@#as': (m.Scope scope, target)=>()=>target as LaunchOptions,
'package:url_launcher_platform_interface/src/types.dart@LaunchOptions@#is': (m.Scope scope, target)=>()=>target is LaunchOptions,
'package:url_launcher_platform_interface/src/types.dart@LaunchOptions@mode': (m.Scope scope, LaunchOptions target)=>target.mode,
'package:url_launcher_platform_interface/src/types.dart@LaunchOptions@webViewConfiguration': (m.Scope scope, LaunchOptions target)=>target.webViewConfiguration,
'package:url_launcher_platform_interface/src/types.dart@LaunchOptions@webOnlyWindowName': (m.Scope scope, LaunchOptions target)=>target.webOnlyWindowName,
'package:url_launcher_platform_interface/src/types.dart@LaunchOptions@': (m.Scope scope)=>({ mode,  webOnlyWindowName,  webViewConfiguration}){
return LaunchOptions(mode:mode ?? PreferredLaunchMode.platformDefault, webOnlyWindowName:webOnlyWindowName, webViewConfiguration:webViewConfiguration ?? const InAppWebViewConfiguration());
},

};
}