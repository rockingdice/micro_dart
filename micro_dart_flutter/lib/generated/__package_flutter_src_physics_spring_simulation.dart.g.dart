import 'package:flutter/src/physics/spring_simulation.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/physics/simulation.dart';
import 'package:flutter/src/physics/utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/physics/spring_simulation.dart@SpringDescription@#as': (m.Scope scope, target)=>()=>target as SpringDescription,
'package:flutter/src/physics/spring_simulation.dart@SpringDescription@#is': (m.Scope scope, target)=>()=>target is SpringDescription,
'package:flutter/src/physics/spring_simulation.dart@SpringDescription@mass': (m.Scope scope, SpringDescription target)=>target.mass,
'package:flutter/src/physics/spring_simulation.dart@SpringDescription@stiffness': (m.Scope scope, SpringDescription target)=>target.stiffness,
'package:flutter/src/physics/spring_simulation.dart@SpringDescription@damping': (m.Scope scope, SpringDescription target)=>target.damping,
'package:flutter/src/physics/spring_simulation.dart@SpringDescription@': (m.Scope scope)=>({ damping,  mass,  stiffness}){
return SpringDescription(damping:damping, mass:mass, stiffness:stiffness);
},
'package:flutter/src/physics/spring_simulation.dart@SpringDescription@withDampingRatio': (m.Scope scope)=>SpringDescription.withDampingRatio,
'package:flutter/src/physics/spring_simulation.dart@SpringDescription@toString': (m.Scope scope, SpringDescription target)=>target.toString,
'package:flutter/src/physics/spring_simulation.dart@SpringSimulation@#as': (m.Scope scope, target)=>()=>target as SpringSimulation,
'package:flutter/src/physics/spring_simulation.dart@SpringSimulation@#is': (m.Scope scope, target)=>()=>target is SpringSimulation,
'package:flutter/src/physics/spring_simulation.dart@SpringSimulation@type': (m.Scope scope, SpringSimulation target)=>target.type,
'package:flutter/src/physics/spring_simulation.dart@SpringSimulation@': (m.Scope scope)=>( spring,  start,  end,  velocity, { tolerance}){
return SpringSimulation(spring, start, end, velocity, tolerance:tolerance ?? Tolerance.defaultTolerance);
},
'package:flutter/src/physics/spring_simulation.dart@SpringSimulation@x': (m.Scope scope, SpringSimulation target)=>target.x,
'package:flutter/src/physics/spring_simulation.dart@SpringSimulation@dx': (m.Scope scope, SpringSimulation target)=>target.dx,
'package:flutter/src/physics/spring_simulation.dart@SpringSimulation@isDone': (m.Scope scope, SpringSimulation target)=>target.isDone,
'package:flutter/src/physics/spring_simulation.dart@SpringSimulation@toString': (m.Scope scope, SpringSimulation target)=>target.toString,
'package:flutter/src/physics/spring_simulation.dart@ScrollSpringSimulation@#as': (m.Scope scope, target)=>()=>target as ScrollSpringSimulation,
'package:flutter/src/physics/spring_simulation.dart@ScrollSpringSimulation@#is': (m.Scope scope, target)=>()=>target is ScrollSpringSimulation,
'package:flutter/src/physics/spring_simulation.dart@ScrollSpringSimulation@': (m.Scope scope)=>( spring,  start,  end,  velocity, { tolerance}){
return ScrollSpringSimulation(spring, start, end, velocity, tolerance:tolerance ?? Tolerance.defaultTolerance);
},
'package:flutter/src/physics/spring_simulation.dart@ScrollSpringSimulation@x': (m.Scope scope, ScrollSpringSimulation target)=>target.x,

};
}