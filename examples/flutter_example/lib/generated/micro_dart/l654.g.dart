import 'package:collection/src/equality_map.dart';
import 'dart:collection';
import 'package:collection/src/equality.dart';
import 'package:collection/src/wrappers.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/equality_map.dart@EqualityMap@#as': (m.Scope scope, target)=>()=>target as EqualityMap,
'package:collection/src/equality_map.dart@EqualityMap@#is': (m.Scope scope, target)=>()=>target is EqualityMap,
'package:collection/src/equality_map.dart@EqualityMap@': (m.Scope scope)=>EqualityMap,
'package:collection/src/equality_map.dart@EqualityMap@from': (m.Scope scope)=>EqualityMap.from,

};
}