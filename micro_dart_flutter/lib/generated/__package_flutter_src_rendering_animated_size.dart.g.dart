import 'package:flutter/src/rendering/animated_size.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/shifted_box.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@#as': (m.Scope scope, target)=>()=>target as RenderAnimatedSize,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@#is': (m.Scope scope, target)=>()=>target is RenderAnimatedSize,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@state': (m.Scope scope, RenderAnimatedSize target)=>target.state,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@duration': (m.Scope scope, RenderAnimatedSize target)=>target.duration,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@duration:set': (m.Scope scope, RenderAnimatedSize target)=>(other)=>target.duration=other,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@reverseDuration': (m.Scope scope, RenderAnimatedSize target)=>target.reverseDuration,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@reverseDuration:set': (m.Scope scope, RenderAnimatedSize target)=>(other)=>target.reverseDuration=other,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@curve': (m.Scope scope, RenderAnimatedSize target)=>target.curve,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@curve:set': (m.Scope scope, RenderAnimatedSize target)=>(other)=>target.curve=other,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@clipBehavior': (m.Scope scope, RenderAnimatedSize target)=>target.clipBehavior,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@clipBehavior:set': (m.Scope scope, RenderAnimatedSize target)=>(other)=>target.clipBehavior=other,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@isAnimating': (m.Scope scope, RenderAnimatedSize target)=>target.isAnimating,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@vsync': (m.Scope scope, RenderAnimatedSize target)=>target.vsync,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@vsync:set': (m.Scope scope, RenderAnimatedSize target)=>(other)=>target.vsync=other,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@': (m.Scope scope)=>RenderAnimatedSize,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@attach': (m.Scope scope, RenderAnimatedSize target)=>target.attach,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@detach': (m.Scope scope, RenderAnimatedSize target)=>target.detach,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@performLayout': (m.Scope scope, RenderAnimatedSize target)=>target.performLayout,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@computeDryLayout': (m.Scope scope, RenderAnimatedSize target)=>target.computeDryLayout,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@paint': (m.Scope scope, RenderAnimatedSize target)=>target.paint,
'package:flutter/src/rendering/animated_size.dart@RenderAnimatedSize@dispose': (m.Scope scope, RenderAnimatedSize target)=>target.dispose,

};
}