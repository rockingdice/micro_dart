import 'package:flutter/src/widgets/scroll_delegate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/automatic_keep_alive.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/selection_container.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildDelegate@#as': (m.Scope scope, target)=>()=>target as SliverChildDelegate,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildDelegate@#is': (m.Scope scope, target)=>()=>target is SliverChildDelegate,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildDelegate@estimatedChildCount': (m.Scope scope, SliverChildDelegate target)=>target.estimatedChildCount,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildDelegate@build': (m.Scope scope, SliverChildDelegate target)=>target.build,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildDelegate@estimateMaxScrollOffset': (m.Scope scope, SliverChildDelegate target)=>target.estimateMaxScrollOffset,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildDelegate@didFinishLayout': (m.Scope scope, SliverChildDelegate target)=>target.didFinishLayout,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildDelegate@shouldRebuild': (m.Scope scope, SliverChildDelegate target)=>target.shouldRebuild,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildDelegate@findIndexByKey': (m.Scope scope, SliverChildDelegate target)=>target.findIndexByKey,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildDelegate@toString': (m.Scope scope, SliverChildDelegate target)=>target.toString,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildDelegate@debugFillDescription': (m.Scope scope, SliverChildDelegate target)=>target.debugFillDescription,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@#as': (m.Scope scope, target)=>()=>target as SliverChildBuilderDelegate,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@#is': (m.Scope scope, target)=>()=>target is SliverChildBuilderDelegate,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@builder': (m.Scope scope, SliverChildBuilderDelegate target)=>target.builder,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@childCount': (m.Scope scope, SliverChildBuilderDelegate target)=>target.childCount,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@addAutomaticKeepAlives': (m.Scope scope, SliverChildBuilderDelegate target)=>target.addAutomaticKeepAlives,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@addRepaintBoundaries': (m.Scope scope, SliverChildBuilderDelegate target)=>target.addRepaintBoundaries,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@addSemanticIndexes': (m.Scope scope, SliverChildBuilderDelegate target)=>target.addSemanticIndexes,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@semanticIndexOffset': (m.Scope scope, SliverChildBuilderDelegate target)=>target.semanticIndexOffset,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@semanticIndexCallback': (m.Scope scope, SliverChildBuilderDelegate target)=>target.semanticIndexCallback,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@findChildIndexCallback': (m.Scope scope, SliverChildBuilderDelegate target)=>target.findChildIndexCallback,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@estimatedChildCount': (m.Scope scope, SliverChildBuilderDelegate target)=>target.estimatedChildCount,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@': (m.Scope scope)=>( builder, { addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  childCount,  findChildIndexCallback,  semanticIndexCallback,  semanticIndexOffset}){
Widget builderProxy( context,  index) {
return  engine.callFunctionPointer(scope, builder!,[context, index], {});
}

int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

int semanticIndexCallbackProxy( widget,  localIndex) {
return  engine.callFunctionPointer(scope, semanticIndexCallback!,[widget, localIndex], {});
}

return SliverChildBuilderDelegate(builderProxy, addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, childCount:childCount, findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, semanticIndexCallback:semanticIndexCallback == null ? _kDefaultSemanticIndexCallback :semanticIndexCallbackProxy, semanticIndexOffset:semanticIndexOffset ?? 0);
},
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@findIndexByKey': (m.Scope scope, SliverChildBuilderDelegate target)=>target.findIndexByKey,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@build': (m.Scope scope, SliverChildBuilderDelegate target)=>target.build,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildBuilderDelegate@shouldRebuild': (m.Scope scope, SliverChildBuilderDelegate target)=>target.shouldRebuild,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@#as': (m.Scope scope, target)=>()=>target as SliverChildListDelegate,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@#is': (m.Scope scope, target)=>()=>target is SliverChildListDelegate,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@addAutomaticKeepAlives': (m.Scope scope, SliverChildListDelegate target)=>target.addAutomaticKeepAlives,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@addRepaintBoundaries': (m.Scope scope, SliverChildListDelegate target)=>target.addRepaintBoundaries,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@addSemanticIndexes': (m.Scope scope, SliverChildListDelegate target)=>target.addSemanticIndexes,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@semanticIndexOffset': (m.Scope scope, SliverChildListDelegate target)=>target.semanticIndexOffset,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@semanticIndexCallback': (m.Scope scope, SliverChildListDelegate target)=>target.semanticIndexCallback,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@children': (m.Scope scope, SliverChildListDelegate target)=>target.children,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@estimatedChildCount': (m.Scope scope, SliverChildListDelegate target)=>target.estimatedChildCount,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@': (m.Scope scope)=>( children, { addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  semanticIndexCallback,  semanticIndexOffset}){
int semanticIndexCallbackProxy( widget,  localIndex) {
return  engine.callFunctionPointer(scope, semanticIndexCallback!,[widget, localIndex], {});
}

return SliverChildListDelegate(children, addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, semanticIndexCallback:semanticIndexCallback == null ? (Widget _, int localIndex) => localIndex :semanticIndexCallbackProxy, semanticIndexOffset:semanticIndexOffset ?? 0);
},
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@fixed': (m.Scope scope)=>( children, { addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  semanticIndexCallback,  semanticIndexOffset}){
int semanticIndexCallbackProxy( widget,  localIndex) {
return  engine.callFunctionPointer(scope, semanticIndexCallback!,[widget, localIndex], {});
}

return SliverChildListDelegate.fixed(children, addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, semanticIndexCallback:semanticIndexCallback == null ? (Widget _, int localIndex) => localIndex :semanticIndexCallbackProxy, semanticIndexOffset:semanticIndexOffset ?? 0);
},
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@findIndexByKey': (m.Scope scope, SliverChildListDelegate target)=>target.findIndexByKey,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@build': (m.Scope scope, SliverChildListDelegate target)=>target.build,
'package:flutter/src/widgets/scroll_delegate.dart@SliverChildListDelegate@shouldRebuild': (m.Scope scope, SliverChildListDelegate target)=>target.shouldRebuild,

};
}