import 'package:collection/src/empty_unmodifiable_set.dart';
import 'dart:collection';
import 'package:collection/src/unmodifiable_wrappers.dart';
import 'package:collection/src/wrappers.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@#as': (m.Scope scope, target)=>()=>target as EmptyUnmodifiableSet,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@#is': (m.Scope scope, target)=>()=>target is EmptyUnmodifiableSet,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@iterator': (m.Scope scope, EmptyUnmodifiableSet target)=>target.iterator,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@length': (m.Scope scope, EmptyUnmodifiableSet target)=>target.length,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@': (m.Scope scope)=><E>(){
return EmptyUnmodifiableSet();
},
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@cast': (m.Scope scope, EmptyUnmodifiableSet target)=>target.cast,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@contains': (m.Scope scope, EmptyUnmodifiableSet target)=>target.contains,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@containsAll': (m.Scope scope, EmptyUnmodifiableSet target)=>target.containsAll,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@followedBy': (m.Scope scope, EmptyUnmodifiableSet target)=>target.followedBy,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@lookup': (m.Scope scope, EmptyUnmodifiableSet target)=>target.lookup,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@singleWhere': (m.Scope scope, EmptyUnmodifiableSet target)=>( test, { orElse}){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

E orElseProxy<E>() {
return  engine.callFunctionPointer(scope, orElse!,[], {});
}

return target.singleWhere(testProxy, orElse:orElse == null ? null :orElseProxy);
},
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@whereType': (m.Scope scope, EmptyUnmodifiableSet target)=>target.whereType,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@toSet': (m.Scope scope, EmptyUnmodifiableSet target)=>target.toSet,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@union': (m.Scope scope, EmptyUnmodifiableSet target)=>target.union,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@intersection': (m.Scope scope, EmptyUnmodifiableSet target)=>target.intersection,
'package:collection/src/empty_unmodifiable_set.dart@EmptyUnmodifiableSet@difference': (m.Scope scope, EmptyUnmodifiableSet target)=>target.difference,

};
}