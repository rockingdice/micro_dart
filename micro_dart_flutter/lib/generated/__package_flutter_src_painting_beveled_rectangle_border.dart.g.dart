import 'package:flutter/src/painting/beveled_rectangle_border.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@#as': (m.Scope scope, target)=>()=>target as BeveledRectangleBorder,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@#is': (m.Scope scope, target)=>()=>target is BeveledRectangleBorder,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@borderRadius': (m.Scope scope, BeveledRectangleBorder target)=>target.borderRadius,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@hashCode': (m.Scope scope, BeveledRectangleBorder target)=>target.hashCode,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@': (m.Scope scope)=>({ borderRadius,  side}){
return BeveledRectangleBorder(borderRadius:borderRadius ?? BorderRadius.zero, side:side ?? BorderSide.none);
},
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@scale': (m.Scope scope, BeveledRectangleBorder target)=>target.scale,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@lerpFrom': (m.Scope scope, BeveledRectangleBorder target)=>target.lerpFrom,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@lerpTo': (m.Scope scope, BeveledRectangleBorder target)=>target.lerpTo,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@copyWith': (m.Scope scope, BeveledRectangleBorder target)=>target.copyWith,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@getInnerPath': (m.Scope scope, BeveledRectangleBorder target)=>target.getInnerPath,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@getOuterPath': (m.Scope scope, BeveledRectangleBorder target)=>target.getOuterPath,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@paint': (m.Scope scope, BeveledRectangleBorder target)=>target.paint,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@==': (m.Scope scope, BeveledRectangleBorder target)=>(other)=> target == other,
'package:flutter/src/painting/beveled_rectangle_border.dart@BeveledRectangleBorder@toString': (m.Scope scope, BeveledRectangleBorder target)=>target.toString,

};
}