import 'package:flutter/src/painting/circle_border.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/circle_border.dart@CircleBorder@#as': (m.Scope scope, target)=>()=>target as CircleBorder,
'package:flutter/src/painting/circle_border.dart@CircleBorder@#is': (m.Scope scope, target)=>()=>target is CircleBorder,
'package:flutter/src/painting/circle_border.dart@CircleBorder@eccentricity': (m.Scope scope, CircleBorder target)=>target.eccentricity,
'package:flutter/src/painting/circle_border.dart@CircleBorder@preferPaintInterior': (m.Scope scope, CircleBorder target)=>target.preferPaintInterior,
'package:flutter/src/painting/circle_border.dart@CircleBorder@hashCode': (m.Scope scope, CircleBorder target)=>target.hashCode,
'package:flutter/src/painting/circle_border.dart@CircleBorder@': (m.Scope scope)=>({ eccentricity,  side}){
return CircleBorder(eccentricity:eccentricity ?? 0.0, side:side ?? BorderSide.none);
},
'package:flutter/src/painting/circle_border.dart@CircleBorder@scale': (m.Scope scope, CircleBorder target)=>target.scale,
'package:flutter/src/painting/circle_border.dart@CircleBorder@lerpFrom': (m.Scope scope, CircleBorder target)=>target.lerpFrom,
'package:flutter/src/painting/circle_border.dart@CircleBorder@lerpTo': (m.Scope scope, CircleBorder target)=>target.lerpTo,
'package:flutter/src/painting/circle_border.dart@CircleBorder@getInnerPath': (m.Scope scope, CircleBorder target)=>target.getInnerPath,
'package:flutter/src/painting/circle_border.dart@CircleBorder@getOuterPath': (m.Scope scope, CircleBorder target)=>target.getOuterPath,
'package:flutter/src/painting/circle_border.dart@CircleBorder@paintInterior': (m.Scope scope, CircleBorder target)=>target.paintInterior,
'package:flutter/src/painting/circle_border.dart@CircleBorder@copyWith': (m.Scope scope, CircleBorder target)=>target.copyWith,
'package:flutter/src/painting/circle_border.dart@CircleBorder@paint': (m.Scope scope, CircleBorder target)=>target.paint,
'package:flutter/src/painting/circle_border.dart@CircleBorder@==': (m.Scope scope, CircleBorder target)=>(other)=> target == other,
'package:flutter/src/painting/circle_border.dart@CircleBorder@toString': (m.Scope scope, CircleBorder target)=>target.toString,

};
}