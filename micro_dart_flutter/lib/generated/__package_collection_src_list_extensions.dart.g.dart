import 'package:collection/src/list_extensions.dart';
import 'dart:collection';
import 'dart:math';
import 'package:collection/src/algorithms.dart';
import 'package:collection/src/equality.dart';
import 'package:collection/src/utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/list_extensions.dart@ListSlice@#as': (m.Scope scope, target)=>()=>target as ListSlice,
'package:collection/src/list_extensions.dart@ListSlice@#is': (m.Scope scope, target)=>()=>target is ListSlice,
'package:collection/src/list_extensions.dart@ListSlice@source': (m.Scope scope, ListSlice target)=>target.source,
'package:collection/src/list_extensions.dart@ListSlice@start': (m.Scope scope, ListSlice target)=>target.start,
'package:collection/src/list_extensions.dart@ListSlice@length': (m.Scope scope, ListSlice target)=>target.length,
'package:collection/src/list_extensions.dart@ListSlice@end': (m.Scope scope, ListSlice target)=>target.end,
'package:collection/src/list_extensions.dart@ListSlice@length:set': (m.Scope scope, ListSlice target)=>(other)=>target.length=other,
'package:collection/src/list_extensions.dart@ListSlice@': (m.Scope scope)=><E>( source,  start,  end){
return ListSlice(source, start, end);
},
'package:collection/src/list_extensions.dart@ListSlice@[]': (m.Scope scope, ListSlice target)=>(index)=> target[index],
'package:collection/src/list_extensions.dart@ListSlice@[]=': (m.Scope scope, ListSlice target)=>(index,other)=> target[index] = other,
'package:collection/src/list_extensions.dart@ListSlice@setRange': (m.Scope scope, ListSlice target)=>target.setRange,
'package:collection/src/list_extensions.dart@ListSlice@slice': (m.Scope scope, ListSlice target)=>target.slice,
'package:collection/src/list_extensions.dart@ListSlice@shuffle': (m.Scope scope, ListSlice target)=>target.shuffle,
'package:collection/src/list_extensions.dart@ListSlice@sort': (m.Scope scope, ListSlice target)=>([m.FunctionPointer? compare]){
if(compare == null){
target.sort();
return;
}
int compareProxy<E>( a,  b) {
return  engine.callFunctionPointer(scope, compare!,[a, b], {});
}

target.sort(compareProxy);
return;
},
'package:collection/src/list_extensions.dart@ListSlice@sortRange': (m.Scope scope, ListSlice target)=>( start,  end,  compare){
int compareProxy<E>( a,  b) {
return  engine.callFunctionPointer(scope, compare!,[a, b], {});
}

target.sortRange(start, end, compareProxy);
},
'package:collection/src/list_extensions.dart@ListSlice@shuffleRange': (m.Scope scope, ListSlice target)=>target.shuffleRange,
'package:collection/src/list_extensions.dart@ListSlice@reverseRange': (m.Scope scope, ListSlice target)=>target.reverseRange,
'package:collection/src/list_extensions.dart@ListSlice@add': (m.Scope scope, ListSlice target)=>target.add,
'package:collection/src/list_extensions.dart@ListSlice@insert': (m.Scope scope, ListSlice target)=>target.insert,
'package:collection/src/list_extensions.dart@ListSlice@insertAll': (m.Scope scope, ListSlice target)=>target.insertAll,
'package:collection/src/list_extensions.dart@ListSlice@addAll': (m.Scope scope, ListSlice target)=>target.addAll,
'package:collection/src/list_extensions.dart@ListSlice@remove': (m.Scope scope, ListSlice target)=>target.remove,
'package:collection/src/list_extensions.dart@ListSlice@removeWhere': (m.Scope scope, ListSlice target)=>( test){
bool testProxy<E>( element) {
return  engine.callFunctionPointer(scope, test!,[element], {});
}

target.removeWhere(testProxy);
},
'package:collection/src/list_extensions.dart@ListSlice@retainWhere': (m.Scope scope, ListSlice target)=>( test){
bool testProxy<E>( element) {
return  engine.callFunctionPointer(scope, test!,[element], {});
}

target.retainWhere(testProxy);
},
'package:collection/src/list_extensions.dart@ListSlice@clear': (m.Scope scope, ListSlice target)=>target.clear,
'package:collection/src/list_extensions.dart@ListSlice@removeAt': (m.Scope scope, ListSlice target)=>target.removeAt,
'package:collection/src/list_extensions.dart@ListSlice@removeLast': (m.Scope scope, ListSlice target)=>target.removeLast,
'package:collection/src/list_extensions.dart@ListSlice@removeRange': (m.Scope scope, ListSlice target)=>target.removeRange,
'package:collection/src/list_extensions.dart@ListSlice@replaceRange': (m.Scope scope, ListSlice target)=>target.replaceRange,

};
}