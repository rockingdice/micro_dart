import 'package:collection/src/unmodifiable_wrappers.dart';
import 'package:collection/src/empty_unmodifiable_set.dart';
import 'package:collection/src/wrappers.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListView@#as': (m.Scope scope, target)=>()=>target as NonGrowableListView,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListView@#is': (m.Scope scope, target)=>()=>target is NonGrowableListView,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListView@': (m.Scope scope)=>NonGrowableListView,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@#as': (m.Scope scope, target)=>()=>target as NonGrowableListMixin,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@#is': (m.Scope scope, target)=>()=>target is NonGrowableListMixin,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@length:set': (m.Scope scope, NonGrowableListMixin target)=>(other)=>target.length=other,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@add': (m.Scope scope, NonGrowableListMixin target)=>target.add,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@addAll': (m.Scope scope, NonGrowableListMixin target)=>target.addAll,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@insert': (m.Scope scope, NonGrowableListMixin target)=>target.insert,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@insertAll': (m.Scope scope, NonGrowableListMixin target)=>target.insertAll,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@remove': (m.Scope scope, NonGrowableListMixin target)=>target.remove,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@removeAt': (m.Scope scope, NonGrowableListMixin target)=>target.removeAt,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@removeLast': (m.Scope scope, NonGrowableListMixin target)=>target.removeLast,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@removeWhere': (m.Scope scope, NonGrowableListMixin target)=>( test){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.removeWhere(testProxy);
},
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@retainWhere': (m.Scope scope, NonGrowableListMixin target)=>( test){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.retainWhere(testProxy);
},
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@removeRange': (m.Scope scope, NonGrowableListMixin target)=>target.removeRange,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@replaceRange': (m.Scope scope, NonGrowableListMixin target)=>target.replaceRange,
'package:collection/src/unmodifiable_wrappers.dart@NonGrowableListMixin@clear': (m.Scope scope, NonGrowableListMixin target)=>target.clear,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetView@#as': (m.Scope scope, target)=>()=>target as UnmodifiableSetView,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetView@#is': (m.Scope scope, target)=>()=>target is UnmodifiableSetView,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetView@': (m.Scope scope)=>UnmodifiableSetView,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetView@empty': (m.Scope scope)=>UnmodifiableSetView.empty,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetMixin@#as': (m.Scope scope, target)=>()=>target as UnmodifiableSetMixin,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetMixin@#is': (m.Scope scope, target)=>()=>target is UnmodifiableSetMixin,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetMixin@add': (m.Scope scope, UnmodifiableSetMixin target)=>target.add,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetMixin@addAll': (m.Scope scope, UnmodifiableSetMixin target)=>target.addAll,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetMixin@remove': (m.Scope scope, UnmodifiableSetMixin target)=>target.remove,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetMixin@removeAll': (m.Scope scope, UnmodifiableSetMixin target)=>target.removeAll,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetMixin@retainAll': (m.Scope scope, UnmodifiableSetMixin target)=>target.retainAll,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetMixin@removeWhere': (m.Scope scope, UnmodifiableSetMixin target)=>( test){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.removeWhere(testProxy);
},
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetMixin@retainWhere': (m.Scope scope, UnmodifiableSetMixin target)=>( test){
bool testProxy<E>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.retainWhere(testProxy);
},
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableSetMixin@clear': (m.Scope scope, UnmodifiableSetMixin target)=>target.clear,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableMapMixin@#as': (m.Scope scope, target)=>()=>target as UnmodifiableMapMixin,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableMapMixin@#is': (m.Scope scope, target)=>()=>target is UnmodifiableMapMixin,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableMapMixin@first:set': (m.Scope scope, UnmodifiableMapMixin target)=>(other)=>target.first=other,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableMapMixin@last:set': (m.Scope scope, UnmodifiableMapMixin target)=>(other)=>target.last=other,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableMapMixin@[]=': (m.Scope scope, UnmodifiableMapMixin target)=>(index,other)=> target[index] = other,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableMapMixin@putIfAbsent': (m.Scope scope, UnmodifiableMapMixin target)=>( key,  ifAbsent){
V ifAbsentProxy<V>() {
return  engine.callFunctionPointer(scope, ifAbsent!,[], {});
}

return target.putIfAbsent(key, ifAbsentProxy);
},
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableMapMixin@addAll': (m.Scope scope, UnmodifiableMapMixin target)=>target.addAll,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableMapMixin@remove': (m.Scope scope, UnmodifiableMapMixin target)=>target.remove,
'package:collection/src/unmodifiable_wrappers.dart@UnmodifiableMapMixin@clear': (m.Scope scope, UnmodifiableMapMixin target)=>target.clear,

};
}