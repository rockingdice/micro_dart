import 'package:flutter/src/foundation/serialization.dart';
import 'dart:math';
import 'dart:typed_data';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/serialization.dart@WriteBuffer@#as': (m.Scope scope, target)=>()=>target as WriteBuffer,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@#is': (m.Scope scope, target)=>()=>target is WriteBuffer,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@': (m.Scope scope)=>({ startCapacity}){
return WriteBuffer(startCapacity:startCapacity ?? 8);
},
'package:flutter/src/foundation/serialization.dart@WriteBuffer@putUint8': (m.Scope scope, WriteBuffer target)=>target.putUint8,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@putUint16': (m.Scope scope, WriteBuffer target)=>target.putUint16,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@putUint32': (m.Scope scope, WriteBuffer target)=>target.putUint32,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@putInt32': (m.Scope scope, WriteBuffer target)=>target.putInt32,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@putInt64': (m.Scope scope, WriteBuffer target)=>target.putInt64,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@putFloat64': (m.Scope scope, WriteBuffer target)=>target.putFloat64,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@putUint8List': (m.Scope scope, WriteBuffer target)=>target.putUint8List,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@putInt32List': (m.Scope scope, WriteBuffer target)=>target.putInt32List,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@putInt64List': (m.Scope scope, WriteBuffer target)=>target.putInt64List,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@putFloat32List': (m.Scope scope, WriteBuffer target)=>target.putFloat32List,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@putFloat64List': (m.Scope scope, WriteBuffer target)=>target.putFloat64List,
'package:flutter/src/foundation/serialization.dart@WriteBuffer@done': (m.Scope scope, WriteBuffer target)=>target.done,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@#as': (m.Scope scope, target)=>()=>target as ReadBuffer,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@#is': (m.Scope scope, target)=>()=>target is ReadBuffer,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@data': (m.Scope scope, ReadBuffer target)=>target.data,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@hasRemaining': (m.Scope scope, ReadBuffer target)=>target.hasRemaining,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@': (m.Scope scope)=>( data){
return ReadBuffer(data);
},
'package:flutter/src/foundation/serialization.dart@ReadBuffer@getUint8': (m.Scope scope, ReadBuffer target)=>target.getUint8,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@getUint16': (m.Scope scope, ReadBuffer target)=>target.getUint16,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@getUint32': (m.Scope scope, ReadBuffer target)=>target.getUint32,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@getInt32': (m.Scope scope, ReadBuffer target)=>target.getInt32,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@getInt64': (m.Scope scope, ReadBuffer target)=>target.getInt64,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@getFloat64': (m.Scope scope, ReadBuffer target)=>target.getFloat64,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@getUint8List': (m.Scope scope, ReadBuffer target)=>target.getUint8List,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@getInt32List': (m.Scope scope, ReadBuffer target)=>target.getInt32List,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@getInt64List': (m.Scope scope, ReadBuffer target)=>target.getInt64List,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@getFloat32List': (m.Scope scope, ReadBuffer target)=>target.getFloat32List,
'package:flutter/src/foundation/serialization.dart@ReadBuffer@getFloat64List': (m.Scope scope, ReadBuffer target)=>target.getFloat64List,

};
}