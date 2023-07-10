import 'package:flutter/src/painting/continuous_rectangle_border.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@#as': (m.Scope scope, target)=>()=>target as ContinuousRectangleBorder,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@#is': (m.Scope scope, target)=>()=>target is ContinuousRectangleBorder,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@borderRadius': (m.Scope scope, ContinuousRectangleBorder target)=>target.borderRadius,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@dimensions': (m.Scope scope, ContinuousRectangleBorder target)=>target.dimensions,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@hashCode': (m.Scope scope, ContinuousRectangleBorder target)=>target.hashCode,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@': (m.Scope scope)=>({ borderRadius,  side}){
return ContinuousRectangleBorder(borderRadius:borderRadius ?? BorderRadius.zero, side:side ?? BorderSide.none);
},
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@scale': (m.Scope scope, ContinuousRectangleBorder target)=>target.scale,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@lerpFrom': (m.Scope scope, ContinuousRectangleBorder target)=>target.lerpFrom,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@lerpTo': (m.Scope scope, ContinuousRectangleBorder target)=>target.lerpTo,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@getInnerPath': (m.Scope scope, ContinuousRectangleBorder target)=>target.getInnerPath,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@getOuterPath': (m.Scope scope, ContinuousRectangleBorder target)=>target.getOuterPath,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@copyWith': (m.Scope scope, ContinuousRectangleBorder target)=>target.copyWith,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@paint': (m.Scope scope, ContinuousRectangleBorder target)=>target.paint,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@==': (m.Scope scope, ContinuousRectangleBorder target)=>(other)=> target == other,
'package:flutter/src/painting/continuous_rectangle_border.dart@ContinuousRectangleBorder@toString': (m.Scope scope, ContinuousRectangleBorder target)=>target.toString,

};
}