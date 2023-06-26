import 'dart:isolate';
import 'dart:async';
import 'dart:typed_data' show ByteBuffer,TypedData,Uint8List;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'dart:isolate@IsolateSpawnException@#as': (m.Scope scope, target)=>()=>target as IsolateSpawnException,
'dart:isolate@IsolateSpawnException@#is': (m.Scope scope, target)=>()=>target is IsolateSpawnException,
'dart:isolate@IsolateSpawnException@message': (m.Scope scope, IsolateSpawnException target)=>target.message,
'dart:isolate@IsolateSpawnException@': (m.Scope scope)=>IsolateSpawnException,
'dart:isolate@IsolateSpawnException@toString': (m.Scope scope, IsolateSpawnException target)=>target.toString,
'dart:isolate@Isolate@#as': (m.Scope scope, target)=>()=>target as Isolate,
'dart:isolate@Isolate@#is': (m.Scope scope, target)=>()=>target is Isolate,
'dart:isolate@Isolate@immediate': (m.Scope scope)=>Isolate.immediate,
'dart:isolate@Isolate@beforeNextEvent': (m.Scope scope)=>Isolate.beforeNextEvent,
'dart:isolate@Isolate@controlPort': (m.Scope scope, Isolate target)=>target.controlPort,
'dart:isolate@Isolate@pauseCapability': (m.Scope scope, Isolate target)=>target.pauseCapability,
'dart:isolate@Isolate@terminateCapability': (m.Scope scope, Isolate target)=>target.terminateCapability,
'dart:isolate@Isolate@debugName': (m.Scope scope, Isolate target)=>target.debugName,
'dart:isolate@Isolate@current': (m.Scope scope)=>Isolate.current,
'dart:isolate@Isolate@packageConfig': (m.Scope scope)=>Isolate.packageConfig,
'dart:isolate@Isolate@errors': (m.Scope scope, Isolate target)=>target.errors,
'dart:isolate@Isolate@': (m.Scope scope)=>Isolate,
'dart:isolate@Isolate@run': (m.Scope scope)=>( computation, { debugName}){
FutureOr<R> computationProxy<R>() async{
return await engine.callFunctionPointerAsync(scope, computation!,[], {});
}

return Isolate.run(computationProxy, debugName:debugName);
},
'dart:isolate@Isolate@resolvePackageUri': (m.Scope scope)=>Isolate.resolvePackageUri,
'dart:isolate@Isolate@spawn': (m.Scope scope)=>( entryPoint,  message, { debugName,  errorsAreFatal,  onError,  onExit,  paused}){
void entryPointProxy<T>( message) {
 engine.callFunctionPointer(scope, entryPoint!,[message], {});
}

return Isolate.spawn(entryPointProxy, message, debugName:debugName, errorsAreFatal:errorsAreFatal ?? true, onError:onError, onExit:onExit, paused:paused ?? false);
},
'dart:isolate@Isolate@spawnUri': (m.Scope scope)=>Isolate.spawnUri,
'dart:isolate@Isolate@pause': (m.Scope scope, Isolate target)=>target.pause,
'dart:isolate@Isolate@resume': (m.Scope scope, Isolate target)=>target.resume,
'dart:isolate@Isolate@addOnExitListener': (m.Scope scope, Isolate target)=>target.addOnExitListener,
'dart:isolate@Isolate@removeOnExitListener': (m.Scope scope, Isolate target)=>target.removeOnExitListener,
'dart:isolate@Isolate@setErrorsFatal': (m.Scope scope, Isolate target)=>target.setErrorsFatal,
'dart:isolate@Isolate@kill': (m.Scope scope, Isolate target)=>target.kill,
'dart:isolate@Isolate@ping': (m.Scope scope, Isolate target)=>target.ping,
'dart:isolate@Isolate@addErrorListener': (m.Scope scope, Isolate target)=>target.addErrorListener,
'dart:isolate@Isolate@removeErrorListener': (m.Scope scope, Isolate target)=>target.removeErrorListener,
'dart:isolate@Isolate@exit': (m.Scope scope)=>Isolate.exit,
'dart:isolate@SendPort@#as': (m.Scope scope, target)=>()=>target as SendPort,
'dart:isolate@SendPort@#is': (m.Scope scope, target)=>()=>target is SendPort,
'dart:isolate@SendPort@hashCode': (m.Scope scope, SendPort target)=>target.hashCode,
'dart:isolate@SendPort@send': (m.Scope scope, SendPort target)=>target.send,
'dart:isolate@SendPort@==': (m.Scope scope, SendPort target)=>(other)=> target == other,
'dart:isolate@ReceivePort@#as': (m.Scope scope, target)=>()=>target as ReceivePort,
'dart:isolate@ReceivePort@#is': (m.Scope scope, target)=>()=>target is ReceivePort,
'dart:isolate@ReceivePort@sendPort': (m.Scope scope, ReceivePort target)=>target.sendPort,
'dart:isolate@ReceivePort@': (m.Scope scope)=>([String? debugName]){
if(debugName == null){
return ReceivePort();
}
return ReceivePort(debugName!);
},
'dart:isolate@ReceivePort@fromRawReceivePort': (m.Scope scope)=>ReceivePort.fromRawReceivePort,
'dart:isolate@ReceivePort@listen': (m.Scope scope, ReceivePort target)=>( onData, { cancelOnError,  onDone,  onError}){
void onDataProxy( message) {
 engine.callFunctionPointer(scope, onData!,[message], {});
}

void onDoneProxy() {
 engine.callFunctionPointer(scope, onDone!,[], {});
}

return target.listen(onDataProxy, cancelOnError:cancelOnError, onDone:onDone == null ? null :onDoneProxy, onError:onError);
},
'dart:isolate@ReceivePort@close': (m.Scope scope, ReceivePort target)=>target.close,
'dart:isolate@RawReceivePort@#as': (m.Scope scope, target)=>()=>target as RawReceivePort,
'dart:isolate@RawReceivePort@#is': (m.Scope scope, target)=>()=>target is RawReceivePort,
'dart:isolate@RawReceivePort@handler:set': (m.Scope scope, RawReceivePort target)=>(other)=>target.handler=other,
'dart:isolate@RawReceivePort@sendPort': (m.Scope scope, RawReceivePort target)=>target.sendPort,
'dart:isolate@RawReceivePort@': (m.Scope scope)=>([Function? handler, String? debugName]){
if(handler == null && debugName == null){
return RawReceivePort();
}
if(debugName == null){
return RawReceivePort(handler!);
}
return RawReceivePort(handler!, debugName!);
},
'dart:isolate@RawReceivePort@close': (m.Scope scope, RawReceivePort target)=>target.close,
'dart:isolate@RemoteError@#as': (m.Scope scope, target)=>()=>target as RemoteError,
'dart:isolate@RemoteError@#is': (m.Scope scope, target)=>()=>target is RemoteError,
'dart:isolate@RemoteError@stackTrace': (m.Scope scope, RemoteError target)=>target.stackTrace,
'dart:isolate@RemoteError@': (m.Scope scope)=>RemoteError,
'dart:isolate@RemoteError@toString': (m.Scope scope, RemoteError target)=>target.toString,
'dart:isolate@TransferableTypedData@#as': (m.Scope scope, target)=>()=>target as TransferableTypedData,
'dart:isolate@TransferableTypedData@#is': (m.Scope scope, target)=>()=>target is TransferableTypedData,
'dart:isolate@TransferableTypedData@fromList': (m.Scope scope)=>TransferableTypedData.fromList,
'dart:isolate@TransferableTypedData@materialize': (m.Scope scope, TransferableTypedData target)=>target.materialize,
'dart:isolate@Capability@#as': (m.Scope scope, target)=>()=>target as Capability,
'dart:isolate@Capability@#is': (m.Scope scope, target)=>()=>target is Capability,
'dart:isolate@Capability@': (m.Scope scope)=>(){
return Capability();
},

};
}