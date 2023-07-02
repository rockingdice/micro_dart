import 'package:collection/src/algorithms.dart';
import 'dart:math' show Random;
import 'package:collection/src/utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/algorithms.dart@@binarySearch': (m.Scope scope)=>( sortedList,  value, { compare}){
int compareProxy<E>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, compare!,[$p0, $p1], {});
}

return binarySearch(sortedList, value, compare:compare == null ? null :compareProxy);
},
'package:collection/src/algorithms.dart@@binarySearchBy': (m.Scope scope)=>( sortedList,  keyOf,  compare,  value, [int? start, int? end]){
K keyOfProxy<K, E>( element) {
return  engine.callFunctionPointer(scope, keyOf!,[element], {});
}

int compareProxy<K>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, compare!,[$p0, $p1], {});
}

if(start == null && end == null){
return binarySearchBy(sortedList, keyOfProxy, compareProxy, value);
}
if(end == null){
return binarySearchBy(sortedList, keyOfProxy, compareProxy, value, start!);
}
return binarySearchBy(sortedList, keyOfProxy, compareProxy, value, start!, end!);
},
'package:collection/src/algorithms.dart@@lowerBound': (m.Scope scope)=>( sortedList,  value, { compare}){
int compareProxy<E>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, compare!,[$p0, $p1], {});
}

return lowerBound(sortedList, value, compare:compare == null ? null :compareProxy);
},
'package:collection/src/algorithms.dart@@lowerBoundBy': (m.Scope scope)=>( sortedList,  keyOf,  compare,  value, [int? start, int? end]){
K keyOfProxy<K, E>( element) {
return  engine.callFunctionPointer(scope, keyOf!,[element], {});
}

int compareProxy<K>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, compare!,[$p0, $p1], {});
}

if(start == null && end == null){
return lowerBoundBy(sortedList, keyOfProxy, compareProxy, value);
}
if(end == null){
return lowerBoundBy(sortedList, keyOfProxy, compareProxy, value, start!);
}
return lowerBoundBy(sortedList, keyOfProxy, compareProxy, value, start!, end!);
},
'package:collection/src/algorithms.dart@@shuffle': (m.Scope scope)=>shuffle,
'package:collection/src/algorithms.dart@@reverse': (m.Scope scope)=>reverse,
'package:collection/src/algorithms.dart@@insertionSort': (m.Scope scope)=>( elements, { compare,  end,  start}){
int compareProxy<E>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, compare!,[$p0, $p1], {});
}

insertionSort(elements, compare:compare == null ? null :compareProxy, end:end, start:start ?? 0);
},
'package:collection/src/algorithms.dart@@insertionSortBy': (m.Scope scope)=>( elements,  keyOf,  compare, [int? start, int? end]){
K keyOfProxy<K, E>( element) {
return  engine.callFunctionPointer(scope, keyOf!,[element], {});
}

int compareProxy<K>( a,  b) {
return  engine.callFunctionPointer(scope, compare!,[a, b], {});
}

if(start == null && end == null){
insertionSortBy(elements, keyOfProxy, compareProxy);
return;
}
if(end == null){
insertionSortBy(elements, keyOfProxy, compareProxy, start!);
return;
}
insertionSortBy(elements, keyOfProxy, compareProxy, start!, end!);
return;
},
'package:collection/src/algorithms.dart@@mergeSort': (m.Scope scope)=>( elements, { compare,  end,  start}){
int compareProxy<E>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, compare!,[$p0, $p1], {});
}

mergeSort(elements, compare:compare == null ? null :compareProxy, end:end, start:start ?? 0);
},
'package:collection/src/algorithms.dart@@mergeSortBy': (m.Scope scope)=>( elements,  keyOf,  compare, [int? start, int? end]){
K keyOfProxy<K, E>( element) {
return  engine.callFunctionPointer(scope, keyOf!,[element], {});
}

int compareProxy<K>( a,  b) {
return  engine.callFunctionPointer(scope, compare!,[a, b], {});
}

if(start == null && end == null){
mergeSortBy(elements, keyOfProxy, compareProxy);
return;
}
if(end == null){
mergeSortBy(elements, keyOfProxy, compareProxy, start!);
return;
}
mergeSortBy(elements, keyOfProxy, compareProxy, start!, end!);
return;
},
'package:collection/src/algorithms.dart@@quickSort': (m.Scope scope)=>( elements,  compare, [int? start, int? end]){
int compareProxy<E>( a,  b) {
return  engine.callFunctionPointer(scope, compare!,[a, b], {});
}

if(start == null && end == null){
quickSort(elements, compareProxy);
return;
}
if(end == null){
quickSort(elements, compareProxy, start!);
return;
}
quickSort(elements, compareProxy, start!, end!);
return;
},
'package:collection/src/algorithms.dart@@quickSortBy': (m.Scope scope)=>( list,  keyOf,  compare, [int? start, int? end]){
K keyOfProxy<K, E>( element) {
return  engine.callFunctionPointer(scope, keyOf!,[element], {});
}

int compareProxy<K>( a,  b) {
return  engine.callFunctionPointer(scope, compare!,[a, b], {});
}

if(start == null && end == null){
quickSortBy(list, keyOfProxy, compareProxy);
return;
}
if(end == null){
quickSortBy(list, keyOfProxy, compareProxy, start!);
return;
}
quickSortBy(list, keyOfProxy, compareProxy, start!, end!);
return;
},

};
}