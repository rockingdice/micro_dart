import 'package:flutter/src/rendering/platform_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@#as': (m.Scope scope, target)=>()=>target as RenderAndroidView,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@#is': (m.Scope scope, target)=>()=>target is RenderAndroidView,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@controller': (m.Scope scope, RenderAndroidView target)=>target.controller,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@controller:set': (m.Scope scope, RenderAndroidView target)=>(other)=>target.controller=other,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@clipBehavior': (m.Scope scope, RenderAndroidView target)=>target.clipBehavior,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@clipBehavior:set': (m.Scope scope, RenderAndroidView target)=>(other)=>target.clipBehavior=other,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@sizedByParent': (m.Scope scope, RenderAndroidView target)=>target.sizedByParent,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@alwaysNeedsCompositing': (m.Scope scope, RenderAndroidView target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@isRepaintBoundary': (m.Scope scope, RenderAndroidView target)=>target.isRepaintBoundary,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@': (m.Scope scope)=>RenderAndroidView,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@computeDryLayout': (m.Scope scope, RenderAndroidView target)=>target.computeDryLayout,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@performResize': (m.Scope scope, RenderAndroidView target)=>target.performResize,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@paint': (m.Scope scope, RenderAndroidView target)=>target.paint,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@dispose': (m.Scope scope, RenderAndroidView target)=>target.dispose,
'package:flutter/src/rendering/platform_view.dart@RenderAndroidView@describeSemanticsConfiguration': (m.Scope scope, RenderAndroidView target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@#as': (m.Scope scope, target)=>()=>target as RenderUiKitView,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@#is': (m.Scope scope, target)=>()=>target is RenderUiKitView,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@hitTestBehavior': (m.Scope scope, RenderUiKitView target)=>target.hitTestBehavior,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@hitTestBehavior:set': (m.Scope scope, RenderUiKitView target)=>(other)=>target.hitTestBehavior=other,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@viewController': (m.Scope scope, RenderUiKitView target)=>target.viewController,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@viewController:set': (m.Scope scope, RenderUiKitView target)=>(other)=>target.viewController=other,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@sizedByParent': (m.Scope scope, RenderUiKitView target)=>target.sizedByParent,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@alwaysNeedsCompositing': (m.Scope scope, RenderUiKitView target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@isRepaintBoundary': (m.Scope scope, RenderUiKitView target)=>target.isRepaintBoundary,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@': (m.Scope scope)=>RenderUiKitView,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@updateGestureRecognizers': (m.Scope scope, RenderUiKitView target)=>target.updateGestureRecognizers,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@computeDryLayout': (m.Scope scope, RenderUiKitView target)=>target.computeDryLayout,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@paint': (m.Scope scope, RenderUiKitView target)=>target.paint,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@hitTest': (m.Scope scope, RenderUiKitView target)=>target.hitTest,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@hitTestSelf': (m.Scope scope, RenderUiKitView target)=>target.hitTestSelf,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@handleEvent': (m.Scope scope, RenderUiKitView target)=>target.handleEvent,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@describeSemanticsConfiguration': (m.Scope scope, RenderUiKitView target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@attach': (m.Scope scope, RenderUiKitView target)=>target.attach,
'package:flutter/src/rendering/platform_view.dart@RenderUiKitView@detach': (m.Scope scope, RenderUiKitView target)=>target.detach,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@#as': (m.Scope scope, target)=>()=>target as PlatformViewRenderBox,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@#is': (m.Scope scope, target)=>()=>target is PlatformViewRenderBox,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@controller': (m.Scope scope, PlatformViewRenderBox target)=>target.controller,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@controller:set': (m.Scope scope, PlatformViewRenderBox target)=>(other)=>target.controller=other,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@sizedByParent': (m.Scope scope, PlatformViewRenderBox target)=>target.sizedByParent,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@alwaysNeedsCompositing': (m.Scope scope, PlatformViewRenderBox target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@isRepaintBoundary': (m.Scope scope, PlatformViewRenderBox target)=>target.isRepaintBoundary,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@': (m.Scope scope)=>PlatformViewRenderBox,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@updateGestureRecognizers': (m.Scope scope, PlatformViewRenderBox target)=>target.updateGestureRecognizers,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@computeDryLayout': (m.Scope scope, PlatformViewRenderBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@paint': (m.Scope scope, PlatformViewRenderBox target)=>target.paint,
'package:flutter/src/rendering/platform_view.dart@PlatformViewRenderBox@describeSemanticsConfiguration': (m.Scope scope, PlatformViewRenderBox target)=>target.describeSemanticsConfiguration,

};
}