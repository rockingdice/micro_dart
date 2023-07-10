import 'package:flutter/src/rendering/sliver_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/sliver_list.dart@RenderSliverList@#as': (m.Scope scope, target)=>()=>target as RenderSliverList,
'package:flutter/src/rendering/sliver_list.dart@RenderSliverList@#is': (m.Scope scope, target)=>()=>target is RenderSliverList,
'package:flutter/src/rendering/sliver_list.dart@RenderSliverList@': (m.Scope scope)=>({ childManager}){
return RenderSliverList(childManager:childManager);
},
'package:flutter/src/rendering/sliver_list.dart@RenderSliverList@performLayout': (m.Scope scope, RenderSliverList target)=>target.performLayout,

};
}