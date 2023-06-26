import 'package:collection/src/boollist.dart';
import 'dart:collection' show ListMixin;
import 'dart:typed_data' show Uint32List;
import 'package:collection/src/unmodifiable_wrappers.dart' show NonGrowableListMixin;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/boollist.dart@BoolList@#as': (m.Scope scope, target)=>()=>target as BoolList,
'package:collection/src/boollist.dart@BoolList@#is': (m.Scope scope, target)=>()=>target is BoolList,
'package:collection/src/boollist.dart@BoolList@length': (m.Scope scope, BoolList target)=>target.length,
'package:collection/src/boollist.dart@BoolList@iterator': (m.Scope scope, BoolList target)=>target.iterator,
'package:collection/src/boollist.dart@BoolList@': (m.Scope scope)=>BoolList,
'package:collection/src/boollist.dart@BoolList@empty': (m.Scope scope)=>BoolList.empty,
'package:collection/src/boollist.dart@BoolList@generate': (m.Scope scope)=>( length,  generator, { growable}){
bool generatorProxy( $p0) {
return  engine.callFunctionPointer(scope, generator!,[$p0], {});
}

return BoolList.generate(length, generatorProxy, growable:growable ?? true);
},
'package:collection/src/boollist.dart@BoolList@of': (m.Scope scope)=>BoolList.of,
'package:collection/src/boollist.dart@BoolList@[]': (m.Scope scope, BoolList target)=>(index)=> target[index],
'package:collection/src/boollist.dart@BoolList@[]=': (m.Scope scope, BoolList target)=>(index,other)=> target[index] = other,
'package:collection/src/boollist.dart@BoolList@fillRange': (m.Scope scope, BoolList target)=>target.fillRange,

};
}