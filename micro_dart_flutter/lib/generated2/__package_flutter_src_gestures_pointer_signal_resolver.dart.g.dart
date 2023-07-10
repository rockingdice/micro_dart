import 'package:flutter/src/gestures/pointer_signal_resolver.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/pointer_signal_resolver.dart@PointerSignalResolver@#as': (m.Scope scope, target)=>()=>target as PointerSignalResolver,
'package:flutter/src/gestures/pointer_signal_resolver.dart@PointerSignalResolver@#is': (m.Scope scope, target)=>()=>target is PointerSignalResolver,
'package:flutter/src/gestures/pointer_signal_resolver.dart@PointerSignalResolver@': (m.Scope scope)=>(){
return PointerSignalResolver();
},
'package:flutter/src/gestures/pointer_signal_resolver.dart@PointerSignalResolver@register': (m.Scope scope, PointerSignalResolver target)=>( event,  callback){
void callbackProxy( event) {
 engine.callFunctionPointer(scope, callback!,[event], {});
}

target.register(event, callbackProxy);
},
'package:flutter/src/gestures/pointer_signal_resolver.dart@PointerSignalResolver@resolve': (m.Scope scope, PointerSignalResolver target)=>target.resolve,

};
}