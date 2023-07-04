import 'package:url_launcher/src/types.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:url_launcher/src/types.dart@WebViewConfiguration@#as': (m.Scope scope, target)=>()=>target as WebViewConfiguration,
'package:url_launcher/src/types.dart@WebViewConfiguration@#is': (m.Scope scope, target)=>()=>target is WebViewConfiguration,
'package:url_launcher/src/types.dart@WebViewConfiguration@enableJavaScript': (m.Scope scope, WebViewConfiguration target)=>target.enableJavaScript,
'package:url_launcher/src/types.dart@WebViewConfiguration@enableDomStorage': (m.Scope scope, WebViewConfiguration target)=>target.enableDomStorage,
'package:url_launcher/src/types.dart@WebViewConfiguration@headers': (m.Scope scope, WebViewConfiguration target)=>target.headers,
'package:url_launcher/src/types.dart@WebViewConfiguration@': (m.Scope scope)=>({ enableDomStorage,  enableJavaScript,  headers}){
return WebViewConfiguration(enableDomStorage:enableDomStorage ?? true, enableJavaScript:enableJavaScript ?? true, headers:headers ?? const <String, String>{});
},

};
}