import 'package:flutter/src/services/platform_channel.dart';
import 'dart:async';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/_background_isolate_binary_messenger_io.dart';
import 'package:flutter/src/services/binary_messenger.dart';
import 'package:flutter/src/services/binding.dart';
import 'package:flutter/src/services/debug.dart' show debugProfilePlatformChannels;
import 'package:flutter/src/services/message_codec.dart';
import 'package:flutter/src/services/message_codecs.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/platform_channel.dart@BasicMessageChannel@#as': (m.Scope scope, target)=>()=>target as BasicMessageChannel,
'package:flutter/src/services/platform_channel.dart@BasicMessageChannel@#is': (m.Scope scope, target)=>()=>target is BasicMessageChannel,
'package:flutter/src/services/platform_channel.dart@BasicMessageChannel@name': (m.Scope scope, BasicMessageChannel target)=>target.name,
'package:flutter/src/services/platform_channel.dart@BasicMessageChannel@codec': (m.Scope scope, BasicMessageChannel target)=>target.codec,
'package:flutter/src/services/platform_channel.dart@BasicMessageChannel@binaryMessenger': (m.Scope scope, BasicMessageChannel target)=>target.binaryMessenger,
'package:flutter/src/services/platform_channel.dart@BasicMessageChannel@': (m.Scope scope)=><T>( name,  codec, { binaryMessenger}){
return BasicMessageChannel(name, codec, binaryMessenger:binaryMessenger);
},
'package:flutter/src/services/platform_channel.dart@BasicMessageChannel@send': (m.Scope scope, BasicMessageChannel target)=>target.send,
'package:flutter/src/services/platform_channel.dart@BasicMessageChannel@setMessageHandler': (m.Scope scope, BasicMessageChannel target)=>( handler){
Future<T> handlerProxy<T>( message) async{
return await engine.callFunctionPointerAsync(scope, handler!,[message], {});
}

target.setMessageHandler(handlerProxy);
},
'package:flutter/src/services/platform_channel.dart@MethodChannel@#as': (m.Scope scope, target)=>()=>target as MethodChannel,
'package:flutter/src/services/platform_channel.dart@MethodChannel@#is': (m.Scope scope, target)=>()=>target is MethodChannel,
'package:flutter/src/services/platform_channel.dart@MethodChannel@name': (m.Scope scope, MethodChannel target)=>target.name,
'package:flutter/src/services/platform_channel.dart@MethodChannel@codec': (m.Scope scope, MethodChannel target)=>target.codec,
'package:flutter/src/services/platform_channel.dart@MethodChannel@binaryMessenger': (m.Scope scope, MethodChannel target)=>target.binaryMessenger,
'package:flutter/src/services/platform_channel.dart@MethodChannel@': (m.Scope scope)=>( name, [MethodCodec? codec, BinaryMessenger? binaryMessenger]){
if(codec == null && binaryMessenger == null){
return MethodChannel(name);
}
if(binaryMessenger == null){
return MethodChannel(name, codec!);
}
return MethodChannel(name, codec!, binaryMessenger!);
},
'package:flutter/src/services/platform_channel.dart@MethodChannel@invokeMethod': (m.Scope scope, MethodChannel target)=>target.invokeMethod,
'package:flutter/src/services/platform_channel.dart@MethodChannel@invokeListMethod': (m.Scope scope, MethodChannel target)=>target.invokeListMethod,
'package:flutter/src/services/platform_channel.dart@MethodChannel@invokeMapMethod': (m.Scope scope, MethodChannel target)=>target.invokeMapMethod,
'package:flutter/src/services/platform_channel.dart@MethodChannel@setMethodCallHandler': (m.Scope scope, MethodChannel target)=>( handler){
Future<dynamic> handlerProxy( call) async{
return await engine.callFunctionPointerAsync(scope, handler!,[call], {});
}

target.setMethodCallHandler(handlerProxy);
},
'package:flutter/src/services/platform_channel.dart@OptionalMethodChannel@#as': (m.Scope scope, target)=>()=>target as OptionalMethodChannel,
'package:flutter/src/services/platform_channel.dart@OptionalMethodChannel@#is': (m.Scope scope, target)=>()=>target is OptionalMethodChannel,
'package:flutter/src/services/platform_channel.dart@OptionalMethodChannel@': (m.Scope scope)=>( name, [MethodCodec? codec, BinaryMessenger? binaryMessenger]){
if(codec == null && binaryMessenger == null){
return OptionalMethodChannel(name);
}
if(binaryMessenger == null){
return OptionalMethodChannel(name, codec!);
}
return OptionalMethodChannel(name, codec!, binaryMessenger!);
},
'package:flutter/src/services/platform_channel.dart@OptionalMethodChannel@invokeMethod': (m.Scope scope, OptionalMethodChannel target)=>target.invokeMethod,
'package:flutter/src/services/platform_channel.dart@EventChannel@#as': (m.Scope scope, target)=>()=>target as EventChannel,
'package:flutter/src/services/platform_channel.dart@EventChannel@#is': (m.Scope scope, target)=>()=>target is EventChannel,
'package:flutter/src/services/platform_channel.dart@EventChannel@name': (m.Scope scope, EventChannel target)=>target.name,
'package:flutter/src/services/platform_channel.dart@EventChannel@codec': (m.Scope scope, EventChannel target)=>target.codec,
'package:flutter/src/services/platform_channel.dart@EventChannel@binaryMessenger': (m.Scope scope, EventChannel target)=>target.binaryMessenger,
'package:flutter/src/services/platform_channel.dart@EventChannel@': (m.Scope scope)=>( name, [MethodCodec? codec, BinaryMessenger? binaryMessenger]){
if(codec == null && binaryMessenger == null){
return EventChannel(name);
}
if(binaryMessenger == null){
return EventChannel(name, codec!);
}
return EventChannel(name, codec!, binaryMessenger!);
},
'package:flutter/src/services/platform_channel.dart@EventChannel@receiveBroadcastStream': (m.Scope scope, EventChannel target)=>target.receiveBroadcastStream,

};
}