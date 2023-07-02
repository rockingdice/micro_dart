import 'package:flutter/src/widgets/scroll_physics.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart' show AxisDirection;
import 'package:flutter/physics.dart';
import 'package:flutter/src/widgets/binding.dart' show WidgetsBinding;
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/overscroll_indicator.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_simulation.dart';
import 'package:flutter/src/widgets/view.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@#as': (m.Scope scope, target)=>()=>target as ScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@#is': (m.Scope scope, target)=>()=>target is ScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@parent': (m.Scope scope, ScrollPhysics target)=>target.parent,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@spring': (m.Scope scope, ScrollPhysics target)=>target.spring,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@minFlingDistance': (m.Scope scope, ScrollPhysics target)=>target.minFlingDistance,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@minFlingVelocity': (m.Scope scope, ScrollPhysics target)=>target.minFlingVelocity,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@maxFlingVelocity': (m.Scope scope, ScrollPhysics target)=>target.maxFlingVelocity,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@dragStartDistanceMotionThreshold': (m.Scope scope, ScrollPhysics target)=>target.dragStartDistanceMotionThreshold,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@allowImplicitScrolling': (m.Scope scope, ScrollPhysics target)=>target.allowImplicitScrolling,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@': (m.Scope scope)=>({ parent}){
return ScrollPhysics(parent:parent);
},
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@buildParent': (m.Scope scope, ScrollPhysics target)=>target.buildParent,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@applyTo': (m.Scope scope, ScrollPhysics target)=>target.applyTo,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@applyPhysicsToUserOffset': (m.Scope scope, ScrollPhysics target)=>target.applyPhysicsToUserOffset,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@shouldAcceptUserOffset': (m.Scope scope, ScrollPhysics target)=>target.shouldAcceptUserOffset,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@recommendDeferredLoading': (m.Scope scope, ScrollPhysics target)=>target.recommendDeferredLoading,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@applyBoundaryConditions': (m.Scope scope, ScrollPhysics target)=>target.applyBoundaryConditions,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@adjustPositionForNewDimensions': (m.Scope scope, ScrollPhysics target)=>target.adjustPositionForNewDimensions,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@createBallisticSimulation': (m.Scope scope, ScrollPhysics target)=>target.createBallisticSimulation,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@toleranceFor': (m.Scope scope, ScrollPhysics target)=>target.toleranceFor,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@carriedMomentum': (m.Scope scope, ScrollPhysics target)=>target.carriedMomentum,
'package:flutter/src/widgets/scroll_physics.dart@ScrollPhysics@toString': (m.Scope scope, ScrollPhysics target)=>target.toString,
'package:flutter/src/widgets/scroll_physics.dart@RangeMaintainingScrollPhysics@#as': (m.Scope scope, target)=>()=>target as RangeMaintainingScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@RangeMaintainingScrollPhysics@#is': (m.Scope scope, target)=>()=>target is RangeMaintainingScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@RangeMaintainingScrollPhysics@': (m.Scope scope)=>({ parent}){
return RangeMaintainingScrollPhysics(parent:parent);
},
'package:flutter/src/widgets/scroll_physics.dart@RangeMaintainingScrollPhysics@applyTo': (m.Scope scope, RangeMaintainingScrollPhysics target)=>target.applyTo,
'package:flutter/src/widgets/scroll_physics.dart@RangeMaintainingScrollPhysics@adjustPositionForNewDimensions': (m.Scope scope, RangeMaintainingScrollPhysics target)=>target.adjustPositionForNewDimensions,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@#as': (m.Scope scope, target)=>()=>target as BouncingScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@#is': (m.Scope scope, target)=>()=>target is BouncingScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@decelerationRate': (m.Scope scope, BouncingScrollPhysics target)=>target.decelerationRate,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@minFlingVelocity': (m.Scope scope, BouncingScrollPhysics target)=>target.minFlingVelocity,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@dragStartDistanceMotionThreshold': (m.Scope scope, BouncingScrollPhysics target)=>target.dragStartDistanceMotionThreshold,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@maxFlingVelocity': (m.Scope scope, BouncingScrollPhysics target)=>target.maxFlingVelocity,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@spring': (m.Scope scope, BouncingScrollPhysics target)=>target.spring,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@': (m.Scope scope)=>({ decelerationRate,  parent}){
return BouncingScrollPhysics(decelerationRate:decelerationRate ?? ScrollDecelerationRate.normal, parent:parent);
},
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@applyTo': (m.Scope scope, BouncingScrollPhysics target)=>target.applyTo,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@frictionFactor': (m.Scope scope, BouncingScrollPhysics target)=>target.frictionFactor,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@applyPhysicsToUserOffset': (m.Scope scope, BouncingScrollPhysics target)=>target.applyPhysicsToUserOffset,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@applyBoundaryConditions': (m.Scope scope, BouncingScrollPhysics target)=>target.applyBoundaryConditions,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@createBallisticSimulation': (m.Scope scope, BouncingScrollPhysics target)=>target.createBallisticSimulation,
'package:flutter/src/widgets/scroll_physics.dart@BouncingScrollPhysics@carriedMomentum': (m.Scope scope, BouncingScrollPhysics target)=>target.carriedMomentum,
'package:flutter/src/widgets/scroll_physics.dart@ClampingScrollPhysics@#as': (m.Scope scope, target)=>()=>target as ClampingScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@ClampingScrollPhysics@#is': (m.Scope scope, target)=>()=>target is ClampingScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@ClampingScrollPhysics@': (m.Scope scope)=>({ parent}){
return ClampingScrollPhysics(parent:parent);
},
'package:flutter/src/widgets/scroll_physics.dart@ClampingScrollPhysics@applyTo': (m.Scope scope, ClampingScrollPhysics target)=>target.applyTo,
'package:flutter/src/widgets/scroll_physics.dart@ClampingScrollPhysics@applyBoundaryConditions': (m.Scope scope, ClampingScrollPhysics target)=>target.applyBoundaryConditions,
'package:flutter/src/widgets/scroll_physics.dart@ClampingScrollPhysics@createBallisticSimulation': (m.Scope scope, ClampingScrollPhysics target)=>target.createBallisticSimulation,
'package:flutter/src/widgets/scroll_physics.dart@AlwaysScrollableScrollPhysics@#as': (m.Scope scope, target)=>()=>target as AlwaysScrollableScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@AlwaysScrollableScrollPhysics@#is': (m.Scope scope, target)=>()=>target is AlwaysScrollableScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@AlwaysScrollableScrollPhysics@': (m.Scope scope)=>({ parent}){
return AlwaysScrollableScrollPhysics(parent:parent);
},
'package:flutter/src/widgets/scroll_physics.dart@AlwaysScrollableScrollPhysics@applyTo': (m.Scope scope, AlwaysScrollableScrollPhysics target)=>target.applyTo,
'package:flutter/src/widgets/scroll_physics.dart@AlwaysScrollableScrollPhysics@shouldAcceptUserOffset': (m.Scope scope, AlwaysScrollableScrollPhysics target)=>target.shouldAcceptUserOffset,
'package:flutter/src/widgets/scroll_physics.dart@NeverScrollableScrollPhysics@#as': (m.Scope scope, target)=>()=>target as NeverScrollableScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@NeverScrollableScrollPhysics@#is': (m.Scope scope, target)=>()=>target is NeverScrollableScrollPhysics,
'package:flutter/src/widgets/scroll_physics.dart@NeverScrollableScrollPhysics@allowImplicitScrolling': (m.Scope scope, NeverScrollableScrollPhysics target)=>target.allowImplicitScrolling,
'package:flutter/src/widgets/scroll_physics.dart@NeverScrollableScrollPhysics@': (m.Scope scope)=>({ parent}){
return NeverScrollableScrollPhysics(parent:parent);
},
'package:flutter/src/widgets/scroll_physics.dart@NeverScrollableScrollPhysics@applyTo': (m.Scope scope, NeverScrollableScrollPhysics target)=>target.applyTo,
'package:flutter/src/widgets/scroll_physics.dart@NeverScrollableScrollPhysics@shouldAcceptUserOffset': (m.Scope scope, NeverScrollableScrollPhysics target)=>target.shouldAcceptUserOffset,

};
}