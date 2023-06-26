import 'package:flutter/src/physics/tolerance.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/physics/tolerance.dart@Tolerance@#as': (m.Scope scope, target)=>()=>target as Tolerance,
'package:flutter/src/physics/tolerance.dart@Tolerance@#is': (m.Scope scope, target)=>()=>target is Tolerance,
'package:flutter/src/physics/tolerance.dart@Tolerance@defaultTolerance': (m.Scope scope)=>Tolerance.defaultTolerance,
'package:flutter/src/physics/tolerance.dart@Tolerance@distance': (m.Scope scope, Tolerance target)=>target.distance,
'package:flutter/src/physics/tolerance.dart@Tolerance@time': (m.Scope scope, Tolerance target)=>target.time,
'package:flutter/src/physics/tolerance.dart@Tolerance@velocity': (m.Scope scope, Tolerance target)=>target.velocity,
'package:flutter/src/physics/tolerance.dart@Tolerance@': (m.Scope scope)=>({ distance,  time,  velocity}){
return Tolerance(distance:distance ?? 1e-3, time:time ?? 1e-3, velocity:velocity ?? 1e-3);
},
'package:flutter/src/physics/tolerance.dart@Tolerance@toString': (m.Scope scope, Tolerance target)=>target.toString,

};
}