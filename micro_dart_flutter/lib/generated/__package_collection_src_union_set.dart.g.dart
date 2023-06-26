import 'package:collection/src/union_set.dart';
import 'dart:collection';
import 'package:collection/src/unmodifiable_wrappers.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/union_set.dart@UnionSet@#as': (m.Scope scope, target)=>()=>target as UnionSet,
'package:collection/src/union_set.dart@UnionSet@#is': (m.Scope scope, target)=>()=>target is UnionSet,
'package:collection/src/union_set.dart@UnionSet@length': (m.Scope scope, UnionSet target)=>target.length,
'package:collection/src/union_set.dart@UnionSet@iterator': (m.Scope scope, UnionSet target)=>target.iterator,
'package:collection/src/union_set.dart@UnionSet@': (m.Scope scope)=>UnionSet,
'package:collection/src/union_set.dart@UnionSet@from': (m.Scope scope)=>UnionSet.from,
'package:collection/src/union_set.dart@UnionSet@contains': (m.Scope scope, UnionSet target)=>target.contains,
'package:collection/src/union_set.dart@UnionSet@lookup': (m.Scope scope, UnionSet target)=>target.lookup,
'package:collection/src/union_set.dart@UnionSet@toSet': (m.Scope scope, UnionSet target)=>target.toSet,

};
}