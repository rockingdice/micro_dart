import 'package:flutter_staggered_grid_view/src/layouts/quilted.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/src/foundation/extensions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridTile@#as': (m.Scope scope, target)=>()=>target as QuiltedGridTile,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridTile@#is': (m.Scope scope, target)=>()=>target is QuiltedGridTile,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridTile@mainAxisCount': (m.Scope scope, QuiltedGridTile target)=>target.mainAxisCount,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridTile@crossAxisCount': (m.Scope scope, QuiltedGridTile target)=>target.crossAxisCount,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridTile@': (m.Scope scope)=>( mainAxisCount,  crossAxisCount){
return QuiltedGridTile(mainAxisCount, crossAxisCount);
},
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridTile@toString': (m.Scope scope, QuiltedGridTile target)=>target.toString,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@SliverQuiltedGridDelegate@#as': (m.Scope scope, target)=>()=>target as SliverQuiltedGridDelegate,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@SliverQuiltedGridDelegate@#is': (m.Scope scope, target)=>()=>target is SliverQuiltedGridDelegate,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@SliverQuiltedGridDelegate@crossAxisCount': (m.Scope scope, SliverQuiltedGridDelegate target)=>target.crossAxisCount,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@SliverQuiltedGridDelegate@repeatPattern': (m.Scope scope, SliverQuiltedGridDelegate target)=>target.repeatPattern,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@SliverQuiltedGridDelegate@mainAxisSpacing': (m.Scope scope, SliverQuiltedGridDelegate target)=>target.mainAxisSpacing,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@SliverQuiltedGridDelegate@crossAxisSpacing': (m.Scope scope, SliverQuiltedGridDelegate target)=>target.crossAxisSpacing,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@SliverQuiltedGridDelegate@': (m.Scope scope)=>({ crossAxisCount,  crossAxisSpacing,  mainAxisSpacing,  pattern,  repeatPattern}){
return SliverQuiltedGridDelegate(crossAxisCount:crossAxisCount, crossAxisSpacing:crossAxisSpacing ?? 0, mainAxisSpacing:mainAxisSpacing ?? 0, pattern:pattern, repeatPattern:repeatPattern ?? QuiltedGridRepeatPattern.same);
},
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@SliverQuiltedGridDelegate@getLayout': (m.Scope scope, SliverQuiltedGridDelegate target)=>target.getLayout,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@SliverQuiltedGridDelegate@shouldRelayout': (m.Scope scope, SliverQuiltedGridDelegate target)=>target.shouldRelayout,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridRepeatPattern@#as': (m.Scope scope, target)=>()=>target as QuiltedGridRepeatPattern,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridRepeatPattern@#is': (m.Scope scope, target)=>()=>target is QuiltedGridRepeatPattern,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridRepeatPattern@same': (m.Scope scope)=>QuiltedGridRepeatPattern.same,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridRepeatPattern@inverted': (m.Scope scope)=>QuiltedGridRepeatPattern.inverted,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridRepeatPattern@mirrored': (m.Scope scope)=>QuiltedGridRepeatPattern.mirrored,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridRepeatPattern@repeatedIndexes': (m.Scope scope, QuiltedGridRepeatPattern target)=>target.repeatedIndexes,
'package:flutter_staggered_grid_view/src/layouts/quilted.dart@QuiltedGridRepeatPattern@repeatedTileCount': (m.Scope scope, QuiltedGridRepeatPattern target)=>target.repeatedTileCount,

};
}