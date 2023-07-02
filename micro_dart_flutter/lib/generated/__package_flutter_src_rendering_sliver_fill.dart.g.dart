import 'package:flutter/src/rendering/sliver_fill.dart';
import 'dart:math';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_fixed_extent_list.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillViewport@#as': (m.Scope scope, target)=>()=>target as RenderSliverFillViewport,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillViewport@#is': (m.Scope scope, target)=>()=>target is RenderSliverFillViewport,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillViewport@itemExtent': (m.Scope scope, RenderSliverFillViewport target)=>target.itemExtent,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillViewport@viewportFraction': (m.Scope scope, RenderSliverFillViewport target)=>target.viewportFraction,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillViewport@viewportFraction:set': (m.Scope scope, RenderSliverFillViewport target)=>(other)=>target.viewportFraction=other,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillViewport@': (m.Scope scope)=>({ childManager,  viewportFraction}){
return RenderSliverFillViewport(childManager:childManager, viewportFraction:viewportFraction ?? 1.0);
},
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemainingWithScrollable@#as': (m.Scope scope, target)=>()=>target as RenderSliverFillRemainingWithScrollable,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemainingWithScrollable@#is': (m.Scope scope, target)=>()=>target is RenderSliverFillRemainingWithScrollable,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemainingWithScrollable@': (m.Scope scope)=>({ child}){
return RenderSliverFillRemainingWithScrollable(child:child);
},
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemainingWithScrollable@performLayout': (m.Scope scope, RenderSliverFillRemainingWithScrollable target)=>target.performLayout,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemaining@#as': (m.Scope scope, target)=>()=>target as RenderSliverFillRemaining,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemaining@#is': (m.Scope scope, target)=>()=>target is RenderSliverFillRemaining,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemaining@': (m.Scope scope)=>({ child}){
return RenderSliverFillRemaining(child:child);
},
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemaining@performLayout': (m.Scope scope, RenderSliverFillRemaining target)=>target.performLayout,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemainingAndOverscroll@#as': (m.Scope scope, target)=>()=>target as RenderSliverFillRemainingAndOverscroll,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemainingAndOverscroll@#is': (m.Scope scope, target)=>()=>target is RenderSliverFillRemainingAndOverscroll,
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemainingAndOverscroll@': (m.Scope scope)=>({ child}){
return RenderSliverFillRemainingAndOverscroll(child:child);
},
'package:flutter/src/rendering/sliver_fill.dart@RenderSliverFillRemainingAndOverscroll@performLayout': (m.Scope scope, RenderSliverFillRemainingAndOverscroll target)=>target.performLayout,

};
}