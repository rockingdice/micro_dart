import 'package:flutter/src/foundation/memory_allocations.dart';
import 'dart:ui';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/constants.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/memory_allocations.dart@@kFlutterMemoryAllocationsEnabled': (m.Scope scope)=>kFlutterMemoryAllocationsEnabled,
'package:flutter/src/foundation/memory_allocations.dart@ObjectEvent@#as': (m.Scope scope, target)=>()=>target as ObjectEvent,
'package:flutter/src/foundation/memory_allocations.dart@ObjectEvent@#is': (m.Scope scope, target)=>()=>target is ObjectEvent,
'package:flutter/src/foundation/memory_allocations.dart@ObjectEvent@object': (m.Scope scope, ObjectEvent target)=>target.object,
'package:flutter/src/foundation/memory_allocations.dart@ObjectEvent@toMap': (m.Scope scope, ObjectEvent target)=>target.toMap,
'package:flutter/src/foundation/memory_allocations.dart@ObjectCreated@#as': (m.Scope scope, target)=>()=>target as ObjectCreated,
'package:flutter/src/foundation/memory_allocations.dart@ObjectCreated@#is': (m.Scope scope, target)=>()=>target is ObjectCreated,
'package:flutter/src/foundation/memory_allocations.dart@ObjectCreated@library': (m.Scope scope, ObjectCreated target)=>target.library,
'package:flutter/src/foundation/memory_allocations.dart@ObjectCreated@className': (m.Scope scope, ObjectCreated target)=>target.className,
'package:flutter/src/foundation/memory_allocations.dart@ObjectCreated@': (m.Scope scope)=>ObjectCreated,
'package:flutter/src/foundation/memory_allocations.dart@ObjectCreated@toMap': (m.Scope scope, ObjectCreated target)=>target.toMap,
'package:flutter/src/foundation/memory_allocations.dart@ObjectDisposed@#as': (m.Scope scope, target)=>()=>target as ObjectDisposed,
'package:flutter/src/foundation/memory_allocations.dart@ObjectDisposed@#is': (m.Scope scope, target)=>()=>target is ObjectDisposed,
'package:flutter/src/foundation/memory_allocations.dart@ObjectDisposed@': (m.Scope scope)=>ObjectDisposed,
'package:flutter/src/foundation/memory_allocations.dart@ObjectDisposed@toMap': (m.Scope scope, ObjectDisposed target)=>target.toMap,
'package:flutter/src/foundation/memory_allocations.dart@MemoryAllocations@#as': (m.Scope scope, target)=>()=>target as MemoryAllocations,
'package:flutter/src/foundation/memory_allocations.dart@MemoryAllocations@#is': (m.Scope scope, target)=>()=>target is MemoryAllocations,
'package:flutter/src/foundation/memory_allocations.dart@MemoryAllocations@instance': (m.Scope scope)=>MemoryAllocations.instance,
'package:flutter/src/foundation/memory_allocations.dart@MemoryAllocations@hasListeners': (m.Scope scope, MemoryAllocations target)=>target.hasListeners,
'package:flutter/src/foundation/memory_allocations.dart@MemoryAllocations@addListener': (m.Scope scope, MemoryAllocations target)=>( listener){
void listenerProxy( $p0) {
 engine.callFunctionPointer(scope, listener!,[$p0], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/foundation/memory_allocations.dart@MemoryAllocations@removeListener': (m.Scope scope, MemoryAllocations target)=>( listener){
void listenerProxy( $p0) {
 engine.callFunctionPointer(scope, listener!,[$p0], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/foundation/memory_allocations.dart@MemoryAllocations@dispatchObjectEvent': (m.Scope scope, MemoryAllocations target)=>target.dispatchObjectEvent,
'package:flutter/src/foundation/memory_allocations.dart@MemoryAllocations@dispatchObjectCreated': (m.Scope scope, MemoryAllocations target)=>target.dispatchObjectCreated,
'package:flutter/src/foundation/memory_allocations.dart@MemoryAllocations@dispatchObjectDisposed': (m.Scope scope, MemoryAllocations target)=>target.dispatchObjectDisposed,

};
}