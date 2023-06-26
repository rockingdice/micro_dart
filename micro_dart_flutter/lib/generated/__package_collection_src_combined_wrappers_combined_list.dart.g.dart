import 'package:collection/src/combined_wrappers/combined_list.dart';
import 'dart:collection';
import 'package:collection/src/combined_wrappers/combined_iterator.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@#as': (m.Scope scope, target)=>()=>target as CombinedListView,
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@#is': (m.Scope scope, target)=>()=>target is CombinedListView,
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@iterator': (m.Scope scope, CombinedListView target)=>target.iterator,
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@length:set': (m.Scope scope, CombinedListView target)=>(other)=>target.length=other,
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@length': (m.Scope scope, CombinedListView target)=>target.length,
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@': (m.Scope scope)=>CombinedListView,
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@[]': (m.Scope scope, CombinedListView target)=>(index)=> target[index],
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@[]=': (m.Scope scope, CombinedListView target)=>(index,other)=> target[index] = other,
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@clear': (m.Scope scope, CombinedListView target)=>target.clear,
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@remove': (m.Scope scope, CombinedListView target)=>target.remove,
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@removeWhere': (m.Scope scope, CombinedListView target)=>( test){
bool testProxy<T>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.removeWhere(testProxy);
},
'package:collection/src/combined_wrappers/combined_list.dart@CombinedListView@retainWhere': (m.Scope scope, CombinedListView target)=>( test){
bool testProxy<T>( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.retainWhere(testProxy);
},

};
}