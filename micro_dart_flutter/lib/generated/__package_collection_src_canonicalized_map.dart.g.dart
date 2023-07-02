import 'package:collection/src/canonicalized_map.dart';
import 'dart:collection';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@#as': (m.Scope scope, target)=>()=>target as CanonicalizedMap,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@#is': (m.Scope scope, target)=>()=>target is CanonicalizedMap,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@entries': (m.Scope scope, CanonicalizedMap target)=>target.entries,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@isEmpty': (m.Scope scope, CanonicalizedMap target)=>target.isEmpty,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@isNotEmpty': (m.Scope scope, CanonicalizedMap target)=>target.isNotEmpty,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@keys': (m.Scope scope, CanonicalizedMap target)=>target.keys,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@length': (m.Scope scope, CanonicalizedMap target)=>target.length,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@values': (m.Scope scope, CanonicalizedMap target)=>target.values,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@': (m.Scope scope)=>( canonicalize, { isValidKey}){
C canonicalizeProxy<C, K>( key) {
return  engine.callFunctionPointer(scope, canonicalize!,[key], {});
}

bool isValidKeyProxy<K>( key) {
return  engine.callFunctionPointer(scope, isValidKey!,[key], {});
}

return CanonicalizedMap(canonicalizeProxy, isValidKey:isValidKey == null ? null :isValidKeyProxy);
},
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@from': (m.Scope scope)=>( other,  canonicalize, { isValidKey}){
C canonicalizeProxy<C, K>( key) {
return  engine.callFunctionPointer(scope, canonicalize!,[key], {});
}

bool isValidKeyProxy<K>( key) {
return  engine.callFunctionPointer(scope, isValidKey!,[key], {});
}

return CanonicalizedMap.from(other, canonicalizeProxy, isValidKey:isValidKey == null ? null :isValidKeyProxy);
},
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@[]': (m.Scope scope, CanonicalizedMap target)=>(index)=> target[index],
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@[]=': (m.Scope scope, CanonicalizedMap target)=>(index,other)=> target[index] = other,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@addAll': (m.Scope scope, CanonicalizedMap target)=>target.addAll,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@addEntries': (m.Scope scope, CanonicalizedMap target)=>target.addEntries,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@cast': (m.Scope scope, CanonicalizedMap target)=>target.cast,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@clear': (m.Scope scope, CanonicalizedMap target)=>target.clear,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@containsKey': (m.Scope scope, CanonicalizedMap target)=>target.containsKey,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@containsValue': (m.Scope scope, CanonicalizedMap target)=>target.containsValue,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@forEach': (m.Scope scope, CanonicalizedMap target)=>( f){
void fProxy<K, V>( $p0,  $p1) {
 engine.callFunctionPointer(scope, f!,[$p0, $p1], {});
}

target.forEach(fProxy);
},
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@map': (m.Scope scope, CanonicalizedMap target)=>( transform){
MapEntry<K2, V2> transformProxy<K2, V2, K, V>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, transform!,[$p0, $p1], {});
}

return target.map(transformProxy);
},
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@putIfAbsent': (m.Scope scope, CanonicalizedMap target)=>( key,  ifAbsent){
V ifAbsentProxy<V>() {
return  engine.callFunctionPointer(scope, ifAbsent!,[], {});
}

return target.putIfAbsent(key, ifAbsentProxy);
},
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@remove': (m.Scope scope, CanonicalizedMap target)=>target.remove,
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@removeWhere': (m.Scope scope, CanonicalizedMap target)=>( test){
bool testProxy<K, V>( key,  value) {
return  engine.callFunctionPointer(scope, test!,[key, value], {});
}

target.removeWhere(testProxy);
},
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@update': (m.Scope scope, CanonicalizedMap target)=>( key,  update, { ifAbsent}){
V updateProxy<V>( $p0) {
return  engine.callFunctionPointer(scope, update!,[$p0], {});
}

V ifAbsentProxy<V>() {
return  engine.callFunctionPointer(scope, ifAbsent!,[], {});
}

return target.update(key, updateProxy, ifAbsent:ifAbsent == null ? null :ifAbsentProxy);
},
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@updateAll': (m.Scope scope, CanonicalizedMap target)=>( update){
V updateProxy<V, K>( key,  value) {
return  engine.callFunctionPointer(scope, update!,[key, value], {});
}

target.updateAll(updateProxy);
},
'package:collection/src/canonicalized_map.dart@CanonicalizedMap@toString': (m.Scope scope, CanonicalizedMap target)=>target.toString,

};
}