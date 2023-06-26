import 'package:flutter/src/painting/star_border.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart' show Matrix4;
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/circle_border.dart';
import 'package:flutter/src/painting/rounded_rectangle_border.dart';
import 'package:flutter/src/painting/stadium_border.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/star_border.dart@StarBorder@#as': (m.Scope scope, target)=>()=>target as StarBorder,
'package:flutter/src/painting/star_border.dart@StarBorder@#is': (m.Scope scope, target)=>()=>target is StarBorder,
'package:flutter/src/painting/star_border.dart@StarBorder@points': (m.Scope scope, StarBorder target)=>target.points,
'package:flutter/src/painting/star_border.dart@StarBorder@pointRounding': (m.Scope scope, StarBorder target)=>target.pointRounding,
'package:flutter/src/painting/star_border.dart@StarBorder@valleyRounding': (m.Scope scope, StarBorder target)=>target.valleyRounding,
'package:flutter/src/painting/star_border.dart@StarBorder@squash': (m.Scope scope, StarBorder target)=>target.squash,
'package:flutter/src/painting/star_border.dart@StarBorder@innerRadiusRatio': (m.Scope scope, StarBorder target)=>target.innerRadiusRatio,
'package:flutter/src/painting/star_border.dart@StarBorder@rotation': (m.Scope scope, StarBorder target)=>target.rotation,
'package:flutter/src/painting/star_border.dart@StarBorder@hashCode': (m.Scope scope, StarBorder target)=>target.hashCode,
'package:flutter/src/painting/star_border.dart@StarBorder@': (m.Scope scope)=>({ innerRadiusRatio,  pointRounding,  points,  rotation,  side,  squash,  valleyRounding}){
return StarBorder(innerRadiusRatio:innerRadiusRatio ?? 0.4, pointRounding:pointRounding ?? 0, points:points ?? 5, rotation:rotation ?? 0, side:side ?? BorderSide.none, squash:squash ?? 0, valleyRounding:valleyRounding ?? 0);
},
'package:flutter/src/painting/star_border.dart@StarBorder@polygon': (m.Scope scope)=>StarBorder.polygon,
'package:flutter/src/painting/star_border.dart@StarBorder@scale': (m.Scope scope, StarBorder target)=>target.scale,
'package:flutter/src/painting/star_border.dart@StarBorder@lerpFrom': (m.Scope scope, StarBorder target)=>target.lerpFrom,
'package:flutter/src/painting/star_border.dart@StarBorder@lerpTo': (m.Scope scope, StarBorder target)=>target.lerpTo,
'package:flutter/src/painting/star_border.dart@StarBorder@copyWith': (m.Scope scope, StarBorder target)=>target.copyWith,
'package:flutter/src/painting/star_border.dart@StarBorder@getInnerPath': (m.Scope scope, StarBorder target)=>target.getInnerPath,
'package:flutter/src/painting/star_border.dart@StarBorder@getOuterPath': (m.Scope scope, StarBorder target)=>target.getOuterPath,
'package:flutter/src/painting/star_border.dart@StarBorder@paint': (m.Scope scope, StarBorder target)=>target.paint,
'package:flutter/src/painting/star_border.dart@StarBorder@==': (m.Scope scope, StarBorder target)=>(other)=> target == other,
'package:flutter/src/painting/star_border.dart@StarBorder@toString': (m.Scope scope, StarBorder target)=>target.toString,

};
}