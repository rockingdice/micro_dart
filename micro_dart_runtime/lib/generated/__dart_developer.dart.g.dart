import 'dart:developer';
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:isolate' show Isolate,RawReceivePort,SendPort;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'dart:developer@@reachabilityBarrier': (m.Scope scope)=>reachabilityBarrier,
'dart:developer@NativeRuntime@#as': (m.Scope scope, target)=>()=>target as NativeRuntime,
'dart:developer@NativeRuntime@#is': (m.Scope scope, target)=>()=>target is NativeRuntime,
'dart:developer@NativeRuntime@writeHeapSnapshotToFile': (m.Scope scope)=>NativeRuntime.writeHeapSnapshotToFile,
'dart:developer@@debugger': (m.Scope scope)=>debugger,
'dart:developer@@inspect': (m.Scope scope)=>inspect,
'dart:developer@@log': (m.Scope scope)=>log,
'dart:developer@@extensionStreamHasListener': (m.Scope scope)=>extensionStreamHasListener,
'dart:developer@ServiceExtensionResponse@#as': (m.Scope scope, target)=>()=>target as ServiceExtensionResponse,
'dart:developer@ServiceExtensionResponse@#is': (m.Scope scope, target)=>()=>target is ServiceExtensionResponse,
'dart:developer@ServiceExtensionResponse@result': (m.Scope scope, ServiceExtensionResponse target)=>target.result,
'dart:developer@ServiceExtensionResponse@errorCode': (m.Scope scope, ServiceExtensionResponse target)=>target.errorCode,
'dart:developer@ServiceExtensionResponse@errorDetail': (m.Scope scope, ServiceExtensionResponse target)=>target.errorDetail,
'dart:developer@ServiceExtensionResponse@invalidParams': (m.Scope scope)=>ServiceExtensionResponse.invalidParams,
'dart:developer@ServiceExtensionResponse@extensionError': (m.Scope scope)=>ServiceExtensionResponse.extensionError,
'dart:developer@ServiceExtensionResponse@extensionErrorMax': (m.Scope scope)=>ServiceExtensionResponse.extensionErrorMax,
'dart:developer@ServiceExtensionResponse@extensionErrorMin': (m.Scope scope)=>ServiceExtensionResponse.extensionErrorMin,
'dart:developer@ServiceExtensionResponse@result': (m.Scope scope)=>ServiceExtensionResponse.result,
'dart:developer@ServiceExtensionResponse@error': (m.Scope scope)=>ServiceExtensionResponse.error,
'dart:developer@ServiceExtensionResponse@isError': (m.Scope scope, ServiceExtensionResponse target)=>target.isError,
'dart:developer@@registerExtension': (m.Scope scope)=>( method,  handler){
Future<ServiceExtensionResponse> handlerProxy( method,  parameters) async{
return await engine.callFunctionPointerAsync(scope, handler!,[method, parameters], {});
}

registerExtension(method, handlerProxy);
},
'dart:developer@@postEvent': (m.Scope scope)=>postEvent,
'dart:developer@UserTag@#as': (m.Scope scope, target)=>()=>target as UserTag,
'dart:developer@UserTag@#is': (m.Scope scope, target)=>()=>target is UserTag,
'dart:developer@UserTag@maxUserTags': (m.Scope scope)=>UserTag.maxUserTags,
'dart:developer@UserTag@label': (m.Scope scope, UserTag target)=>target.label,
'dart:developer@UserTag@defaultTag': (m.Scope scope)=>UserTag.defaultTag,
'dart:developer@UserTag@': (m.Scope scope)=>UserTag,
'dart:developer@UserTag@makeCurrent': (m.Scope scope, UserTag target)=>target.makeCurrent,
'dart:developer@@getCurrentTag': (m.Scope scope)=>getCurrentTag,
'dart:developer@ServiceProtocolInfo@#as': (m.Scope scope, target)=>()=>target as ServiceProtocolInfo,
'dart:developer@ServiceProtocolInfo@#is': (m.Scope scope, target)=>()=>target is ServiceProtocolInfo,
'dart:developer@ServiceProtocolInfo@majorVersion': (m.Scope scope, ServiceProtocolInfo target)=>target.majorVersion,
'dart:developer@ServiceProtocolInfo@minorVersion': (m.Scope scope, ServiceProtocolInfo target)=>target.minorVersion,
'dart:developer@ServiceProtocolInfo@serverUri': (m.Scope scope, ServiceProtocolInfo target)=>target.serverUri,
'dart:developer@ServiceProtocolInfo@serverWebSocketUri': (m.Scope scope, ServiceProtocolInfo target)=>target.serverWebSocketUri,
'dart:developer@ServiceProtocolInfo@': (m.Scope scope)=>ServiceProtocolInfo,
'dart:developer@ServiceProtocolInfo@toString': (m.Scope scope, ServiceProtocolInfo target)=>target.toString,
'dart:developer@Service@#as': (m.Scope scope, target)=>()=>target as Service,
'dart:developer@Service@#is': (m.Scope scope, target)=>()=>target is Service,
'dart:developer@Service@': (m.Scope scope)=>(){
return Service();
},
'dart:developer@Service@getInfo': (m.Scope scope)=>Service.getInfo,
'dart:developer@Service@controlWebServer': (m.Scope scope)=>Service.controlWebServer,
'dart:developer@Service@getIsolateID': (m.Scope scope)=>Service.getIsolateID,
'dart:developer@Flow@#as': (m.Scope scope, target)=>()=>target as Flow,
'dart:developer@Flow@#is': (m.Scope scope, target)=>()=>target is Flow,
'dart:developer@Flow@id': (m.Scope scope, Flow target)=>target.id,
'dart:developer@Flow@begin': (m.Scope scope)=>Flow.begin,
'dart:developer@Flow@step': (m.Scope scope)=>Flow.step,
'dart:developer@Flow@end': (m.Scope scope)=>Flow.end,
'dart:developer@Timeline@#as': (m.Scope scope, target)=>()=>target as Timeline,
'dart:developer@Timeline@#is': (m.Scope scope, target)=>()=>target is Timeline,
'dart:developer@Timeline@now': (m.Scope scope)=>Timeline.now,
'dart:developer@Timeline@startSync': (m.Scope scope)=>Timeline.startSync,
'dart:developer@Timeline@finishSync': (m.Scope scope)=>Timeline.finishSync,
'dart:developer@Timeline@instantSync': (m.Scope scope)=>Timeline.instantSync,
'dart:developer@Timeline@timeSync': (m.Scope scope)=>( name,  function, { arguments,  flow}){
T functionProxy<T>() {
return  engine.callFunctionPointer(scope, function!,[], {});
}

return Timeline.timeSync(name, functionProxy, arguments:arguments, flow:flow);
},
'dart:developer@TimelineTask@#as': (m.Scope scope, target)=>()=>target as TimelineTask,
'dart:developer@TimelineTask@#is': (m.Scope scope, target)=>()=>target is TimelineTask,
'dart:developer@TimelineTask@': (m.Scope scope)=>({ filterKey,  parent}){
return TimelineTask(filterKey:filterKey, parent:parent);
},
'dart:developer@TimelineTask@withTaskId': (m.Scope scope)=>TimelineTask.withTaskId,
'dart:developer@TimelineTask@start': (m.Scope scope, TimelineTask target)=>target.start,
'dart:developer@TimelineTask@instant': (m.Scope scope, TimelineTask target)=>target.instant,
'dart:developer@TimelineTask@finish': (m.Scope scope, TimelineTask target)=>target.finish,
'dart:developer@TimelineTask@pass': (m.Scope scope, TimelineTask target)=>target.pass,

};
}