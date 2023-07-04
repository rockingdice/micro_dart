import 'package:collection/src/priority_queue.dart';
import 'dart:collection';
import 'package:collection/src/utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/priority_queue.dart@PriorityQueue@#as': (m.Scope scope, target)=>()=>target as PriorityQueue,
'package:collection/src/priority_queue.dart@PriorityQueue@#is': (m.Scope scope, target)=>()=>target is PriorityQueue,
'package:collection/src/priority_queue.dart@PriorityQueue@length': (m.Scope scope, PriorityQueue target)=>target.length,
'package:collection/src/priority_queue.dart@PriorityQueue@isEmpty': (m.Scope scope, PriorityQueue target)=>target.isEmpty,
'package:collection/src/priority_queue.dart@PriorityQueue@isNotEmpty': (m.Scope scope, PriorityQueue target)=>target.isNotEmpty,
'package:collection/src/priority_queue.dart@PriorityQueue@unorderedElements': (m.Scope scope, PriorityQueue target)=>target.unorderedElements,
'package:collection/src/priority_queue.dart@PriorityQueue@first': (m.Scope scope, PriorityQueue target)=>target.first,
'package:collection/src/priority_queue.dart@PriorityQueue@': (m.Scope scope)=>([m.FunctionPointer? comparison]){
if(comparison == null){
return PriorityQueue();
}
int comparisonProxy<E>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, comparison!,[$p0, $p1], {});
}

return PriorityQueue(comparisonProxy);
},
'package:collection/src/priority_queue.dart@PriorityQueue@contains': (m.Scope scope, PriorityQueue target)=>target.contains,
'package:collection/src/priority_queue.dart@PriorityQueue@add': (m.Scope scope, PriorityQueue target)=>target.add,
'package:collection/src/priority_queue.dart@PriorityQueue@addAll': (m.Scope scope, PriorityQueue target)=>target.addAll,
'package:collection/src/priority_queue.dart@PriorityQueue@removeFirst': (m.Scope scope, PriorityQueue target)=>target.removeFirst,
'package:collection/src/priority_queue.dart@PriorityQueue@remove': (m.Scope scope, PriorityQueue target)=>target.remove,
'package:collection/src/priority_queue.dart@PriorityQueue@removeAll': (m.Scope scope, PriorityQueue target)=>target.removeAll,
'package:collection/src/priority_queue.dart@PriorityQueue@clear': (m.Scope scope, PriorityQueue target)=>target.clear,
'package:collection/src/priority_queue.dart@PriorityQueue@toList': (m.Scope scope, PriorityQueue target)=>target.toList,
'package:collection/src/priority_queue.dart@PriorityQueue@toUnorderedList': (m.Scope scope, PriorityQueue target)=>target.toUnorderedList,
'package:collection/src/priority_queue.dart@PriorityQueue@toSet': (m.Scope scope, PriorityQueue target)=>target.toSet,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@#as': (m.Scope scope, target)=>()=>target as HeapPriorityQueue,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@#is': (m.Scope scope, target)=>()=>target is HeapPriorityQueue,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@comparison': (m.Scope scope, HeapPriorityQueue target)=>target.comparison,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@unorderedElements': (m.Scope scope, HeapPriorityQueue target)=>target.unorderedElements,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@first': (m.Scope scope, HeapPriorityQueue target)=>target.first,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@isEmpty': (m.Scope scope, HeapPriorityQueue target)=>target.isEmpty,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@isNotEmpty': (m.Scope scope, HeapPriorityQueue target)=>target.isNotEmpty,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@length': (m.Scope scope, HeapPriorityQueue target)=>target.length,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@': (m.Scope scope)=>([m.FunctionPointer? comparison]){
if(comparison == null){
return HeapPriorityQueue();
}
int comparisonProxy<E>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, comparison!,[$p0, $p1], {});
}

return HeapPriorityQueue(comparisonProxy);
},
'package:collection/src/priority_queue.dart@HeapPriorityQueue@add': (m.Scope scope, HeapPriorityQueue target)=>target.add,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@addAll': (m.Scope scope, HeapPriorityQueue target)=>target.addAll,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@clear': (m.Scope scope, HeapPriorityQueue target)=>target.clear,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@contains': (m.Scope scope, HeapPriorityQueue target)=>target.contains,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@remove': (m.Scope scope, HeapPriorityQueue target)=>target.remove,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@removeAll': (m.Scope scope, HeapPriorityQueue target)=>target.removeAll,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@removeFirst': (m.Scope scope, HeapPriorityQueue target)=>target.removeFirst,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@toList': (m.Scope scope, HeapPriorityQueue target)=>target.toList,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@toSet': (m.Scope scope, HeapPriorityQueue target)=>target.toSet,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@toUnorderedList': (m.Scope scope, HeapPriorityQueue target)=>target.toUnorderedList,
'package:collection/src/priority_queue.dart@HeapPriorityQueue@toString': (m.Scope scope, HeapPriorityQueue target)=>target.toString,

};
}