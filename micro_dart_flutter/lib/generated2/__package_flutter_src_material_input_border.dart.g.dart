import 'package:flutter/src/material/input_border.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/input_border.dart@InputBorder@#as': (m.Scope scope, target)=>()=>target as InputBorder,
'package:flutter/src/material/input_border.dart@InputBorder@#is': (m.Scope scope, target)=>()=>target is InputBorder,
'package:flutter/src/material/input_border.dart@InputBorder@none': (m.Scope scope)=>InputBorder.none,
'package:flutter/src/material/input_border.dart@InputBorder@borderSide': (m.Scope scope, InputBorder target)=>target.borderSide,
'package:flutter/src/material/input_border.dart@InputBorder@isOutline': (m.Scope scope, InputBorder target)=>target.isOutline,
'package:flutter/src/material/input_border.dart@InputBorder@copyWith': (m.Scope scope, InputBorder target)=>target.copyWith,
'package:flutter/src/material/input_border.dart@InputBorder@paint': (m.Scope scope, InputBorder target)=>target.paint,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@#as': (m.Scope scope, target)=>()=>target as UnderlineInputBorder,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@#is': (m.Scope scope, target)=>()=>target is UnderlineInputBorder,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@borderRadius': (m.Scope scope, UnderlineInputBorder target)=>target.borderRadius,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@isOutline': (m.Scope scope, UnderlineInputBorder target)=>target.isOutline,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@dimensions': (m.Scope scope, UnderlineInputBorder target)=>target.dimensions,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@preferPaintInterior': (m.Scope scope, UnderlineInputBorder target)=>target.preferPaintInterior,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@hashCode': (m.Scope scope, UnderlineInputBorder target)=>target.hashCode,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@': (m.Scope scope)=>({ borderRadius,  borderSide}){
return UnderlineInputBorder(borderRadius:borderRadius ?? const BorderRadius.only(topLeft: Radius.circular(4.0), topRight: Radius.circular(4.0)), borderSide:borderSide ?? const BorderSide());
},
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@copyWith': (m.Scope scope, UnderlineInputBorder target)=>target.copyWith,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@scale': (m.Scope scope, UnderlineInputBorder target)=>target.scale,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@getInnerPath': (m.Scope scope, UnderlineInputBorder target)=>target.getInnerPath,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@getOuterPath': (m.Scope scope, UnderlineInputBorder target)=>target.getOuterPath,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@paintInterior': (m.Scope scope, UnderlineInputBorder target)=>target.paintInterior,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@lerpFrom': (m.Scope scope, UnderlineInputBorder target)=>target.lerpFrom,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@lerpTo': (m.Scope scope, UnderlineInputBorder target)=>target.lerpTo,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@paint': (m.Scope scope, UnderlineInputBorder target)=>target.paint,
'package:flutter/src/material/input_border.dart@UnderlineInputBorder@==': (m.Scope scope, UnderlineInputBorder target)=>(other)=> target == other,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@#as': (m.Scope scope, target)=>()=>target as OutlineInputBorder,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@#is': (m.Scope scope, target)=>()=>target is OutlineInputBorder,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@gapPadding': (m.Scope scope, OutlineInputBorder target)=>target.gapPadding,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@borderRadius': (m.Scope scope, OutlineInputBorder target)=>target.borderRadius,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@isOutline': (m.Scope scope, OutlineInputBorder target)=>target.isOutline,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@dimensions': (m.Scope scope, OutlineInputBorder target)=>target.dimensions,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@preferPaintInterior': (m.Scope scope, OutlineInputBorder target)=>target.preferPaintInterior,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@hashCode': (m.Scope scope, OutlineInputBorder target)=>target.hashCode,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@': (m.Scope scope)=>({ borderRadius,  borderSide,  gapPadding}){
return OutlineInputBorder(borderRadius:borderRadius ?? const BorderRadius.all(Radius.circular(4.0)), borderSide:borderSide ?? const BorderSide(), gapPadding:gapPadding ?? 4.0);
},
'package:flutter/src/material/input_border.dart@OutlineInputBorder@copyWith': (m.Scope scope, OutlineInputBorder target)=>target.copyWith,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@scale': (m.Scope scope, OutlineInputBorder target)=>target.scale,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@lerpFrom': (m.Scope scope, OutlineInputBorder target)=>target.lerpFrom,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@lerpTo': (m.Scope scope, OutlineInputBorder target)=>target.lerpTo,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@getInnerPath': (m.Scope scope, OutlineInputBorder target)=>target.getInnerPath,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@getOuterPath': (m.Scope scope, OutlineInputBorder target)=>target.getOuterPath,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@paintInterior': (m.Scope scope, OutlineInputBorder target)=>target.paintInterior,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@paint': (m.Scope scope, OutlineInputBorder target)=>target.paint,
'package:flutter/src/material/input_border.dart@OutlineInputBorder@==': (m.Scope scope, OutlineInputBorder target)=>(other)=> target == other,

};
}