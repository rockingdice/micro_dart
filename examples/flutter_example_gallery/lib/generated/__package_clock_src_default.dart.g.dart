import 'package:clock/src/default.dart';
import 'dart:async';
import 'package:clock/src/clock.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:clock/src/default.dart@@clock': (m.Scope scope)=>clock,
'package:clock/src/default.dart@@withClock': (m.Scope scope)=>( clock,  callback, { isFinal}){
T callbackProxy<T>() {
return  engine.callFunctionPointer(scope, callback!,[], {});
}

return withClock(clock, callbackProxy, isFinal:isFinal ?? false);
},

};
}