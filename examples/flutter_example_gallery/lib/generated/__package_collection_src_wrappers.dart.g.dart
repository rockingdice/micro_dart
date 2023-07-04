import 'package:collection/src/wrappers.dart';
import 'dart:collection';
import 'dart:math';
import 'package:collection/src/unmodifiable_wrappers.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/wrappers.dart@DelegatingIterable@#as': (m.Scope scope, target)=>()=>target as DelegatingIterable,
'package:collection/src/wrappers.dart@DelegatingIterable@#is': (m.Scope scope, target)=>()=>target is DelegatingIterable,
'package:collection/src/wrappers.dart@DelegatingIterable@': (m.Scope scope)=><E>( base){
return DelegatingIterable(base);
},
'package:collection/src/wrappers.dart@DelegatingList@#as': (m.Scope scope, target)=>()=>target as DelegatingList,
'package:collection/src/wrappers.dart@DelegatingList@#is': (m.Scope scope, target)=>()=>target is DelegatingList,
'package:collection/src/wrappers.dart@DelegatingList@first:set': (m.Scope scope, DelegatingList target)=>(other)=>target.first=other,
'package:collection/src/wrappers.dart@DelegatingList@last:set': (m.Scope scope, DelegatingList target)=>(other)=>target.last=other,
'package:collection/src/wrappers.dart@DelegatingList@length:set': (m.Scope scope, DelegatingList target)=>(other)=>target.length=other,
'package:collection/src/wrappers.dart@DelegatingList@reversed': (m.Scope scope, DelegatingList target)=>target.reversed,
'package:collection/src/wrappers.dart@DelegatingList@': (m.Scope scope)=><E>( base){
return DelegatingList(base);
},
'package:collection/src/wrappers.dart@DelegatingList@[]': (m.Scope scope, DelegatingList target)=>(index)=> target[index],
'package:collection/src/wrappers.dart@DelegatingList@[]=': (m.Scope scope, DelegatingList target)=>(index,other)=> target[index] = other,
'package:collection/src/wrappers.dart@DelegatingList@+': (m.Scope scope, DelegatingList target)=>(other)=> target + other,
'package:collection/src/wrappers.dart@DelegatingList@add': (m.Scope scope, DelegatingList target)=>target.add,
'package:collection/src/wrappers.dart@DelegatingList@addAll': (m.Scope scope, DelegatingList target)=>target.addAll,
'package:collection/src/wrappers.dart@DelegatingList@asMap': (m.Scope scope, DelegatingList target)=>target.asMap,
'package:collection/src/wrappers.dart@DelegatingList@cast': (m.Scope scope, DelegatingList target)=>target.cast,
'package:collection/src/wrappers.dart@DelegatingList@clear': (m.Scope scope, DelegatingList target)=>target.clear,
'package:collection/src/wrappers.dart@DelegatingList@fillRange': (m.Scope scope, DelegatingList target)=>target.fillRange,
'package:collection/src/wrappers.dart@DelegatingList@getRange': (m.Scope scope, DelegatingList target)=>target.getRange,
'package:collection/src/wrappers.dart@DelegatingList@indexOf': (m.Scope scope, DelegatingList target)=>target.indexOf,
'package:collection/src/wrappers.dart@DelegatingList@indexWhere': (m.Scope scope, DelegatingList target)=>( test, [int? start]){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

if(start == null){
return target.indexWhere(testProxy);
}
return target.indexWhere(testProxy, start!);
},
'package:collection/src/wrappers.dart@DelegatingList@insert': (m.Scope scope, DelegatingList target)=>target.insert,
'package:collection/src/wrappers.dart@DelegatingList@insertAll': (m.Scope scope, DelegatingList target)=>target.insertAll,
'package:collection/src/wrappers.dart@DelegatingList@lastIndexOf': (m.Scope scope, DelegatingList target)=>target.lastIndexOf,
'package:collection/src/wrappers.dart@DelegatingList@lastIndexWhere': (m.Scope scope, DelegatingList target)=>( test, [int? start]){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

if(start == null){
return target.lastIndexWhere(testProxy);
}
return target.lastIndexWhere(testProxy, start!);
},
'package:collection/src/wrappers.dart@DelegatingList@remove': (m.Scope scope, DelegatingList target)=>target.remove,
'package:collection/src/wrappers.dart@DelegatingList@removeAt': (m.Scope scope, DelegatingList target)=>target.removeAt,
'package:collection/src/wrappers.dart@DelegatingList@removeLast': (m.Scope scope, DelegatingList target)=>target.removeLast,
'package:collection/src/wrappers.dart@DelegatingList@removeRange': (m.Scope scope, DelegatingList target)=>target.removeRange,
'package:collection/src/wrappers.dart@DelegatingList@removeWhere': (m.Scope scope, DelegatingList target)=>( test){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.removeWhere(testProxy);
},
'package:collection/src/wrappers.dart@DelegatingList@replaceRange': (m.Scope scope, DelegatingList target)=>target.replaceRange,
'package:collection/src/wrappers.dart@DelegatingList@retainWhere': (m.Scope scope, DelegatingList target)=>( test){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.retainWhere(testProxy);
},
'package:collection/src/wrappers.dart@DelegatingList@setAll': (m.Scope scope, DelegatingList target)=>target.setAll,
'package:collection/src/wrappers.dart@DelegatingList@setRange': (m.Scope scope, DelegatingList target)=>target.setRange,
'package:collection/src/wrappers.dart@DelegatingList@shuffle': (m.Scope scope, DelegatingList target)=>target.shuffle,
'package:collection/src/wrappers.dart@DelegatingList@sort': (m.Scope scope, DelegatingList target)=>([m.FunctionPointer? compare]){
if(compare == null){
target.sort();
return;
}
int compareProxy<E>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, compare!,[$p0, $p1], {});
}

target.sort(compareProxy);
return;
},
'package:collection/src/wrappers.dart@DelegatingList@sublist': (m.Scope scope, DelegatingList target)=>target.sublist,
'package:collection/src/wrappers.dart@DelegatingSet@#as': (m.Scope scope, target)=>()=>target as DelegatingSet,
'package:collection/src/wrappers.dart@DelegatingSet@#is': (m.Scope scope, target)=>()=>target is DelegatingSet,
'package:collection/src/wrappers.dart@DelegatingSet@': (m.Scope scope)=><E>( base){
return DelegatingSet(base);
},
'package:collection/src/wrappers.dart@DelegatingSet@add': (m.Scope scope, DelegatingSet target)=>target.add,
'package:collection/src/wrappers.dart@DelegatingSet@addAll': (m.Scope scope, DelegatingSet target)=>target.addAll,
'package:collection/src/wrappers.dart@DelegatingSet@cast': (m.Scope scope, DelegatingSet target)=>target.cast,
'package:collection/src/wrappers.dart@DelegatingSet@clear': (m.Scope scope, DelegatingSet target)=>target.clear,
'package:collection/src/wrappers.dart@DelegatingSet@containsAll': (m.Scope scope, DelegatingSet target)=>target.containsAll,
'package:collection/src/wrappers.dart@DelegatingSet@difference': (m.Scope scope, DelegatingSet target)=>target.difference,
'package:collection/src/wrappers.dart@DelegatingSet@intersection': (m.Scope scope, DelegatingSet target)=>target.intersection,
'package:collection/src/wrappers.dart@DelegatingSet@lookup': (m.Scope scope, DelegatingSet target)=>target.lookup,
'package:collection/src/wrappers.dart@DelegatingSet@remove': (m.Scope scope, DelegatingSet target)=>target.remove,
'package:collection/src/wrappers.dart@DelegatingSet@removeAll': (m.Scope scope, DelegatingSet target)=>target.removeAll,
'package:collection/src/wrappers.dart@DelegatingSet@removeWhere': (m.Scope scope, DelegatingSet target)=>( test){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.removeWhere(testProxy);
},
'package:collection/src/wrappers.dart@DelegatingSet@retainAll': (m.Scope scope, DelegatingSet target)=>target.retainAll,
'package:collection/src/wrappers.dart@DelegatingSet@retainWhere': (m.Scope scope, DelegatingSet target)=>( test){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.retainWhere(testProxy);
},
'package:collection/src/wrappers.dart@DelegatingSet@union': (m.Scope scope, DelegatingSet target)=>target.union,
'package:collection/src/wrappers.dart@DelegatingSet@toSet': (m.Scope scope, DelegatingSet target)=>target.toSet,
'package:collection/src/wrappers.dart@DelegatingQueue@#as': (m.Scope scope, target)=>()=>target as DelegatingQueue,
'package:collection/src/wrappers.dart@DelegatingQueue@#is': (m.Scope scope, target)=>()=>target is DelegatingQueue,
'package:collection/src/wrappers.dart@DelegatingQueue@': (m.Scope scope)=><E>( queue){
return DelegatingQueue(queue);
},
'package:collection/src/wrappers.dart@DelegatingQueue@add': (m.Scope scope, DelegatingQueue target)=>target.add,
'package:collection/src/wrappers.dart@DelegatingQueue@addAll': (m.Scope scope, DelegatingQueue target)=>target.addAll,
'package:collection/src/wrappers.dart@DelegatingQueue@addFirst': (m.Scope scope, DelegatingQueue target)=>target.addFirst,
'package:collection/src/wrappers.dart@DelegatingQueue@addLast': (m.Scope scope, DelegatingQueue target)=>target.addLast,
'package:collection/src/wrappers.dart@DelegatingQueue@cast': (m.Scope scope, DelegatingQueue target)=>target.cast,
'package:collection/src/wrappers.dart@DelegatingQueue@clear': (m.Scope scope, DelegatingQueue target)=>target.clear,
'package:collection/src/wrappers.dart@DelegatingQueue@remove': (m.Scope scope, DelegatingQueue target)=>target.remove,
'package:collection/src/wrappers.dart@DelegatingQueue@removeWhere': (m.Scope scope, DelegatingQueue target)=>( test){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.removeWhere(testProxy);
},
'package:collection/src/wrappers.dart@DelegatingQueue@retainWhere': (m.Scope scope, DelegatingQueue target)=>( test){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.retainWhere(testProxy);
},
'package:collection/src/wrappers.dart@DelegatingQueue@removeFirst': (m.Scope scope, DelegatingQueue target)=>target.removeFirst,
'package:collection/src/wrappers.dart@DelegatingQueue@removeLast': (m.Scope scope, DelegatingQueue target)=>target.removeLast,
'package:collection/src/wrappers.dart@DelegatingMap@#as': (m.Scope scope, target)=>()=>target as DelegatingMap,
'package:collection/src/wrappers.dart@DelegatingMap@#is': (m.Scope scope, target)=>()=>target is DelegatingMap,
'package:collection/src/wrappers.dart@DelegatingMap@entries': (m.Scope scope, DelegatingMap target)=>target.entries,
'package:collection/src/wrappers.dart@DelegatingMap@isEmpty': (m.Scope scope, DelegatingMap target)=>target.isEmpty,
'package:collection/src/wrappers.dart@DelegatingMap@isNotEmpty': (m.Scope scope, DelegatingMap target)=>target.isNotEmpty,
'package:collection/src/wrappers.dart@DelegatingMap@keys': (m.Scope scope, DelegatingMap target)=>target.keys,
'package:collection/src/wrappers.dart@DelegatingMap@length': (m.Scope scope, DelegatingMap target)=>target.length,
'package:collection/src/wrappers.dart@DelegatingMap@values': (m.Scope scope, DelegatingMap target)=>target.values,
'package:collection/src/wrappers.dart@DelegatingMap@': (m.Scope scope)=><K, V>( base){
return DelegatingMap(base);
},
'package:collection/src/wrappers.dart@DelegatingMap@[]': (m.Scope scope, DelegatingMap target)=>(index)=> target[index],
'package:collection/src/wrappers.dart@DelegatingMap@[]=': (m.Scope scope, DelegatingMap target)=>(index,other)=> target[index] = other,
'package:collection/src/wrappers.dart@DelegatingMap@addAll': (m.Scope scope, DelegatingMap target)=>target.addAll,
'package:collection/src/wrappers.dart@DelegatingMap@addEntries': (m.Scope scope, DelegatingMap target)=>target.addEntries,
'package:collection/src/wrappers.dart@DelegatingMap@clear': (m.Scope scope, DelegatingMap target)=>target.clear,
'package:collection/src/wrappers.dart@DelegatingMap@cast': (m.Scope scope, DelegatingMap target)=>target.cast,
'package:collection/src/wrappers.dart@DelegatingMap@containsKey': (m.Scope scope, DelegatingMap target)=>target.containsKey,
'package:collection/src/wrappers.dart@DelegatingMap@containsValue': (m.Scope scope, DelegatingMap target)=>target.containsValue,
'package:collection/src/wrappers.dart@DelegatingMap@forEach': (m.Scope scope, DelegatingMap target)=>( f){
void fProxy<K, V>( $p0,  $p1) {
 engine.callFunctionPointer(scope, f!,[$p0, $p1], {});
}

target.forEach(fProxy);
},
'package:collection/src/wrappers.dart@DelegatingMap@map': (m.Scope scope, DelegatingMap target)=>( transform){
MapEntry<K2, V2> transformProxy<K2, V2, K, V>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, transform!,[$p0, $p1], {});
}

return target.map(transformProxy);
},
'package:collection/src/wrappers.dart@DelegatingMap@putIfAbsent': (m.Scope scope, DelegatingMap target)=>( key,  ifAbsent){
V ifAbsentProxy<V>() {
return  engine.callFunctionPointer(scope, ifAbsent!,[], {});
}

return target.putIfAbsent(key, ifAbsentProxy);
},
'package:collection/src/wrappers.dart@DelegatingMap@remove': (m.Scope scope, DelegatingMap target)=>target.remove,
'package:collection/src/wrappers.dart@DelegatingMap@removeWhere': (m.Scope scope, DelegatingMap target)=>( test){
bool testProxy<K, V>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, test!,[$p0, $p1], {});
}

target.removeWhere(testProxy);
},
'package:collection/src/wrappers.dart@DelegatingMap@toString': (m.Scope scope, DelegatingMap target)=>target.toString,
'package:collection/src/wrappers.dart@DelegatingMap@update': (m.Scope scope, DelegatingMap target)=>( key,  update, { ifAbsent}){
V updateProxy<V>( $p0) {
return  engine.callFunctionPointer(scope, update!,[$p0], {});
}

V ifAbsentProxy<V>() {
return  engine.callFunctionPointer(scope, ifAbsent!,[], {});
}

return target.update(key, updateProxy, ifAbsent:ifAbsent == null ? null :ifAbsentProxy);
},
'package:collection/src/wrappers.dart@DelegatingMap@updateAll': (m.Scope scope, DelegatingMap target)=>( update){
V updateProxy<V, K>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, update!,[$p0, $p1], {});
}

target.updateAll(updateProxy);
},
'package:collection/src/wrappers.dart@MapKeySet@#as': (m.Scope scope, target)=>()=>target as MapKeySet,
'package:collection/src/wrappers.dart@MapKeySet@#is': (m.Scope scope, target)=>()=>target is MapKeySet,
'package:collection/src/wrappers.dart@MapKeySet@isEmpty': (m.Scope scope, MapKeySet target)=>target.isEmpty,
'package:collection/src/wrappers.dart@MapKeySet@isNotEmpty': (m.Scope scope, MapKeySet target)=>target.isNotEmpty,
'package:collection/src/wrappers.dart@MapKeySet@length': (m.Scope scope, MapKeySet target)=>target.length,
'package:collection/src/wrappers.dart@MapKeySet@': (m.Scope scope)=><E>( _baseMap){
return MapKeySet(_baseMap);
},
'package:collection/src/wrappers.dart@MapKeySet@cast': (m.Scope scope, MapKeySet target)=>target.cast,
'package:collection/src/wrappers.dart@MapKeySet@contains': (m.Scope scope, MapKeySet target)=>target.contains,
'package:collection/src/wrappers.dart@MapKeySet@toString': (m.Scope scope, MapKeySet target)=>target.toString,
'package:collection/src/wrappers.dart@MapKeySet@containsAll': (m.Scope scope, MapKeySet target)=>target.containsAll,
'package:collection/src/wrappers.dart@MapKeySet@difference': (m.Scope scope, MapKeySet target)=>target.difference,
'package:collection/src/wrappers.dart@MapKeySet@intersection': (m.Scope scope, MapKeySet target)=>target.intersection,
'package:collection/src/wrappers.dart@MapKeySet@lookup': (m.Scope scope, MapKeySet target)=>target.lookup,
'package:collection/src/wrappers.dart@MapKeySet@union': (m.Scope scope, MapKeySet target)=>target.union,
'package:collection/src/wrappers.dart@MapValueSet@#as': (m.Scope scope, target)=>()=>target as MapValueSet,
'package:collection/src/wrappers.dart@MapValueSet@#is': (m.Scope scope, target)=>()=>target is MapValueSet,
'package:collection/src/wrappers.dart@MapValueSet@isEmpty': (m.Scope scope, MapValueSet target)=>target.isEmpty,
'package:collection/src/wrappers.dart@MapValueSet@isNotEmpty': (m.Scope scope, MapValueSet target)=>target.isNotEmpty,
'package:collection/src/wrappers.dart@MapValueSet@length': (m.Scope scope, MapValueSet target)=>target.length,
'package:collection/src/wrappers.dart@MapValueSet@': (m.Scope scope)=>( _baseMap,  _keyForValue){
K _keyForValueProxy<K, V>( $p0) {
return  engine.callFunctionPointer(scope, _keyForValue!,[$p0], {});
}

return MapValueSet(_baseMap, _keyForValueProxy);
},
'package:collection/src/wrappers.dart@MapValueSet@cast': (m.Scope scope, MapValueSet target)=>target.cast,
'package:collection/src/wrappers.dart@MapValueSet@contains': (m.Scope scope, MapValueSet target)=>target.contains,
'package:collection/src/wrappers.dart@MapValueSet@toString': (m.Scope scope, MapValueSet target)=>target.toString,
'package:collection/src/wrappers.dart@MapValueSet@add': (m.Scope scope, MapValueSet target)=>target.add,
'package:collection/src/wrappers.dart@MapValueSet@addAll': (m.Scope scope, MapValueSet target)=>target.addAll,
'package:collection/src/wrappers.dart@MapValueSet@clear': (m.Scope scope, MapValueSet target)=>target.clear,
'package:collection/src/wrappers.dart@MapValueSet@containsAll': (m.Scope scope, MapValueSet target)=>target.containsAll,
'package:collection/src/wrappers.dart@MapValueSet@difference': (m.Scope scope, MapValueSet target)=>target.difference,
'package:collection/src/wrappers.dart@MapValueSet@intersection': (m.Scope scope, MapValueSet target)=>target.intersection,
'package:collection/src/wrappers.dart@MapValueSet@lookup': (m.Scope scope, MapValueSet target)=>target.lookup,
'package:collection/src/wrappers.dart@MapValueSet@remove': (m.Scope scope, MapValueSet target)=>target.remove,
'package:collection/src/wrappers.dart@MapValueSet@removeAll': (m.Scope scope, MapValueSet target)=>target.removeAll,
'package:collection/src/wrappers.dart@MapValueSet@removeWhere': (m.Scope scope, MapValueSet target)=>( test){
bool testProxy<V>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.removeWhere(testProxy);
},
'package:collection/src/wrappers.dart@MapValueSet@retainAll': (m.Scope scope, MapValueSet target)=>target.retainAll,
'package:collection/src/wrappers.dart@MapValueSet@retainWhere': (m.Scope scope, MapValueSet target)=>( test){
bool testProxy<V>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.retainWhere(testProxy);
},
'package:collection/src/wrappers.dart@MapValueSet@union': (m.Scope scope, MapValueSet target)=>target.union,

};
}