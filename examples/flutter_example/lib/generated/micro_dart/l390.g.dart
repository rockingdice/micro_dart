import 'package:flutter/src/scheduler/ticker.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/scheduler/binding.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/scheduler/ticker.dart@TickerProvider@#as': (m.Scope scope, target)=>()=>target as TickerProvider,
'package:flutter/src/scheduler/ticker.dart@TickerProvider@#is': (m.Scope scope, target)=>()=>target is TickerProvider,
'package:flutter/src/scheduler/ticker.dart@TickerProvider@createTicker': (m.Scope scope, TickerProvider target)=>( onTick){
void onTickProxy( elapsed) {
 engine.callFunctionPointer(scope, onTick!,[elapsed], {});
}

return target.createTicker(onTickProxy);
},
'package:flutter/src/scheduler/ticker.dart@Ticker@#as': (m.Scope scope, target)=>()=>target as Ticker,
'package:flutter/src/scheduler/ticker.dart@Ticker@#is': (m.Scope scope, target)=>()=>target is Ticker,
'package:flutter/src/scheduler/ticker.dart@Ticker@debugLabel': (m.Scope scope, Ticker target)=>target.debugLabel,
'package:flutter/src/scheduler/ticker.dart@Ticker@muted': (m.Scope scope, Ticker target)=>target.muted,
'package:flutter/src/scheduler/ticker.dart@Ticker@muted:set': (m.Scope scope, Ticker target)=>(other)=>target.muted=other,
'package:flutter/src/scheduler/ticker.dart@Ticker@isTicking': (m.Scope scope, Ticker target)=>target.isTicking,
'package:flutter/src/scheduler/ticker.dart@Ticker@isActive': (m.Scope scope, Ticker target)=>target.isActive,
'package:flutter/src/scheduler/ticker.dart@Ticker@scheduled': (m.Scope scope, Ticker target)=>target.scheduled,
'package:flutter/src/scheduler/ticker.dart@Ticker@shouldScheduleTick': (m.Scope scope, Ticker target)=>target.shouldScheduleTick,
'package:flutter/src/scheduler/ticker.dart@Ticker@': (m.Scope scope)=>( _onTick, { debugLabel}){
void _onTickProxy( elapsed) {
 engine.callFunctionPointer(scope, _onTick!,[elapsed], {});
}

return Ticker(_onTickProxy, debugLabel:debugLabel);
},
'package:flutter/src/scheduler/ticker.dart@Ticker@start': (m.Scope scope, Ticker target)=>target.start,
'package:flutter/src/scheduler/ticker.dart@Ticker@describeForError': (m.Scope scope, Ticker target)=>target.describeForError,
'package:flutter/src/scheduler/ticker.dart@Ticker@stop': (m.Scope scope, Ticker target)=>target.stop,
'package:flutter/src/scheduler/ticker.dart@Ticker@scheduleTick': (m.Scope scope, Ticker target)=>target.scheduleTick,
'package:flutter/src/scheduler/ticker.dart@Ticker@unscheduleTick': (m.Scope scope, Ticker target)=>target.unscheduleTick,
'package:flutter/src/scheduler/ticker.dart@Ticker@absorbTicker': (m.Scope scope, Ticker target)=>target.absorbTicker,
'package:flutter/src/scheduler/ticker.dart@Ticker@dispose': (m.Scope scope, Ticker target)=>target.dispose,
'package:flutter/src/scheduler/ticker.dart@Ticker@toString': (m.Scope scope, Ticker target)=>target.toString,
'package:flutter/src/scheduler/ticker.dart@TickerFuture@#as': (m.Scope scope, target)=>()=>target as TickerFuture,
'package:flutter/src/scheduler/ticker.dart@TickerFuture@#is': (m.Scope scope, target)=>()=>target is TickerFuture,
'package:flutter/src/scheduler/ticker.dart@TickerFuture@orCancel': (m.Scope scope, TickerFuture target)=>target.orCancel,
'package:flutter/src/scheduler/ticker.dart@TickerFuture@complete': (m.Scope scope)=>TickerFuture.complete,
'package:flutter/src/scheduler/ticker.dart@TickerFuture@whenCompleteOrCancel': (m.Scope scope, TickerFuture target)=>( callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

target.whenCompleteOrCancel(callbackProxy);
},
'package:flutter/src/scheduler/ticker.dart@TickerFuture@asStream': (m.Scope scope, TickerFuture target)=>target.asStream,
'package:flutter/src/scheduler/ticker.dart@TickerFuture@catchError': (m.Scope scope, TickerFuture target)=>( onError, { test}){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

return target.catchError(onError, test:test == null ? null :testProxy);
},
'package:flutter/src/scheduler/ticker.dart@TickerFuture@then': (m.Scope scope, TickerFuture target)=>( onValue, { onError}){
FutureOr<R> onValueProxy<R>( value) async{
return await engine.callFunctionPointerAsync(scope, onValue!,[value], {});
}

return target.then(onValueProxy, onError:onError);
},
'package:flutter/src/scheduler/ticker.dart@TickerFuture@timeout': (m.Scope scope, TickerFuture target)=>( timeLimit, { onTimeout}){
FutureOr onTimeoutProxy() async{
return await engine.callFunctionPointerAsync(scope, onTimeout!,[], {});
}

return target.timeout(timeLimit, onTimeout:onTimeout == null ? null :onTimeoutProxy);
},
'package:flutter/src/scheduler/ticker.dart@TickerFuture@whenComplete': (m.Scope scope, TickerFuture target)=>( action){
dynamic actionProxy() {
return  engine.callFunctionPointer(scope, action!,[], {});
}

return target.whenComplete(actionProxy);
},
'package:flutter/src/scheduler/ticker.dart@TickerFuture@toString': (m.Scope scope, TickerFuture target)=>target.toString,
'package:flutter/src/scheduler/ticker.dart@TickerCanceled@#as': (m.Scope scope, target)=>()=>target as TickerCanceled,
'package:flutter/src/scheduler/ticker.dart@TickerCanceled@#is': (m.Scope scope, target)=>()=>target is TickerCanceled,
'package:flutter/src/scheduler/ticker.dart@TickerCanceled@ticker': (m.Scope scope, TickerCanceled target)=>target.ticker,
'package:flutter/src/scheduler/ticker.dart@TickerCanceled@': (m.Scope scope)=>([Ticker? ticker]){
if(ticker == null){
return TickerCanceled();
}
return TickerCanceled(ticker!);
},
'package:flutter/src/scheduler/ticker.dart@TickerCanceled@toString': (m.Scope scope, TickerCanceled target)=>target.toString,

};
}