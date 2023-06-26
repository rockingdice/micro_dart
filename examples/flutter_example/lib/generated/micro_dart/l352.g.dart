import 'package:flutter/src/widgets/viewport.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/viewport.dart@Viewport@#as': (m.Scope scope, target)=>()=>target as Viewport,
'package:flutter/src/widgets/viewport.dart@Viewport@#is': (m.Scope scope, target)=>()=>target is Viewport,
'package:flutter/src/widgets/viewport.dart@Viewport@axisDirection': (m.Scope scope, Viewport target)=>target.axisDirection,
'package:flutter/src/widgets/viewport.dart@Viewport@crossAxisDirection': (m.Scope scope, Viewport target)=>target.crossAxisDirection,
'package:flutter/src/widgets/viewport.dart@Viewport@anchor': (m.Scope scope, Viewport target)=>target.anchor,
'package:flutter/src/widgets/viewport.dart@Viewport@offset': (m.Scope scope, Viewport target)=>target.offset,
'package:flutter/src/widgets/viewport.dart@Viewport@center': (m.Scope scope, Viewport target)=>target.center,
'package:flutter/src/widgets/viewport.dart@Viewport@cacheExtent': (m.Scope scope, Viewport target)=>target.cacheExtent,
'package:flutter/src/widgets/viewport.dart@Viewport@cacheExtentStyle': (m.Scope scope, Viewport target)=>target.cacheExtentStyle,
'package:flutter/src/widgets/viewport.dart@Viewport@clipBehavior': (m.Scope scope, Viewport target)=>target.clipBehavior,
'package:flutter/src/widgets/viewport.dart@Viewport@': (m.Scope scope)=>Viewport,
'package:flutter/src/widgets/viewport.dart@Viewport@getDefaultCrossAxisDirection': (m.Scope scope)=>Viewport.getDefaultCrossAxisDirection,
'package:flutter/src/widgets/viewport.dart@Viewport@createRenderObject': (m.Scope scope, Viewport target)=>target.createRenderObject,
'package:flutter/src/widgets/viewport.dart@Viewport@updateRenderObject': (m.Scope scope, Viewport target)=>target.updateRenderObject,
'package:flutter/src/widgets/viewport.dart@Viewport@createElement': (m.Scope scope, Viewport target)=>target.createElement,
'package:flutter/src/widgets/viewport.dart@Viewport@debugFillProperties': (m.Scope scope, Viewport target)=>target.debugFillProperties,
'package:flutter/src/widgets/viewport.dart@ShrinkWrappingViewport@#as': (m.Scope scope, target)=>()=>target as ShrinkWrappingViewport,
'package:flutter/src/widgets/viewport.dart@ShrinkWrappingViewport@#is': (m.Scope scope, target)=>()=>target is ShrinkWrappingViewport,
'package:flutter/src/widgets/viewport.dart@ShrinkWrappingViewport@axisDirection': (m.Scope scope, ShrinkWrappingViewport target)=>target.axisDirection,
'package:flutter/src/widgets/viewport.dart@ShrinkWrappingViewport@crossAxisDirection': (m.Scope scope, ShrinkWrappingViewport target)=>target.crossAxisDirection,
'package:flutter/src/widgets/viewport.dart@ShrinkWrappingViewport@offset': (m.Scope scope, ShrinkWrappingViewport target)=>target.offset,
'package:flutter/src/widgets/viewport.dart@ShrinkWrappingViewport@clipBehavior': (m.Scope scope, ShrinkWrappingViewport target)=>target.clipBehavior,
'package:flutter/src/widgets/viewport.dart@ShrinkWrappingViewport@': (m.Scope scope)=>ShrinkWrappingViewport,
'package:flutter/src/widgets/viewport.dart@ShrinkWrappingViewport@createRenderObject': (m.Scope scope, ShrinkWrappingViewport target)=>target.createRenderObject,
'package:flutter/src/widgets/viewport.dart@ShrinkWrappingViewport@updateRenderObject': (m.Scope scope, ShrinkWrappingViewport target)=>target.updateRenderObject,
'package:flutter/src/widgets/viewport.dart@ShrinkWrappingViewport@debugFillProperties': (m.Scope scope, ShrinkWrappingViewport target)=>target.debugFillProperties,

};
}