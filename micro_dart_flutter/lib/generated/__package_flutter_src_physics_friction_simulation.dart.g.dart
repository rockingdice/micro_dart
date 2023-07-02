import 'package:flutter/src/physics/friction_simulation.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/physics/simulation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/physics/friction_simulation.dart@FrictionSimulation@#as': (m.Scope scope, target)=>()=>target as FrictionSimulation,
'package:flutter/src/physics/friction_simulation.dart@FrictionSimulation@#is': (m.Scope scope, target)=>()=>target is FrictionSimulation,
'package:flutter/src/physics/friction_simulation.dart@FrictionSimulation@finalX': (m.Scope scope, FrictionSimulation target)=>target.finalX,
'package:flutter/src/physics/friction_simulation.dart@FrictionSimulation@': (m.Scope scope)=>( drag,  position,  velocity, { constantDeceleration,  tolerance}){
return FrictionSimulation(drag, position, velocity, constantDeceleration:constantDeceleration ?? 0, tolerance:tolerance ?? Tolerance.defaultTolerance);
},
'package:flutter/src/physics/friction_simulation.dart@FrictionSimulation@through': (m.Scope scope)=>FrictionSimulation.through,
'package:flutter/src/physics/friction_simulation.dart@FrictionSimulation@x': (m.Scope scope, FrictionSimulation target)=>target.x,
'package:flutter/src/physics/friction_simulation.dart@FrictionSimulation@dx': (m.Scope scope, FrictionSimulation target)=>target.dx,
'package:flutter/src/physics/friction_simulation.dart@FrictionSimulation@timeAtX': (m.Scope scope, FrictionSimulation target)=>target.timeAtX,
'package:flutter/src/physics/friction_simulation.dart@FrictionSimulation@isDone': (m.Scope scope, FrictionSimulation target)=>target.isDone,
'package:flutter/src/physics/friction_simulation.dart@FrictionSimulation@toString': (m.Scope scope, FrictionSimulation target)=>target.toString,
'package:flutter/src/physics/friction_simulation.dart@BoundedFrictionSimulation@#as': (m.Scope scope, target)=>()=>target as BoundedFrictionSimulation,
'package:flutter/src/physics/friction_simulation.dart@BoundedFrictionSimulation@#is': (m.Scope scope, target)=>()=>target is BoundedFrictionSimulation,
'package:flutter/src/physics/friction_simulation.dart@BoundedFrictionSimulation@': (m.Scope scope)=>( drag,  position,  velocity,  _minX,  _maxX){
return BoundedFrictionSimulation(drag, position, velocity, _minX, _maxX);
},
'package:flutter/src/physics/friction_simulation.dart@BoundedFrictionSimulation@x': (m.Scope scope, BoundedFrictionSimulation target)=>target.x,
'package:flutter/src/physics/friction_simulation.dart@BoundedFrictionSimulation@isDone': (m.Scope scope, BoundedFrictionSimulation target)=>target.isDone,
'package:flutter/src/physics/friction_simulation.dart@BoundedFrictionSimulation@toString': (m.Scope scope, BoundedFrictionSimulation target)=>target.toString,

};
}