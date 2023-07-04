import 'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart';
import 'package:flutter/rendering.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegate@#as': (m.Scope scope, target)=>()=>target as SliverSimpleGridDelegate,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegate@#is': (m.Scope scope, target)=>()=>target is SliverSimpleGridDelegate,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegate@getCrossAxisCount': (m.Scope scope, SliverSimpleGridDelegate target)=>target.getCrossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegate@shouldRelayout': (m.Scope scope, SliverSimpleGridDelegate target)=>target.shouldRelayout,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithFixedCrossAxisCount@#as': (m.Scope scope, target)=>()=>target as SliverSimpleGridDelegateWithFixedCrossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithFixedCrossAxisCount@#is': (m.Scope scope, target)=>()=>target is SliverSimpleGridDelegateWithFixedCrossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithFixedCrossAxisCount@crossAxisCount': (m.Scope scope, SliverSimpleGridDelegateWithFixedCrossAxisCount target)=>target.crossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithFixedCrossAxisCount@': (m.Scope scope)=>({ crossAxisCount}){
return SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount:crossAxisCount);
},
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithFixedCrossAxisCount@getCrossAxisCount': (m.Scope scope, SliverSimpleGridDelegateWithFixedCrossAxisCount target)=>target.getCrossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithFixedCrossAxisCount@shouldRelayout': (m.Scope scope, SliverSimpleGridDelegateWithFixedCrossAxisCount target)=>target.shouldRelayout,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithMaxCrossAxisExtent@#as': (m.Scope scope, target)=>()=>target as SliverSimpleGridDelegateWithMaxCrossAxisExtent,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithMaxCrossAxisExtent@#is': (m.Scope scope, target)=>()=>target is SliverSimpleGridDelegateWithMaxCrossAxisExtent,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithMaxCrossAxisExtent@maxCrossAxisExtent': (m.Scope scope, SliverSimpleGridDelegateWithMaxCrossAxisExtent target)=>target.maxCrossAxisExtent,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithMaxCrossAxisExtent@': (m.Scope scope)=>({ maxCrossAxisExtent}){
return SliverSimpleGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:maxCrossAxisExtent);
},
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithMaxCrossAxisExtent@getCrossAxisCount': (m.Scope scope, SliverSimpleGridDelegateWithMaxCrossAxisExtent target)=>target.getCrossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart@SliverSimpleGridDelegateWithMaxCrossAxisExtent@shouldRelayout': (m.Scope scope, SliverSimpleGridDelegateWithMaxCrossAxisExtent target)=>target.shouldRelayout,

};
}