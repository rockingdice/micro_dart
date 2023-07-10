import 'package:collection/src/functions.dart';
import 'dart:collection';
import 'dart:math';
import 'package:collection/src/utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/functions.dart@@mergeMaps': (m.Scope scope)=>( map1,  map2, { value}){
V valueProxy<V>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, value!,[$p0, $p1], {});
}

return mergeMaps(map1, map2, value:value == null ? null :valueProxy);
},
'package:collection/src/functions.dart@@lastBy': (m.Scope scope)=>( values,  key){
T keyProxy<T, S>( $p0) {
return  engine.callFunctionPointer(scope, key!,[$p0], {});
}

return lastBy(values, keyProxy);
},
'package:collection/src/functions.dart@@groupBy': (m.Scope scope)=>( values,  key){
T keyProxy<T, S>( $p0) {
return  engine.callFunctionPointer(scope, key!,[$p0], {});
}

return groupBy(values, keyProxy);
},
'package:collection/src/functions.dart@@minBy': (m.Scope scope)=>( values,  orderBy, { compare}){
T orderByProxy<T, S>( $p0) {
return  engine.callFunctionPointer(scope, orderBy!,[$p0], {});
}

int compareProxy<T>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, compare!,[$p0, $p1], {});
}

return minBy(values, orderByProxy, compare:compare == null ? null :compareProxy);
},
'package:collection/src/functions.dart@@maxBy': (m.Scope scope)=>( values,  orderBy, { compare}){
T orderByProxy<T, S>( $p0) {
return  engine.callFunctionPointer(scope, orderBy!,[$p0], {});
}

int compareProxy<T>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, compare!,[$p0, $p1], {});
}

return maxBy(values, orderByProxy, compare:compare == null ? null :compareProxy);
},
'package:collection/src/functions.dart@@transitiveClosure': (m.Scope scope)=>transitiveClosure,
'package:collection/src/functions.dart@@stronglyConnectedComponents': (m.Scope scope)=>stronglyConnectedComponents,

};
}