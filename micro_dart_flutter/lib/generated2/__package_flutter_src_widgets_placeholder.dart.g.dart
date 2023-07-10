import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/placeholder.dart@Placeholder@#as': (m.Scope scope, target)=>()=>target as Placeholder,
'package:flutter/src/widgets/placeholder.dart@Placeholder@#is': (m.Scope scope, target)=>()=>target is Placeholder,
'package:flutter/src/widgets/placeholder.dart@Placeholder@color': (m.Scope scope, Placeholder target)=>target.color,
'package:flutter/src/widgets/placeholder.dart@Placeholder@strokeWidth': (m.Scope scope, Placeholder target)=>target.strokeWidth,
'package:flutter/src/widgets/placeholder.dart@Placeholder@fallbackWidth': (m.Scope scope, Placeholder target)=>target.fallbackWidth,
'package:flutter/src/widgets/placeholder.dart@Placeholder@fallbackHeight': (m.Scope scope, Placeholder target)=>target.fallbackHeight,
'package:flutter/src/widgets/placeholder.dart@Placeholder@child': (m.Scope scope, Placeholder target)=>target.child,
'package:flutter/src/widgets/placeholder.dart@Placeholder@': (m.Scope scope)=>({ child,  color,  fallbackHeight,  fallbackWidth,  key,  strokeWidth}){
return Placeholder(child:child, color:color ?? const Color(0xFF455A64), fallbackHeight:fallbackHeight ?? 400.0, fallbackWidth:fallbackWidth ?? 400.0, key:key, strokeWidth:strokeWidth ?? 2.0);
},
'package:flutter/src/widgets/placeholder.dart@Placeholder@build': (m.Scope scope, Placeholder target)=>target.build,
'package:flutter/src/widgets/placeholder.dart@Placeholder@debugFillProperties': (m.Scope scope, Placeholder target)=>target.debugFillProperties,

};
}