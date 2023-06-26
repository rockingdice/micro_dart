import 'package:flutter/src/widgets/sliver_prototype_extent_list.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_delegate.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/sliver_prototype_extent_list.dart@SliverPrototypeExtentList@#as': (m.Scope scope, target)=>()=>target as SliverPrototypeExtentList,
'package:flutter/src/widgets/sliver_prototype_extent_list.dart@SliverPrototypeExtentList@#is': (m.Scope scope, target)=>()=>target is SliverPrototypeExtentList,
'package:flutter/src/widgets/sliver_prototype_extent_list.dart@SliverPrototypeExtentList@prototypeItem': (m.Scope scope, SliverPrototypeExtentList target)=>target.prototypeItem,
'package:flutter/src/widgets/sliver_prototype_extent_list.dart@SliverPrototypeExtentList@': (m.Scope scope)=>SliverPrototypeExtentList,
'package:flutter/src/widgets/sliver_prototype_extent_list.dart@SliverPrototypeExtentList@builder': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  findChildIndexCallback,  itemBuilder,  itemCount,  key,  prototypeItem}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return SliverPrototypeExtentList.builder(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, prototypeItem:prototypeItem);
},
'package:flutter/src/widgets/sliver_prototype_extent_list.dart@SliverPrototypeExtentList@list': (m.Scope scope)=>SliverPrototypeExtentList.list,
'package:flutter/src/widgets/sliver_prototype_extent_list.dart@SliverPrototypeExtentList@createRenderObject': (m.Scope scope, SliverPrototypeExtentList target)=>target.createRenderObject,
'package:flutter/src/widgets/sliver_prototype_extent_list.dart@SliverPrototypeExtentList@createElement': (m.Scope scope, SliverPrototypeExtentList target)=>target.createElement,

};
}