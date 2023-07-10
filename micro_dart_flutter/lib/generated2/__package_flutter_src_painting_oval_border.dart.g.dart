import 'package:flutter/src/painting/oval_border.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/circle_border.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/oval_border.dart@OvalBorder@#as': (m.Scope scope, target)=>()=>target as OvalBorder,
'package:flutter/src/painting/oval_border.dart@OvalBorder@#is': (m.Scope scope, target)=>()=>target is OvalBorder,
'package:flutter/src/painting/oval_border.dart@OvalBorder@': (m.Scope scope)=>({ eccentricity,  side}){
return OvalBorder(eccentricity:eccentricity ?? 1.0, side:side ?? BorderSide.none);
},
'package:flutter/src/painting/oval_border.dart@OvalBorder@scale': (m.Scope scope, OvalBorder target)=>target.scale,
'package:flutter/src/painting/oval_border.dart@OvalBorder@copyWith': (m.Scope scope, OvalBorder target)=>target.copyWith,
'package:flutter/src/painting/oval_border.dart@OvalBorder@lerpFrom': (m.Scope scope, OvalBorder target)=>target.lerpFrom,
'package:flutter/src/painting/oval_border.dart@OvalBorder@lerpTo': (m.Scope scope, OvalBorder target)=>target.lerpTo,
'package:flutter/src/painting/oval_border.dart@OvalBorder@toString': (m.Scope scope, OvalBorder target)=>target.toString,

};
}