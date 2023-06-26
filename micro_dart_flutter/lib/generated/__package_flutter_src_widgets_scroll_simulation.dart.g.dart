import 'package:flutter/src/widgets/scroll_simulation.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/physics.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_simulation.dart@BouncingScrollSimulation@#as': (m.Scope scope, target)=>()=>target as BouncingScrollSimulation,
'package:flutter/src/widgets/scroll_simulation.dart@BouncingScrollSimulation@#is': (m.Scope scope, target)=>()=>target is BouncingScrollSimulation,
'package:flutter/src/widgets/scroll_simulation.dart@BouncingScrollSimulation@maxSpringTransferVelocity': (m.Scope scope)=>BouncingScrollSimulation.maxSpringTransferVelocity,
'package:flutter/src/widgets/scroll_simulation.dart@BouncingScrollSimulation@leadingExtent': (m.Scope scope, BouncingScrollSimulation target)=>target.leadingExtent,
'package:flutter/src/widgets/scroll_simulation.dart@BouncingScrollSimulation@trailingExtent': (m.Scope scope, BouncingScrollSimulation target)=>target.trailingExtent,
'package:flutter/src/widgets/scroll_simulation.dart@BouncingScrollSimulation@spring': (m.Scope scope, BouncingScrollSimulation target)=>target.spring,
'package:flutter/src/widgets/scroll_simulation.dart@BouncingScrollSimulation@': (m.Scope scope)=>BouncingScrollSimulation,
'package:flutter/src/widgets/scroll_simulation.dart@BouncingScrollSimulation@x': (m.Scope scope, BouncingScrollSimulation target)=>target.x,
'package:flutter/src/widgets/scroll_simulation.dart@BouncingScrollSimulation@dx': (m.Scope scope, BouncingScrollSimulation target)=>target.dx,
'package:flutter/src/widgets/scroll_simulation.dart@BouncingScrollSimulation@isDone': (m.Scope scope, BouncingScrollSimulation target)=>target.isDone,
'package:flutter/src/widgets/scroll_simulation.dart@BouncingScrollSimulation@toString': (m.Scope scope, BouncingScrollSimulation target)=>target.toString,
'package:flutter/src/widgets/scroll_simulation.dart@ClampingScrollSimulation@#as': (m.Scope scope, target)=>()=>target as ClampingScrollSimulation,
'package:flutter/src/widgets/scroll_simulation.dart@ClampingScrollSimulation@#is': (m.Scope scope, target)=>()=>target is ClampingScrollSimulation,
'package:flutter/src/widgets/scroll_simulation.dart@ClampingScrollSimulation@position': (m.Scope scope, ClampingScrollSimulation target)=>target.position,
'package:flutter/src/widgets/scroll_simulation.dart@ClampingScrollSimulation@velocity': (m.Scope scope, ClampingScrollSimulation target)=>target.velocity,
'package:flutter/src/widgets/scroll_simulation.dart@ClampingScrollSimulation@friction': (m.Scope scope, ClampingScrollSimulation target)=>target.friction,
'package:flutter/src/widgets/scroll_simulation.dart@ClampingScrollSimulation@': (m.Scope scope)=>ClampingScrollSimulation,
'package:flutter/src/widgets/scroll_simulation.dart@ClampingScrollSimulation@x': (m.Scope scope, ClampingScrollSimulation target)=>target.x,
'package:flutter/src/widgets/scroll_simulation.dart@ClampingScrollSimulation@dx': (m.Scope scope, ClampingScrollSimulation target)=>target.dx,
'package:flutter/src/widgets/scroll_simulation.dart@ClampingScrollSimulation@isDone': (m.Scope scope, ClampingScrollSimulation target)=>target.isDone,

};
}