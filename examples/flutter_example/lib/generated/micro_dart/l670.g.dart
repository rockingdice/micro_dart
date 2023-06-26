import 'package:collection/src/combined_wrappers/combined_iterator.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/combined_wrappers/combined_iterator.dart@CombinedIterator@#as': (m.Scope scope, target)=>()=>target as CombinedIterator,
'package:collection/src/combined_wrappers/combined_iterator.dart@CombinedIterator@#is': (m.Scope scope, target)=>()=>target is CombinedIterator,
'package:collection/src/combined_wrappers/combined_iterator.dart@CombinedIterator@current': (m.Scope scope, CombinedIterator target)=>target.current,
'package:collection/src/combined_wrappers/combined_iterator.dart@CombinedIterator@': (m.Scope scope)=>CombinedIterator,
'package:collection/src/combined_wrappers/combined_iterator.dart@CombinedIterator@moveNext': (m.Scope scope, CombinedIterator target)=>target.moveNext,

};
}