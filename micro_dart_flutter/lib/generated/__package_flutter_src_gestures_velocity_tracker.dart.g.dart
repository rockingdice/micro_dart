import 'package:flutter/src/gestures/velocity_tracker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/lsq_solver.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@#as': (m.Scope scope, target)=>()=>target as Velocity,
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@#is': (m.Scope scope, target)=>()=>target is Velocity,
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@zero': (m.Scope scope)=>Velocity.zero,
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@pixelsPerSecond': (m.Scope scope, Velocity target)=>target.pixelsPerSecond,
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@hashCode': (m.Scope scope, Velocity target)=>target.hashCode,
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@': (m.Scope scope)=>({ pixelsPerSecond}){
return Velocity(pixelsPerSecond:pixelsPerSecond);
},
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@unary-': (m.Scope scope, Velocity target)=>()=> - target ,
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@-': (m.Scope scope, Velocity target)=>(other)=> target - other,
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@+': (m.Scope scope, Velocity target)=>(other)=> target + other,
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@clampMagnitude': (m.Scope scope, Velocity target)=>target.clampMagnitude,
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@==': (m.Scope scope, Velocity target)=>(other)=> target == other,
'package:flutter/src/gestures/velocity_tracker.dart@Velocity@toString': (m.Scope scope, Velocity target)=>target.toString,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityEstimate@#as': (m.Scope scope, target)=>()=>target as VelocityEstimate,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityEstimate@#is': (m.Scope scope, target)=>()=>target is VelocityEstimate,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityEstimate@pixelsPerSecond': (m.Scope scope, VelocityEstimate target)=>target.pixelsPerSecond,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityEstimate@confidence': (m.Scope scope, VelocityEstimate target)=>target.confidence,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityEstimate@duration': (m.Scope scope, VelocityEstimate target)=>target.duration,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityEstimate@offset': (m.Scope scope, VelocityEstimate target)=>target.offset,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityEstimate@': (m.Scope scope)=>({ confidence,  duration,  offset,  pixelsPerSecond}){
return VelocityEstimate(confidence:confidence, duration:duration, offset:offset, pixelsPerSecond:pixelsPerSecond);
},
'package:flutter/src/gestures/velocity_tracker.dart@VelocityEstimate@toString': (m.Scope scope, VelocityEstimate target)=>target.toString,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityTracker@#as': (m.Scope scope, target)=>()=>target as VelocityTracker,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityTracker@#is': (m.Scope scope, target)=>()=>target is VelocityTracker,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityTracker@kind': (m.Scope scope, VelocityTracker target)=>target.kind,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityTracker@withKind': (m.Scope scope)=>VelocityTracker.withKind,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityTracker@addPosition': (m.Scope scope, VelocityTracker target)=>target.addPosition,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityTracker@getVelocityEstimate': (m.Scope scope, VelocityTracker target)=>target.getVelocityEstimate,
'package:flutter/src/gestures/velocity_tracker.dart@VelocityTracker@getVelocity': (m.Scope scope, VelocityTracker target)=>target.getVelocity,
'package:flutter/src/gestures/velocity_tracker.dart@IOSScrollViewFlingVelocityTracker@#as': (m.Scope scope, target)=>()=>target as IOSScrollViewFlingVelocityTracker,
'package:flutter/src/gestures/velocity_tracker.dart@IOSScrollViewFlingVelocityTracker@#is': (m.Scope scope, target)=>()=>target is IOSScrollViewFlingVelocityTracker,
'package:flutter/src/gestures/velocity_tracker.dart@IOSScrollViewFlingVelocityTracker@': (m.Scope scope)=>( kind){
return IOSScrollViewFlingVelocityTracker(kind);
},
'package:flutter/src/gestures/velocity_tracker.dart@IOSScrollViewFlingVelocityTracker@addPosition': (m.Scope scope, IOSScrollViewFlingVelocityTracker target)=>target.addPosition,
'package:flutter/src/gestures/velocity_tracker.dart@IOSScrollViewFlingVelocityTracker@getVelocityEstimate': (m.Scope scope, IOSScrollViewFlingVelocityTracker target)=>target.getVelocityEstimate,
'package:flutter/src/gestures/velocity_tracker.dart@MacOSScrollViewFlingVelocityTracker@#as': (m.Scope scope, target)=>()=>target as MacOSScrollViewFlingVelocityTracker,
'package:flutter/src/gestures/velocity_tracker.dart@MacOSScrollViewFlingVelocityTracker@#is': (m.Scope scope, target)=>()=>target is MacOSScrollViewFlingVelocityTracker,
'package:flutter/src/gestures/velocity_tracker.dart@MacOSScrollViewFlingVelocityTracker@': (m.Scope scope)=>( kind){
return MacOSScrollViewFlingVelocityTracker(kind);
},
'package:flutter/src/gestures/velocity_tracker.dart@MacOSScrollViewFlingVelocityTracker@getVelocityEstimate': (m.Scope scope, MacOSScrollViewFlingVelocityTracker target)=>target.getVelocityEstimate,

};
}