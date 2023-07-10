import 'package:flutter/src/foundation/persistent_hash_map.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/persistent_hash_map.dart@PersistentHashMap@#as': (m.Scope scope, target)=>()=>target as PersistentHashMap,
'package:flutter/src/foundation/persistent_hash_map.dart@PersistentHashMap@#is': (m.Scope scope, target)=>()=>target is PersistentHashMap,
'package:flutter/src/foundation/persistent_hash_map.dart@PersistentHashMap@empty': (m.Scope scope)=>PersistentHashMap.empty,
'package:flutter/src/foundation/persistent_hash_map.dart@PersistentHashMap@put': (m.Scope scope, PersistentHashMap target)=>target.put,
'package:flutter/src/foundation/persistent_hash_map.dart@PersistentHashMap@[]': (m.Scope scope, PersistentHashMap target)=>(index)=> target[index],

};
}