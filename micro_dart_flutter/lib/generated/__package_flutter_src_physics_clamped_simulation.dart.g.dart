import 'package:flutter/src/physics/clamped_simulation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/physics/simulation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@#as': (m.Scope scope, target)=>()=>target as ClampedSimulation,
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@#is': (m.Scope scope, target)=>()=>target is ClampedSimulation,
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@simulation': (m.Scope scope, ClampedSimulation target)=>target.simulation,
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@xMin': (m.Scope scope, ClampedSimulation target)=>target.xMin,
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@xMax': (m.Scope scope, ClampedSimulation target)=>target.xMax,
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@dxMin': (m.Scope scope, ClampedSimulation target)=>target.dxMin,
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@dxMax': (m.Scope scope, ClampedSimulation target)=>target.dxMax,
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@': (m.Scope scope)=>ClampedSimulation,
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@x': (m.Scope scope, ClampedSimulation target)=>target.x,
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@dx': (m.Scope scope, ClampedSimulation target)=>target.dx,
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@isDone': (m.Scope scope, ClampedSimulation target)=>target.isDone,
'package:flutter/src/physics/clamped_simulation.dart@ClampedSimulation@toString': (m.Scope scope, ClampedSimulation target)=>target.toString,

};
}