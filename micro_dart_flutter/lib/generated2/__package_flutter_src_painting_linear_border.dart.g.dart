import 'package:flutter/src/painting/linear_border.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/linear_border.dart@LinearBorderEdge@#as': (m.Scope scope, target)=>()=>target as LinearBorderEdge,
'package:flutter/src/painting/linear_border.dart@LinearBorderEdge@#is': (m.Scope scope, target)=>()=>target is LinearBorderEdge,
'package:flutter/src/painting/linear_border.dart@LinearBorderEdge@size': (m.Scope scope, LinearBorderEdge target)=>target.size,
'package:flutter/src/painting/linear_border.dart@LinearBorderEdge@alignment': (m.Scope scope, LinearBorderEdge target)=>target.alignment,
'package:flutter/src/painting/linear_border.dart@LinearBorderEdge@hashCode': (m.Scope scope, LinearBorderEdge target)=>target.hashCode,
'package:flutter/src/painting/linear_border.dart@LinearBorderEdge@': (m.Scope scope)=>({ alignment,  size}){
return LinearBorderEdge(alignment:alignment ?? 0.0, size:size ?? 1.0);
},
'package:flutter/src/painting/linear_border.dart@LinearBorderEdge@lerp': (m.Scope scope)=>LinearBorderEdge.lerp,
'package:flutter/src/painting/linear_border.dart@LinearBorderEdge@==': (m.Scope scope, LinearBorderEdge target)=>(other)=> target == other,
'package:flutter/src/painting/linear_border.dart@LinearBorderEdge@toString': (m.Scope scope, LinearBorderEdge target)=>target.toString,
'package:flutter/src/painting/linear_border.dart@LinearBorder@#as': (m.Scope scope, target)=>()=>target as LinearBorder,
'package:flutter/src/painting/linear_border.dart@LinearBorder@#is': (m.Scope scope, target)=>()=>target is LinearBorder,
'package:flutter/src/painting/linear_border.dart@LinearBorder@none': (m.Scope scope)=>LinearBorder.none,
'package:flutter/src/painting/linear_border.dart@LinearBorder@start': (m.Scope scope, LinearBorder target)=>target.start,
'package:flutter/src/painting/linear_border.dart@LinearBorder@end': (m.Scope scope, LinearBorder target)=>target.end,
'package:flutter/src/painting/linear_border.dart@LinearBorder@top': (m.Scope scope, LinearBorder target)=>target.top,
'package:flutter/src/painting/linear_border.dart@LinearBorder@bottom': (m.Scope scope, LinearBorder target)=>target.bottom,
'package:flutter/src/painting/linear_border.dart@LinearBorder@dimensions': (m.Scope scope, LinearBorder target)=>target.dimensions,
'package:flutter/src/painting/linear_border.dart@LinearBorder@hashCode': (m.Scope scope, LinearBorder target)=>target.hashCode,
'package:flutter/src/painting/linear_border.dart@LinearBorder@': (m.Scope scope)=>({ bottom,  end,  side,  start,  top}){
return LinearBorder(bottom:bottom, end:end, side:side ?? BorderSide.none, start:start, top:top);
},
'package:flutter/src/painting/linear_border.dart@LinearBorder@start': (m.Scope scope)=>LinearBorder.start,
'package:flutter/src/painting/linear_border.dart@LinearBorder@end': (m.Scope scope)=>LinearBorder.end,
'package:flutter/src/painting/linear_border.dart@LinearBorder@top': (m.Scope scope)=>LinearBorder.top,
'package:flutter/src/painting/linear_border.dart@LinearBorder@bottom': (m.Scope scope)=>LinearBorder.bottom,
'package:flutter/src/painting/linear_border.dart@LinearBorder@scale': (m.Scope scope, LinearBorder target)=>target.scale,
'package:flutter/src/painting/linear_border.dart@LinearBorder@lerpFrom': (m.Scope scope, LinearBorder target)=>target.lerpFrom,
'package:flutter/src/painting/linear_border.dart@LinearBorder@lerpTo': (m.Scope scope, LinearBorder target)=>target.lerpTo,
'package:flutter/src/painting/linear_border.dart@LinearBorder@copyWith': (m.Scope scope, LinearBorder target)=>target.copyWith,
'package:flutter/src/painting/linear_border.dart@LinearBorder@getInnerPath': (m.Scope scope, LinearBorder target)=>target.getInnerPath,
'package:flutter/src/painting/linear_border.dart@LinearBorder@getOuterPath': (m.Scope scope, LinearBorder target)=>target.getOuterPath,
'package:flutter/src/painting/linear_border.dart@LinearBorder@paint': (m.Scope scope, LinearBorder target)=>target.paint,
'package:flutter/src/painting/linear_border.dart@LinearBorder@==': (m.Scope scope, LinearBorder target)=>(other)=> target == other,
'package:flutter/src/painting/linear_border.dart@LinearBorder@toString': (m.Scope scope, LinearBorder target)=>target.toString,

};
}