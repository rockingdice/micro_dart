import 'package:flutter/src/foundation/binding.dart';
import 'dart:async';
import 'dart:convert' show json;
import 'dart:developer';
import 'dart:io' show exit;
import 'dart:ui' show Brightness,PlatformDispatcher,SingletonFlutterWindow,window;
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/basic_types.dart';
import 'package:flutter/src/foundation/constants.dart';
import 'package:flutter/src/foundation/debug.dart';
import 'package:flutter/src/foundation/object.dart';
import 'package:flutter/src/foundation/platform.dart';
import 'package:flutter/src/foundation/print.dart';
import 'package:flutter/src/foundation/service_extensions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/binding.dart@BindingBase@#as': (m.Scope scope, target)=>()=>target as BindingBase,
'package:flutter/src/foundation/binding.dart@BindingBase@#is': (m.Scope scope, target)=>()=>target is BindingBase,
'package:flutter/src/foundation/binding.dart@BindingBase@debugReassembleConfig': (m.Scope scope)=>BindingBase.debugReassembleConfig,
'package:flutter/src/foundation/binding.dart@BindingBase@debugReassembleConfig:set': (m.Scope scope)=>(other)=>BindingBase.debugReassembleConfig=other,
'package:flutter/src/foundation/binding.dart@BindingBase@debugZoneErrorsAreFatal': (m.Scope scope)=>BindingBase.debugZoneErrorsAreFatal,
'package:flutter/src/foundation/binding.dart@BindingBase@debugZoneErrorsAreFatal:set': (m.Scope scope)=>(other)=>BindingBase.debugZoneErrorsAreFatal=other,
'package:flutter/src/foundation/binding.dart@BindingBase@platformDispatcher': (m.Scope scope, BindingBase target)=>target.platformDispatcher,
'package:flutter/src/foundation/binding.dart@BindingBase@locked': (m.Scope scope, BindingBase target)=>target.locked,
'package:flutter/src/foundation/binding.dart@BindingBase@initInstances': (m.Scope scope, BindingBase target)=>target.initInstances,
'package:flutter/src/foundation/binding.dart@BindingBase@checkInstance': (m.Scope scope)=>BindingBase.checkInstance,
'package:flutter/src/foundation/binding.dart@BindingBase@debugBindingType': (m.Scope scope)=>BindingBase.debugBindingType,
'package:flutter/src/foundation/binding.dart@BindingBase@debugCheckZone': (m.Scope scope, BindingBase target)=>target.debugCheckZone,
'package:flutter/src/foundation/binding.dart@BindingBase@initServiceExtensions': (m.Scope scope, BindingBase target)=>target.initServiceExtensions,
'package:flutter/src/foundation/binding.dart@BindingBase@lockEvents': (m.Scope scope, BindingBase target)=>( callback){
Future callbackProxy() async{
return await engine.callFunctionPointerAsync(scope, callback!,[], {});
}

return target.lockEvents(callbackProxy);
},
'package:flutter/src/foundation/binding.dart@BindingBase@unlocked': (m.Scope scope, BindingBase target)=>target.unlocked,
'package:flutter/src/foundation/binding.dart@BindingBase@reassembleApplication': (m.Scope scope, BindingBase target)=>target.reassembleApplication,
'package:flutter/src/foundation/binding.dart@BindingBase@performReassemble': (m.Scope scope, BindingBase target)=>target.performReassemble,
'package:flutter/src/foundation/binding.dart@BindingBase@registerSignalServiceExtension': (m.Scope scope, BindingBase target)=>({ callback,  name}){
Future callbackProxy() async{
return await engine.callFunctionPointerAsync(scope, callback!,[], {});
}

target.registerSignalServiceExtension(callback:callbackProxy, name:name);
},
'package:flutter/src/foundation/binding.dart@BindingBase@registerBoolServiceExtension': (m.Scope scope, BindingBase target)=>({ getter,  name,  setter}){
Future<bool> getterProxy() async{
return await engine.callFunctionPointerAsync(scope, getter!,[], {});
}

Future setterProxy( value) async{
return await engine.callFunctionPointerAsync(scope, setter!,[value], {});
}

target.registerBoolServiceExtension(getter:getterProxy, name:name, setter:setterProxy);
},
'package:flutter/src/foundation/binding.dart@BindingBase@registerNumericServiceExtension': (m.Scope scope, BindingBase target)=>({ getter,  name,  setter}){
Future<double> getterProxy() async{
return await engine.callFunctionPointerAsync(scope, getter!,[], {});
}

Future setterProxy( value) async{
return await engine.callFunctionPointerAsync(scope, setter!,[value], {});
}

target.registerNumericServiceExtension(getter:getterProxy, name:name, setter:setterProxy);
},
'package:flutter/src/foundation/binding.dart@BindingBase@postEvent': (m.Scope scope, BindingBase target)=>target.postEvent,
'package:flutter/src/foundation/binding.dart@BindingBase@registerStringServiceExtension': (m.Scope scope, BindingBase target)=>({ getter,  name,  setter}){
Future<String> getterProxy() async{
return await engine.callFunctionPointerAsync(scope, getter!,[], {});
}

Future setterProxy( value) async{
return await engine.callFunctionPointerAsync(scope, setter!,[value], {});
}

target.registerStringServiceExtension(getter:getterProxy, name:name, setter:setterProxy);
},
'package:flutter/src/foundation/binding.dart@BindingBase@registerServiceExtension': (m.Scope scope, BindingBase target)=>({ callback,  name}){
Future<Map<String, dynamic>> callbackProxy( parameters) async{
return await engine.callFunctionPointerAsync(scope, callback!,[parameters], {});
}

target.registerServiceExtension(callback:callbackProxy, name:name);
},
'package:flutter/src/foundation/binding.dart@BindingBase@toString': (m.Scope scope, BindingBase target)=>target.toString,
'package:flutter/src/foundation/binding.dart@DebugReassembleConfig@#as': (m.Scope scope, target)=>()=>target as DebugReassembleConfig,
'package:flutter/src/foundation/binding.dart@DebugReassembleConfig@#is': (m.Scope scope, target)=>()=>target is DebugReassembleConfig,
'package:flutter/src/foundation/binding.dart@DebugReassembleConfig@widgetName': (m.Scope scope, DebugReassembleConfig target)=>target.widgetName,
'package:flutter/src/foundation/binding.dart@DebugReassembleConfig@': (m.Scope scope)=>({ widgetName}){
return DebugReassembleConfig(widgetName:widgetName);
},

};
}