import 'package:flutter/src/widgets/scrollbar.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/scrollable_helpers.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@#as': (m.Scope scope, target)=>()=>target as ScrollbarPainter,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@#is': (m.Scope scope, target)=>()=>target is ScrollbarPainter,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@fadeoutOpacityAnimation': (m.Scope scope, ScrollbarPainter target)=>target.fadeoutOpacityAnimation,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@color': (m.Scope scope, ScrollbarPainter target)=>target.color,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@color:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.color=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@trackColor': (m.Scope scope, ScrollbarPainter target)=>target.trackColor,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@trackColor:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.trackColor=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@trackBorderColor': (m.Scope scope, ScrollbarPainter target)=>target.trackBorderColor,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@trackBorderColor:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.trackBorderColor=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@trackRadius': (m.Scope scope, ScrollbarPainter target)=>target.trackRadius,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@trackRadius:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.trackRadius=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@textDirection': (m.Scope scope, ScrollbarPainter target)=>target.textDirection,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@textDirection:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.textDirection=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@thickness': (m.Scope scope, ScrollbarPainter target)=>target.thickness,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@thickness:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.thickness=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@mainAxisMargin': (m.Scope scope, ScrollbarPainter target)=>target.mainAxisMargin,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@mainAxisMargin:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.mainAxisMargin=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@crossAxisMargin': (m.Scope scope, ScrollbarPainter target)=>target.crossAxisMargin,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@crossAxisMargin:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.crossAxisMargin=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@radius': (m.Scope scope, ScrollbarPainter target)=>target.radius,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@radius:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.radius=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@shape': (m.Scope scope, ScrollbarPainter target)=>target.shape,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@shape:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.shape=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@padding': (m.Scope scope, ScrollbarPainter target)=>target.padding,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@padding:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.padding=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@minLength': (m.Scope scope, ScrollbarPainter target)=>target.minLength,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@minLength:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.minLength=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@minOverscrollLength': (m.Scope scope, ScrollbarPainter target)=>target.minOverscrollLength,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@minOverscrollLength:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.minOverscrollLength=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@scrollbarOrientation': (m.Scope scope, ScrollbarPainter target)=>target.scrollbarOrientation,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@scrollbarOrientation:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.scrollbarOrientation=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@ignorePointer': (m.Scope scope, ScrollbarPainter target)=>target.ignorePointer,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@ignorePointer:set': (m.Scope scope, ScrollbarPainter target)=>(other)=>target.ignorePointer=other,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@semanticsBuilder': (m.Scope scope, ScrollbarPainter target)=>target.semanticsBuilder,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@': (m.Scope scope)=>ScrollbarPainter,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@update': (m.Scope scope, ScrollbarPainter target)=>target.update,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@updateThickness': (m.Scope scope, ScrollbarPainter target)=>target.updateThickness,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@paint': (m.Scope scope, ScrollbarPainter target)=>target.paint,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@getTrackToScroll': (m.Scope scope, ScrollbarPainter target)=>target.getTrackToScroll,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@getThumbScrollOffset': (m.Scope scope, ScrollbarPainter target)=>target.getThumbScrollOffset,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@hitTest': (m.Scope scope, ScrollbarPainter target)=>target.hitTest,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@hitTestInteractive': (m.Scope scope, ScrollbarPainter target)=>target.hitTestInteractive,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@hitTestOnlyThumbInteractive': (m.Scope scope, ScrollbarPainter target)=>target.hitTestOnlyThumbInteractive,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@shouldRepaint': (m.Scope scope, ScrollbarPainter target)=>target.shouldRepaint,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@shouldRebuildSemantics': (m.Scope scope, ScrollbarPainter target)=>target.shouldRebuildSemantics,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@toString': (m.Scope scope, ScrollbarPainter target)=>target.toString,
'package:flutter/src/widgets/scrollbar.dart@ScrollbarPainter@dispose': (m.Scope scope, ScrollbarPainter target)=>target.dispose,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@#as': (m.Scope scope, target)=>()=>target as RawScrollbar,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@#is': (m.Scope scope, target)=>()=>target is RawScrollbar,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@child': (m.Scope scope, RawScrollbar target)=>target.child,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@controller': (m.Scope scope, RawScrollbar target)=>target.controller,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@thumbVisibility': (m.Scope scope, RawScrollbar target)=>target.thumbVisibility,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@isAlwaysShown': (m.Scope scope, RawScrollbar target)=>target.isAlwaysShown,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@shape': (m.Scope scope, RawScrollbar target)=>target.shape,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@radius': (m.Scope scope, RawScrollbar target)=>target.radius,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@thickness': (m.Scope scope, RawScrollbar target)=>target.thickness,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@thumbColor': (m.Scope scope, RawScrollbar target)=>target.thumbColor,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@minThumbLength': (m.Scope scope, RawScrollbar target)=>target.minThumbLength,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@minOverscrollLength': (m.Scope scope, RawScrollbar target)=>target.minOverscrollLength,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@trackVisibility': (m.Scope scope, RawScrollbar target)=>target.trackVisibility,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@trackRadius': (m.Scope scope, RawScrollbar target)=>target.trackRadius,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@trackColor': (m.Scope scope, RawScrollbar target)=>target.trackColor,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@trackBorderColor': (m.Scope scope, RawScrollbar target)=>target.trackBorderColor,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@fadeDuration': (m.Scope scope, RawScrollbar target)=>target.fadeDuration,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@timeToFade': (m.Scope scope, RawScrollbar target)=>target.timeToFade,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@pressDuration': (m.Scope scope, RawScrollbar target)=>target.pressDuration,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@notificationPredicate': (m.Scope scope, RawScrollbar target)=>target.notificationPredicate,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@interactive': (m.Scope scope, RawScrollbar target)=>target.interactive,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@scrollbarOrientation': (m.Scope scope, RawScrollbar target)=>target.scrollbarOrientation,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@mainAxisMargin': (m.Scope scope, RawScrollbar target)=>target.mainAxisMargin,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@crossAxisMargin': (m.Scope scope, RawScrollbar target)=>target.crossAxisMargin,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@padding': (m.Scope scope, RawScrollbar target)=>target.padding,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@': (m.Scope scope)=>({ child,  controller,  crossAxisMargin,  fadeDuration,  interactive,  isAlwaysShown,  key,  mainAxisMargin,  minOverscrollLength,  minThumbLength,  notificationPredicate,  padding,  pressDuration,  radius,  scrollbarOrientation,  shape,  thickness,  thumbColor,  thumbVisibility,  timeToFade,  trackBorderColor,  trackColor,  trackRadius,  trackVisibility}){
bool notificationPredicateProxy( notification) {
return  engine.callFunctionPointer(scope, notificationPredicate!,[notification], {});
}

return RawScrollbar(child:child, controller:controller, crossAxisMargin:crossAxisMargin ?? 0.0, fadeDuration:fadeDuration ?? const Duration(milliseconds: 300), interactive:interactive, isAlwaysShown:isAlwaysShown, key:key, mainAxisMargin:mainAxisMargin ?? 0.0, minOverscrollLength:minOverscrollLength, minThumbLength:minThumbLength ?? 18.0, notificationPredicate:notificationPredicate == null ? defaultScrollNotificationPredicate :notificationPredicateProxy, padding:padding, pressDuration:pressDuration ?? Duration.zero, radius:radius, scrollbarOrientation:scrollbarOrientation, shape:shape, thickness:thickness, thumbColor:thumbColor, thumbVisibility:thumbVisibility, timeToFade:timeToFade ?? const Duration(milliseconds: 600), trackBorderColor:trackBorderColor, trackColor:trackColor, trackRadius:trackRadius, trackVisibility:trackVisibility);
},
'package:flutter/src/widgets/scrollbar.dart@RawScrollbar@createState': (m.Scope scope, RawScrollbar target)=>target.createState,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@#as': (m.Scope scope, target)=>()=>target as RawScrollbarState,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@#is': (m.Scope scope, target)=>()=>target is RawScrollbarState,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@scrollbarPainter': (m.Scope scope, RawScrollbarState target)=>target.scrollbarPainter,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@scrollbarPainter:set': (m.Scope scope, RawScrollbarState target)=>(other)=>target.scrollbarPainter=other,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@showScrollbar': (m.Scope scope, RawScrollbarState target)=>target.showScrollbar,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@enableGestures': (m.Scope scope, RawScrollbarState target)=>target.enableGestures,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@': (m.Scope scope)=><T>(){
return RawScrollbarState();
},
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@initState': (m.Scope scope, RawScrollbarState target)=>target.initState,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@didChangeDependencies': (m.Scope scope, RawScrollbarState target)=>target.didChangeDependencies,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@updateScrollbarPainter': (m.Scope scope, RawScrollbarState target)=>target.updateScrollbarPainter,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@didUpdateWidget': (m.Scope scope, RawScrollbarState target)=>target.didUpdateWidget,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@getScrollbarDirection': (m.Scope scope, RawScrollbarState target)=>target.getScrollbarDirection,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@handleThumbPress': (m.Scope scope, RawScrollbarState target)=>target.handleThumbPress,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@handleThumbPressStart': (m.Scope scope, RawScrollbarState target)=>target.handleThumbPressStart,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@handleThumbPressUpdate': (m.Scope scope, RawScrollbarState target)=>target.handleThumbPressUpdate,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@handleThumbPressEnd': (m.Scope scope, RawScrollbarState target)=>target.handleThumbPressEnd,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@isPointerOverTrack': (m.Scope scope, RawScrollbarState target)=>target.isPointerOverTrack,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@isPointerOverThumb': (m.Scope scope, RawScrollbarState target)=>target.isPointerOverThumb,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@isPointerOverScrollbar': (m.Scope scope, RawScrollbarState target)=>target.isPointerOverScrollbar,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@handleHover': (m.Scope scope, RawScrollbarState target)=>target.handleHover,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@handleHoverExit': (m.Scope scope, RawScrollbarState target)=>target.handleHoverExit,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@dispose': (m.Scope scope, RawScrollbarState target)=>target.dispose,
'package:flutter/src/widgets/scrollbar.dart@RawScrollbarState@build': (m.Scope scope, RawScrollbarState target)=>target.build,

};
}