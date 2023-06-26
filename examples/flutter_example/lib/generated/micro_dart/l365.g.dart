import 'package:flutter/src/foundation/collections.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/collections.dart@@setEquals': (m.Scope scope)=>setEquals,
'package:flutter/src/foundation/collections.dart@@listEquals': (m.Scope scope)=>listEquals,
'package:flutter/src/foundation/collections.dart@@mapEquals': (m.Scope scope)=>mapEquals,
'package:flutter/src/foundation/collections.dart@@binarySearch': (m.Scope scope)=>binarySearch,
'package:flutter/src/foundation/collections.dart@@mergeSort': (m.Scope scope)=>( list, { compare,  end,  start}){
int compareProxy<T>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, compare!,[$p0, $p1], {});
}

mergeSort(list, compare:compare == null ? null :compareProxy, end:end, start:start ?? 0);
},

};
}