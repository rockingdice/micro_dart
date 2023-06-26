import 'package:flutter/src/services/message_codecs.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart' show ReadBuffer,WriteBuffer;
import 'package:flutter/src/services/message_codec.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/message_codecs.dart@BinaryCodec@#as': (m.Scope scope, target)=>()=>target as BinaryCodec,
'package:flutter/src/services/message_codecs.dart@BinaryCodec@#is': (m.Scope scope, target)=>()=>target is BinaryCodec,
'package:flutter/src/services/message_codecs.dart@BinaryCodec@': (m.Scope scope)=>(){
return BinaryCodec();
},
'package:flutter/src/services/message_codecs.dart@BinaryCodec@decodeMessage': (m.Scope scope, BinaryCodec target)=>target.decodeMessage,
'package:flutter/src/services/message_codecs.dart@BinaryCodec@encodeMessage': (m.Scope scope, BinaryCodec target)=>target.encodeMessage,
'package:flutter/src/services/message_codecs.dart@StringCodec@#as': (m.Scope scope, target)=>()=>target as StringCodec,
'package:flutter/src/services/message_codecs.dart@StringCodec@#is': (m.Scope scope, target)=>()=>target is StringCodec,
'package:flutter/src/services/message_codecs.dart@StringCodec@': (m.Scope scope)=>(){
return StringCodec();
},
'package:flutter/src/services/message_codecs.dart@StringCodec@decodeMessage': (m.Scope scope, StringCodec target)=>target.decodeMessage,
'package:flutter/src/services/message_codecs.dart@StringCodec@encodeMessage': (m.Scope scope, StringCodec target)=>target.encodeMessage,
'package:flutter/src/services/message_codecs.dart@JSONMessageCodec@#as': (m.Scope scope, target)=>()=>target as JSONMessageCodec,
'package:flutter/src/services/message_codecs.dart@JSONMessageCodec@#is': (m.Scope scope, target)=>()=>target is JSONMessageCodec,
'package:flutter/src/services/message_codecs.dart@JSONMessageCodec@': (m.Scope scope)=>(){
return JSONMessageCodec();
},
'package:flutter/src/services/message_codecs.dart@JSONMessageCodec@encodeMessage': (m.Scope scope, JSONMessageCodec target)=>target.encodeMessage,
'package:flutter/src/services/message_codecs.dart@JSONMessageCodec@decodeMessage': (m.Scope scope, JSONMessageCodec target)=>target.decodeMessage,
'package:flutter/src/services/message_codecs.dart@JSONMethodCodec@#as': (m.Scope scope, target)=>()=>target as JSONMethodCodec,
'package:flutter/src/services/message_codecs.dart@JSONMethodCodec@#is': (m.Scope scope, target)=>()=>target is JSONMethodCodec,
'package:flutter/src/services/message_codecs.dart@JSONMethodCodec@': (m.Scope scope)=>(){
return JSONMethodCodec();
},
'package:flutter/src/services/message_codecs.dart@JSONMethodCodec@encodeMethodCall': (m.Scope scope, JSONMethodCodec target)=>target.encodeMethodCall,
'package:flutter/src/services/message_codecs.dart@JSONMethodCodec@decodeMethodCall': (m.Scope scope, JSONMethodCodec target)=>target.decodeMethodCall,
'package:flutter/src/services/message_codecs.dart@JSONMethodCodec@decodeEnvelope': (m.Scope scope, JSONMethodCodec target)=>target.decodeEnvelope,
'package:flutter/src/services/message_codecs.dart@JSONMethodCodec@encodeSuccessEnvelope': (m.Scope scope, JSONMethodCodec target)=>target.encodeSuccessEnvelope,
'package:flutter/src/services/message_codecs.dart@JSONMethodCodec@encodeErrorEnvelope': (m.Scope scope, JSONMethodCodec target)=>target.encodeErrorEnvelope,
'package:flutter/src/services/message_codecs.dart@StandardMessageCodec@#as': (m.Scope scope, target)=>()=>target as StandardMessageCodec,
'package:flutter/src/services/message_codecs.dart@StandardMessageCodec@#is': (m.Scope scope, target)=>()=>target is StandardMessageCodec,
'package:flutter/src/services/message_codecs.dart@StandardMessageCodec@': (m.Scope scope)=>(){
return StandardMessageCodec();
},
'package:flutter/src/services/message_codecs.dart@StandardMessageCodec@encodeMessage': (m.Scope scope, StandardMessageCodec target)=>target.encodeMessage,
'package:flutter/src/services/message_codecs.dart@StandardMessageCodec@decodeMessage': (m.Scope scope, StandardMessageCodec target)=>target.decodeMessage,
'package:flutter/src/services/message_codecs.dart@StandardMessageCodec@writeValue': (m.Scope scope, StandardMessageCodec target)=>target.writeValue,
'package:flutter/src/services/message_codecs.dart@StandardMessageCodec@readValue': (m.Scope scope, StandardMessageCodec target)=>target.readValue,
'package:flutter/src/services/message_codecs.dart@StandardMessageCodec@readValueOfType': (m.Scope scope, StandardMessageCodec target)=>target.readValueOfType,
'package:flutter/src/services/message_codecs.dart@StandardMessageCodec@writeSize': (m.Scope scope, StandardMessageCodec target)=>target.writeSize,
'package:flutter/src/services/message_codecs.dart@StandardMessageCodec@readSize': (m.Scope scope, StandardMessageCodec target)=>target.readSize,
'package:flutter/src/services/message_codecs.dart@StandardMethodCodec@#as': (m.Scope scope, target)=>()=>target as StandardMethodCodec,
'package:flutter/src/services/message_codecs.dart@StandardMethodCodec@#is': (m.Scope scope, target)=>()=>target is StandardMethodCodec,
'package:flutter/src/services/message_codecs.dart@StandardMethodCodec@messageCodec': (m.Scope scope, StandardMethodCodec target)=>target.messageCodec,
'package:flutter/src/services/message_codecs.dart@StandardMethodCodec@': (m.Scope scope)=>([StandardMessageCodec? messageCodec]){
if(messageCodec == null){
return StandardMethodCodec();
}
return StandardMethodCodec(messageCodec!);
},
'package:flutter/src/services/message_codecs.dart@StandardMethodCodec@encodeMethodCall': (m.Scope scope, StandardMethodCodec target)=>target.encodeMethodCall,
'package:flutter/src/services/message_codecs.dart@StandardMethodCodec@decodeMethodCall': (m.Scope scope, StandardMethodCodec target)=>target.decodeMethodCall,
'package:flutter/src/services/message_codecs.dart@StandardMethodCodec@encodeSuccessEnvelope': (m.Scope scope, StandardMethodCodec target)=>target.encodeSuccessEnvelope,
'package:flutter/src/services/message_codecs.dart@StandardMethodCodec@encodeErrorEnvelope': (m.Scope scope, StandardMethodCodec target)=>target.encodeErrorEnvelope,
'package:flutter/src/services/message_codecs.dart@StandardMethodCodec@decodeEnvelope': (m.Scope scope, StandardMethodCodec target)=>target.decodeEnvelope,

};
}