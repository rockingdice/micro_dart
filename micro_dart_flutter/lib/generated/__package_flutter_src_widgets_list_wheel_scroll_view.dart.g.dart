import 'package:flutter/src/widgets/list_wheel_scroll_view.dart';
import 'dart:collection';
import 'dart:math';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildDelegate@#as': (m.Scope scope, target)=>()=>target as ListWheelChildDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildDelegate@#is': (m.Scope scope, target)=>()=>target is ListWheelChildDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildDelegate@estimatedChildCount': (m.Scope scope, ListWheelChildDelegate target)=>target.estimatedChildCount,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildDelegate@build': (m.Scope scope, ListWheelChildDelegate target)=>target.build,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildDelegate@trueIndexOf': (m.Scope scope, ListWheelChildDelegate target)=>target.trueIndexOf,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildDelegate@shouldRebuild': (m.Scope scope, ListWheelChildDelegate target)=>target.shouldRebuild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildListDelegate@#as': (m.Scope scope, target)=>()=>target as ListWheelChildListDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildListDelegate@#is': (m.Scope scope, target)=>()=>target is ListWheelChildListDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildListDelegate@children': (m.Scope scope, ListWheelChildListDelegate target)=>target.children,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildListDelegate@estimatedChildCount': (m.Scope scope, ListWheelChildListDelegate target)=>target.estimatedChildCount,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildListDelegate@': (m.Scope scope)=>ListWheelChildListDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildListDelegate@build': (m.Scope scope, ListWheelChildListDelegate target)=>target.build,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildListDelegate@shouldRebuild': (m.Scope scope, ListWheelChildListDelegate target)=>target.shouldRebuild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildLoopingListDelegate@#as': (m.Scope scope, target)=>()=>target as ListWheelChildLoopingListDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildLoopingListDelegate@#is': (m.Scope scope, target)=>()=>target is ListWheelChildLoopingListDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildLoopingListDelegate@children': (m.Scope scope, ListWheelChildLoopingListDelegate target)=>target.children,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildLoopingListDelegate@estimatedChildCount': (m.Scope scope, ListWheelChildLoopingListDelegate target)=>target.estimatedChildCount,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildLoopingListDelegate@': (m.Scope scope)=>ListWheelChildLoopingListDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildLoopingListDelegate@trueIndexOf': (m.Scope scope, ListWheelChildLoopingListDelegate target)=>target.trueIndexOf,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildLoopingListDelegate@build': (m.Scope scope, ListWheelChildLoopingListDelegate target)=>target.build,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildLoopingListDelegate@shouldRebuild': (m.Scope scope, ListWheelChildLoopingListDelegate target)=>target.shouldRebuild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildBuilderDelegate@#as': (m.Scope scope, target)=>()=>target as ListWheelChildBuilderDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildBuilderDelegate@#is': (m.Scope scope, target)=>()=>target is ListWheelChildBuilderDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildBuilderDelegate@builder': (m.Scope scope, ListWheelChildBuilderDelegate target)=>target.builder,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildBuilderDelegate@childCount': (m.Scope scope, ListWheelChildBuilderDelegate target)=>target.childCount,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildBuilderDelegate@estimatedChildCount': (m.Scope scope, ListWheelChildBuilderDelegate target)=>target.estimatedChildCount,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildBuilderDelegate@': (m.Scope scope)=>({ builder,  childCount}){
Widget builderProxy( context,  index) {
return  engine.callFunctionPointer(scope, builder!,[context, index], {});
}

return ListWheelChildBuilderDelegate(builder:builderProxy, childCount:childCount);
},
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildBuilderDelegate@build': (m.Scope scope, ListWheelChildBuilderDelegate target)=>target.build,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelChildBuilderDelegate@shouldRebuild': (m.Scope scope, ListWheelChildBuilderDelegate target)=>target.shouldRebuild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollController@#as': (m.Scope scope, target)=>()=>target as FixedExtentScrollController,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollController@#is': (m.Scope scope, target)=>()=>target is FixedExtentScrollController,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollController@initialItem': (m.Scope scope, FixedExtentScrollController target)=>target.initialItem,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollController@selectedItem': (m.Scope scope, FixedExtentScrollController target)=>target.selectedItem,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollController@': (m.Scope scope)=>({ initialItem}){
return FixedExtentScrollController(initialItem:initialItem ?? 0);
},
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollController@animateToItem': (m.Scope scope, FixedExtentScrollController target)=>target.animateToItem,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollController@jumpToItem': (m.Scope scope, FixedExtentScrollController target)=>target.jumpToItem,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollController@createScrollPosition': (m.Scope scope, FixedExtentScrollController target)=>target.createScrollPosition,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentMetrics@#as': (m.Scope scope, target)=>()=>target as FixedExtentMetrics,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentMetrics@#is': (m.Scope scope, target)=>()=>target is FixedExtentMetrics,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentMetrics@itemIndex': (m.Scope scope, FixedExtentMetrics target)=>target.itemIndex,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentMetrics@': (m.Scope scope)=>FixedExtentMetrics,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentMetrics@copyWith': (m.Scope scope, FixedExtentMetrics target)=>target.copyWith,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollPhysics@#as': (m.Scope scope, target)=>()=>target as FixedExtentScrollPhysics,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollPhysics@#is': (m.Scope scope, target)=>()=>target is FixedExtentScrollPhysics,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollPhysics@': (m.Scope scope)=>({ parent}){
return FixedExtentScrollPhysics(parent:parent);
},
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollPhysics@applyTo': (m.Scope scope, FixedExtentScrollPhysics target)=>target.applyTo,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@FixedExtentScrollPhysics@createBallisticSimulation': (m.Scope scope, FixedExtentScrollPhysics target)=>target.createBallisticSimulation,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@#as': (m.Scope scope, target)=>()=>target as ListWheelScrollView,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@#is': (m.Scope scope, target)=>()=>target is ListWheelScrollView,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@controller': (m.Scope scope, ListWheelScrollView target)=>target.controller,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@physics': (m.Scope scope, ListWheelScrollView target)=>target.physics,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@diameterRatio': (m.Scope scope, ListWheelScrollView target)=>target.diameterRatio,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@perspective': (m.Scope scope, ListWheelScrollView target)=>target.perspective,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@offAxisFraction': (m.Scope scope, ListWheelScrollView target)=>target.offAxisFraction,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@useMagnifier': (m.Scope scope, ListWheelScrollView target)=>target.useMagnifier,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@magnification': (m.Scope scope, ListWheelScrollView target)=>target.magnification,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@overAndUnderCenterOpacity': (m.Scope scope, ListWheelScrollView target)=>target.overAndUnderCenterOpacity,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@itemExtent': (m.Scope scope, ListWheelScrollView target)=>target.itemExtent,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@squeeze': (m.Scope scope, ListWheelScrollView target)=>target.squeeze,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@onSelectedItemChanged': (m.Scope scope, ListWheelScrollView target)=>target.onSelectedItemChanged,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@renderChildrenOutsideViewport': (m.Scope scope, ListWheelScrollView target)=>target.renderChildrenOutsideViewport,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@childDelegate': (m.Scope scope, ListWheelScrollView target)=>target.childDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@clipBehavior': (m.Scope scope, ListWheelScrollView target)=>target.clipBehavior,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@restorationId': (m.Scope scope, ListWheelScrollView target)=>target.restorationId,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@scrollBehavior': (m.Scope scope, ListWheelScrollView target)=>target.scrollBehavior,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@': (m.Scope scope)=>({ children,  clipBehavior,  controller,  diameterRatio,  itemExtent,  key,  magnification,  offAxisFraction,  onSelectedItemChanged,  overAndUnderCenterOpacity,  perspective,  physics,  renderChildrenOutsideViewport,  restorationId,  scrollBehavior,  squeeze,  useMagnifier}){
void onSelectedItemChangedProxy( value) {
 engine.callFunctionPointer(scope, onSelectedItemChanged!,[value], {});
}

return ListWheelScrollView(children:children, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, diameterRatio:diameterRatio ?? RenderListWheelViewport.defaultDiameterRatio, itemExtent:itemExtent, key:key, magnification:magnification ?? 1.0, offAxisFraction:offAxisFraction ?? 0.0, onSelectedItemChanged:onSelectedItemChanged == null ? null :onSelectedItemChangedProxy, overAndUnderCenterOpacity:overAndUnderCenterOpacity ?? 1.0, perspective:perspective ?? RenderListWheelViewport.defaultPerspective, physics:physics, renderChildrenOutsideViewport:renderChildrenOutsideViewport ?? false, restorationId:restorationId, scrollBehavior:scrollBehavior, squeeze:squeeze ?? 1.0, useMagnifier:useMagnifier ?? false);
},
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@useDelegate': (m.Scope scope)=>({ childDelegate,  clipBehavior,  controller,  diameterRatio,  itemExtent,  key,  magnification,  offAxisFraction,  onSelectedItemChanged,  overAndUnderCenterOpacity,  perspective,  physics,  renderChildrenOutsideViewport,  restorationId,  scrollBehavior,  squeeze,  useMagnifier}){
void onSelectedItemChangedProxy( value) {
 engine.callFunctionPointer(scope, onSelectedItemChanged!,[value], {});
}

return ListWheelScrollView.useDelegate(childDelegate:childDelegate, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, diameterRatio:diameterRatio ?? RenderListWheelViewport.defaultDiameterRatio, itemExtent:itemExtent, key:key, magnification:magnification ?? 1.0, offAxisFraction:offAxisFraction ?? 0.0, onSelectedItemChanged:onSelectedItemChanged == null ? null :onSelectedItemChangedProxy, overAndUnderCenterOpacity:overAndUnderCenterOpacity ?? 1.0, perspective:perspective ?? RenderListWheelViewport.defaultPerspective, physics:physics, renderChildrenOutsideViewport:renderChildrenOutsideViewport ?? false, restorationId:restorationId, scrollBehavior:scrollBehavior, squeeze:squeeze ?? 1.0, useMagnifier:useMagnifier ?? false);
},
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelScrollView@createState': (m.Scope scope, ListWheelScrollView target)=>target.createState,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@#as': (m.Scope scope, target)=>()=>target as ListWheelElement,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@#is': (m.Scope scope, target)=>()=>target is ListWheelElement,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@renderObject': (m.Scope scope, ListWheelElement target)=>target.renderObject,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@childCount': (m.Scope scope, ListWheelElement target)=>target.childCount,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@': (m.Scope scope)=>ListWheelElement,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@update': (m.Scope scope, ListWheelElement target)=>target.update,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@performRebuild': (m.Scope scope, ListWheelElement target)=>target.performRebuild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@retrieveWidget': (m.Scope scope, ListWheelElement target)=>target.retrieveWidget,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@childExistsAt': (m.Scope scope, ListWheelElement target)=>target.childExistsAt,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@createChild': (m.Scope scope, ListWheelElement target)=>target.createChild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@removeChild': (m.Scope scope, ListWheelElement target)=>target.removeChild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@updateChild': (m.Scope scope, ListWheelElement target)=>target.updateChild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@insertRenderObjectChild': (m.Scope scope, ListWheelElement target)=>target.insertRenderObjectChild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@moveRenderObjectChild': (m.Scope scope, ListWheelElement target)=>target.moveRenderObjectChild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@removeRenderObjectChild': (m.Scope scope, ListWheelElement target)=>target.removeRenderObjectChild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@visitChildren': (m.Scope scope, ListWheelElement target)=>( visitor){
void visitorProxy( element) {
 engine.callFunctionPointer(scope, visitor!,[element], {});
}

target.visitChildren(visitorProxy);
},
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelElement@forgetChild': (m.Scope scope, ListWheelElement target)=>target.forgetChild,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@#as': (m.Scope scope, target)=>()=>target as ListWheelViewport,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@#is': (m.Scope scope, target)=>()=>target is ListWheelViewport,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@diameterRatio': (m.Scope scope, ListWheelViewport target)=>target.diameterRatio,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@perspective': (m.Scope scope, ListWheelViewport target)=>target.perspective,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@offAxisFraction': (m.Scope scope, ListWheelViewport target)=>target.offAxisFraction,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@useMagnifier': (m.Scope scope, ListWheelViewport target)=>target.useMagnifier,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@magnification': (m.Scope scope, ListWheelViewport target)=>target.magnification,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@overAndUnderCenterOpacity': (m.Scope scope, ListWheelViewport target)=>target.overAndUnderCenterOpacity,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@itemExtent': (m.Scope scope, ListWheelViewport target)=>target.itemExtent,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@squeeze': (m.Scope scope, ListWheelViewport target)=>target.squeeze,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@renderChildrenOutsideViewport': (m.Scope scope, ListWheelViewport target)=>target.renderChildrenOutsideViewport,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@offset': (m.Scope scope, ListWheelViewport target)=>target.offset,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@childDelegate': (m.Scope scope, ListWheelViewport target)=>target.childDelegate,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@clipBehavior': (m.Scope scope, ListWheelViewport target)=>target.clipBehavior,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@': (m.Scope scope)=>ListWheelViewport,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@createElement': (m.Scope scope, ListWheelViewport target)=>target.createElement,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@createRenderObject': (m.Scope scope, ListWheelViewport target)=>target.createRenderObject,
'package:flutter/src/widgets/list_wheel_scroll_view.dart@ListWheelViewport@updateRenderObject': (m.Scope scope, ListWheelViewport target)=>target.updateRenderObject,

};
}