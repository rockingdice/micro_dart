import 'package:flutter/src/foundation/bitfield.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/bitfield.dart@@kMaxUnsignedSMI': (m.Scope scope)=>kMaxUnsignedSMI,
'package:flutter/src/foundation/bitfield.dart@BitField@#as': (m.Scope scope, target)=>()=>target as BitField,
'package:flutter/src/foundation/bitfield.dart@BitField@#is': (m.Scope scope, target)=>()=>target is BitField,
'package:flutter/src/foundation/bitfield.dart@BitField@': (m.Scope scope)=><T>( length){
return BitField(length);
},
'package:flutter/src/foundation/bitfield.dart@BitField@filled': (m.Scope scope)=>BitField.filled,
'package:flutter/src/foundation/bitfield.dart@BitField@[]': (m.Scope scope, BitField target)=>(index)=> target[index],
'package:flutter/src/foundation/bitfield.dart@BitField@[]=': (m.Scope scope, BitField target)=>(index,other)=> target[index] = other,
'package:flutter/src/foundation/bitfield.dart@BitField@reset': (m.Scope scope, BitField target)=>target.reset,

};
}