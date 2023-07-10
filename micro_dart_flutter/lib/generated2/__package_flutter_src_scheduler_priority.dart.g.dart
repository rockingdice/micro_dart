import 'package:flutter/src/scheduler/priority.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/scheduler/priority.dart@Priority@#as': (m.Scope scope, target)=>()=>target as Priority,
'package:flutter/src/scheduler/priority.dart@Priority@#is': (m.Scope scope, target)=>()=>target is Priority,
'package:flutter/src/scheduler/priority.dart@Priority@idle': (m.Scope scope)=>Priority.idle,
'package:flutter/src/scheduler/priority.dart@Priority@animation': (m.Scope scope)=>Priority.animation,
'package:flutter/src/scheduler/priority.dart@Priority@touch': (m.Scope scope)=>Priority.touch,
'package:flutter/src/scheduler/priority.dart@Priority@kMaxOffset': (m.Scope scope)=>Priority.kMaxOffset,
'package:flutter/src/scheduler/priority.dart@Priority@value': (m.Scope scope, Priority target)=>target.value,
'package:flutter/src/scheduler/priority.dart@Priority@+': (m.Scope scope, Priority target)=>(other)=> target + other,
'package:flutter/src/scheduler/priority.dart@Priority@-': (m.Scope scope, Priority target)=>(other)=> target - other,

};
}