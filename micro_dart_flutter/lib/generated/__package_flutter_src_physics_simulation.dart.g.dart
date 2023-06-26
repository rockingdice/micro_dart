import 'package:flutter/src/physics/simulation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/physics/tolerance.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/physics/simulation.dart@Simulation@#as': (m.Scope scope, target)=>()=>target as Simulation,
'package:flutter/src/physics/simulation.dart@Simulation@#is': (m.Scope scope, target)=>()=>target is Simulation,
'package:flutter/src/physics/simulation.dart@Simulation@tolerance': (m.Scope scope, Simulation target)=>target.tolerance,
'package:flutter/src/physics/simulation.dart@Simulation@tolerance:set': (m.Scope scope, Simulation target)=>(other)=>target.tolerance=other,
'package:flutter/src/physics/simulation.dart@Simulation@x': (m.Scope scope, Simulation target)=>target.x,
'package:flutter/src/physics/simulation.dart@Simulation@dx': (m.Scope scope, Simulation target)=>target.dx,
'package:flutter/src/physics/simulation.dart@Simulation@isDone': (m.Scope scope, Simulation target)=>target.isDone,
'package:flutter/src/physics/simulation.dart@Simulation@toString': (m.Scope scope, Simulation target)=>target.toString,

};
}