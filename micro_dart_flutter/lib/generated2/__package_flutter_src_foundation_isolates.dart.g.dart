import 'package:flutter/src/foundation/isolates.dart';
import 'dart:async';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/isolates.dart@@compute': (m.Scope scope)=>( callback,  message, { debugLabel}){
FutureOr<R> callbackProxy<R, M>( message) async{
return await engine.callFunctionPointerAsync(scope, callback!,[message], {});
}

return compute(callbackProxy, message, debugLabel:debugLabel);
},

};
}