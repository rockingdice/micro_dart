import 'package:flutter/src/painting/fractional_offset.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@#as': (m.Scope scope, target)=>()=>target as FractionalOffset,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@#is': (m.Scope scope, target)=>()=>target is FractionalOffset,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@topLeft': (m.Scope scope)=>FractionalOffset.topLeft,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@topCenter': (m.Scope scope)=>FractionalOffset.topCenter,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@topRight': (m.Scope scope)=>FractionalOffset.topRight,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@centerLeft': (m.Scope scope)=>FractionalOffset.centerLeft,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@center': (m.Scope scope)=>FractionalOffset.center,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@centerRight': (m.Scope scope)=>FractionalOffset.centerRight,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@bottomLeft': (m.Scope scope)=>FractionalOffset.bottomLeft,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@bottomCenter': (m.Scope scope)=>FractionalOffset.bottomCenter,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@bottomRight': (m.Scope scope)=>FractionalOffset.bottomRight,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@dx': (m.Scope scope, FractionalOffset target)=>target.dx,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@dy': (m.Scope scope, FractionalOffset target)=>target.dy,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@': (m.Scope scope)=>( dx,  dy){
return FractionalOffset(dx, dy);
},
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@fromOffsetAndSize': (m.Scope scope)=>FractionalOffset.fromOffsetAndSize,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@fromOffsetAndRect': (m.Scope scope)=>FractionalOffset.fromOffsetAndRect,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@-': (m.Scope scope, FractionalOffset target)=>(other)=> target - other,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@+': (m.Scope scope, FractionalOffset target)=>(other)=> target + other,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@unary-': (m.Scope scope, FractionalOffset target)=>()=> - target ,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@*': (m.Scope scope, FractionalOffset target)=>(other)=> target * other,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@/': (m.Scope scope, FractionalOffset target)=>(other)=> target / other,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@~/': (m.Scope scope, FractionalOffset target)=>(other)=> target ~/ other,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@%': (m.Scope scope, FractionalOffset target)=>(other)=> target % other,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@lerp': (m.Scope scope)=>FractionalOffset.lerp,
'package:flutter/src/painting/fractional_offset.dart@FractionalOffset@toString': (m.Scope scope, FractionalOffset target)=>target.toString,

};
}