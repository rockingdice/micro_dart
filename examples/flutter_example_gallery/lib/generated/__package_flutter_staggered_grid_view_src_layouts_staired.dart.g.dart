import 'package:flutter_staggered_grid_view/src/layouts/staired.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/src/foundation/constants.dart';
import 'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/layouts/staired.dart@StairedGridTile@#as': (m.Scope scope, target)=>()=>target as StairedGridTile,
'package:flutter_staggered_grid_view/src/layouts/staired.dart@StairedGridTile@#is': (m.Scope scope, target)=>()=>target is StairedGridTile,
'package:flutter_staggered_grid_view/src/layouts/staired.dart@StairedGridTile@crossAxisRatio': (m.Scope scope, StairedGridTile target)=>target.crossAxisRatio,
'package:flutter_staggered_grid_view/src/layouts/staired.dart@StairedGridTile@aspectRatio': (m.Scope scope, StairedGridTile target)=>target.aspectRatio,
'package:flutter_staggered_grid_view/src/layouts/staired.dart@StairedGridTile@': (m.Scope scope)=>( crossAxisRatio,  aspectRatio){
return StairedGridTile(crossAxisRatio, aspectRatio);
},
'package:flutter_staggered_grid_view/src/layouts/staired.dart@StairedGridTile@toString': (m.Scope scope, StairedGridTile target)=>target.toString,
'package:flutter_staggered_grid_view/src/layouts/staired.dart@SliverStairedGridDelegate@#as': (m.Scope scope, target)=>()=>target as SliverStairedGridDelegate,
'package:flutter_staggered_grid_view/src/layouts/staired.dart@SliverStairedGridDelegate@#is': (m.Scope scope, target)=>()=>target is SliverStairedGridDelegate,
'package:flutter_staggered_grid_view/src/layouts/staired.dart@SliverStairedGridDelegate@tileBottomSpace': (m.Scope scope, SliverStairedGridDelegate target)=>target.tileBottomSpace,
'package:flutter_staggered_grid_view/src/layouts/staired.dart@SliverStairedGridDelegate@startCrossAxisDirectionReversed': (m.Scope scope, SliverStairedGridDelegate target)=>target.startCrossAxisDirectionReversed,
'package:flutter_staggered_grid_view/src/layouts/staired.dart@SliverStairedGridDelegate@': (m.Scope scope)=>({ crossAxisSpacing,  mainAxisSpacing,  pattern,  startCrossAxisDirectionReversed,  tileBottomSpace}){
return SliverStairedGridDelegate(crossAxisSpacing:crossAxisSpacing ?? 0, mainAxisSpacing:mainAxisSpacing ?? 0, pattern:pattern, startCrossAxisDirectionReversed:startCrossAxisDirectionReversed ?? false, tileBottomSpace:tileBottomSpace ?? 0);
},
'package:flutter_staggered_grid_view/src/layouts/staired.dart@SliverStairedGridDelegate@getGeometries': (m.Scope scope, SliverStairedGridDelegate target)=>target.getGeometries,
'package:flutter_staggered_grid_view/src/layouts/staired.dart@SliverStairedGridDelegate@shouldRelayout': (m.Scope scope, SliverStairedGridDelegate target)=>target.shouldRelayout,

};
}