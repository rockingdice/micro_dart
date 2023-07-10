import 'package:flutter/src/physics/gravity_simulation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/physics/simulation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/physics/gravity_simulation.dart@GravitySimulation@#as': (m.Scope scope, target)=>()=>target as GravitySimulation,
'package:flutter/src/physics/gravity_simulation.dart@GravitySimulation@#is': (m.Scope scope, target)=>()=>target is GravitySimulation,
'package:flutter/src/physics/gravity_simulation.dart@GravitySimulation@': (m.Scope scope)=>( acceleration,  distance,  endDistance,  velocity){
return GravitySimulation(acceleration, distance, endDistance, velocity);
},
'package:flutter/src/physics/gravity_simulation.dart@GravitySimulation@x': (m.Scope scope, GravitySimulation target)=>target.x,
'package:flutter/src/physics/gravity_simulation.dart@GravitySimulation@dx': (m.Scope scope, GravitySimulation target)=>target.dx,
'package:flutter/src/physics/gravity_simulation.dart@GravitySimulation@isDone': (m.Scope scope, GravitySimulation target)=>target.isDone,
'package:flutter/src/physics/gravity_simulation.dart@GravitySimulation@toString': (m.Scope scope, GravitySimulation target)=>target.toString,

};
}