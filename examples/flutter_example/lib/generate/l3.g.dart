import 'dart:async';
import 'dart:collection' show HashMap;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'dart:async@AsyncError@#as': (m.Scope scope, target)=>()=>target as AsyncError,
'dart:async@AsyncError@#is': (m.Scope scope, target)=>()=>target is AsyncError,
'dart:async@AsyncError@error': (m.Scope scope, AsyncError target)=>target.error,
'dart:async@AsyncError@stackTrace': (m.Scope scope, AsyncError target)=>target.stackTrace,
'dart:async@AsyncError@': (m.Scope scope)=>AsyncError,
'dart:async@AsyncError@defaultStackTrace': (m.Scope scope)=>AsyncError.defaultStackTrace,
'dart:async@AsyncError@toString': (m.Scope scope, AsyncError target)=>target.toString,
'dart:async@DeferredLoadException@#as': (m.Scope scope, target)=>()=>target as DeferredLoadException,
'dart:async@DeferredLoadException@#is': (m.Scope scope, target)=>()=>target is DeferredLoadException,
'dart:async@DeferredLoadException@': (m.Scope scope)=>DeferredLoadException,
'dart:async@DeferredLoadException@toString': (m.Scope scope, DeferredLoadException target)=>target.toString,
'dart:async@FutureOr@#as': (m.Scope scope, target)=>()=>target as FutureOr,
'dart:async@FutureOr@#is': (m.Scope scope, target)=>()=>target is FutureOr,
'dart:async@Future@#as': (m.Scope scope, target)=>()=>target as Future,
'dart:async@Future@#is': (m.Scope scope, target)=>()=>target is Future,
'dart:async@Future@': (m.Scope scope)=>( computation){
FutureOr<T> computationProxy<T>() async{
return await engine.callFunctionPointerAsync(scope, computation!,[], {});
}

return Future(computationProxy);
},
'dart:async@Future@microtask': (m.Scope scope)=>( computation){
FutureOr<T> computationProxy<T>() async{
return await engine.callFunctionPointerAsync(scope, computation!,[], {});
}

return Future.microtask(computationProxy);
},
'dart:async@Future@sync': (m.Scope scope)=>( computation){
FutureOr<T> computationProxy<T>() async{
return await engine.callFunctionPointerAsync(scope, computation!,[], {});
}

return Future.sync(computationProxy);
},
'dart:async@Future@value': (m.Scope scope)=>Future.value,
'dart:async@Future@error': (m.Scope scope)=>Future.error,
'dart:async@Future@delayed': (m.Scope scope)=>( duration, [m.FunctionPointer? computation]){
if(computation == null){
return Future.delayed(duration);
}
FutureOr<T> computationProxy<T>() async{
return await engine.callFunctionPointerAsync(scope, computation!,[], {});
}

return Future.delayed(duration, computationProxy);
},
'dart:async@Future@wait': (m.Scope scope)=>( futures, { cleanUp,  eagerError}){
void cleanUpProxy<T>( successValue) {
 engine.callFunctionPointer(scope, cleanUp!,[successValue], {});
}

return Future.wait(futures, cleanUp:cleanUp == null ? null :cleanUpProxy, eagerError:eagerError ?? false);
},
'dart:async@Future@any': (m.Scope scope)=>Future.any,
'dart:async@Future@forEach': (m.Scope scope)=>( elements,  action){
FutureOr<dynamic> actionProxy<T>( element) async{
return await engine.callFunctionPointerAsync(scope, action!,[element], {});
}

return Future.forEach(elements, actionProxy);
},
'dart:async@Future@doWhile': (m.Scope scope)=>( action){
FutureOr<bool> actionProxy() async{
return await engine.callFunctionPointerAsync(scope, action!,[], {});
}

return Future.doWhile(actionProxy);
},
'dart:async@Future@then': (m.Scope scope, Future target)=>( onValue, { onError}){
FutureOr<R> onValueProxy<R, T>( value) async{
return await engine.callFunctionPointerAsync(scope, onValue!,[value], {});
}

return target.then(onValueProxy, onError:onError);
},
'dart:async@Future@catchError': (m.Scope scope, Future target)=>( onError, { test}){
bool testProxy( error) {
return  engine.callFunctionPointer(scope, test!,[error], {});
}

return target.catchError(onError, test:test == null ? null :testProxy);
},
'dart:async@Future@whenComplete': (m.Scope scope, Future target)=>( action){
FutureOr actionProxy() async{
return await engine.callFunctionPointerAsync(scope, action!,[], {});
}

return target.whenComplete(actionProxy);
},
'dart:async@Future@asStream': (m.Scope scope, Future target)=>target.asStream,
'dart:async@Future@timeout': (m.Scope scope, Future target)=>( timeLimit, { onTimeout}){
FutureOr<T> onTimeoutProxy<T>() async{
return await engine.callFunctionPointerAsync(scope, onTimeout!,[], {});
}

return target.timeout(timeLimit, onTimeout:onTimeout == null ? null :onTimeoutProxy);
},
'dart:async@TimeoutException@#as': (m.Scope scope, target)=>()=>target as TimeoutException,
'dart:async@TimeoutException@#is': (m.Scope scope, target)=>()=>target is TimeoutException,
'dart:async@TimeoutException@message': (m.Scope scope, TimeoutException target)=>target.message,
'dart:async@TimeoutException@duration': (m.Scope scope, TimeoutException target)=>target.duration,
'dart:async@TimeoutException@': (m.Scope scope)=>TimeoutException,
'dart:async@TimeoutException@toString': (m.Scope scope, TimeoutException target)=>target.toString,
'dart:async@Completer@#as': (m.Scope scope, target)=>()=>target as Completer,
'dart:async@Completer@#is': (m.Scope scope, target)=>()=>target is Completer,
'dart:async@Completer@future': (m.Scope scope, Completer target)=>target.future,
'dart:async@Completer@isCompleted': (m.Scope scope, Completer target)=>target.isCompleted,
'dart:async@Completer@': (m.Scope scope)=>(){
return Completer();
},
'dart:async@Completer@sync': (m.Scope scope)=>Completer.sync,
'dart:async@Completer@complete': (m.Scope scope, Completer target)=>target.complete,
'dart:async@Completer@completeError': (m.Scope scope, Completer target)=>target.completeError,
'dart:async@@unawaited': (m.Scope scope)=>unawaited,
'dart:async@ParallelWaitError@#as': (m.Scope scope, target)=>()=>target as ParallelWaitError,
'dart:async@ParallelWaitError@#is': (m.Scope scope, target)=>()=>target is ParallelWaitError,
'dart:async@ParallelWaitError@values': (m.Scope scope, ParallelWaitError target)=>target.values,
'dart:async@ParallelWaitError@errors': (m.Scope scope, ParallelWaitError target)=>target.errors,
'dart:async@ParallelWaitError@': (m.Scope scope)=>ParallelWaitError,
'dart:async@ParallelWaitError@toString': (m.Scope scope, ParallelWaitError target)=>target.toString,
'dart:async@@scheduleMicrotask': (m.Scope scope)=>( callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

scheduleMicrotask(callbackProxy);
},
'dart:async@Stream@#as': (m.Scope scope, target)=>()=>target as Stream,
'dart:async@Stream@#is': (m.Scope scope, target)=>()=>target is Stream,
'dart:async@Stream@isBroadcast': (m.Scope scope, Stream target)=>target.isBroadcast,
'dart:async@Stream@length': (m.Scope scope, Stream target)=>target.length,
'dart:async@Stream@isEmpty': (m.Scope scope, Stream target)=>target.isEmpty,
'dart:async@Stream@first': (m.Scope scope, Stream target)=>target.first,
'dart:async@Stream@last': (m.Scope scope, Stream target)=>target.last,
'dart:async@Stream@single': (m.Scope scope, Stream target)=>target.single,
'dart:async@Stream@empty': (m.Scope scope)=>Stream.empty,
'dart:async@Stream@value': (m.Scope scope)=>Stream.value,
'dart:async@Stream@error': (m.Scope scope)=>Stream.error,
'dart:async@Stream@fromFuture': (m.Scope scope)=>Stream.fromFuture,
'dart:async@Stream@fromFutures': (m.Scope scope)=>Stream.fromFutures,
'dart:async@Stream@fromIterable': (m.Scope scope)=>Stream.fromIterable,
'dart:async@Stream@multi': (m.Scope scope)=>( onListen, { isBroadcast}){
void onListenProxy( $p0) {
 engine.callFunctionPointer(scope, onListen!,[$p0], {});
}

return Stream.multi(onListenProxy, isBroadcast:isBroadcast ?? false);
},
'dart:async@Stream@periodic': (m.Scope scope)=>( period, [m.FunctionPointer? computation]){
if(computation == null){
return Stream.periodic(period);
}
T computationProxy<T>( computationCount) {
return  engine.callFunctionPointer(scope, computation!,[computationCount], {});
}

return Stream.periodic(period, computationProxy);
},
'dart:async@Stream@eventTransformed': (m.Scope scope)=>( source,  mapSink){
EventSink<dynamic> mapSinkProxy( sink) {
return  engine.callFunctionPointer(scope, mapSink!,[sink], {});
}

return Stream.eventTransformed(source, mapSinkProxy);
},
'dart:async@Stream@castFrom': (m.Scope scope)=>Stream.castFrom,
'dart:async@Stream@asBroadcastStream': (m.Scope scope, Stream target)=>({ onCancel,  onListen}){
void onCancelProxy( subscription) {
 engine.callFunctionPointer(scope, onCancel!,[subscription], {});
}

void onListenProxy( subscription) {
 engine.callFunctionPointer(scope, onListen!,[subscription], {});
}

return target.asBroadcastStream(onCancel:onCancel == null ? null :onCancelProxy, onListen:onListen == null ? null :onListenProxy);
},
'dart:async@Stream@listen': (m.Scope scope, Stream target)=>( onData, { cancelOnError,  onDone,  onError}){
void onDataProxy<T>( event) {
 engine.callFunctionPointer(scope, onData!,[event], {});
}

void onDoneProxy() {
 engine.callFunctionPointer(scope, onDone!,[], {});
}

return target.listen(onDataProxy, cancelOnError:cancelOnError, onDone:onDone == null ? null :onDoneProxy, onError:onError);
},
'dart:async@Stream@where': (m.Scope scope, Stream target)=>( test){
bool testProxy<T>( event) {
return  engine.callFunctionPointer(scope, test!,[event], {});
}

return target.where(testProxy);
},
'dart:async@Stream@map': (m.Scope scope, Stream target)=>( convert){
S convertProxy<S, T>( event) {
return  engine.callFunctionPointer(scope, convert!,[event], {});
}

return target.map(convertProxy);
},
'dart:async@Stream@asyncMap': (m.Scope scope, Stream target)=>( convert){
FutureOr<E> convertProxy<E, T>( event) async{
return await engine.callFunctionPointerAsync(scope, convert!,[event], {});
}

return target.asyncMap(convertProxy);
},
'dart:async@Stream@asyncExpand': (m.Scope scope, Stream target)=>( convert){
Stream<E> convertProxy<E, T>( event) {
return  engine.callFunctionPointer(scope, convert!,[event], {});
}

return target.asyncExpand(convertProxy);
},
'dart:async@Stream@handleError': (m.Scope scope, Stream target)=>( onError, { test}){
bool testProxy( error) {
return  engine.callFunctionPointer(scope, test!,[error], {});
}

return target.handleError(onError, test:test == null ? null :testProxy);
},
'dart:async@Stream@expand': (m.Scope scope, Stream target)=>( convert){
Iterable<S> convertProxy<S, T>( element) {
return  engine.callFunctionPointer(scope, convert!,[element], {});
}

return target.expand(convertProxy);
},
'dart:async@Stream@pipe': (m.Scope scope, Stream target)=>target.pipe,
'dart:async@Stream@transform': (m.Scope scope, Stream target)=>target.transform,
'dart:async@Stream@reduce': (m.Scope scope, Stream target)=>( combine){
T combineProxy<T>( previous,  element) {
return  engine.callFunctionPointer(scope, combine!,[previous, element], {});
}

return target.reduce(combineProxy);
},
'dart:async@Stream@fold': (m.Scope scope, Stream target)=>( initialValue,  combine){
S combineProxy<S, T>( previous,  element) {
return  engine.callFunctionPointer(scope, combine!,[previous, element], {});
}

return target.fold(initialValue, combineProxy);
},
'dart:async@Stream@join': (m.Scope scope, Stream target)=>target.join,
'dart:async@Stream@contains': (m.Scope scope, Stream target)=>target.contains,
'dart:async@Stream@forEach': (m.Scope scope, Stream target)=>( action){
void actionProxy<T>( element) {
 engine.callFunctionPointer(scope, action!,[element], {});
}

return target.forEach(actionProxy);
},
'dart:async@Stream@every': (m.Scope scope, Stream target)=>( test){
bool testProxy<T>( element) {
return  engine.callFunctionPointer(scope, test!,[element], {});
}

return target.every(testProxy);
},
'dart:async@Stream@any': (m.Scope scope, Stream target)=>( test){
bool testProxy<T>( element) {
return  engine.callFunctionPointer(scope, test!,[element], {});
}

return target.any(testProxy);
},
'dart:async@Stream@cast': (m.Scope scope, Stream target)=>target.cast,
'dart:async@Stream@toList': (m.Scope scope, Stream target)=>target.toList,
'dart:async@Stream@toSet': (m.Scope scope, Stream target)=>target.toSet,
'dart:async@Stream@drain': (m.Scope scope, Stream target)=>target.drain,
'dart:async@Stream@take': (m.Scope scope, Stream target)=>target.take,
'dart:async@Stream@takeWhile': (m.Scope scope, Stream target)=>( test){
bool testProxy<T>( element) {
return  engine.callFunctionPointer(scope, test!,[element], {});
}

return target.takeWhile(testProxy);
},
'dart:async@Stream@skip': (m.Scope scope, Stream target)=>target.skip,
'dart:async@Stream@skipWhile': (m.Scope scope, Stream target)=>( test){
bool testProxy<T>( element) {
return  engine.callFunctionPointer(scope, test!,[element], {});
}

return target.skipWhile(testProxy);
},
'dart:async@Stream@distinct': (m.Scope scope, Stream target)=>([m.FunctionPointer? equals]){
if(equals == null){
return target.distinct();
}
bool equalsProxy<T>( previous,  next) {
return  engine.callFunctionPointer(scope, equals!,[previous, next], {});
}

return target.distinct(equalsProxy);
},
'dart:async@Stream@firstWhere': (m.Scope scope, Stream target)=>( test, { orElse}){
bool testProxy<T>( element) {
return  engine.callFunctionPointer(scope, test!,[element], {});
}

T orElseProxy<T>() {
return  engine.callFunctionPointer(scope, orElse!,[], {});
}

return target.firstWhere(testProxy, orElse:orElse == null ? null :orElseProxy);
},
'dart:async@Stream@lastWhere': (m.Scope scope, Stream target)=>( test, { orElse}){
bool testProxy<T>( element) {
return  engine.callFunctionPointer(scope, test!,[element], {});
}

T orElseProxy<T>() {
return  engine.callFunctionPointer(scope, orElse!,[], {});
}

return target.lastWhere(testProxy, orElse:orElse == null ? null :orElseProxy);
},
'dart:async@Stream@singleWhere': (m.Scope scope, Stream target)=>( test, { orElse}){
bool testProxy<T>( element) {
return  engine.callFunctionPointer(scope, test!,[element], {});
}

T orElseProxy<T>() {
return  engine.callFunctionPointer(scope, orElse!,[], {});
}

return target.singleWhere(testProxy, orElse:orElse == null ? null :orElseProxy);
},
'dart:async@Stream@elementAt': (m.Scope scope, Stream target)=>target.elementAt,
'dart:async@Stream@timeout': (m.Scope scope, Stream target)=>( timeLimit, { onTimeout}){
void onTimeoutProxy( sink) {
 engine.callFunctionPointer(scope, onTimeout!,[sink], {});
}

return target.timeout(timeLimit, onTimeout:onTimeout == null ? null :onTimeoutProxy);
},
'dart:async@StreamSubscription@#as': (m.Scope scope, target)=>()=>target as StreamSubscription,
'dart:async@StreamSubscription@#is': (m.Scope scope, target)=>()=>target is StreamSubscription,
'dart:async@StreamSubscription@isPaused': (m.Scope scope, StreamSubscription target)=>target.isPaused,
'dart:async@StreamSubscription@cancel': (m.Scope scope, StreamSubscription target)=>target.cancel,
'dart:async@StreamSubscription@onData': (m.Scope scope, StreamSubscription target)=>( handleData){
void handleDataProxy<T>( data) {
 engine.callFunctionPointer(scope, handleData!,[data], {});
}

target.onData(handleDataProxy);
},
'dart:async@StreamSubscription@onError': (m.Scope scope, StreamSubscription target)=>target.onError,
'dart:async@StreamSubscription@onDone': (m.Scope scope, StreamSubscription target)=>( handleDone){
void handleDoneProxy() {
 engine.callFunctionPointer(scope, handleDone!,[], {});
}

target.onDone(handleDoneProxy);
},
'dart:async@StreamSubscription@pause': (m.Scope scope, StreamSubscription target)=>target.pause,
'dart:async@StreamSubscription@resume': (m.Scope scope, StreamSubscription target)=>target.resume,
'dart:async@StreamSubscription@asFuture': (m.Scope scope, StreamSubscription target)=>target.asFuture,
'dart:async@EventSink@#as': (m.Scope scope, target)=>()=>target as EventSink,
'dart:async@EventSink@#is': (m.Scope scope, target)=>()=>target is EventSink,
'dart:async@EventSink@add': (m.Scope scope, EventSink target)=>target.add,
'dart:async@EventSink@addError': (m.Scope scope, EventSink target)=>target.addError,
'dart:async@EventSink@close': (m.Scope scope, EventSink target)=>target.close,
'dart:async@StreamView@#as': (m.Scope scope, target)=>()=>target as StreamView,
'dart:async@StreamView@#is': (m.Scope scope, target)=>()=>target is StreamView,
'dart:async@StreamView@isBroadcast': (m.Scope scope, StreamView target)=>target.isBroadcast,
'dart:async@StreamView@': (m.Scope scope)=>StreamView,
'dart:async@StreamView@asBroadcastStream': (m.Scope scope, StreamView target)=>({ onCancel,  onListen}){
void onCancelProxy( subscription) {
 engine.callFunctionPointer(scope, onCancel!,[subscription], {});
}

void onListenProxy( subscription) {
 engine.callFunctionPointer(scope, onListen!,[subscription], {});
}

return target.asBroadcastStream(onCancel:onCancel == null ? null :onCancelProxy, onListen:onListen == null ? null :onListenProxy);
},
'dart:async@StreamView@listen': (m.Scope scope, StreamView target)=>( onData, { cancelOnError,  onDone,  onError}){
void onDataProxy<T>( value) {
 engine.callFunctionPointer(scope, onData!,[value], {});
}

void onDoneProxy() {
 engine.callFunctionPointer(scope, onDone!,[], {});
}

return target.listen(onDataProxy, cancelOnError:cancelOnError, onDone:onDone == null ? null :onDoneProxy, onError:onError);
},
'dart:async@StreamConsumer@#as': (m.Scope scope, target)=>()=>target as StreamConsumer,
'dart:async@StreamConsumer@#is': (m.Scope scope, target)=>()=>target is StreamConsumer,
'dart:async@StreamConsumer@addStream': (m.Scope scope, StreamConsumer target)=>target.addStream,
'dart:async@StreamConsumer@close': (m.Scope scope, StreamConsumer target)=>target.close,
'dart:async@StreamSink@#as': (m.Scope scope, target)=>()=>target as StreamSink,
'dart:async@StreamSink@#is': (m.Scope scope, target)=>()=>target is StreamSink,
'dart:async@StreamSink@done': (m.Scope scope, StreamSink target)=>target.done,
'dart:async@StreamSink@close': (m.Scope scope, StreamSink target)=>target.close,
'dart:async@StreamTransformer@#as': (m.Scope scope, target)=>()=>target as StreamTransformer,
'dart:async@StreamTransformer@#is': (m.Scope scope, target)=>()=>target is StreamTransformer,
'dart:async@StreamTransformer@': (m.Scope scope)=>( onListen){
StreamSubscription<T> onListenProxy<T>( stream,  cancelOnError) {
return  engine.callFunctionPointer(scope, onListen!,[stream, cancelOnError], {});
}

return StreamTransformer(onListenProxy);
},
'dart:async@StreamTransformer@fromHandlers': (m.Scope scope)=>({ handleData,  handleDone,  handleError}){
void handleDataProxy<S>( data,  sink) {
 engine.callFunctionPointer(scope, handleData!,[data, sink], {});
}

void handleDoneProxy( sink) {
 engine.callFunctionPointer(scope, handleDone!,[sink], {});
}

void handleErrorProxy( error,  stackTrace,  sink) {
 engine.callFunctionPointer(scope, handleError!,[error, stackTrace, sink], {});
}

return StreamTransformer.fromHandlers(handleData:handleData == null ? null :handleDataProxy, handleDone:handleDone == null ? null :handleDoneProxy, handleError:handleError == null ? null :handleErrorProxy);
},
'dart:async@StreamTransformer@fromBind': (m.Scope scope)=>( bind){
Stream<T> bindProxy<T>( $p0) {
return  engine.callFunctionPointer(scope, bind!,[$p0], {});
}

return StreamTransformer.fromBind(bindProxy);
},
'dart:async@StreamTransformer@castFrom': (m.Scope scope)=>StreamTransformer.castFrom,
'dart:async@StreamTransformer@bind': (m.Scope scope, StreamTransformer target)=>target.bind,
'dart:async@StreamTransformer@cast': (m.Scope scope, StreamTransformer target)=>target.cast,
'dart:async@StreamTransformerBase@#as': (m.Scope scope, target)=>()=>target as StreamTransformerBase,
'dart:async@StreamTransformerBase@#is': (m.Scope scope, target)=>()=>target is StreamTransformerBase,
'dart:async@StreamTransformerBase@cast': (m.Scope scope, StreamTransformerBase target)=>target.cast,
'dart:async@StreamIterator@#as': (m.Scope scope, target)=>()=>target as StreamIterator,
'dart:async@StreamIterator@#is': (m.Scope scope, target)=>()=>target is StreamIterator,
'dart:async@StreamIterator@current': (m.Scope scope, StreamIterator target)=>target.current,
'dart:async@StreamIterator@': (m.Scope scope)=>StreamIterator,
'dart:async@StreamIterator@moveNext': (m.Scope scope, StreamIterator target)=>target.moveNext,
'dart:async@StreamIterator@cancel': (m.Scope scope, StreamIterator target)=>target.cancel,
'dart:async@MultiStreamController@#as': (m.Scope scope, target)=>()=>target as MultiStreamController,
'dart:async@MultiStreamController@#is': (m.Scope scope, target)=>()=>target is MultiStreamController,
'dart:async@MultiStreamController@addSync': (m.Scope scope, MultiStreamController target)=>target.addSync,
'dart:async@MultiStreamController@addErrorSync': (m.Scope scope, MultiStreamController target)=>target.addErrorSync,
'dart:async@MultiStreamController@closeSync': (m.Scope scope, MultiStreamController target)=>target.closeSync,
'dart:async@StreamController@#as': (m.Scope scope, target)=>()=>target as StreamController,
'dart:async@StreamController@#is': (m.Scope scope, target)=>()=>target is StreamController,
'dart:async@StreamController@onListen': (m.Scope scope, StreamController target)=>target.onListen,
'dart:async@StreamController@onListen:set': (m.Scope scope, StreamController target)=>(other)=>target.onListen=other,
'dart:async@StreamController@onPause': (m.Scope scope, StreamController target)=>target.onPause,
'dart:async@StreamController@onPause:set': (m.Scope scope, StreamController target)=>(other)=>target.onPause=other,
'dart:async@StreamController@onResume': (m.Scope scope, StreamController target)=>target.onResume,
'dart:async@StreamController@onResume:set': (m.Scope scope, StreamController target)=>(other)=>target.onResume=other,
'dart:async@StreamController@onCancel': (m.Scope scope, StreamController target)=>target.onCancel,
'dart:async@StreamController@onCancel:set': (m.Scope scope, StreamController target)=>(other)=>target.onCancel=other,
'dart:async@StreamController@stream': (m.Scope scope, StreamController target)=>target.stream,
'dart:async@StreamController@sink': (m.Scope scope, StreamController target)=>target.sink,
'dart:async@StreamController@isClosed': (m.Scope scope, StreamController target)=>target.isClosed,
'dart:async@StreamController@isPaused': (m.Scope scope, StreamController target)=>target.isPaused,
'dart:async@StreamController@hasListener': (m.Scope scope, StreamController target)=>target.hasListener,
'dart:async@StreamController@done': (m.Scope scope, StreamController target)=>target.done,
'dart:async@StreamController@': (m.Scope scope)=>({ onCancel,  onListen,  onPause,  onResume,  sync}){
FutureOr onCancelProxy() async{
return await engine.callFunctionPointerAsync(scope, onCancel!,[], {});
}

void onListenProxy() {
 engine.callFunctionPointer(scope, onListen!,[], {});
}

void onPauseProxy() {
 engine.callFunctionPointer(scope, onPause!,[], {});
}

void onResumeProxy() {
 engine.callFunctionPointer(scope, onResume!,[], {});
}

return StreamController(onCancel:onCancel == null ? null :onCancelProxy, onListen:onListen == null ? null :onListenProxy, onPause:onPause == null ? null :onPauseProxy, onResume:onResume == null ? null :onResumeProxy, sync:sync ?? false);
},
'dart:async@StreamController@broadcast': (m.Scope scope)=>({ onCancel,  onListen,  sync}){
void onCancelProxy() {
 engine.callFunctionPointer(scope, onCancel!,[], {});
}

void onListenProxy() {
 engine.callFunctionPointer(scope, onListen!,[], {});
}

return StreamController.broadcast(onCancel:onCancel == null ? null :onCancelProxy, onListen:onListen == null ? null :onListenProxy, sync:sync ?? false);
},
'dart:async@StreamController@add': (m.Scope scope, StreamController target)=>target.add,
'dart:async@StreamController@addError': (m.Scope scope, StreamController target)=>target.addError,
'dart:async@StreamController@close': (m.Scope scope, StreamController target)=>target.close,
'dart:async@StreamController@addStream': (m.Scope scope, StreamController target)=>target.addStream,
'dart:async@SynchronousStreamController@#as': (m.Scope scope, target)=>()=>target as SynchronousStreamController,
'dart:async@SynchronousStreamController@#is': (m.Scope scope, target)=>()=>target is SynchronousStreamController,
'dart:async@SynchronousStreamController@add': (m.Scope scope, SynchronousStreamController target)=>target.add,
'dart:async@SynchronousStreamController@addError': (m.Scope scope, SynchronousStreamController target)=>target.addError,
'dart:async@SynchronousStreamController@close': (m.Scope scope, SynchronousStreamController target)=>target.close,
'dart:async@Timer@#as': (m.Scope scope, target)=>()=>target as Timer,
'dart:async@Timer@#is': (m.Scope scope, target)=>()=>target is Timer,
'dart:async@Timer@tick': (m.Scope scope, Timer target)=>target.tick,
'dart:async@Timer@isActive': (m.Scope scope, Timer target)=>target.isActive,
'dart:async@Timer@': (m.Scope scope)=>( duration,  callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

return Timer(duration, callbackProxy);
},
'dart:async@Timer@periodic': (m.Scope scope)=>( duration,  callback){
void callbackProxy( timer) {
 engine.callFunctionPointer(scope, callback!,[timer], {});
}

return Timer.periodic(duration, callbackProxy);
},
'dart:async@Timer@run': (m.Scope scope)=>( callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

Timer.run(callbackProxy);
},
'dart:async@Timer@cancel': (m.Scope scope, Timer target)=>target.cancel,
'dart:async@ZoneSpecification@#as': (m.Scope scope, target)=>()=>target as ZoneSpecification,
'dart:async@ZoneSpecification@#is': (m.Scope scope, target)=>()=>target is ZoneSpecification,
'dart:async@ZoneSpecification@handleUncaughtError': (m.Scope scope, ZoneSpecification target)=>target.handleUncaughtError,
'dart:async@ZoneSpecification@run': (m.Scope scope, ZoneSpecification target)=>target.run,
'dart:async@ZoneSpecification@runUnary': (m.Scope scope, ZoneSpecification target)=>target.runUnary,
'dart:async@ZoneSpecification@runBinary': (m.Scope scope, ZoneSpecification target)=>target.runBinary,
'dart:async@ZoneSpecification@registerCallback': (m.Scope scope, ZoneSpecification target)=>target.registerCallback,
'dart:async@ZoneSpecification@registerUnaryCallback': (m.Scope scope, ZoneSpecification target)=>target.registerUnaryCallback,
'dart:async@ZoneSpecification@registerBinaryCallback': (m.Scope scope, ZoneSpecification target)=>target.registerBinaryCallback,
'dart:async@ZoneSpecification@errorCallback': (m.Scope scope, ZoneSpecification target)=>target.errorCallback,
'dart:async@ZoneSpecification@scheduleMicrotask': (m.Scope scope, ZoneSpecification target)=>target.scheduleMicrotask,
'dart:async@ZoneSpecification@createTimer': (m.Scope scope, ZoneSpecification target)=>target.createTimer,
'dart:async@ZoneSpecification@createPeriodicTimer': (m.Scope scope, ZoneSpecification target)=>target.createPeriodicTimer,
'dart:async@ZoneSpecification@print': (m.Scope scope, ZoneSpecification target)=>target.print,
'dart:async@ZoneSpecification@fork': (m.Scope scope, ZoneSpecification target)=>target.fork,
'dart:async@ZoneSpecification@': (m.Scope scope)=>({ createPeriodicTimer,  createTimer,  errorCallback,  fork,  handleUncaughtError,  print,  registerBinaryCallback,  registerCallback,  registerUnaryCallback,  run,  runBinary,  runUnary,  scheduleMicrotask}){
Timer createPeriodicTimerProxy( self,  parent,  zone,  period,  f) {
return  engine.callFunctionPointer(scope, createPeriodicTimer!,[self, parent, zone, period, f], {});
}

Timer createTimerProxy( self,  parent,  zone,  duration,  f) {
return  engine.callFunctionPointer(scope, createTimer!,[self, parent, zone, duration, f], {});
}

AsyncError errorCallbackProxy( self,  parent,  zone,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, errorCallback!,[self, parent, zone, error, stackTrace], {});
}

Zone forkProxy( self,  parent,  zone,  specification,  zoneValues) {
return  engine.callFunctionPointer(scope, fork!,[self, parent, zone, specification, zoneValues], {});
}

void handleUncaughtErrorProxy( self,  parent,  zone,  error,  stackTrace) {
 engine.callFunctionPointer(scope, handleUncaughtError!,[self, parent, zone, error, stackTrace], {});
}

void printProxy( self,  parent,  zone,  line) {
 engine.callFunctionPointer(scope, print!,[self, parent, zone, line], {});
}

R Function(T1, T2) registerBinaryCallbackProxy<R, T1, T2>( self,  parent,  zone,  f) {
var $fp =   engine.callFunctionPointer(scope, registerBinaryCallback!,[self, parent, zone, f], {});
R $f<R, T1, T2>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, $fp!,[$p0, $p1], {});
}

return $f;
}

R Function() registerCallbackProxy<R>( self,  parent,  zone,  f) {
var $fp =   engine.callFunctionPointer(scope, registerCallback!,[self, parent, zone, f], {});
R $f<R>() {
return  engine.callFunctionPointer(scope, $fp!,[], {});
}

return $f;
}

R Function(T) registerUnaryCallbackProxy<R, T>( self,  parent,  zone,  f) {
var $fp =   engine.callFunctionPointer(scope, registerUnaryCallback!,[self, parent, zone, f], {});
R $f<R, T>( $p0) {
return  engine.callFunctionPointer(scope, $fp!,[$p0], {});
}

return $f;
}

R runProxy<R>( self,  parent,  zone,  f) {
return  engine.callFunctionPointer(scope, run!,[self, parent, zone, f], {});
}

R runBinaryProxy<R, T1, T2>( self,  parent,  zone,  f,  arg1,  arg2) {
return  engine.callFunctionPointer(scope, runBinary!,[self, parent, zone, f, arg1, arg2], {});
}

R runUnaryProxy<R, T>( self,  parent,  zone,  f,  arg) {
return  engine.callFunctionPointer(scope, runUnary!,[self, parent, zone, f, arg], {});
}

void scheduleMicrotaskProxy( self,  parent,  zone,  f) {
 engine.callFunctionPointer(scope, scheduleMicrotask!,[self, parent, zone, f], {});
}

return ZoneSpecification(createPeriodicTimer:createPeriodicTimer == null ? null :createPeriodicTimerProxy, createTimer:createTimer == null ? null :createTimerProxy, errorCallback:errorCallback == null ? null :errorCallbackProxy, fork:fork == null ? null :forkProxy, handleUncaughtError:handleUncaughtError == null ? null :handleUncaughtErrorProxy, print:print == null ? null :printProxy, registerBinaryCallback:registerBinaryCallback == null ? null :registerBinaryCallbackProxy, registerCallback:registerCallback == null ? null :registerCallbackProxy, registerUnaryCallback:registerUnaryCallback == null ? null :registerUnaryCallbackProxy, run:run == null ? null :runProxy, runBinary:runBinary == null ? null :runBinaryProxy, runUnary:runUnary == null ? null :runUnaryProxy, scheduleMicrotask:scheduleMicrotask == null ? null :scheduleMicrotaskProxy);
},
'dart:async@ZoneSpecification@from': (m.Scope scope)=>( other, { createPeriodicTimer,  createTimer,  errorCallback,  fork,  handleUncaughtError,  print,  registerBinaryCallback,  registerCallback,  registerUnaryCallback,  run,  runBinary,  runUnary,  scheduleMicrotask}){
Timer createPeriodicTimerProxy( self,  parent,  zone,  period,  f) {
return  engine.callFunctionPointer(scope, createPeriodicTimer!,[self, parent, zone, period, f], {});
}

Timer createTimerProxy( self,  parent,  zone,  duration,  f) {
return  engine.callFunctionPointer(scope, createTimer!,[self, parent, zone, duration, f], {});
}

AsyncError errorCallbackProxy( self,  parent,  zone,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, errorCallback!,[self, parent, zone, error, stackTrace], {});
}

Zone forkProxy( self,  parent,  zone,  specification,  zoneValues) {
return  engine.callFunctionPointer(scope, fork!,[self, parent, zone, specification, zoneValues], {});
}

void handleUncaughtErrorProxy( self,  parent,  zone,  error,  stackTrace) {
 engine.callFunctionPointer(scope, handleUncaughtError!,[self, parent, zone, error, stackTrace], {});
}

void printProxy( self,  parent,  zone,  line) {
 engine.callFunctionPointer(scope, print!,[self, parent, zone, line], {});
}

R Function(T1, T2) registerBinaryCallbackProxy<R, T1, T2>( self,  parent,  zone,  f) {
var $fp =   engine.callFunctionPointer(scope, registerBinaryCallback!,[self, parent, zone, f], {});
R $f<R, T1, T2>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, $fp!,[$p0, $p1], {});
}

return $f;
}

R Function() registerCallbackProxy<R>( self,  parent,  zone,  f) {
var $fp =   engine.callFunctionPointer(scope, registerCallback!,[self, parent, zone, f], {});
R $f<R>() {
return  engine.callFunctionPointer(scope, $fp!,[], {});
}

return $f;
}

R Function(T) registerUnaryCallbackProxy<R, T>( self,  parent,  zone,  f) {
var $fp =   engine.callFunctionPointer(scope, registerUnaryCallback!,[self, parent, zone, f], {});
R $f<R, T>( $p0) {
return  engine.callFunctionPointer(scope, $fp!,[$p0], {});
}

return $f;
}

R runProxy<R>( self,  parent,  zone,  f) {
return  engine.callFunctionPointer(scope, run!,[self, parent, zone, f], {});
}

R runBinaryProxy<R, T1, T2>( self,  parent,  zone,  f,  arg1,  arg2) {
return  engine.callFunctionPointer(scope, runBinary!,[self, parent, zone, f, arg1, arg2], {});
}

R runUnaryProxy<R, T>( self,  parent,  zone,  f,  arg) {
return  engine.callFunctionPointer(scope, runUnary!,[self, parent, zone, f, arg], {});
}

void scheduleMicrotaskProxy( self,  parent,  zone,  f) {
 engine.callFunctionPointer(scope, scheduleMicrotask!,[self, parent, zone, f], {});
}

return ZoneSpecification.from(other, createPeriodicTimer:createPeriodicTimer == null ? null :createPeriodicTimerProxy, createTimer:createTimer == null ? null :createTimerProxy, errorCallback:errorCallback == null ? null :errorCallbackProxy, fork:fork == null ? null :forkProxy, handleUncaughtError:handleUncaughtError == null ? null :handleUncaughtErrorProxy, print:print == null ? null :printProxy, registerBinaryCallback:registerBinaryCallback == null ? null :registerBinaryCallbackProxy, registerCallback:registerCallback == null ? null :registerCallbackProxy, registerUnaryCallback:registerUnaryCallback == null ? null :registerUnaryCallbackProxy, run:run == null ? null :runProxy, runBinary:runBinary == null ? null :runBinaryProxy, runUnary:runUnary == null ? null :runUnaryProxy, scheduleMicrotask:scheduleMicrotask == null ? null :scheduleMicrotaskProxy);
},
'dart:async@ZoneDelegate@#as': (m.Scope scope, target)=>()=>target as ZoneDelegate,
'dart:async@ZoneDelegate@#is': (m.Scope scope, target)=>()=>target is ZoneDelegate,
'dart:async@ZoneDelegate@handleUncaughtError': (m.Scope scope, ZoneDelegate target)=>target.handleUncaughtError,
'dart:async@ZoneDelegate@run': (m.Scope scope, ZoneDelegate target)=>( zone,  f){
R fProxy<R>() {
return  engine.callFunctionPointer(scope, f!,[], {});
}

return target.run(zone, fProxy);
},
'dart:async@ZoneDelegate@runUnary': (m.Scope scope, ZoneDelegate target)=>( zone,  f,  arg){
R fProxy<R, T>( arg) {
return  engine.callFunctionPointer(scope, f!,[arg], {});
}

return target.runUnary(zone, fProxy, arg);
},
'dart:async@ZoneDelegate@runBinary': (m.Scope scope, ZoneDelegate target)=>( zone,  f,  arg1,  arg2){
R fProxy<R, T1, T2>( arg1,  arg2) {
return  engine.callFunctionPointer(scope, f!,[arg1, arg2], {});
}

return target.runBinary(zone, fProxy, arg1, arg2);
},
'dart:async@ZoneDelegate@registerCallback': (m.Scope scope, ZoneDelegate target)=>( zone,  f){
R fProxy<R>() {
return  engine.callFunctionPointer(scope, f!,[], {});
}

return target.registerCallback(zone, fProxy);
},
'dart:async@ZoneDelegate@registerUnaryCallback': (m.Scope scope, ZoneDelegate target)=>( zone,  f){
R fProxy<R, T>( arg) {
return  engine.callFunctionPointer(scope, f!,[arg], {});
}

return target.registerUnaryCallback(zone, fProxy);
},
'dart:async@ZoneDelegate@registerBinaryCallback': (m.Scope scope, ZoneDelegate target)=>( zone,  f){
R fProxy<R, T1, T2>( arg1,  arg2) {
return  engine.callFunctionPointer(scope, f!,[arg1, arg2], {});
}

return target.registerBinaryCallback(zone, fProxy);
},
'dart:async@ZoneDelegate@errorCallback': (m.Scope scope, ZoneDelegate target)=>target.errorCallback,
'dart:async@ZoneDelegate@scheduleMicrotask': (m.Scope scope, ZoneDelegate target)=>( zone,  f){
void fProxy() {
 engine.callFunctionPointer(scope, f!,[], {});
}

target.scheduleMicrotask(zone, fProxy);
},
'dart:async@ZoneDelegate@createTimer': (m.Scope scope, ZoneDelegate target)=>( zone,  duration,  f){
void fProxy() {
 engine.callFunctionPointer(scope, f!,[], {});
}

return target.createTimer(zone, duration, fProxy);
},
'dart:async@ZoneDelegate@createPeriodicTimer': (m.Scope scope, ZoneDelegate target)=>( zone,  period,  f){
void fProxy( timer) {
 engine.callFunctionPointer(scope, f!,[timer], {});
}

return target.createPeriodicTimer(zone, period, fProxy);
},
'dart:async@ZoneDelegate@print': (m.Scope scope, ZoneDelegate target)=>target.print,
'dart:async@ZoneDelegate@fork': (m.Scope scope, ZoneDelegate target)=>target.fork,
'dart:async@Zone@#as': (m.Scope scope, target)=>()=>target as Zone,
'dart:async@Zone@#is': (m.Scope scope, target)=>()=>target is Zone,
'dart:async@Zone@root': (m.Scope scope)=>Zone.root,
'dart:async@Zone@current': (m.Scope scope)=>Zone.current,
'dart:async@Zone@parent': (m.Scope scope, Zone target)=>target.parent,
'dart:async@Zone@errorZone': (m.Scope scope, Zone target)=>target.errorZone,
'dart:async@Zone@handleUncaughtError': (m.Scope scope, Zone target)=>target.handleUncaughtError,
'dart:async@Zone@inSameErrorZone': (m.Scope scope, Zone target)=>target.inSameErrorZone,
'dart:async@Zone@fork': (m.Scope scope, Zone target)=>target.fork,
'dart:async@Zone@run': (m.Scope scope, Zone target)=>( action){
R actionProxy<R>() {
return  engine.callFunctionPointer(scope, action!,[], {});
}

return target.run(actionProxy);
},
'dart:async@Zone@runUnary': (m.Scope scope, Zone target)=>( action,  argument){
R actionProxy<R, T>( argument) {
return  engine.callFunctionPointer(scope, action!,[argument], {});
}

return target.runUnary(actionProxy, argument);
},
'dart:async@Zone@runBinary': (m.Scope scope, Zone target)=>( action,  argument1,  argument2){
R actionProxy<R, T1, T2>( argument1,  argument2) {
return  engine.callFunctionPointer(scope, action!,[argument1, argument2], {});
}

return target.runBinary(actionProxy, argument1, argument2);
},
'dart:async@Zone@runGuarded': (m.Scope scope, Zone target)=>( action){
void actionProxy() {
 engine.callFunctionPointer(scope, action!,[], {});
}

target.runGuarded(actionProxy);
},
'dart:async@Zone@runUnaryGuarded': (m.Scope scope, Zone target)=>( action,  argument){
void actionProxy<T>( argument) {
 engine.callFunctionPointer(scope, action!,[argument], {});
}

target.runUnaryGuarded(actionProxy, argument);
},
'dart:async@Zone@runBinaryGuarded': (m.Scope scope, Zone target)=>( action,  argument1,  argument2){
void actionProxy<T1, T2>( argument1,  argument2) {
 engine.callFunctionPointer(scope, action!,[argument1, argument2], {});
}

target.runBinaryGuarded(actionProxy, argument1, argument2);
},
'dart:async@Zone@registerCallback': (m.Scope scope, Zone target)=>( callback){
R callbackProxy<R>() {
return  engine.callFunctionPointer(scope, callback!,[], {});
}

return target.registerCallback(callbackProxy);
},
'dart:async@Zone@registerUnaryCallback': (m.Scope scope, Zone target)=>( callback){
R callbackProxy<R, T>( arg) {
return  engine.callFunctionPointer(scope, callback!,[arg], {});
}

return target.registerUnaryCallback(callbackProxy);
},
'dart:async@Zone@registerBinaryCallback': (m.Scope scope, Zone target)=>( callback){
R callbackProxy<R, T1, T2>( arg1,  arg2) {
return  engine.callFunctionPointer(scope, callback!,[arg1, arg2], {});
}

return target.registerBinaryCallback(callbackProxy);
},
'dart:async@Zone@bindCallback': (m.Scope scope, Zone target)=>( callback){
R callbackProxy<R>() {
return  engine.callFunctionPointer(scope, callback!,[], {});
}

return target.bindCallback(callbackProxy);
},
'dart:async@Zone@bindUnaryCallback': (m.Scope scope, Zone target)=>( callback){
R callbackProxy<R, T>( argument) {
return  engine.callFunctionPointer(scope, callback!,[argument], {});
}

return target.bindUnaryCallback(callbackProxy);
},
'dart:async@Zone@bindBinaryCallback': (m.Scope scope, Zone target)=>( callback){
R callbackProxy<R, T1, T2>( argument1,  argument2) {
return  engine.callFunctionPointer(scope, callback!,[argument1, argument2], {});
}

return target.bindBinaryCallback(callbackProxy);
},
'dart:async@Zone@bindCallbackGuarded': (m.Scope scope, Zone target)=>( callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

return target.bindCallbackGuarded(callbackProxy);
},
'dart:async@Zone@bindUnaryCallbackGuarded': (m.Scope scope, Zone target)=>( callback){
void callbackProxy<T>( argument) {
 engine.callFunctionPointer(scope, callback!,[argument], {});
}

return target.bindUnaryCallbackGuarded(callbackProxy);
},
'dart:async@Zone@bindBinaryCallbackGuarded': (m.Scope scope, Zone target)=>( callback){
void callbackProxy<T1, T2>( argument1,  argument2) {
 engine.callFunctionPointer(scope, callback!,[argument1, argument2], {});
}

return target.bindBinaryCallbackGuarded(callbackProxy);
},
'dart:async@Zone@errorCallback': (m.Scope scope, Zone target)=>target.errorCallback,
'dart:async@Zone@scheduleMicrotask': (m.Scope scope, Zone target)=>( callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

target.scheduleMicrotask(callbackProxy);
},
'dart:async@Zone@createTimer': (m.Scope scope, Zone target)=>( duration,  callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

return target.createTimer(duration, callbackProxy);
},
'dart:async@Zone@createPeriodicTimer': (m.Scope scope, Zone target)=>( period,  callback){
void callbackProxy( timer) {
 engine.callFunctionPointer(scope, callback!,[timer], {});
}

return target.createPeriodicTimer(period, callbackProxy);
},
'dart:async@Zone@print': (m.Scope scope, Zone target)=>target.print,
'dart:async@Zone@[]': (m.Scope scope, Zone target)=>(index)=> target[index],
'dart:async@@runZoned': (m.Scope scope)=>( body, { onError,  zoneSpecification,  zoneValues}){
R bodyProxy<R>() {
return  engine.callFunctionPointer(scope, body!,[], {});
}

return runZoned(bodyProxy, onError:onError, zoneSpecification:zoneSpecification, zoneValues:zoneValues);
},
'dart:async@@runZonedGuarded': (m.Scope scope)=>( body,  onError, { zoneSpecification,  zoneValues}){
R bodyProxy<R>() {
return  engine.callFunctionPointer(scope, body!,[], {});
}

void onErrorProxy( error,  stack) {
 engine.callFunctionPointer(scope, onError!,[error, stack], {});
}

return runZonedGuarded(bodyProxy, onErrorProxy, zoneSpecification:zoneSpecification, zoneValues:zoneValues);
},

};
}