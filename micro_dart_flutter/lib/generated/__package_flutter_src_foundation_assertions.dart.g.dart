import 'package:flutter/src/foundation/assertions.dart';
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/basic_types.dart';
import 'package:flutter/src/foundation/constants.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/print.dart';
import 'package:flutter/src/foundation/stack_frame.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/assertions.dart@PartialStackFrame@#as': (m.Scope scope, target)=>()=>target as PartialStackFrame,
'package:flutter/src/foundation/assertions.dart@PartialStackFrame@#is': (m.Scope scope, target)=>()=>target is PartialStackFrame,
'package:flutter/src/foundation/assertions.dart@PartialStackFrame@asynchronousSuspension': (m.Scope scope)=>PartialStackFrame.asynchronousSuspension,
'package:flutter/src/foundation/assertions.dart@PartialStackFrame@package': (m.Scope scope, PartialStackFrame target)=>target.package,
'package:flutter/src/foundation/assertions.dart@PartialStackFrame@className': (m.Scope scope, PartialStackFrame target)=>target.className,
'package:flutter/src/foundation/assertions.dart@PartialStackFrame@method': (m.Scope scope, PartialStackFrame target)=>target.method,
'package:flutter/src/foundation/assertions.dart@PartialStackFrame@': (m.Scope scope)=>({ className,  method,  package}){
return PartialStackFrame(className:className, method:method, package:package);
},
'package:flutter/src/foundation/assertions.dart@PartialStackFrame@matches': (m.Scope scope, PartialStackFrame target)=>target.matches,
'package:flutter/src/foundation/assertions.dart@StackFilter@#as': (m.Scope scope, target)=>()=>target as StackFilter,
'package:flutter/src/foundation/assertions.dart@StackFilter@#is': (m.Scope scope, target)=>()=>target is StackFilter,
'package:flutter/src/foundation/assertions.dart@StackFilter@filter': (m.Scope scope, StackFilter target)=>target.filter,
'package:flutter/src/foundation/assertions.dart@RepetitiveStackFrameFilter@#as': (m.Scope scope, target)=>()=>target as RepetitiveStackFrameFilter,
'package:flutter/src/foundation/assertions.dart@RepetitiveStackFrameFilter@#is': (m.Scope scope, target)=>()=>target is RepetitiveStackFrameFilter,
'package:flutter/src/foundation/assertions.dart@RepetitiveStackFrameFilter@frames': (m.Scope scope, RepetitiveStackFrameFilter target)=>target.frames,
'package:flutter/src/foundation/assertions.dart@RepetitiveStackFrameFilter@replacement': (m.Scope scope, RepetitiveStackFrameFilter target)=>target.replacement,
'package:flutter/src/foundation/assertions.dart@RepetitiveStackFrameFilter@numFrames': (m.Scope scope, RepetitiveStackFrameFilter target)=>target.numFrames,
'package:flutter/src/foundation/assertions.dart@RepetitiveStackFrameFilter@': (m.Scope scope)=>({ frames,  replacement}){
return RepetitiveStackFrameFilter(frames:frames, replacement:replacement);
},
'package:flutter/src/foundation/assertions.dart@RepetitiveStackFrameFilter@filter': (m.Scope scope, RepetitiveStackFrameFilter target)=>target.filter,
'package:flutter/src/foundation/assertions.dart@ErrorDescription@#as': (m.Scope scope, target)=>()=>target as ErrorDescription,
'package:flutter/src/foundation/assertions.dart@ErrorDescription@#is': (m.Scope scope, target)=>()=>target is ErrorDescription,
'package:flutter/src/foundation/assertions.dart@ErrorDescription@': (m.Scope scope)=>( message){
return ErrorDescription(message);
},
'package:flutter/src/foundation/assertions.dart@ErrorSummary@#as': (m.Scope scope, target)=>()=>target as ErrorSummary,
'package:flutter/src/foundation/assertions.dart@ErrorSummary@#is': (m.Scope scope, target)=>()=>target is ErrorSummary,
'package:flutter/src/foundation/assertions.dart@ErrorSummary@': (m.Scope scope)=>( message){
return ErrorSummary(message);
},
'package:flutter/src/foundation/assertions.dart@ErrorHint@#as': (m.Scope scope, target)=>()=>target as ErrorHint,
'package:flutter/src/foundation/assertions.dart@ErrorHint@#is': (m.Scope scope, target)=>()=>target is ErrorHint,
'package:flutter/src/foundation/assertions.dart@ErrorHint@': (m.Scope scope)=>( message){
return ErrorHint(message);
},
'package:flutter/src/foundation/assertions.dart@ErrorSpacer@#as': (m.Scope scope, target)=>()=>target as ErrorSpacer,
'package:flutter/src/foundation/assertions.dart@ErrorSpacer@#is': (m.Scope scope, target)=>()=>target is ErrorSpacer,
'package:flutter/src/foundation/assertions.dart@ErrorSpacer@': (m.Scope scope)=>(){
return ErrorSpacer();
},
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@#as': (m.Scope scope, target)=>()=>target as FlutterErrorDetails,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@#is': (m.Scope scope, target)=>()=>target is FlutterErrorDetails,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@propertiesTransformers': (m.Scope scope)=>FlutterErrorDetails.propertiesTransformers,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@exception': (m.Scope scope, FlutterErrorDetails target)=>target.exception,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@stack': (m.Scope scope, FlutterErrorDetails target)=>target.stack,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@library': (m.Scope scope, FlutterErrorDetails target)=>target.library,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@context': (m.Scope scope, FlutterErrorDetails target)=>target.context,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@stackFilter': (m.Scope scope, FlutterErrorDetails target)=>target.stackFilter,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@informationCollector': (m.Scope scope, FlutterErrorDetails target)=>target.informationCollector,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@silent': (m.Scope scope, FlutterErrorDetails target)=>target.silent,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@summary': (m.Scope scope, FlutterErrorDetails target)=>target.summary,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@': (m.Scope scope)=>({ context,  exception,  informationCollector,  library,  silent,  stack,  stackFilter}){
Iterable<DiagnosticsNode> informationCollectorProxy() {
return  engine.callFunctionPointer(scope, informationCollector!,[], {});
}

Iterable<String> stackFilterProxy( input) {
return  engine.callFunctionPointer(scope, stackFilter!,[input], {});
}

return FlutterErrorDetails(context:context, exception:exception, informationCollector:informationCollector == null ? null :informationCollectorProxy, library:library ?? 'Flutter framework', silent:silent ?? false, stack:stack, stackFilter:stackFilter == null ? null :stackFilterProxy);
},
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@copyWith': (m.Scope scope, FlutterErrorDetails target)=>({ context,  exception,  informationCollector,  library,  silent,  stack,  stackFilter}){
Iterable<DiagnosticsNode> informationCollectorProxy() {
return  engine.callFunctionPointer(scope, informationCollector!,[], {});
}

Iterable<String> stackFilterProxy( input) {
return  engine.callFunctionPointer(scope, stackFilter!,[input], {});
}

return target.copyWith(context:context, exception:exception, informationCollector:informationCollector == null ? null :informationCollectorProxy, library:library, silent:silent, stack:stack, stackFilter:stackFilter == null ? null :stackFilterProxy);
},
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@exceptionAsString': (m.Scope scope, FlutterErrorDetails target)=>target.exceptionAsString,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@debugFillProperties': (m.Scope scope, FlutterErrorDetails target)=>target.debugFillProperties,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@toStringShort': (m.Scope scope, FlutterErrorDetails target)=>target.toStringShort,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@toString': (m.Scope scope, FlutterErrorDetails target)=>target.toString,
'package:flutter/src/foundation/assertions.dart@FlutterErrorDetails@toDiagnosticsNode': (m.Scope scope, FlutterErrorDetails target)=>target.toDiagnosticsNode,
'package:flutter/src/foundation/assertions.dart@FlutterError@#as': (m.Scope scope, target)=>()=>target as FlutterError,
'package:flutter/src/foundation/assertions.dart@FlutterError@#is': (m.Scope scope, target)=>()=>target is FlutterError,
'package:flutter/src/foundation/assertions.dart@FlutterError@diagnostics': (m.Scope scope, FlutterError target)=>target.diagnostics,
'package:flutter/src/foundation/assertions.dart@FlutterError@onError': (m.Scope scope)=>FlutterError.onError,
'package:flutter/src/foundation/assertions.dart@FlutterError@onError:set': (m.Scope scope)=>(other)=>FlutterError.onError=other,
'package:flutter/src/foundation/assertions.dart@FlutterError@demangleStackTrace': (m.Scope scope)=>FlutterError.demangleStackTrace,
'package:flutter/src/foundation/assertions.dart@FlutterError@demangleStackTrace:set': (m.Scope scope)=>(other)=>FlutterError.demangleStackTrace=other,
'package:flutter/src/foundation/assertions.dart@FlutterError@presentError': (m.Scope scope)=>FlutterError.presentError,
'package:flutter/src/foundation/assertions.dart@FlutterError@presentError:set': (m.Scope scope)=>(other)=>FlutterError.presentError=other,
'package:flutter/src/foundation/assertions.dart@FlutterError@wrapWidth': (m.Scope scope)=>FlutterError.wrapWidth,
'package:flutter/src/foundation/assertions.dart@FlutterError@message': (m.Scope scope, FlutterError target)=>target.message,
'package:flutter/src/foundation/assertions.dart@FlutterError@': (m.Scope scope)=>( message){
return FlutterError(message);
},
'package:flutter/src/foundation/assertions.dart@FlutterError@fromParts': (m.Scope scope)=>FlutterError.fromParts,
'package:flutter/src/foundation/assertions.dart@FlutterError@resetErrorCount': (m.Scope scope)=>FlutterError.resetErrorCount,
'package:flutter/src/foundation/assertions.dart@FlutterError@dumpErrorToConsole': (m.Scope scope)=>FlutterError.dumpErrorToConsole,
'package:flutter/src/foundation/assertions.dart@FlutterError@addDefaultStackFilter': (m.Scope scope)=>FlutterError.addDefaultStackFilter,
'package:flutter/src/foundation/assertions.dart@FlutterError@defaultStackFilter': (m.Scope scope)=>FlutterError.defaultStackFilter,
'package:flutter/src/foundation/assertions.dart@FlutterError@debugFillProperties': (m.Scope scope, FlutterError target)=>target.debugFillProperties,
'package:flutter/src/foundation/assertions.dart@FlutterError@toStringShort': (m.Scope scope, FlutterError target)=>target.toStringShort,
'package:flutter/src/foundation/assertions.dart@FlutterError@toString': (m.Scope scope, FlutterError target)=>target.toString,
'package:flutter/src/foundation/assertions.dart@FlutterError@reportError': (m.Scope scope)=>FlutterError.reportError,
'package:flutter/src/foundation/assertions.dart@DiagnosticsStackTrace@#as': (m.Scope scope, target)=>()=>target as DiagnosticsStackTrace,
'package:flutter/src/foundation/assertions.dart@DiagnosticsStackTrace@#is': (m.Scope scope, target)=>()=>target is DiagnosticsStackTrace,
'package:flutter/src/foundation/assertions.dart@DiagnosticsStackTrace@allowTruncate': (m.Scope scope, DiagnosticsStackTrace target)=>target.allowTruncate,
'package:flutter/src/foundation/assertions.dart@DiagnosticsStackTrace@': (m.Scope scope)=>( name,  stack, { showSeparator,  stackFilter}){
Iterable<String> stackFilterProxy( input) {
return  engine.callFunctionPointer(scope, stackFilter!,[input], {});
}

return DiagnosticsStackTrace(name, stack, showSeparator:showSeparator ?? true, stackFilter:stackFilter == null ? null :stackFilterProxy);
},
'package:flutter/src/foundation/assertions.dart@DiagnosticsStackTrace@singleFrame': (m.Scope scope)=>DiagnosticsStackTrace.singleFrame,
'package:flutter/src/foundation/assertions.dart@@debugPrintStack': (m.Scope scope)=>debugPrintStack,

};
}