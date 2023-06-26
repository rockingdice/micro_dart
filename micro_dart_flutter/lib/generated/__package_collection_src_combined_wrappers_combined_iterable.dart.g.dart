import 'package:collection/src/combined_wrappers/combined_iterable.dart';
import 'dart:collection';
import 'package:collection/src/combined_wrappers/combined_iterator.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/combined_wrappers/combined_iterable.dart@CombinedIterableView@#as': (m.Scope scope, target)=>()=>target as CombinedIterableView,
'package:collection/src/combined_wrappers/combined_iterable.dart@CombinedIterableView@#is': (m.Scope scope, target)=>()=>target is CombinedIterableView,
'package:collection/src/combined_wrappers/combined_iterable.dart@CombinedIterableView@iterator': (m.Scope scope, CombinedIterableView target)=>target.iterator,
'package:collection/src/combined_wrappers/combined_iterable.dart@CombinedIterableView@isEmpty': (m.Scope scope, CombinedIterableView target)=>target.isEmpty,
'package:collection/src/combined_wrappers/combined_iterable.dart@CombinedIterableView@length': (m.Scope scope, CombinedIterableView target)=>target.length,
'package:collection/src/combined_wrappers/combined_iterable.dart@CombinedIterableView@': (m.Scope scope)=>CombinedIterableView,
'package:collection/src/combined_wrappers/combined_iterable.dart@CombinedIterableView@contains': (m.Scope scope, CombinedIterableView target)=>target.contains,

};
}