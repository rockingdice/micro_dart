import 'package:flutter_staggered_grid_view/src/layouts/woven.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/src/foundation/constants.dart';
import 'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/layouts/woven.dart@WovenGridTile@#as': (m.Scope scope, target)=>()=>target as WovenGridTile,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@WovenGridTile@#is': (m.Scope scope, target)=>()=>target is WovenGridTile,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@WovenGridTile@aspectRatio': (m.Scope scope, WovenGridTile target)=>target.aspectRatio,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@WovenGridTile@crossAxisRatio': (m.Scope scope, WovenGridTile target)=>target.crossAxisRatio,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@WovenGridTile@alignment': (m.Scope scope, WovenGridTile target)=>target.alignment,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@WovenGridTile@': (m.Scope scope)=>( aspectRatio, { alignment,  crossAxisRatio}){
return WovenGridTile(aspectRatio, alignment:alignment ?? AlignmentDirectional.center, crossAxisRatio:crossAxisRatio ?? 1);
},
'package:flutter_staggered_grid_view/src/layouts/woven.dart@WovenGridTile@toString': (m.Scope scope, WovenGridTile target)=>target.toString,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@SliverWovenGridDelegate@#as': (m.Scope scope, target)=>()=>target as SliverWovenGridDelegate,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@SliverWovenGridDelegate@#is': (m.Scope scope, target)=>()=>target is SliverWovenGridDelegate,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@SliverWovenGridDelegate@tileBottomSpace': (m.Scope scope, SliverWovenGridDelegate target)=>target.tileBottomSpace,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@SliverWovenGridDelegate@count': (m.Scope scope)=>SliverWovenGridDelegate.count,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@SliverWovenGridDelegate@extent': (m.Scope scope)=>SliverWovenGridDelegate.extent,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@SliverWovenGridDelegate@getGeometries': (m.Scope scope, SliverWovenGridDelegate target)=>target.getGeometries,
'package:flutter_staggered_grid_view/src/layouts/woven.dart@SliverWovenGridDelegate@shouldRelayout': (m.Scope scope, SliverWovenGridDelegate target)=>target.shouldRelayout,

};
}