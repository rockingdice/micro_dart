import 'package:flutter/src/services/_background_isolate_binary_messenger_io.dart';
import 'dart:async' show Completer;
import 'dart:isolate' show ReceivePort;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/binary_messenger.dart';
import 'package:flutter/src/services/binding.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/_background_isolate_binary_messenger_io.dart@BackgroundIsolateBinaryMessenger@#as': (m.Scope scope, target)=>()=>target as BackgroundIsolateBinaryMessenger,
'package:flutter/src/services/_background_isolate_binary_messenger_io.dart@BackgroundIsolateBinaryMessenger@#is': (m.Scope scope, target)=>()=>target is BackgroundIsolateBinaryMessenger,
'package:flutter/src/services/_background_isolate_binary_messenger_io.dart@BackgroundIsolateBinaryMessenger@instance': (m.Scope scope)=>BackgroundIsolateBinaryMessenger.instance,
'package:flutter/src/services/_background_isolate_binary_messenger_io.dart@BackgroundIsolateBinaryMessenger@ensureInitialized': (m.Scope scope)=>BackgroundIsolateBinaryMessenger.ensureInitialized,
'package:flutter/src/services/_background_isolate_binary_messenger_io.dart@BackgroundIsolateBinaryMessenger@handlePlatformMessage': (m.Scope scope, BackgroundIsolateBinaryMessenger target)=>( channel,  data,  callback){
void callbackProxy( data) {
 engine.callFunctionPointer(scope, callback!,[data], {});
}

return target.handlePlatformMessage(channel, data, callbackProxy);
},
'package:flutter/src/services/_background_isolate_binary_messenger_io.dart@BackgroundIsolateBinaryMessenger@send': (m.Scope scope, BackgroundIsolateBinaryMessenger target)=>target.send,
'package:flutter/src/services/_background_isolate_binary_messenger_io.dart@BackgroundIsolateBinaryMessenger@setMessageHandler': (m.Scope scope, BackgroundIsolateBinaryMessenger target)=>( channel,  handler){
Future<ByteData> handlerProxy( message) async{
return await engine.callFunctionPointerAsync(scope, handler!,[message], {});
}

target.setMessageHandler(channel, handlerProxy);
},

};
}