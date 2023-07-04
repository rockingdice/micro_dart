import 'package:collection/src/queue_list.dart';
import 'dart:collection';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/queue_list.dart@QueueList@#as': (m.Scope scope, target)=>()=>target as QueueList,
'package:collection/src/queue_list.dart@QueueList@#is': (m.Scope scope, target)=>()=>target is QueueList,
'package:collection/src/queue_list.dart@QueueList@length': (m.Scope scope, QueueList target)=>target.length,
'package:collection/src/queue_list.dart@QueueList@length:set': (m.Scope scope, QueueList target)=>(other)=>target.length=other,
'package:collection/src/queue_list.dart@QueueList@': (m.Scope scope)=><E>([int? initialCapacity]){
if(initialCapacity == null){
return QueueList();
}
return QueueList(initialCapacity!);
},
'package:collection/src/queue_list.dart@QueueList@from': (m.Scope scope)=>QueueList.from,
'package:collection/src/queue_list.dart@QueueList@add': (m.Scope scope, QueueList target)=>target.add,
'package:collection/src/queue_list.dart@QueueList@addAll': (m.Scope scope, QueueList target)=>target.addAll,
'package:collection/src/queue_list.dart@QueueList@cast': (m.Scope scope, QueueList target)=>target.cast,
'package:collection/src/queue_list.dart@QueueList@toString': (m.Scope scope, QueueList target)=>target.toString,
'package:collection/src/queue_list.dart@QueueList@addLast': (m.Scope scope, QueueList target)=>target.addLast,
'package:collection/src/queue_list.dart@QueueList@addFirst': (m.Scope scope, QueueList target)=>target.addFirst,
'package:collection/src/queue_list.dart@QueueList@removeFirst': (m.Scope scope, QueueList target)=>target.removeFirst,
'package:collection/src/queue_list.dart@QueueList@removeLast': (m.Scope scope, QueueList target)=>target.removeLast,
'package:collection/src/queue_list.dart@QueueList@[]': (m.Scope scope, QueueList target)=>(index)=> target[index],
'package:collection/src/queue_list.dart@QueueList@[]=': (m.Scope scope, QueueList target)=>(index,other)=> target[index] = other,

};
}