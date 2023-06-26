import 'package:flutter/src/widgets/scrollable.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/restoration.dart';
import 'package:flutter/src/widgets/restoration_properties.dart';
import 'package:flutter/src/widgets/scroll_activity.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scrollable_helpers.dart';
import 'package:flutter/src/widgets/selectable_region.dart';
import 'package:flutter/src/widgets/selection_container.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/viewport.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scrollable.dart@Scrollable@#as': (m.Scope scope, target)=>()=>target as Scrollable,
'package:flutter/src/widgets/scrollable.dart@Scrollable@#is': (m.Scope scope, target)=>()=>target is Scrollable,
'package:flutter/src/widgets/scrollable.dart@Scrollable@axisDirection': (m.Scope scope, Scrollable target)=>target.axisDirection,
'package:flutter/src/widgets/scrollable.dart@Scrollable@controller': (m.Scope scope, Scrollable target)=>target.controller,
'package:flutter/src/widgets/scrollable.dart@Scrollable@physics': (m.Scope scope, Scrollable target)=>target.physics,
'package:flutter/src/widgets/scrollable.dart@Scrollable@viewportBuilder': (m.Scope scope, Scrollable target)=>target.viewportBuilder,
'package:flutter/src/widgets/scrollable.dart@Scrollable@incrementCalculator': (m.Scope scope, Scrollable target)=>target.incrementCalculator,
'package:flutter/src/widgets/scrollable.dart@Scrollable@excludeFromSemantics': (m.Scope scope, Scrollable target)=>target.excludeFromSemantics,
'package:flutter/src/widgets/scrollable.dart@Scrollable@semanticChildCount': (m.Scope scope, Scrollable target)=>target.semanticChildCount,
'package:flutter/src/widgets/scrollable.dart@Scrollable@dragStartBehavior': (m.Scope scope, Scrollable target)=>target.dragStartBehavior,
'package:flutter/src/widgets/scrollable.dart@Scrollable@restorationId': (m.Scope scope, Scrollable target)=>target.restorationId,
'package:flutter/src/widgets/scrollable.dart@Scrollable@scrollBehavior': (m.Scope scope, Scrollable target)=>target.scrollBehavior,
'package:flutter/src/widgets/scrollable.dart@Scrollable@clipBehavior': (m.Scope scope, Scrollable target)=>target.clipBehavior,
'package:flutter/src/widgets/scrollable.dart@Scrollable@axis': (m.Scope scope, Scrollable target)=>target.axis,
'package:flutter/src/widgets/scrollable.dart@Scrollable@': (m.Scope scope)=>({ axisDirection,  clipBehavior,  controller,  dragStartBehavior,  excludeFromSemantics,  incrementCalculator,  key,  physics,  restorationId,  scrollBehavior,  semanticChildCount,  viewportBuilder}){
double incrementCalculatorProxy( details) {
return  engine.callFunctionPointer(scope, incrementCalculator!,[details], {});
}

Widget viewportBuilderProxy( context,  position) {
return  engine.callFunctionPointer(scope, viewportBuilder!,[context, position], {});
}

return Scrollable(axisDirection:axisDirection ?? AxisDirection.down, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, excludeFromSemantics:excludeFromSemantics ?? false, incrementCalculator:incrementCalculator == null ? null :incrementCalculatorProxy, key:key, physics:physics, restorationId:restorationId, scrollBehavior:scrollBehavior, semanticChildCount:semanticChildCount, viewportBuilder:viewportBuilderProxy);
},
'package:flutter/src/widgets/scrollable.dart@Scrollable@createState': (m.Scope scope, Scrollable target)=>target.createState,
'package:flutter/src/widgets/scrollable.dart@Scrollable@debugFillProperties': (m.Scope scope, Scrollable target)=>target.debugFillProperties,
'package:flutter/src/widgets/scrollable.dart@Scrollable@maybeOf': (m.Scope scope)=>Scrollable.maybeOf,
'package:flutter/src/widgets/scrollable.dart@Scrollable@of': (m.Scope scope)=>Scrollable.of,
'package:flutter/src/widgets/scrollable.dart@Scrollable@recommendDeferredLoadingForContext': (m.Scope scope)=>Scrollable.recommendDeferredLoadingForContext,
'package:flutter/src/widgets/scrollable.dart@Scrollable@ensureVisible': (m.Scope scope)=>Scrollable.ensureVisible,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@#as': (m.Scope scope, target)=>()=>target as ScrollableState,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@#is': (m.Scope scope, target)=>()=>target is ScrollableState,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@position': (m.Scope scope, ScrollableState target)=>target.position,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@resolvedPhysics': (m.Scope scope, ScrollableState target)=>target.resolvedPhysics,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@deltaToScrollOrigin': (m.Scope scope, ScrollableState target)=>target.deltaToScrollOrigin,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@axisDirection': (m.Scope scope, ScrollableState target)=>target.axisDirection,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@vsync': (m.Scope scope, ScrollableState target)=>target.vsync,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@notificationContext': (m.Scope scope, ScrollableState target)=>target.notificationContext,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@storageContext': (m.Scope scope, ScrollableState target)=>target.storageContext,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@restorationId': (m.Scope scope, ScrollableState target)=>target.restorationId,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@': (m.Scope scope)=>(){
return ScrollableState();
},
'package:flutter/src/widgets/scrollable.dart@ScrollableState@restoreState': (m.Scope scope, ScrollableState target)=>target.restoreState,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@saveOffset': (m.Scope scope, ScrollableState target)=>target.saveOffset,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@initState': (m.Scope scope, ScrollableState target)=>target.initState,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@didChangeDependencies': (m.Scope scope, ScrollableState target)=>target.didChangeDependencies,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@didUpdateWidget': (m.Scope scope, ScrollableState target)=>target.didUpdateWidget,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@dispose': (m.Scope scope, ScrollableState target)=>target.dispose,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@setSemanticsActions': (m.Scope scope, ScrollableState target)=>target.setSemanticsActions,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@setCanDrag': (m.Scope scope, ScrollableState target)=>target.setCanDrag,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@setIgnorePointer': (m.Scope scope, ScrollableState target)=>target.setIgnorePointer,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@build': (m.Scope scope, ScrollableState target)=>target.build,
'package:flutter/src/widgets/scrollable.dart@ScrollableState@debugFillProperties': (m.Scope scope, ScrollableState target)=>target.debugFillProperties,

};
}