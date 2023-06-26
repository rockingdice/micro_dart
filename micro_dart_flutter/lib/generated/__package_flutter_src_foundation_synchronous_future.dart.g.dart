import 'package:flutter/src/foundation/synchronous_future.dart';
import 'dart:async';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/synchronous_future.dart@SynchronousFuture@#as': (m.Scope scope, target)=>()=>target as SynchronousFuture,
'package:flutter/src/foundation/synchronous_future.dart@SynchronousFuture@#is': (m.Scope scope, target)=>()=>target is SynchronousFuture,
'package:flutter/src/foundation/synchronous_future.dart@SynchronousFuture@': (m.Scope scope)=>SynchronousFuture,
'package:flutter/src/foundation/synchronous_future.dart@SynchronousFuture@asStream': (m.Scope scope, SynchronousFuture target)=>target.asStream,
'package:flutter/src/foundation/synchronous_future.dart@SynchronousFuture@catchError': (m.Scope scope, SynchronousFuture target)=>( onError, { test}){
bool testProxy( error) {
return  engine.callFunctionPointer(scope, test!,[error], {});
}

return target.catchError(onError, test:test == null ? null :testProxy);
},
'package:flutter/src/foundation/synchronous_future.dart@SynchronousFuture@then': (m.Scope scope, SynchronousFuture target)=>( onValue, { onError}){
FutureOr<R> onValueProxy<R, T>( value) async{
return await engine.callFunctionPointerAsync(scope, onValue!,[value], {});
}

return target.then(onValueProxy, onError:onError);
},
'package:flutter/src/foundation/synchronous_future.dart@SynchronousFuture@timeout': (m.Scope scope, SynchronousFuture target)=>( timeLimit, { onTimeout}){
FutureOr<T> onTimeoutProxy<T>() async{
return await engine.callFunctionPointerAsync(scope, onTimeout!,[], {});
}

return target.timeout(timeLimit, onTimeout:onTimeout == null ? null :onTimeoutProxy);
},
'package:flutter/src/foundation/synchronous_future.dart@SynchronousFuture@whenComplete': (m.Scope scope, SynchronousFuture target)=>( action){
FutureOr<dynamic> actionProxy() async{
return await engine.callFunctionPointerAsync(scope, action!,[], {});
}

return target.whenComplete(actionProxy);
},

};
}