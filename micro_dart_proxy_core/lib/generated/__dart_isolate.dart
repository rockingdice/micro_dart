// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'dart:isolate';
import 'dart:async';
import 'dart:typed_data' show ByteBuffer, TypedData, Uint8List;

const libraryMirror = m.LibraryMirror(
  'dart:isolate',
  {
    'IsolateSpawnException.': _IsolateSpawnException__$,
    'Isolate.immediate': _Isolate_immediate$,
    'Isolate.beforeNextEvent': _Isolate_beforeNextEvent$,
    'Isolate.current': _Isolate_current$,
    'Isolate.packageConfig': _Isolate_packageConfig$,
    'Isolate.': _Isolate__$,
    'Isolate.resolvePackageUri': _Isolate_resolvePackageUri$,
    'Isolate.spawnUri': _Isolate_spawnUri$,
    'Isolate.exit': _Isolate_exit$,
    'ReceivePort.': _ReceivePort__$,
    'ReceivePort.fromRawReceivePort': _ReceivePort_fromRawReceivePort_$,
    'RawReceivePort.': _RawReceivePort__$,
    'RemoteError.': _RemoteError__$,
    'TransferableTypedData.fromList': _TransferableTypedData_fromList_$,
    'Capability.': _Capability__$,
  },
  {},
  {
    'IsolateSpawnException': m.ClassMirror(
      'IsolateSpawnException',
      {
        '#as': IsolateSpawnException_as$,
        '#is': IsolateSpawnException_is$,
        'message': _IsolateSpawnException_message$,
        'toString': _IsolateSpawnException_toString$,
      },
      {},
    ),
    'Isolate': m.ClassMirror(
      'Isolate',
      {
        '#as': Isolate_as$,
        '#is': Isolate_is$,
        'controlPort': _Isolate_controlPort$,
        'pauseCapability': _Isolate_pauseCapability$,
        'terminateCapability': _Isolate_terminateCapability$,
        'debugName': _Isolate_debugName$,
        'errors': _Isolate_errors$,
        'run': _Isolate_run$,
        'spawn': _Isolate_spawn$,
        'pause': _Isolate_pause$,
        'resume': _Isolate_resume$,
        'addOnExitListener': _Isolate_addOnExitListener$,
        'removeOnExitListener': _Isolate_removeOnExitListener$,
        'setErrorsFatal': _Isolate_setErrorsFatal$,
        'kill': _Isolate_kill$,
        'ping': _Isolate_ping$,
        'addErrorListener': _Isolate_addErrorListener$,
        'removeErrorListener': _Isolate_removeErrorListener$,
      },
      {},
    ),
    'SendPort': m.ClassMirror(
      'SendPort',
      {
        '#as': SendPort_as$,
        '#is': SendPort_is$,
        'hashCode': _SendPort_hashCode$,
        'send': _SendPort_send$,
        '==': _SendPort_eq$$,
      },
      {},
    ),
    'ReceivePort': m.ClassMirror(
      'ReceivePort',
      {
        '#as': ReceivePort_as$,
        '#is': ReceivePort_is$,
        'sendPort': _ReceivePort_sendPort$,
        'listen': _ReceivePort_listen$,
        'close': _ReceivePort_close$,
      },
      {},
    ),
    'RawReceivePort': m.ClassMirror(
      'RawReceivePort',
      {
        '#as': RawReceivePort_as$,
        '#is': RawReceivePort_is$,
        'sendPort': _RawReceivePort_sendPort$,
        'close': _RawReceivePort_close$,
      },
      {'handler': _RawReceivePort_handler_set$},
    ),
    'RemoteError': m.ClassMirror(
      'RemoteError',
      {
        '#as': RemoteError_as$,
        '#is': RemoteError_is$,
        'stackTrace': _RemoteError_stackTrace$,
        'toString': _RemoteError_toString$,
      },
      {},
    ),
    'TransferableTypedData': m.ClassMirror(
      'TransferableTypedData',
      {
        '#as': TransferableTypedData_as$,
        '#is': TransferableTypedData_is$,
        'materialize': _TransferableTypedData_materialize$,
      },
      {},
    ),
    'Capability': m.ClassMirror(
      'Capability',
      {
        '#as': Capability_as$,
        '#is': Capability_is$,
      },
      {},
    ),
  },
);
Function IsolateSpawnException_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as IsolateSpawnException;
Function IsolateSpawnException_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is IsolateSpawnException;
Function _IsolateSpawnException_message$(
  m.Scope scope$,
  IsolateSpawnException target$,
) =>
    () {
      return target$.message;
    };
Function _IsolateSpawnException__$(m.Scope scope$) => (String message) {
      return IsolateSpawnException(message);
    };
Function _IsolateSpawnException_toString$(
  m.Scope scope$,
  IsolateSpawnException target$,
) =>
    target$.toString;
Function Isolate_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Isolate;
Function Isolate_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Isolate;
Function _Isolate_immediate$(m.Scope scope$) => () => Isolate.immediate;
Function _Isolate_beforeNextEvent$(m.Scope scope$) =>
    () => Isolate.beforeNextEvent;
Function _Isolate_controlPort$(
  m.Scope scope$,
  Isolate target$,
) =>
    () {
      return target$.controlPort;
    };
Function _Isolate_pauseCapability$(
  m.Scope scope$,
  Isolate target$,
) =>
    () {
      return target$.pauseCapability;
    };
Function _Isolate_terminateCapability$(
  m.Scope scope$,
  Isolate target$,
) =>
    () {
      return target$.terminateCapability;
    };
Function _Isolate_debugName$(
  m.Scope scope$,
  Isolate target$,
) =>
    () {
      return target$.debugName;
    };
Function _Isolate_current$(m.Scope scope$) => () => Isolate.current;
Function _Isolate_packageConfig$(m.Scope scope$) => () => Isolate.packageConfig;
Function _Isolate_errors$(
  m.Scope scope$,
  Isolate target$,
) =>
    () {
      return target$.errors;
    };
Function _Isolate__$(m.Scope scope$) => (
      SendPort controlPort, {
      Capability? pauseCapability,
      Capability? terminateCapability,
    }) {
      return Isolate(
        controlPort,
        pauseCapability: pauseCapability,
        terminateCapability: terminateCapability,
      );
    };
Function _Isolate_run$(m.Scope scope$) => (
      m.FunctionPointer computation, {
      String? debugName,
    }) {
      FutureOr computationProxy() async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            computation,
            [],
            {},
          );
      return Isolate.run(
        computationProxy,
        debugName: debugName,
      );
    };
Function _Isolate_resolvePackageUri$(m.Scope scope$) =>
    Isolate.resolvePackageUri;
Function _Isolate_spawn$(m.Scope scope$) => (
      m.FunctionPointer entryPoint,
      dynamic message, {
      bool? paused,
      bool? errorsAreFatal,
      SendPort? onExit,
      SendPort? onError,
      String? debugName,
    }) {
      void entryPointProxy(dynamic entryPoint_message$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            entryPoint,
            [entryPoint_message$],
            {},
          );
      return Isolate.spawn(
        entryPointProxy,
        message,
        debugName: debugName,
        errorsAreFatal: errorsAreFatal ?? true,
        onError: onError,
        onExit: onExit,
        paused: paused ?? false,
      );
    };
Function _Isolate_spawnUri$(m.Scope scope$) => Isolate.spawnUri;
Function _Isolate_pause$(
  m.Scope scope$,
  Isolate target$,
) =>
    target$.pause;
Function _Isolate_resume$(
  m.Scope scope$,
  Isolate target$,
) =>
    target$.resume;
Function _Isolate_addOnExitListener$(
  m.Scope scope$,
  Isolate target$,
) =>
    target$.addOnExitListener;
Function _Isolate_removeOnExitListener$(
  m.Scope scope$,
  Isolate target$,
) =>
    target$.removeOnExitListener;
Function _Isolate_setErrorsFatal$(
  m.Scope scope$,
  Isolate target$,
) =>
    target$.setErrorsFatal;
Function _Isolate_kill$(
  m.Scope scope$,
  Isolate target$,
) =>
    target$.kill;
Function _Isolate_ping$(
  m.Scope scope$,
  Isolate target$,
) =>
    target$.ping;
Function _Isolate_addErrorListener$(
  m.Scope scope$,
  Isolate target$,
) =>
    target$.addErrorListener;
Function _Isolate_removeErrorListener$(
  m.Scope scope$,
  Isolate target$,
) =>
    target$.removeErrorListener;
Function _Isolate_exit$(m.Scope scope$) => Isolate.exit;
Function SendPort_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as SendPort;
Function SendPort_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is SendPort;
Function _SendPort_hashCode$(
  m.Scope scope$,
  SendPort target$,
) =>
    () {
      return target$.hashCode;
    };
Function _SendPort_send$(
  m.Scope scope$,
  SendPort target$,
) =>
    target$.send;
Function _SendPort_eq$$(
  m.Scope scope$,
  SendPort target$,
) =>
    (Object other$) => target$ == other$;
Function ReceivePort_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ReceivePort;
Function ReceivePort_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ReceivePort;
Function _ReceivePort_sendPort$(
  m.Scope scope$,
  ReceivePort target$,
) =>
    () {
      return target$.sendPort;
    };
Function _ReceivePort__$(m.Scope scope$) => ([String? debugName]) {
      if (debugName == null) {
        return ReceivePort();
      }
      return ReceivePort(debugName!);
    };
Function _ReceivePort_fromRawReceivePort_$(m.Scope scope$) =>
    ReceivePort.fromRawReceivePort;
Function _ReceivePort_listen$(
  m.Scope scope$,
  ReceivePort target$,
) =>
    (
      m.FunctionPointer? onData, {
      Function? onError,
      m.FunctionPointer? onDone,
      bool? cancelOnError,
    }) {
      void onDataProxy(dynamic onData_message$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            onData!,
            [onData_message$],
            {},
          );
      void onDoneProxy() => scope$.engine.callFunctionPointer(
            scope$,
            onDone!,
            [],
            {},
          );
      return target$.listen(
        onData == null ? null : onDataProxy,
        cancelOnError: cancelOnError,
        onDone: onDone == null ? null : onDoneProxy,
        onError: onError,
      );
    };
Function _ReceivePort_close$(
  m.Scope scope$,
  ReceivePort target$,
) =>
    target$.close;
Function RawReceivePort_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as RawReceivePort;
Function RawReceivePort_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is RawReceivePort;
void _RawReceivePort_handler_set$(
  m.Scope scope$,
  RawReceivePort target$,
) =>
    (dynamic other$) {
      target$.handler = other$;
    };
Function _RawReceivePort_sendPort$(
  m.Scope scope$,
  RawReceivePort target$,
) =>
    () {
      return target$.sendPort;
    };
Function _RawReceivePort__$(m.Scope scope$) => ([
      Function? handler,
      String? debugName,
    ]) {
      if (handler == null && debugName == null) {
        return RawReceivePort();
      }
      if (debugName == null) {
        return RawReceivePort(handler!);
      }
      return RawReceivePort(
        handler!,
        debugName!,
      );
    };
Function _RawReceivePort_close$(
  m.Scope scope$,
  RawReceivePort target$,
) =>
    target$.close;
Function RemoteError_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as RemoteError;
Function RemoteError_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is RemoteError;
Function _RemoteError_stackTrace$(
  m.Scope scope$,
  RemoteError target$,
) =>
    () {
      return target$.stackTrace;
    };
Function _RemoteError__$(m.Scope scope$) => (
      String description,
      String stackDescription,
    ) {
      return RemoteError(
        description,
        stackDescription,
      );
    };
Function _RemoteError_toString$(
  m.Scope scope$,
  RemoteError target$,
) =>
    target$.toString;
Function TransferableTypedData_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as TransferableTypedData;
Function TransferableTypedData_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is TransferableTypedData;
Function _TransferableTypedData_fromList_$(m.Scope scope$) =>
    TransferableTypedData.fromList;
Function _TransferableTypedData_materialize$(
  m.Scope scope$,
  TransferableTypedData target$,
) =>
    target$.materialize;
Function Capability_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Capability;
Function Capability_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Capability;
Function _Capability__$(m.Scope scope$) => () {
      return Capability();
    };
