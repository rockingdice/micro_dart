import 'package:flutter/src/foundation/key.dart';
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/key.dart@Key@#as': (m.Scope scope, target)=>()=>target as Key,
'package:flutter/src/foundation/key.dart@Key@#is': (m.Scope scope, target)=>()=>target is Key,
'package:flutter/src/foundation/key.dart@Key@': (m.Scope scope)=>( value){
return Key(value);
},
'package:flutter/src/foundation/key.dart@LocalKey@#as': (m.Scope scope, target)=>()=>target as LocalKey,
'package:flutter/src/foundation/key.dart@LocalKey@#is': (m.Scope scope, target)=>()=>target is LocalKey,
'package:flutter/src/foundation/key.dart@UniqueKey@#as': (m.Scope scope, target)=>()=>target as UniqueKey,
'package:flutter/src/foundation/key.dart@UniqueKey@#is': (m.Scope scope, target)=>()=>target is UniqueKey,
'package:flutter/src/foundation/key.dart@UniqueKey@': (m.Scope scope)=>(){
return UniqueKey();
},
'package:flutter/src/foundation/key.dart@UniqueKey@toString': (m.Scope scope, UniqueKey target)=>target.toString,
'package:flutter/src/foundation/key.dart@ValueKey@#as': (m.Scope scope, target)=>()=>target as ValueKey,
'package:flutter/src/foundation/key.dart@ValueKey@#is': (m.Scope scope, target)=>()=>target is ValueKey,
'package:flutter/src/foundation/key.dart@ValueKey@value': (m.Scope scope, ValueKey target)=>target.value,
'package:flutter/src/foundation/key.dart@ValueKey@hashCode': (m.Scope scope, ValueKey target)=>target.hashCode,
'package:flutter/src/foundation/key.dart@ValueKey@': (m.Scope scope)=><T>( value){
return ValueKey(value);
},
'package:flutter/src/foundation/key.dart@ValueKey@==': (m.Scope scope, ValueKey target)=>(other)=> target == other,
'package:flutter/src/foundation/key.dart@ValueKey@toString': (m.Scope scope, ValueKey target)=>target.toString,

};
}