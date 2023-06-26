import 'package:flutter/src/widgets/sliver.dart';
import 'dart:collection' show HashMap,SplayTreeMap;
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/automatic_keep_alive.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_delegate.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/sliver.dart@SliverWithKeepAliveWidget@#as': (m.Scope scope, target)=>()=>target as SliverWithKeepAliveWidget,
'package:flutter/src/widgets/sliver.dart@SliverWithKeepAliveWidget@#is': (m.Scope scope, target)=>()=>target is SliverWithKeepAliveWidget,
'package:flutter/src/widgets/sliver.dart@SliverWithKeepAliveWidget@createRenderObject': (m.Scope scope, SliverWithKeepAliveWidget target)=>target.createRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorWidget@#as': (m.Scope scope, target)=>()=>target as SliverMultiBoxAdaptorWidget,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorWidget@#is': (m.Scope scope, target)=>()=>target is SliverMultiBoxAdaptorWidget,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorWidget@delegate': (m.Scope scope, SliverMultiBoxAdaptorWidget target)=>target.delegate,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorWidget@createElement': (m.Scope scope, SliverMultiBoxAdaptorWidget target)=>target.createElement,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorWidget@createRenderObject': (m.Scope scope, SliverMultiBoxAdaptorWidget target)=>target.createRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorWidget@estimateMaxScrollOffset': (m.Scope scope, SliverMultiBoxAdaptorWidget target)=>target.estimateMaxScrollOffset,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorWidget@debugFillProperties': (m.Scope scope, SliverMultiBoxAdaptorWidget target)=>target.debugFillProperties,
'package:flutter/src/widgets/sliver.dart@SliverList@#as': (m.Scope scope, target)=>()=>target as SliverList,
'package:flutter/src/widgets/sliver.dart@SliverList@#is': (m.Scope scope, target)=>()=>target is SliverList,
'package:flutter/src/widgets/sliver.dart@SliverList@': (m.Scope scope)=>SliverList,
'package:flutter/src/widgets/sliver.dart@SliverList@builder': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  findChildIndexCallback,  itemBuilder,  itemCount,  key}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return SliverList.builder(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key);
},
'package:flutter/src/widgets/sliver.dart@SliverList@separated': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  findChildIndexCallback,  itemBuilder,  itemCount,  key,  separatorBuilder}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

Widget separatorBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, separatorBuilder!,[context, index], {});
}

return SliverList.separated(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, separatorBuilder:separatorBuilderProxy);
},
'package:flutter/src/widgets/sliver.dart@SliverList@list': (m.Scope scope)=>SliverList.list,
'package:flutter/src/widgets/sliver.dart@SliverList@createElement': (m.Scope scope, SliverList target)=>target.createElement,
'package:flutter/src/widgets/sliver.dart@SliverList@createRenderObject': (m.Scope scope, SliverList target)=>target.createRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverFixedExtentList@#as': (m.Scope scope, target)=>()=>target as SliverFixedExtentList,
'package:flutter/src/widgets/sliver.dart@SliverFixedExtentList@#is': (m.Scope scope, target)=>()=>target is SliverFixedExtentList,
'package:flutter/src/widgets/sliver.dart@SliverFixedExtentList@itemExtent': (m.Scope scope, SliverFixedExtentList target)=>target.itemExtent,
'package:flutter/src/widgets/sliver.dart@SliverFixedExtentList@': (m.Scope scope)=>SliverFixedExtentList,
'package:flutter/src/widgets/sliver.dart@SliverFixedExtentList@builder': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  findChildIndexCallback,  itemBuilder,  itemCount,  itemExtent,  key}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return SliverFixedExtentList.builder(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, itemBuilder:itemBuilderProxy, itemCount:itemCount, itemExtent:itemExtent, key:key);
},
'package:flutter/src/widgets/sliver.dart@SliverFixedExtentList@list': (m.Scope scope)=>SliverFixedExtentList.list,
'package:flutter/src/widgets/sliver.dart@SliverFixedExtentList@createRenderObject': (m.Scope scope, SliverFixedExtentList target)=>target.createRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverFixedExtentList@updateRenderObject': (m.Scope scope, SliverFixedExtentList target)=>target.updateRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverGrid@#as': (m.Scope scope, target)=>()=>target as SliverGrid,
'package:flutter/src/widgets/sliver.dart@SliverGrid@#is': (m.Scope scope, target)=>()=>target is SliverGrid,
'package:flutter/src/widgets/sliver.dart@SliverGrid@gridDelegate': (m.Scope scope, SliverGrid target)=>target.gridDelegate,
'package:flutter/src/widgets/sliver.dart@SliverGrid@': (m.Scope scope)=>SliverGrid,
'package:flutter/src/widgets/sliver.dart@SliverGrid@builder': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  findChildIndexCallback,  gridDelegate,  itemBuilder,  itemCount,  key}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return SliverGrid.builder(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, gridDelegate:gridDelegate, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key);
},
'package:flutter/src/widgets/sliver.dart@SliverGrid@count': (m.Scope scope)=>SliverGrid.count,
'package:flutter/src/widgets/sliver.dart@SliverGrid@extent': (m.Scope scope)=>SliverGrid.extent,
'package:flutter/src/widgets/sliver.dart@SliverGrid@createRenderObject': (m.Scope scope, SliverGrid target)=>target.createRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverGrid@updateRenderObject': (m.Scope scope, SliverGrid target)=>target.updateRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverGrid@estimateMaxScrollOffset': (m.Scope scope, SliverGrid target)=>target.estimateMaxScrollOffset,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@#as': (m.Scope scope, target)=>()=>target as SliverMultiBoxAdaptorElement,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@#is': (m.Scope scope, target)=>()=>target is SliverMultiBoxAdaptorElement,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@renderObject': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.renderObject,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@estimatedChildCount': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.estimatedChildCount,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@childCount': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.childCount,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@': (m.Scope scope)=>SliverMultiBoxAdaptorElement,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@update': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.update,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@performRebuild': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.performRebuild,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@createChild': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.createChild,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@updateChild': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.updateChild,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@forgetChild': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.forgetChild,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@removeChild': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.removeChild,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@estimateMaxScrollOffset': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.estimateMaxScrollOffset,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@didStartLayout': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.didStartLayout,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@didFinishLayout': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.didFinishLayout,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@debugAssertChildListLocked': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.debugAssertChildListLocked,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@didAdoptChild': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.didAdoptChild,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@setDidUnderflow': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.setDidUnderflow,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@insertRenderObjectChild': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.insertRenderObjectChild,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@moveRenderObjectChild': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.moveRenderObjectChild,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@removeRenderObjectChild': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>target.removeRenderObjectChild,
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@visitChildren': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>( visitor){
void visitorProxy( element) {
 engine.callFunctionPointer(scope, visitor!,[element], {});
}

target.visitChildren(visitorProxy);
},
'package:flutter/src/widgets/sliver.dart@SliverMultiBoxAdaptorElement@debugVisitOnstageChildren': (m.Scope scope, SliverMultiBoxAdaptorElement target)=>( visitor){
void visitorProxy( element) {
 engine.callFunctionPointer(scope, visitor!,[element], {});
}

target.debugVisitOnstageChildren(visitorProxy);
},
'package:flutter/src/widgets/sliver.dart@SliverOpacity@#as': (m.Scope scope, target)=>()=>target as SliverOpacity,
'package:flutter/src/widgets/sliver.dart@SliverOpacity@#is': (m.Scope scope, target)=>()=>target is SliverOpacity,
'package:flutter/src/widgets/sliver.dart@SliverOpacity@opacity': (m.Scope scope, SliverOpacity target)=>target.opacity,
'package:flutter/src/widgets/sliver.dart@SliverOpacity@alwaysIncludeSemantics': (m.Scope scope, SliverOpacity target)=>target.alwaysIncludeSemantics,
'package:flutter/src/widgets/sliver.dart@SliverOpacity@': (m.Scope scope)=>SliverOpacity,
'package:flutter/src/widgets/sliver.dart@SliverOpacity@createRenderObject': (m.Scope scope, SliverOpacity target)=>target.createRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverOpacity@updateRenderObject': (m.Scope scope, SliverOpacity target)=>target.updateRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverOpacity@debugFillProperties': (m.Scope scope, SliverOpacity target)=>target.debugFillProperties,
'package:flutter/src/widgets/sliver.dart@SliverIgnorePointer@#as': (m.Scope scope, target)=>()=>target as SliverIgnorePointer,
'package:flutter/src/widgets/sliver.dart@SliverIgnorePointer@#is': (m.Scope scope, target)=>()=>target is SliverIgnorePointer,
'package:flutter/src/widgets/sliver.dart@SliverIgnorePointer@ignoring': (m.Scope scope, SliverIgnorePointer target)=>target.ignoring,
'package:flutter/src/widgets/sliver.dart@SliverIgnorePointer@ignoringSemantics': (m.Scope scope, SliverIgnorePointer target)=>target.ignoringSemantics,
'package:flutter/src/widgets/sliver.dart@SliverIgnorePointer@': (m.Scope scope)=>({ ignoring,  ignoringSemantics,  key,  sliver}){
return SliverIgnorePointer(ignoring:ignoring ?? true, ignoringSemantics:ignoringSemantics, key:key, sliver:sliver);
},
'package:flutter/src/widgets/sliver.dart@SliverIgnorePointer@createRenderObject': (m.Scope scope, SliverIgnorePointer target)=>target.createRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverIgnorePointer@updateRenderObject': (m.Scope scope, SliverIgnorePointer target)=>target.updateRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverIgnorePointer@debugFillProperties': (m.Scope scope, SliverIgnorePointer target)=>target.debugFillProperties,
'package:flutter/src/widgets/sliver.dart@SliverOffstage@#as': (m.Scope scope, target)=>()=>target as SliverOffstage,
'package:flutter/src/widgets/sliver.dart@SliverOffstage@#is': (m.Scope scope, target)=>()=>target is SliverOffstage,
'package:flutter/src/widgets/sliver.dart@SliverOffstage@offstage': (m.Scope scope, SliverOffstage target)=>target.offstage,
'package:flutter/src/widgets/sliver.dart@SliverOffstage@': (m.Scope scope)=>({ key,  offstage,  sliver}){
return SliverOffstage(key:key, offstage:offstage ?? true, sliver:sliver);
},
'package:flutter/src/widgets/sliver.dart@SliverOffstage@createRenderObject': (m.Scope scope, SliverOffstage target)=>target.createRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverOffstage@updateRenderObject': (m.Scope scope, SliverOffstage target)=>target.updateRenderObject,
'package:flutter/src/widgets/sliver.dart@SliverOffstage@debugFillProperties': (m.Scope scope, SliverOffstage target)=>target.debugFillProperties,
'package:flutter/src/widgets/sliver.dart@SliverOffstage@createElement': (m.Scope scope, SliverOffstage target)=>target.createElement,
'package:flutter/src/widgets/sliver.dart@KeepAlive@#as': (m.Scope scope, target)=>()=>target as KeepAlive,
'package:flutter/src/widgets/sliver.dart@KeepAlive@#is': (m.Scope scope, target)=>()=>target is KeepAlive,
'package:flutter/src/widgets/sliver.dart@KeepAlive@keepAlive': (m.Scope scope, KeepAlive target)=>target.keepAlive,
'package:flutter/src/widgets/sliver.dart@KeepAlive@debugTypicalAncestorWidgetClass': (m.Scope scope, KeepAlive target)=>target.debugTypicalAncestorWidgetClass,
'package:flutter/src/widgets/sliver.dart@KeepAlive@': (m.Scope scope)=>KeepAlive,
'package:flutter/src/widgets/sliver.dart@KeepAlive@applyParentData': (m.Scope scope, KeepAlive target)=>target.applyParentData,
'package:flutter/src/widgets/sliver.dart@KeepAlive@debugCanApplyOutOfTurn': (m.Scope scope, KeepAlive target)=>target.debugCanApplyOutOfTurn,
'package:flutter/src/widgets/sliver.dart@KeepAlive@debugFillProperties': (m.Scope scope, KeepAlive target)=>target.debugFillProperties,

};
}