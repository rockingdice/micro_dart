import 'package:flutter/src/painting/rounded_rectangle_border.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/circle_border.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@#as': (m.Scope scope, target)=>()=>target as RoundedRectangleBorder,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@#is': (m.Scope scope, target)=>()=>target is RoundedRectangleBorder,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@borderRadius': (m.Scope scope, RoundedRectangleBorder target)=>target.borderRadius,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@preferPaintInterior': (m.Scope scope, RoundedRectangleBorder target)=>target.preferPaintInterior,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@hashCode': (m.Scope scope, RoundedRectangleBorder target)=>target.hashCode,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@': (m.Scope scope)=>({ borderRadius,  side}){
return RoundedRectangleBorder(borderRadius:borderRadius ?? BorderRadius.zero, side:side ?? BorderSide.none);
},
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@scale': (m.Scope scope, RoundedRectangleBorder target)=>target.scale,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@lerpFrom': (m.Scope scope, RoundedRectangleBorder target)=>target.lerpFrom,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@lerpTo': (m.Scope scope, RoundedRectangleBorder target)=>target.lerpTo,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@copyWith': (m.Scope scope, RoundedRectangleBorder target)=>target.copyWith,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@getInnerPath': (m.Scope scope, RoundedRectangleBorder target)=>target.getInnerPath,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@getOuterPath': (m.Scope scope, RoundedRectangleBorder target)=>target.getOuterPath,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@paintInterior': (m.Scope scope, RoundedRectangleBorder target)=>target.paintInterior,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@paint': (m.Scope scope, RoundedRectangleBorder target)=>target.paint,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@==': (m.Scope scope, RoundedRectangleBorder target)=>(other)=> target == other,
'package:flutter/src/painting/rounded_rectangle_border.dart@RoundedRectangleBorder@toString': (m.Scope scope, RoundedRectangleBorder target)=>target.toString,

};
}