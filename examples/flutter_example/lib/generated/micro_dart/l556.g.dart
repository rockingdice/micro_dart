import 'package:flutter/src/gestures/team.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/binding.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/team.dart@GestureArenaTeam@#as': (m.Scope scope, target)=>()=>target as GestureArenaTeam,
'package:flutter/src/gestures/team.dart@GestureArenaTeam@#is': (m.Scope scope, target)=>()=>target is GestureArenaTeam,
'package:flutter/src/gestures/team.dart@GestureArenaTeam@captain': (m.Scope scope, GestureArenaTeam target)=>target.captain,
'package:flutter/src/gestures/team.dart@GestureArenaTeam@captain:set': (m.Scope scope, GestureArenaTeam target)=>(other)=>target.captain=other,
'package:flutter/src/gestures/team.dart@GestureArenaTeam@': (m.Scope scope)=>(){
return GestureArenaTeam();
},
'package:flutter/src/gestures/team.dart@GestureArenaTeam@add': (m.Scope scope, GestureArenaTeam target)=>target.add,

};
}