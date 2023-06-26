import 'package:flutter/src/rendering/list_body.dart';
import 'dart:math';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/list_body.dart@ListBodyParentData@#as': (m.Scope scope, target)=>()=>target as ListBodyParentData,
'package:flutter/src/rendering/list_body.dart@ListBodyParentData@#is': (m.Scope scope, target)=>()=>target is ListBodyParentData,
'package:flutter/src/rendering/list_body.dart@ListBodyParentData@': (m.Scope scope)=>(){
return ListBodyParentData();
},
'package:flutter/src/rendering/list_body.dart@RenderListBody@#as': (m.Scope scope, target)=>()=>target as RenderListBody,
'package:flutter/src/rendering/list_body.dart@RenderListBody@#is': (m.Scope scope, target)=>()=>target is RenderListBody,
'package:flutter/src/rendering/list_body.dart@RenderListBody@axisDirection': (m.Scope scope, RenderListBody target)=>target.axisDirection,
'package:flutter/src/rendering/list_body.dart@RenderListBody@axisDirection:set': (m.Scope scope, RenderListBody target)=>(other)=>target.axisDirection=other,
'package:flutter/src/rendering/list_body.dart@RenderListBody@mainAxis': (m.Scope scope, RenderListBody target)=>target.mainAxis,
'package:flutter/src/rendering/list_body.dart@RenderListBody@': (m.Scope scope)=>({ axisDirection,  children}){
return RenderListBody(axisDirection:axisDirection ?? AxisDirection.down, children:children);
},
'package:flutter/src/rendering/list_body.dart@RenderListBody@setupParentData': (m.Scope scope, RenderListBody target)=>target.setupParentData,
'package:flutter/src/rendering/list_body.dart@RenderListBody@computeDryLayout': (m.Scope scope, RenderListBody target)=>target.computeDryLayout,
'package:flutter/src/rendering/list_body.dart@RenderListBody@performLayout': (m.Scope scope, RenderListBody target)=>target.performLayout,
'package:flutter/src/rendering/list_body.dart@RenderListBody@debugFillProperties': (m.Scope scope, RenderListBody target)=>target.debugFillProperties,
'package:flutter/src/rendering/list_body.dart@RenderListBody@computeMinIntrinsicWidth': (m.Scope scope, RenderListBody target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/list_body.dart@RenderListBody@computeMaxIntrinsicWidth': (m.Scope scope, RenderListBody target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/list_body.dart@RenderListBody@computeMinIntrinsicHeight': (m.Scope scope, RenderListBody target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/list_body.dart@RenderListBody@computeMaxIntrinsicHeight': (m.Scope scope, RenderListBody target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/list_body.dart@RenderListBody@computeDistanceToActualBaseline': (m.Scope scope, RenderListBody target)=>target.computeDistanceToActualBaseline,
'package:flutter/src/rendering/list_body.dart@RenderListBody@paint': (m.Scope scope, RenderListBody target)=>target.paint,
'package:flutter/src/rendering/list_body.dart@RenderListBody@hitTestChildren': (m.Scope scope, RenderListBody target)=>target.hitTestChildren,

};
}