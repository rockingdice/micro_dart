import 'package:flutter/src/widgets/scroll_position.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/page_storage.dart';
import 'package:flutter/src/widgets/scroll_activity.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/view.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@#as': (m.Scope scope, target)=>()=>target as ScrollPosition,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@#is': (m.Scope scope, target)=>()=>target is ScrollPosition,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@physics': (m.Scope scope, ScrollPosition target)=>target.physics,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@context': (m.Scope scope, ScrollPosition target)=>target.context,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@keepScrollOffset': (m.Scope scope, ScrollPosition target)=>target.keepScrollOffset,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@debugLabel': (m.Scope scope, ScrollPosition target)=>target.debugLabel,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@isScrollingNotifier': (m.Scope scope, ScrollPosition target)=>target.isScrollingNotifier,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@minScrollExtent': (m.Scope scope, ScrollPosition target)=>target.minScrollExtent,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@maxScrollExtent': (m.Scope scope, ScrollPosition target)=>target.maxScrollExtent,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@hasContentDimensions': (m.Scope scope, ScrollPosition target)=>target.hasContentDimensions,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@pixels': (m.Scope scope, ScrollPosition target)=>target.pixels,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@hasPixels': (m.Scope scope, ScrollPosition target)=>target.hasPixels,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@viewportDimension': (m.Scope scope, ScrollPosition target)=>target.viewportDimension,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@hasViewportDimension': (m.Scope scope, ScrollPosition target)=>target.hasViewportDimension,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@haveDimensions': (m.Scope scope, ScrollPosition target)=>target.haveDimensions,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@devicePixelRatio': (m.Scope scope, ScrollPosition target)=>target.devicePixelRatio,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@allowImplicitScrolling': (m.Scope scope, ScrollPosition target)=>target.allowImplicitScrolling,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@activity': (m.Scope scope, ScrollPosition target)=>target.activity,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@absorb': (m.Scope scope, ScrollPosition target)=>target.absorb,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@setPixels': (m.Scope scope, ScrollPosition target)=>target.setPixels,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@correctPixels': (m.Scope scope, ScrollPosition target)=>target.correctPixels,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@correctBy': (m.Scope scope, ScrollPosition target)=>target.correctBy,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@forcePixels': (m.Scope scope, ScrollPosition target)=>target.forcePixels,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@saveScrollOffset': (m.Scope scope, ScrollPosition target)=>target.saveScrollOffset,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@restoreScrollOffset': (m.Scope scope, ScrollPosition target)=>target.restoreScrollOffset,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@restoreOffset': (m.Scope scope, ScrollPosition target)=>target.restoreOffset,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@saveOffset': (m.Scope scope, ScrollPosition target)=>target.saveOffset,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@applyBoundaryConditions': (m.Scope scope, ScrollPosition target)=>target.applyBoundaryConditions,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@applyViewportDimension': (m.Scope scope, ScrollPosition target)=>target.applyViewportDimension,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@applyContentDimensions': (m.Scope scope, ScrollPosition target)=>target.applyContentDimensions,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@correctForNewDimensions': (m.Scope scope, ScrollPosition target)=>target.correctForNewDimensions,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@applyNewDimensions': (m.Scope scope, ScrollPosition target)=>target.applyNewDimensions,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@ensureVisible': (m.Scope scope, ScrollPosition target)=>target.ensureVisible,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@animateTo': (m.Scope scope, ScrollPosition target)=>target.animateTo,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@jumpTo': (m.Scope scope, ScrollPosition target)=>target.jumpTo,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@pointerScroll': (m.Scope scope, ScrollPosition target)=>target.pointerScroll,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@moveTo': (m.Scope scope, ScrollPosition target)=>target.moveTo,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@hold': (m.Scope scope, ScrollPosition target)=>( holdCancelCallback){
void holdCancelCallbackProxy() {
 engine.callFunctionPointer(scope, holdCancelCallback!,[], {});
}

return target.hold(holdCancelCallbackProxy);
},
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@drag': (m.Scope scope, ScrollPosition target)=>( details,  dragCancelCallback){
void dragCancelCallbackProxy() {
 engine.callFunctionPointer(scope, dragCancelCallback!,[], {});
}

return target.drag(details, dragCancelCallbackProxy);
},
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@beginActivity': (m.Scope scope, ScrollPosition target)=>target.beginActivity,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@didStartScroll': (m.Scope scope, ScrollPosition target)=>target.didStartScroll,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@didUpdateScrollPositionBy': (m.Scope scope, ScrollPosition target)=>target.didUpdateScrollPositionBy,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@didEndScroll': (m.Scope scope, ScrollPosition target)=>target.didEndScroll,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@didOverscrollBy': (m.Scope scope, ScrollPosition target)=>target.didOverscrollBy,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@didUpdateScrollDirection': (m.Scope scope, ScrollPosition target)=>target.didUpdateScrollDirection,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@didUpdateScrollMetrics': (m.Scope scope, ScrollPosition target)=>target.didUpdateScrollMetrics,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@recommendDeferredLoading': (m.Scope scope, ScrollPosition target)=>target.recommendDeferredLoading,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@dispose': (m.Scope scope, ScrollPosition target)=>target.dispose,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@notifyListeners': (m.Scope scope, ScrollPosition target)=>target.notifyListeners,
'package:flutter/src/widgets/scroll_position.dart@ScrollPosition@debugFillDescription': (m.Scope scope, ScrollPosition target)=>target.debugFillDescription,
'package:flutter/src/widgets/scroll_position.dart@ScrollMetricsNotification@#as': (m.Scope scope, target)=>()=>target as ScrollMetricsNotification,
'package:flutter/src/widgets/scroll_position.dart@ScrollMetricsNotification@#is': (m.Scope scope, target)=>()=>target is ScrollMetricsNotification,
'package:flutter/src/widgets/scroll_position.dart@ScrollMetricsNotification@metrics': (m.Scope scope, ScrollMetricsNotification target)=>target.metrics,
'package:flutter/src/widgets/scroll_position.dart@ScrollMetricsNotification@context': (m.Scope scope, ScrollMetricsNotification target)=>target.context,
'package:flutter/src/widgets/scroll_position.dart@ScrollMetricsNotification@': (m.Scope scope)=>ScrollMetricsNotification,
'package:flutter/src/widgets/scroll_position.dart@ScrollMetricsNotification@debugFillDescription': (m.Scope scope, ScrollMetricsNotification target)=>target.debugFillDescription,

};
}