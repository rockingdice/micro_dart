import 'package:flutter/src/widgets/routes.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/display_feature_sub_screen.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/modal_barrier.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/page_storage.dart';
import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/src/widgets/restoration.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/routes.dart@OverlayRoute@#as': (m.Scope scope, target)=>()=>target as OverlayRoute,
'package:flutter/src/widgets/routes.dart@OverlayRoute@#is': (m.Scope scope, target)=>()=>target is OverlayRoute,
'package:flutter/src/widgets/routes.dart@OverlayRoute@overlayEntries': (m.Scope scope, OverlayRoute target)=>target.overlayEntries,
'package:flutter/src/widgets/routes.dart@OverlayRoute@finishedWhenPopped': (m.Scope scope, OverlayRoute target)=>target.finishedWhenPopped,
'package:flutter/src/widgets/routes.dart@OverlayRoute@createOverlayEntries': (m.Scope scope, OverlayRoute target)=>target.createOverlayEntries,
'package:flutter/src/widgets/routes.dart@OverlayRoute@install': (m.Scope scope, OverlayRoute target)=>target.install,
'package:flutter/src/widgets/routes.dart@OverlayRoute@didPop': (m.Scope scope, OverlayRoute target)=>target.didPop,
'package:flutter/src/widgets/routes.dart@OverlayRoute@dispose': (m.Scope scope, OverlayRoute target)=>target.dispose,
'package:flutter/src/widgets/routes.dart@TransitionRoute@#as': (m.Scope scope, target)=>()=>target as TransitionRoute,
'package:flutter/src/widgets/routes.dart@TransitionRoute@#is': (m.Scope scope, target)=>()=>target is TransitionRoute,
'package:flutter/src/widgets/routes.dart@TransitionRoute@willDisposeAnimationController': (m.Scope scope, TransitionRoute target)=>target.willDisposeAnimationController,
'package:flutter/src/widgets/routes.dart@TransitionRoute@willDisposeAnimationController:set': (m.Scope scope, TransitionRoute target)=>(other)=>target.willDisposeAnimationController=other,
'package:flutter/src/widgets/routes.dart@TransitionRoute@completed': (m.Scope scope, TransitionRoute target)=>target.completed,
'package:flutter/src/widgets/routes.dart@TransitionRoute@transitionDuration': (m.Scope scope, TransitionRoute target)=>target.transitionDuration,
'package:flutter/src/widgets/routes.dart@TransitionRoute@reverseTransitionDuration': (m.Scope scope, TransitionRoute target)=>target.reverseTransitionDuration,
'package:flutter/src/widgets/routes.dart@TransitionRoute@opaque': (m.Scope scope, TransitionRoute target)=>target.opaque,
'package:flutter/src/widgets/routes.dart@TransitionRoute@allowSnapshotting': (m.Scope scope, TransitionRoute target)=>target.allowSnapshotting,
'package:flutter/src/widgets/routes.dart@TransitionRoute@finishedWhenPopped': (m.Scope scope, TransitionRoute target)=>target.finishedWhenPopped,
'package:flutter/src/widgets/routes.dart@TransitionRoute@animation': (m.Scope scope, TransitionRoute target)=>target.animation,
'package:flutter/src/widgets/routes.dart@TransitionRoute@controller': (m.Scope scope, TransitionRoute target)=>target.controller,
'package:flutter/src/widgets/routes.dart@TransitionRoute@secondaryAnimation': (m.Scope scope, TransitionRoute target)=>target.secondaryAnimation,
'package:flutter/src/widgets/routes.dart@TransitionRoute@debugLabel': (m.Scope scope, TransitionRoute target)=>target.debugLabel,
'package:flutter/src/widgets/routes.dart@TransitionRoute@createAnimationController': (m.Scope scope, TransitionRoute target)=>target.createAnimationController,
'package:flutter/src/widgets/routes.dart@TransitionRoute@createAnimation': (m.Scope scope, TransitionRoute target)=>target.createAnimation,
'package:flutter/src/widgets/routes.dart@TransitionRoute@install': (m.Scope scope, TransitionRoute target)=>target.install,
'package:flutter/src/widgets/routes.dart@TransitionRoute@didPush': (m.Scope scope, TransitionRoute target)=>target.didPush,
'package:flutter/src/widgets/routes.dart@TransitionRoute@didAdd': (m.Scope scope, TransitionRoute target)=>target.didAdd,
'package:flutter/src/widgets/routes.dart@TransitionRoute@didReplace': (m.Scope scope, TransitionRoute target)=>target.didReplace,
'package:flutter/src/widgets/routes.dart@TransitionRoute@didPop': (m.Scope scope, TransitionRoute target)=>target.didPop,
'package:flutter/src/widgets/routes.dart@TransitionRoute@didPopNext': (m.Scope scope, TransitionRoute target)=>target.didPopNext,
'package:flutter/src/widgets/routes.dart@TransitionRoute@didChangeNext': (m.Scope scope, TransitionRoute target)=>target.didChangeNext,
'package:flutter/src/widgets/routes.dart@TransitionRoute@canTransitionTo': (m.Scope scope, TransitionRoute target)=>target.canTransitionTo,
'package:flutter/src/widgets/routes.dart@TransitionRoute@canTransitionFrom': (m.Scope scope, TransitionRoute target)=>target.canTransitionFrom,
'package:flutter/src/widgets/routes.dart@TransitionRoute@dispose': (m.Scope scope, TransitionRoute target)=>target.dispose,
'package:flutter/src/widgets/routes.dart@TransitionRoute@toString': (m.Scope scope, TransitionRoute target)=>target.toString,
'package:flutter/src/widgets/routes.dart@LocalHistoryEntry@#as': (m.Scope scope, target)=>()=>target as LocalHistoryEntry,
'package:flutter/src/widgets/routes.dart@LocalHistoryEntry@#is': (m.Scope scope, target)=>()=>target is LocalHistoryEntry,
'package:flutter/src/widgets/routes.dart@LocalHistoryEntry@onRemove': (m.Scope scope, LocalHistoryEntry target)=>target.onRemove,
'package:flutter/src/widgets/routes.dart@LocalHistoryEntry@impliesAppBarDismissal': (m.Scope scope, LocalHistoryEntry target)=>target.impliesAppBarDismissal,
'package:flutter/src/widgets/routes.dart@LocalHistoryEntry@': (m.Scope scope)=>({ impliesAppBarDismissal,  onRemove}){
void onRemoveProxy() {
 engine.callFunctionPointer(scope, onRemove!,[], {});
}

return LocalHistoryEntry(impliesAppBarDismissal:impliesAppBarDismissal ?? true, onRemove:onRemove == null ? null :onRemoveProxy);
},
'package:flutter/src/widgets/routes.dart@LocalHistoryEntry@remove': (m.Scope scope, LocalHistoryEntry target)=>target.remove,
'package:flutter/src/widgets/routes.dart@ModalRoute@#as': (m.Scope scope, target)=>()=>target as ModalRoute,
'package:flutter/src/widgets/routes.dart@ModalRoute@#is': (m.Scope scope, target)=>()=>target is ModalRoute,
'package:flutter/src/widgets/routes.dart@ModalRoute@filter': (m.Scope scope, ModalRoute target)=>target.filter,
'package:flutter/src/widgets/routes.dart@ModalRoute@traversalEdgeBehavior': (m.Scope scope, ModalRoute target)=>target.traversalEdgeBehavior,
'package:flutter/src/widgets/routes.dart@ModalRoute@barrierDismissible': (m.Scope scope, ModalRoute target)=>target.barrierDismissible,
'package:flutter/src/widgets/routes.dart@ModalRoute@semanticsDismissible': (m.Scope scope, ModalRoute target)=>target.semanticsDismissible,
'package:flutter/src/widgets/routes.dart@ModalRoute@barrierColor': (m.Scope scope, ModalRoute target)=>target.barrierColor,
'package:flutter/src/widgets/routes.dart@ModalRoute@barrierLabel': (m.Scope scope, ModalRoute target)=>target.barrierLabel,
'package:flutter/src/widgets/routes.dart@ModalRoute@barrierCurve': (m.Scope scope, ModalRoute target)=>target.barrierCurve,
'package:flutter/src/widgets/routes.dart@ModalRoute@maintainState': (m.Scope scope, ModalRoute target)=>target.maintainState,
'package:flutter/src/widgets/routes.dart@ModalRoute@offstage': (m.Scope scope, ModalRoute target)=>target.offstage,
'package:flutter/src/widgets/routes.dart@ModalRoute@offstage:set': (m.Scope scope, ModalRoute target)=>(other)=>target.offstage=other,
'package:flutter/src/widgets/routes.dart@ModalRoute@subtreeContext': (m.Scope scope, ModalRoute target)=>target.subtreeContext,
'package:flutter/src/widgets/routes.dart@ModalRoute@animation': (m.Scope scope, ModalRoute target)=>target.animation,
'package:flutter/src/widgets/routes.dart@ModalRoute@secondaryAnimation': (m.Scope scope, ModalRoute target)=>target.secondaryAnimation,
'package:flutter/src/widgets/routes.dart@ModalRoute@hasScopedWillPopCallback': (m.Scope scope, ModalRoute target)=>target.hasScopedWillPopCallback,
'package:flutter/src/widgets/routes.dart@ModalRoute@canPop': (m.Scope scope, ModalRoute target)=>target.canPop,
'package:flutter/src/widgets/routes.dart@ModalRoute@impliesAppBarDismissal': (m.Scope scope, ModalRoute target)=>target.impliesAppBarDismissal,
'package:flutter/src/widgets/routes.dart@ModalRoute@of': (m.Scope scope)=>ModalRoute.of,
'package:flutter/src/widgets/routes.dart@ModalRoute@setState': (m.Scope scope, ModalRoute target)=>( fn){
void fnProxy() {
 engine.callFunctionPointer(scope, fn!,[], {});
}

target.setState(fnProxy);
},
'package:flutter/src/widgets/routes.dart@ModalRoute@withName': (m.Scope scope)=>ModalRoute.withName,
'package:flutter/src/widgets/routes.dart@ModalRoute@buildPage': (m.Scope scope, ModalRoute target)=>target.buildPage,
'package:flutter/src/widgets/routes.dart@ModalRoute@buildTransitions': (m.Scope scope, ModalRoute target)=>target.buildTransitions,
'package:flutter/src/widgets/routes.dart@ModalRoute@install': (m.Scope scope, ModalRoute target)=>target.install,
'package:flutter/src/widgets/routes.dart@ModalRoute@didPush': (m.Scope scope, ModalRoute target)=>target.didPush,
'package:flutter/src/widgets/routes.dart@ModalRoute@didAdd': (m.Scope scope, ModalRoute target)=>target.didAdd,
'package:flutter/src/widgets/routes.dart@ModalRoute@willPop': (m.Scope scope, ModalRoute target)=>target.willPop,
'package:flutter/src/widgets/routes.dart@ModalRoute@addScopedWillPopCallback': (m.Scope scope, ModalRoute target)=>( callback){
Future<bool> callbackProxy() async{
return await engine.callFunctionPointerAsync(scope, callback!,[], {});
}

target.addScopedWillPopCallback(callbackProxy);
},
'package:flutter/src/widgets/routes.dart@ModalRoute@removeScopedWillPopCallback': (m.Scope scope, ModalRoute target)=>( callback){
Future<bool> callbackProxy() async{
return await engine.callFunctionPointerAsync(scope, callback!,[], {});
}

target.removeScopedWillPopCallback(callbackProxy);
},
'package:flutter/src/widgets/routes.dart@ModalRoute@didChangePrevious': (m.Scope scope, ModalRoute target)=>target.didChangePrevious,
'package:flutter/src/widgets/routes.dart@ModalRoute@changedInternalState': (m.Scope scope, ModalRoute target)=>target.changedInternalState,
'package:flutter/src/widgets/routes.dart@ModalRoute@changedExternalState': (m.Scope scope, ModalRoute target)=>target.changedExternalState,
'package:flutter/src/widgets/routes.dart@ModalRoute@buildModalBarrier': (m.Scope scope, ModalRoute target)=>target.buildModalBarrier,
'package:flutter/src/widgets/routes.dart@ModalRoute@createOverlayEntries': (m.Scope scope, ModalRoute target)=>target.createOverlayEntries,
'package:flutter/src/widgets/routes.dart@ModalRoute@toString': (m.Scope scope, ModalRoute target)=>target.toString,
'package:flutter/src/widgets/routes.dart@PopupRoute@#as': (m.Scope scope, target)=>()=>target as PopupRoute,
'package:flutter/src/widgets/routes.dart@PopupRoute@#is': (m.Scope scope, target)=>()=>target is PopupRoute,
'package:flutter/src/widgets/routes.dart@PopupRoute@opaque': (m.Scope scope, PopupRoute target)=>target.opaque,
'package:flutter/src/widgets/routes.dart@PopupRoute@maintainState': (m.Scope scope, PopupRoute target)=>target.maintainState,
'package:flutter/src/widgets/routes.dart@PopupRoute@allowSnapshotting': (m.Scope scope, PopupRoute target)=>target.allowSnapshotting,
'package:flutter/src/widgets/routes.dart@RouteObserver@#as': (m.Scope scope, target)=>()=>target as RouteObserver,
'package:flutter/src/widgets/routes.dart@RouteObserver@#is': (m.Scope scope, target)=>()=>target is RouteObserver,
'package:flutter/src/widgets/routes.dart@RouteObserver@': (m.Scope scope)=><R>(){
return RouteObserver();
},
'package:flutter/src/widgets/routes.dart@RouteObserver@debugObservingRoute': (m.Scope scope, RouteObserver target)=>target.debugObservingRoute,
'package:flutter/src/widgets/routes.dart@RouteObserver@subscribe': (m.Scope scope, RouteObserver target)=>target.subscribe,
'package:flutter/src/widgets/routes.dart@RouteObserver@unsubscribe': (m.Scope scope, RouteObserver target)=>target.unsubscribe,
'package:flutter/src/widgets/routes.dart@RouteObserver@didPop': (m.Scope scope, RouteObserver target)=>target.didPop,
'package:flutter/src/widgets/routes.dart@RouteObserver@didPush': (m.Scope scope, RouteObserver target)=>target.didPush,
'package:flutter/src/widgets/routes.dart@RouteAware@#as': (m.Scope scope, target)=>()=>target as RouteAware,
'package:flutter/src/widgets/routes.dart@RouteAware@#is': (m.Scope scope, target)=>()=>target is RouteAware,
'package:flutter/src/widgets/routes.dart@RouteAware@didPopNext': (m.Scope scope, RouteAware target)=>target.didPopNext,
'package:flutter/src/widgets/routes.dart@RouteAware@didPush': (m.Scope scope, RouteAware target)=>target.didPush,
'package:flutter/src/widgets/routes.dart@RouteAware@didPop': (m.Scope scope, RouteAware target)=>target.didPop,
'package:flutter/src/widgets/routes.dart@RouteAware@didPushNext': (m.Scope scope, RouteAware target)=>target.didPushNext,
'package:flutter/src/widgets/routes.dart@RawDialogRoute@#as': (m.Scope scope, target)=>()=>target as RawDialogRoute,
'package:flutter/src/widgets/routes.dart@RawDialogRoute@#is': (m.Scope scope, target)=>()=>target is RawDialogRoute,
'package:flutter/src/widgets/routes.dart@RawDialogRoute@anchorPoint': (m.Scope scope, RawDialogRoute target)=>target.anchorPoint,
'package:flutter/src/widgets/routes.dart@RawDialogRoute@barrierDismissible': (m.Scope scope, RawDialogRoute target)=>target.barrierDismissible,
'package:flutter/src/widgets/routes.dart@RawDialogRoute@barrierLabel': (m.Scope scope, RawDialogRoute target)=>target.barrierLabel,
'package:flutter/src/widgets/routes.dart@RawDialogRoute@barrierColor': (m.Scope scope, RawDialogRoute target)=>target.barrierColor,
'package:flutter/src/widgets/routes.dart@RawDialogRoute@transitionDuration': (m.Scope scope, RawDialogRoute target)=>target.transitionDuration,
'package:flutter/src/widgets/routes.dart@RawDialogRoute@': (m.Scope scope)=>({ anchorPoint,  barrierColor,  barrierDismissible,  barrierLabel,  pageBuilder,  settings,  transitionBuilder,  transitionDuration,  traversalEdgeBehavior}){
Widget pageBuilderProxy( context,  animation,  secondaryAnimation) {
return  engine.callFunctionPointer(scope, pageBuilder!,[context, animation, secondaryAnimation], {});
}

Widget transitionBuilderProxy( context,  animation,  secondaryAnimation,  child) {
return  engine.callFunctionPointer(scope, transitionBuilder!,[context, animation, secondaryAnimation, child], {});
}

return RawDialogRoute(anchorPoint:anchorPoint, barrierColor:barrierColor ?? const Color(0x80000000), barrierDismissible:barrierDismissible ?? true, barrierLabel:barrierLabel, pageBuilder:pageBuilderProxy, settings:settings, transitionBuilder:transitionBuilder == null ? null :transitionBuilderProxy, transitionDuration:transitionDuration ?? const Duration(milliseconds: 200), traversalEdgeBehavior:traversalEdgeBehavior);
},
'package:flutter/src/widgets/routes.dart@RawDialogRoute@buildPage': (m.Scope scope, RawDialogRoute target)=>target.buildPage,
'package:flutter/src/widgets/routes.dart@RawDialogRoute@buildTransitions': (m.Scope scope, RawDialogRoute target)=>target.buildTransitions,
'package:flutter/src/widgets/routes.dart@@showGeneralDialog': (m.Scope scope)=>({ anchorPoint,  barrierColor,  barrierDismissible,  barrierLabel,  context,  pageBuilder,  routeSettings,  transitionBuilder,  transitionDuration,  useRootNavigator}){
Widget pageBuilderProxy( context,  animation,  secondaryAnimation) {
return  engine.callFunctionPointer(scope, pageBuilder!,[context, animation, secondaryAnimation], {});
}

Widget transitionBuilderProxy( context,  animation,  secondaryAnimation,  child) {
return  engine.callFunctionPointer(scope, transitionBuilder!,[context, animation, secondaryAnimation, child], {});
}

return showGeneralDialog(anchorPoint:anchorPoint, barrierColor:barrierColor ?? const Color(0x80000000), barrierDismissible:barrierDismissible ?? false, barrierLabel:barrierLabel, context:context, pageBuilder:pageBuilderProxy, routeSettings:routeSettings, transitionBuilder:transitionBuilder == null ? null :transitionBuilderProxy, transitionDuration:transitionDuration ?? const Duration(milliseconds: 200), useRootNavigator:useRootNavigator ?? true);
},

};
}