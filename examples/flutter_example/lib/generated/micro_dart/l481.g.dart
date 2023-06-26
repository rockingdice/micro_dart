import 'package:flutter/src/rendering/viewport_offset.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@#as': (m.Scope scope, target)=>()=>target as ViewportOffset,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@#is': (m.Scope scope, target)=>()=>target is ViewportOffset,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@pixels': (m.Scope scope, ViewportOffset target)=>target.pixels,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@hasPixels': (m.Scope scope, ViewportOffset target)=>target.hasPixels,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@userScrollDirection': (m.Scope scope, ViewportOffset target)=>target.userScrollDirection,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@allowImplicitScrolling': (m.Scope scope, ViewportOffset target)=>target.allowImplicitScrolling,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@fixed': (m.Scope scope)=>ViewportOffset.fixed,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@zero': (m.Scope scope)=>ViewportOffset.zero,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@applyViewportDimension': (m.Scope scope, ViewportOffset target)=>target.applyViewportDimension,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@applyContentDimensions': (m.Scope scope, ViewportOffset target)=>target.applyContentDimensions,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@correctBy': (m.Scope scope, ViewportOffset target)=>target.correctBy,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@jumpTo': (m.Scope scope, ViewportOffset target)=>target.jumpTo,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@animateTo': (m.Scope scope, ViewportOffset target)=>target.animateTo,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@moveTo': (m.Scope scope, ViewportOffset target)=>target.moveTo,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@toString': (m.Scope scope, ViewportOffset target)=>target.toString,
'package:flutter/src/rendering/viewport_offset.dart@ViewportOffset@debugFillDescription': (m.Scope scope, ViewportOffset target)=>target.debugFillDescription,
'package:flutter/src/rendering/viewport_offset.dart@@flipScrollDirection': (m.Scope scope)=>flipScrollDirection,

};
}