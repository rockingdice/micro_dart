import 'package:collection/src/union_set_controller.dart';
import 'package:collection/src/union_set.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/union_set_controller.dart@UnionSetController@#as': (m.Scope scope, target)=>()=>target as UnionSetController,
'package:collection/src/union_set_controller.dart@UnionSetController@#is': (m.Scope scope, target)=>()=>target is UnionSetController,
'package:collection/src/union_set_controller.dart@UnionSetController@set': (m.Scope scope, UnionSetController target)=>target.set,
'package:collection/src/union_set_controller.dart@UnionSetController@': (m.Scope scope)=><E>({ disjoint}){
return UnionSetController(disjoint:disjoint ?? false);
},
'package:collection/src/union_set_controller.dart@UnionSetController@add': (m.Scope scope, UnionSetController target)=>target.add,
'package:collection/src/union_set_controller.dart@UnionSetController@remove': (m.Scope scope, UnionSetController target)=>target.remove,

};
}