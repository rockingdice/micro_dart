import 'package:flutter/src/rendering/view.dart';
import 'dart:developer';
import 'dart:io' show Platform;
import 'dart:ui' show FlutterView,Scene,SceneBuilder,SemanticsUpdate;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/view.dart@ViewConfiguration@#as': (m.Scope scope, target)=>()=>target as ViewConfiguration,
'package:flutter/src/rendering/view.dart@ViewConfiguration@#is': (m.Scope scope, target)=>()=>target is ViewConfiguration,
'package:flutter/src/rendering/view.dart@ViewConfiguration@size': (m.Scope scope, ViewConfiguration target)=>target.size,
'package:flutter/src/rendering/view.dart@ViewConfiguration@devicePixelRatio': (m.Scope scope, ViewConfiguration target)=>target.devicePixelRatio,
'package:flutter/src/rendering/view.dart@ViewConfiguration@hashCode': (m.Scope scope, ViewConfiguration target)=>target.hashCode,
'package:flutter/src/rendering/view.dart@ViewConfiguration@': (m.Scope scope)=>({ devicePixelRatio,  size}){
return ViewConfiguration(devicePixelRatio:devicePixelRatio ?? 1.0, size:size ?? Size.zero);
},
'package:flutter/src/rendering/view.dart@ViewConfiguration@toMatrix': (m.Scope scope, ViewConfiguration target)=>target.toMatrix,
'package:flutter/src/rendering/view.dart@ViewConfiguration@==': (m.Scope scope, ViewConfiguration target)=>(other)=> target == other,
'package:flutter/src/rendering/view.dart@ViewConfiguration@toString': (m.Scope scope, ViewConfiguration target)=>target.toString,
'package:flutter/src/rendering/view.dart@RenderView@#as': (m.Scope scope, target)=>()=>target as RenderView,
'package:flutter/src/rendering/view.dart@RenderView@#is': (m.Scope scope, target)=>()=>target is RenderView,
'package:flutter/src/rendering/view.dart@RenderView@automaticSystemUiAdjustment': (m.Scope scope, RenderView target)=>target.automaticSystemUiAdjustment,
'package:flutter/src/rendering/view.dart@RenderView@automaticSystemUiAdjustment:set': (m.Scope scope, RenderView target)=>(other)=>target.automaticSystemUiAdjustment=other,
'package:flutter/src/rendering/view.dart@RenderView@size': (m.Scope scope, RenderView target)=>target.size,
'package:flutter/src/rendering/view.dart@RenderView@configuration': (m.Scope scope, RenderView target)=>target.configuration,
'package:flutter/src/rendering/view.dart@RenderView@configuration:set': (m.Scope scope, RenderView target)=>(other)=>target.configuration=other,
'package:flutter/src/rendering/view.dart@RenderView@isRepaintBoundary': (m.Scope scope, RenderView target)=>target.isRepaintBoundary,
'package:flutter/src/rendering/view.dart@RenderView@paintBounds': (m.Scope scope, RenderView target)=>target.paintBounds,
'package:flutter/src/rendering/view.dart@RenderView@semanticBounds': (m.Scope scope, RenderView target)=>target.semanticBounds,
'package:flutter/src/rendering/view.dart@RenderView@': (m.Scope scope)=>({ child,  configuration,  view}){
return RenderView(child:child, configuration:configuration, view:view);
},
'package:flutter/src/rendering/view.dart@RenderView@prepareInitialFrame': (m.Scope scope, RenderView target)=>target.prepareInitialFrame,
'package:flutter/src/rendering/view.dart@RenderView@debugAssertDoesMeetConstraints': (m.Scope scope, RenderView target)=>target.debugAssertDoesMeetConstraints,
'package:flutter/src/rendering/view.dart@RenderView@performResize': (m.Scope scope, RenderView target)=>target.performResize,
'package:flutter/src/rendering/view.dart@RenderView@performLayout': (m.Scope scope, RenderView target)=>target.performLayout,
'package:flutter/src/rendering/view.dart@RenderView@hitTest': (m.Scope scope, RenderView target)=>target.hitTest,
'package:flutter/src/rendering/view.dart@RenderView@hitTestMouseTrackers': (m.Scope scope, RenderView target)=>target.hitTestMouseTrackers,
'package:flutter/src/rendering/view.dart@RenderView@paint': (m.Scope scope, RenderView target)=>target.paint,
'package:flutter/src/rendering/view.dart@RenderView@applyPaintTransform': (m.Scope scope, RenderView target)=>target.applyPaintTransform,
'package:flutter/src/rendering/view.dart@RenderView@compositeFrame': (m.Scope scope, RenderView target)=>target.compositeFrame,
'package:flutter/src/rendering/view.dart@RenderView@updateSemantics': (m.Scope scope, RenderView target)=>target.updateSemantics,
'package:flutter/src/rendering/view.dart@RenderView@debugFillProperties': (m.Scope scope, RenderView target)=>target.debugFillProperties,

};
}