import 'package:collection/src/equality_set.dart';
import 'dart:collection';
import 'package:collection/src/equality.dart';
import 'package:collection/src/wrappers.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/equality_set.dart@EqualitySet@#as': (m.Scope scope, target)=>()=>target as EqualitySet,
'package:collection/src/equality_set.dart@EqualitySet@#is': (m.Scope scope, target)=>()=>target is EqualitySet,
'package:collection/src/equality_set.dart@EqualitySet@': (m.Scope scope)=><E>( equality){
return EqualitySet(equality);
},
'package:collection/src/equality_set.dart@EqualitySet@from': (m.Scope scope)=>EqualitySet.from,

};
}