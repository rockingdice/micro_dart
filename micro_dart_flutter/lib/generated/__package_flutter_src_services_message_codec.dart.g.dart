import 'package:flutter/src/services/message_codec.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/platform_channel.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/message_codec.dart@MessageCodec@#as': (m.Scope scope, target)=>()=>target as MessageCodec,
'package:flutter/src/services/message_codec.dart@MessageCodec@#is': (m.Scope scope, target)=>()=>target is MessageCodec,
'package:flutter/src/services/message_codec.dart@MessageCodec@encodeMessage': (m.Scope scope, MessageCodec target)=>target.encodeMessage,
'package:flutter/src/services/message_codec.dart@MessageCodec@decodeMessage': (m.Scope scope, MessageCodec target)=>target.decodeMessage,
'package:flutter/src/services/message_codec.dart@MethodCall@#as': (m.Scope scope, target)=>()=>target as MethodCall,
'package:flutter/src/services/message_codec.dart@MethodCall@#is': (m.Scope scope, target)=>()=>target is MethodCall,
'package:flutter/src/services/message_codec.dart@MethodCall@method': (m.Scope scope, MethodCall target)=>target.method,
'package:flutter/src/services/message_codec.dart@MethodCall@arguments': (m.Scope scope, MethodCall target)=>target.arguments,
'package:flutter/src/services/message_codec.dart@MethodCall@': (m.Scope scope)=>( method, [dynamic arguments]){
if(arguments == null){
return MethodCall(method);
}
return MethodCall(method, arguments);
},
'package:flutter/src/services/message_codec.dart@MethodCall@toString': (m.Scope scope, MethodCall target)=>target.toString,
'package:flutter/src/services/message_codec.dart@MethodCodec@#as': (m.Scope scope, target)=>()=>target as MethodCodec,
'package:flutter/src/services/message_codec.dart@MethodCodec@#is': (m.Scope scope, target)=>()=>target is MethodCodec,
'package:flutter/src/services/message_codec.dart@MethodCodec@encodeMethodCall': (m.Scope scope, MethodCodec target)=>target.encodeMethodCall,
'package:flutter/src/services/message_codec.dart@MethodCodec@decodeMethodCall': (m.Scope scope, MethodCodec target)=>target.decodeMethodCall,
'package:flutter/src/services/message_codec.dart@MethodCodec@decodeEnvelope': (m.Scope scope, MethodCodec target)=>target.decodeEnvelope,
'package:flutter/src/services/message_codec.dart@MethodCodec@encodeSuccessEnvelope': (m.Scope scope, MethodCodec target)=>target.encodeSuccessEnvelope,
'package:flutter/src/services/message_codec.dart@MethodCodec@encodeErrorEnvelope': (m.Scope scope, MethodCodec target)=>target.encodeErrorEnvelope,
'package:flutter/src/services/message_codec.dart@PlatformException@#as': (m.Scope scope, target)=>()=>target as PlatformException,
'package:flutter/src/services/message_codec.dart@PlatformException@#is': (m.Scope scope, target)=>()=>target is PlatformException,
'package:flutter/src/services/message_codec.dart@PlatformException@code': (m.Scope scope, PlatformException target)=>target.code,
'package:flutter/src/services/message_codec.dart@PlatformException@message': (m.Scope scope, PlatformException target)=>target.message,
'package:flutter/src/services/message_codec.dart@PlatformException@details': (m.Scope scope, PlatformException target)=>target.details,
'package:flutter/src/services/message_codec.dart@PlatformException@stacktrace': (m.Scope scope, PlatformException target)=>target.stacktrace,
'package:flutter/src/services/message_codec.dart@PlatformException@': (m.Scope scope)=>({ code,  details,  message,  stacktrace}){
return PlatformException(code:code, details:details, message:message, stacktrace:stacktrace);
},
'package:flutter/src/services/message_codec.dart@PlatformException@toString': (m.Scope scope, PlatformException target)=>target.toString,
'package:flutter/src/services/message_codec.dart@MissingPluginException@#as': (m.Scope scope, target)=>()=>target as MissingPluginException,
'package:flutter/src/services/message_codec.dart@MissingPluginException@#is': (m.Scope scope, target)=>()=>target is MissingPluginException,
'package:flutter/src/services/message_codec.dart@MissingPluginException@message': (m.Scope scope, MissingPluginException target)=>target.message,
'package:flutter/src/services/message_codec.dart@MissingPluginException@': (m.Scope scope)=>([String? message]){
if(message == null){
return MissingPluginException();
}
return MissingPluginException(message!);
},
'package:flutter/src/services/message_codec.dart@MissingPluginException@toString': (m.Scope scope, MissingPluginException target)=>target.toString,

};
}