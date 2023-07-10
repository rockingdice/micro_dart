import 'package:flutter/src/material/flutter_logo.dart';
import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/flutter_logo.dart@FlutterLogo@#as': (m.Scope scope, target)=>()=>target as FlutterLogo,
'package:flutter/src/material/flutter_logo.dart@FlutterLogo@#is': (m.Scope scope, target)=>()=>target is FlutterLogo,
'package:flutter/src/material/flutter_logo.dart@FlutterLogo@size': (m.Scope scope, FlutterLogo target)=>target.size,
'package:flutter/src/material/flutter_logo.dart@FlutterLogo@textColor': (m.Scope scope, FlutterLogo target)=>target.textColor,
'package:flutter/src/material/flutter_logo.dart@FlutterLogo@style': (m.Scope scope, FlutterLogo target)=>target.style,
'package:flutter/src/material/flutter_logo.dart@FlutterLogo@duration': (m.Scope scope, FlutterLogo target)=>target.duration,
'package:flutter/src/material/flutter_logo.dart@FlutterLogo@curve': (m.Scope scope, FlutterLogo target)=>target.curve,
'package:flutter/src/material/flutter_logo.dart@FlutterLogo@': (m.Scope scope)=>({ curve,  duration,  key,  size,  style,  textColor}){
return FlutterLogo(curve:curve ?? Curves.fastOutSlowIn, duration:duration ?? const Duration(milliseconds: 750), key:key, size:size, style:style ?? FlutterLogoStyle.markOnly, textColor:textColor ?? const Color(0xFF757575));
},
'package:flutter/src/material/flutter_logo.dart@FlutterLogo@build': (m.Scope scope, FlutterLogo target)=>target.build,

};
}