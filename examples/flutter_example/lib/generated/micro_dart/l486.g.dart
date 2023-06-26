import 'package:flutter/src/services/binary_messenger.dart';
import 'dart:typed_data';
import 'dart:ui';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/binary_messenger.dart@BinaryMessenger@#as': (m.Scope scope, target)=>()=>target as BinaryMessenger,
'package:flutter/src/services/binary_messenger.dart@BinaryMessenger@#is': (m.Scope scope, target)=>()=>target is BinaryMessenger,
'package:flutter/src/services/binary_messenger.dart@BinaryMessenger@send': (m.Scope scope, BinaryMessenger target)=>target.send,
'package:flutter/src/services/binary_messenger.dart@BinaryMessenger@setMessageHandler': (m.Scope scope, BinaryMessenger target)=>( channel,  handler){
Future<ByteData> handlerProxy( message) async{
return await engine.callFunctionPointerAsync(scope, handler!,[message], {});
}

target.setMessageHandler(channel, handlerProxy);
},

};
}