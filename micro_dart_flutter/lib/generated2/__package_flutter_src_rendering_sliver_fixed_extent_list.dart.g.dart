import 'package:flutter/src/rendering/sliver_fixed_extent_list.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentBoxAdaptor@#as': (m.Scope scope, target)=>()=>target as RenderSliverFixedExtentBoxAdaptor,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentBoxAdaptor@#is': (m.Scope scope, target)=>()=>target is RenderSliverFixedExtentBoxAdaptor,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentBoxAdaptor@itemExtent': (m.Scope scope, RenderSliverFixedExtentBoxAdaptor target)=>target.itemExtent,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentBoxAdaptor@indexToLayoutOffset': (m.Scope scope, RenderSliverFixedExtentBoxAdaptor target)=>target.indexToLayoutOffset,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentBoxAdaptor@getMinChildIndexForScrollOffset': (m.Scope scope, RenderSliverFixedExtentBoxAdaptor target)=>target.getMinChildIndexForScrollOffset,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentBoxAdaptor@getMaxChildIndexForScrollOffset': (m.Scope scope, RenderSliverFixedExtentBoxAdaptor target)=>target.getMaxChildIndexForScrollOffset,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentBoxAdaptor@estimateMaxScrollOffset': (m.Scope scope, RenderSliverFixedExtentBoxAdaptor target)=>target.estimateMaxScrollOffset,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentBoxAdaptor@computeMaxScrollOffset': (m.Scope scope, RenderSliverFixedExtentBoxAdaptor target)=>target.computeMaxScrollOffset,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentBoxAdaptor@performLayout': (m.Scope scope, RenderSliverFixedExtentBoxAdaptor target)=>target.performLayout,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentList@#as': (m.Scope scope, target)=>()=>target as RenderSliverFixedExtentList,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentList@#is': (m.Scope scope, target)=>()=>target is RenderSliverFixedExtentList,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentList@itemExtent': (m.Scope scope, RenderSliverFixedExtentList target)=>target.itemExtent,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentList@itemExtent:set': (m.Scope scope, RenderSliverFixedExtentList target)=>(other)=>target.itemExtent=other,
'package:flutter/src/rendering/sliver_fixed_extent_list.dart@RenderSliverFixedExtentList@': (m.Scope scope)=>({ childManager,  itemExtent}){
return RenderSliverFixedExtentList(childManager:childManager, itemExtent:itemExtent);
},

};
}