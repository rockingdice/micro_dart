// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/foundation/assertions.dart';
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/basic_types.dart';
import 'package:flutter/src/foundation/constants.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/print.dart';
import 'package:flutter/src/foundation/stack_frame.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/foundation/assertions.dart',
  {
    'PartialStackFrame.asynchronousSuspension':
        _PartialStackFrame_asynchronousSuspension$,
    'PartialStackFrame.': _PartialStackFrame__$,
    'RepetitiveStackFrameFilter.': _RepetitiveStackFrameFilter__$,
    'ErrorDescription.': _ErrorDescription__$,
    'ErrorSummary.': _ErrorSummary__$,
    'ErrorHint.': _ErrorHint__$,
    'ErrorSpacer.': _ErrorSpacer__$,
    'FlutterErrorDetails.propertiesTransformers':
        _FlutterErrorDetails_propertiesTransformers$,
    'FlutterErrorDetails.': _FlutterErrorDetails__$,
    'FlutterError.onError': _FlutterError_onError$,
    'FlutterError.demangleStackTrace': _FlutterError_demangleStackTrace$,
    'FlutterError.presentError': _FlutterError_presentError$,
    'FlutterError.wrapWidth': _FlutterError_wrapWidth$,
    'FlutterError.': _FlutterError__$,
    'FlutterError.fromParts': _FlutterError_fromParts_$,
    'FlutterError.resetErrorCount': _FlutterError_resetErrorCount$,
    'FlutterError.dumpErrorToConsole': _FlutterError_dumpErrorToConsole$,
    'FlutterError.addDefaultStackFilter': _FlutterError_addDefaultStackFilter$,
    'FlutterError.defaultStackFilter': _FlutterError_defaultStackFilter$,
    'FlutterError.reportError': _FlutterError_reportError$,
    'DiagnosticsStackTrace.': _DiagnosticsStackTrace__$,
    'DiagnosticsStackTrace.singleFrame': _DiagnosticsStackTrace_singleFrame_$,
    'debugPrintStack': _debugPrintStack$,
  },
  {
    'FlutterError.onError': _FlutterError_onError_set$,
    'FlutterError.demangleStackTrace': _FlutterError_demangleStackTrace_set$,
    'FlutterError.presentError': _FlutterError_presentError_set$,
  },
  {
    'PartialStackFrame': m.ClassMirror(
      'PartialStackFrame',
      {
        '#as': PartialStackFrame_as$,
        '#is': PartialStackFrame_is$,
        'package': _PartialStackFrame_package$,
        'className': _PartialStackFrame_className$,
        'method': _PartialStackFrame_method$,
        'matches': _PartialStackFrame_matches$,
      },
      {},
    ),
    'StackFilter': m.ClassMirror(
      'StackFilter',
      {
        '#as': StackFilter_as$,
        '#is': StackFilter_is$,
        'filter': _StackFilter_filter$,
      },
      {},
    ),
    'RepetitiveStackFrameFilter': m.ClassMirror(
      'RepetitiveStackFrameFilter',
      {
        '#as': RepetitiveStackFrameFilter_as$,
        '#is': RepetitiveStackFrameFilter_is$,
        'frames': _RepetitiveStackFrameFilter_frames$,
        'replacement': _RepetitiveStackFrameFilter_replacement$,
        'numFrames': _RepetitiveStackFrameFilter_numFrames$,
        'filter': _RepetitiveStackFrameFilter_filter$,
      },
      {},
    ),
    'ErrorDescription': m.ClassMirror(
      'ErrorDescription',
      {
        '#as': ErrorDescription_as$,
        '#is': ErrorDescription_is$,
      },
      {},
    ),
    'ErrorSummary': m.ClassMirror(
      'ErrorSummary',
      {
        '#as': ErrorSummary_as$,
        '#is': ErrorSummary_is$,
      },
      {},
    ),
    'ErrorHint': m.ClassMirror(
      'ErrorHint',
      {
        '#as': ErrorHint_as$,
        '#is': ErrorHint_is$,
      },
      {},
    ),
    'ErrorSpacer': m.ClassMirror(
      'ErrorSpacer',
      {
        '#as': ErrorSpacer_as$,
        '#is': ErrorSpacer_is$,
      },
      {},
    ),
    'FlutterErrorDetails': m.ClassMirror(
      'FlutterErrorDetails',
      {
        '#as': FlutterErrorDetails_as$,
        '#is': FlutterErrorDetails_is$,
        'exception': _FlutterErrorDetails_exception$,
        'stack': _FlutterErrorDetails_stack$,
        'library': _FlutterErrorDetails_library$,
        'context': _FlutterErrorDetails_context$,
        'stackFilter': _FlutterErrorDetails_stackFilter$,
        'informationCollector': _FlutterErrorDetails_informationCollector$,
        'silent': _FlutterErrorDetails_silent$,
        'summary': _FlutterErrorDetails_summary$,
        'copyWith': _FlutterErrorDetails_copyWith$,
        'exceptionAsString': _FlutterErrorDetails_exceptionAsString$,
        'debugFillProperties': _FlutterErrorDetails_debugFillProperties$,
        'toStringShort': _FlutterErrorDetails_toStringShort$,
        'toString': _FlutterErrorDetails_toString$,
        'toDiagnosticsNode': _FlutterErrorDetails_toDiagnosticsNode$,
      },
      {},
    ),
    'FlutterError': m.ClassMirror(
      'FlutterError',
      {
        '#as': FlutterError_as$,
        '#is': FlutterError_is$,
        'diagnostics': _FlutterError_diagnostics$,
        'message': _FlutterError_message$,
        'debugFillProperties': _FlutterError_debugFillProperties$,
        'toStringShort': _FlutterError_toStringShort$,
        'toString': _FlutterError_toString$,
      },
      {},
    ),
    'DiagnosticsStackTrace': m.ClassMirror(
      'DiagnosticsStackTrace',
      {
        '#as': DiagnosticsStackTrace_as$,
        '#is': DiagnosticsStackTrace_is$,
        'allowTruncate': _DiagnosticsStackTrace_allowTruncate$,
      },
      {},
    ),
  },
);
Function PartialStackFrame_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as PartialStackFrame;
Function PartialStackFrame_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is PartialStackFrame;
Function _PartialStackFrame_asynchronousSuspension$(m.Scope scope$) =>
    () => PartialStackFrame.asynchronousSuspension;
Function _PartialStackFrame_package$(
  m.Scope scope$,
  PartialStackFrame target$,
) =>
    () {
      return target$.package;
    };
Function _PartialStackFrame_className$(
  m.Scope scope$,
  PartialStackFrame target$,
) =>
    () {
      return target$.className;
    };
Function _PartialStackFrame_method$(
  m.Scope scope$,
  PartialStackFrame target$,
) =>
    () {
      return target$.method;
    };
Function _PartialStackFrame__$(m.Scope scope$) => ({
      required Pattern package,
      required String className,
      required String method,
    }) {
      return PartialStackFrame(
        className: className,
        method: method,
        package: package,
      );
    };
Function _PartialStackFrame_matches$(
  m.Scope scope$,
  PartialStackFrame target$,
) =>
    target$.matches;
Function StackFilter_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as StackFilter;
Function StackFilter_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is StackFilter;
Function _StackFilter_filter$(
  m.Scope scope$,
  StackFilter target$,
) =>
    target$.filter;
Function RepetitiveStackFrameFilter_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as RepetitiveStackFrameFilter;
Function RepetitiveStackFrameFilter_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is RepetitiveStackFrameFilter;
Function _RepetitiveStackFrameFilter_frames$(
  m.Scope scope$,
  RepetitiveStackFrameFilter target$,
) =>
    () {
      return target$.frames;
    };
Function _RepetitiveStackFrameFilter_replacement$(
  m.Scope scope$,
  RepetitiveStackFrameFilter target$,
) =>
    () {
      return target$.replacement;
    };
Function _RepetitiveStackFrameFilter_numFrames$(
  m.Scope scope$,
  RepetitiveStackFrameFilter target$,
) =>
    () {
      return target$.numFrames;
    };
Function _RepetitiveStackFrameFilter__$(m.Scope scope$) => ({
      required List frames,
      required String replacement,
    }) {
      return RepetitiveStackFrameFilter(
        frames: List.from(frames),
        replacement: replacement,
      );
    };
Function _RepetitiveStackFrameFilter_filter$(
  m.Scope scope$,
  RepetitiveStackFrameFilter target$,
) =>
    target$.filter;
Function ErrorDescription_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ErrorDescription;
Function ErrorDescription_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ErrorDescription;
Function _ErrorDescription__$(m.Scope scope$) => (String message) {
      return ErrorDescription(message);
    };
Function ErrorSummary_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ErrorSummary;
Function ErrorSummary_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ErrorSummary;
Function _ErrorSummary__$(m.Scope scope$) => (String message) {
      return ErrorSummary(message);
    };
Function ErrorHint_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ErrorHint;
Function ErrorHint_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ErrorHint;
Function _ErrorHint__$(m.Scope scope$) => (String message) {
      return ErrorHint(message);
    };
Function ErrorSpacer_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ErrorSpacer;
Function ErrorSpacer_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ErrorSpacer;
Function _ErrorSpacer__$(m.Scope scope$) => () {
      return ErrorSpacer();
    };
Function FlutterErrorDetails_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as FlutterErrorDetails;
Function FlutterErrorDetails_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is FlutterErrorDetails;
Function _FlutterErrorDetails_propertiesTransformers$(m.Scope scope$) =>
    () => FlutterErrorDetails.propertiesTransformers;
Function _FlutterErrorDetails_exception$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    () {
      return target$.exception;
    };
Function _FlutterErrorDetails_stack$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    () {
      return target$.stack;
    };
Function _FlutterErrorDetails_library$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    () {
      return target$.library;
    };
Function _FlutterErrorDetails_context$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    () {
      return target$.context;
    };
Function _FlutterErrorDetails_stackFilter$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    () {
      return target$.stackFilter;
    };
Function _FlutterErrorDetails_informationCollector$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    () {
      return target$.informationCollector;
    };
Function _FlutterErrorDetails_silent$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    () {
      return target$.silent;
    };
Function _FlutterErrorDetails_summary$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    () {
      return target$.summary;
    };
Function _FlutterErrorDetails__$(m.Scope scope$) => ({
      required Object exception,
      StackTrace? stack,
      String? library,
      DiagnosticsNode? context,
      m.FunctionPointer? stackFilter,
      m.FunctionPointer? informationCollector,
      bool? silent,
    }) {
      Iterable<DiagnosticsNode> informationCollectorProxy() =>
          scope$.engine.callFunctionPointer(
            scope$,
            informationCollector!,
            [],
            {},
          );
      Iterable<String> stackFilterProxy(Iterable stackFilter_input$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            stackFilter!,
            [stackFilter_input$],
            {},
          );
      return FlutterErrorDetails(
        context: context,
        exception: exception,
        informationCollector:
            informationCollector == null ? null : informationCollectorProxy,
        library: library ?? 'Flutter framework',
        silent: silent ?? false,
        stack: stack,
        stackFilter: stackFilter == null ? null : stackFilterProxy,
      );
    };
Function _FlutterErrorDetails_copyWith$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    ({
      DiagnosticsNode? context,
      Object? exception,
      m.FunctionPointer? informationCollector,
      String? library,
      bool? silent,
      StackTrace? stack,
      m.FunctionPointer? stackFilter,
    }) {
      Iterable<DiagnosticsNode> informationCollectorProxy() =>
          scope$.engine.callFunctionPointer(
            scope$,
            informationCollector!,
            [],
            {},
          );
      Iterable<String> stackFilterProxy(Iterable stackFilter_input$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            stackFilter!,
            [stackFilter_input$],
            {},
          );
      return target$.copyWith(
        context: context,
        exception: exception,
        informationCollector:
            informationCollector == null ? null : informationCollectorProxy,
        library: library,
        silent: silent,
        stack: stack,
        stackFilter: stackFilter == null ? null : stackFilterProxy,
      );
    };
Function _FlutterErrorDetails_exceptionAsString$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    target$.exceptionAsString;
Function _FlutterErrorDetails_debugFillProperties$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    target$.debugFillProperties;
Function _FlutterErrorDetails_toStringShort$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    target$.toStringShort;
Function _FlutterErrorDetails_toString$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    target$.toString;
Function _FlutterErrorDetails_toDiagnosticsNode$(
  m.Scope scope$,
  FlutterErrorDetails target$,
) =>
    target$.toDiagnosticsNode;
Function FlutterError_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as FlutterError;
Function FlutterError_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is FlutterError;
Function _FlutterError_diagnostics$(
  m.Scope scope$,
  FlutterError target$,
) =>
    () {
      return target$.diagnostics;
    };
Function _FlutterError_onError$(m.Scope scope$) => () => FlutterError.onError;
Function _FlutterError_onError_set$(m.Scope scope$) =>
    (m.FunctionPointer? _onError) {
      void _onErrorProxy(FlutterErrorDetails _onError_details$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            _onError!,
            [_onError_details$],
            {},
          );
      FlutterError.onError = (_onError == null ? null : _onErrorProxy);
    };
Function _FlutterError_demangleStackTrace$(m.Scope scope$) =>
    () => FlutterError.demangleStackTrace;
Function _FlutterError_demangleStackTrace_set$(m.Scope scope$) =>
    (m.FunctionPointer _demangleStackTrace) {
      StackTrace _demangleStackTraceProxy(
              StackTrace _demangleStackTrace_details$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            _demangleStackTrace,
            [_demangleStackTrace_details$],
            {},
          );
      FlutterError.demangleStackTrace = (_demangleStackTraceProxy);
    };
Function _FlutterError_presentError$(m.Scope scope$) =>
    () => FlutterError.presentError;
Function _FlutterError_presentError_set$(m.Scope scope$) =>
    (m.FunctionPointer _presentError) {
      void _presentErrorProxy(FlutterErrorDetails _presentError_details$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            _presentError,
            [_presentError_details$],
            {},
          );
      FlutterError.presentError = (_presentErrorProxy);
    };
Function _FlutterError_wrapWidth$(m.Scope scope$) =>
    () => FlutterError.wrapWidth;
Function _FlutterError_message$(
  m.Scope scope$,
  FlutterError target$,
) =>
    () {
      return target$.message;
    };
Function _FlutterError__$(m.Scope scope$) => (String message) {
      return FlutterError(message);
    };
Function _FlutterError_fromParts_$(m.Scope scope$) => FlutterError.fromParts;
Function _FlutterError_resetErrorCount$(m.Scope scope$) =>
    FlutterError.resetErrorCount;
Function _FlutterError_dumpErrorToConsole$(m.Scope scope$) =>
    FlutterError.dumpErrorToConsole;
Function _FlutterError_addDefaultStackFilter$(m.Scope scope$) =>
    FlutterError.addDefaultStackFilter;
Function _FlutterError_defaultStackFilter$(m.Scope scope$) =>
    FlutterError.defaultStackFilter;
Function _FlutterError_debugFillProperties$(
  m.Scope scope$,
  FlutterError target$,
) =>
    target$.debugFillProperties;
Function _FlutterError_toStringShort$(
  m.Scope scope$,
  FlutterError target$,
) =>
    target$.toStringShort;
Function _FlutterError_toString$(
  m.Scope scope$,
  FlutterError target$,
) =>
    target$.toString;
Function _FlutterError_reportError$(m.Scope scope$) => FlutterError.reportError;
Function DiagnosticsStackTrace_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as DiagnosticsStackTrace;
Function DiagnosticsStackTrace_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is DiagnosticsStackTrace;
Function _DiagnosticsStackTrace_allowTruncate$(
  m.Scope scope$,
  DiagnosticsStackTrace target$,
) =>
    () {
      return target$.allowTruncate;
    };
Function _DiagnosticsStackTrace__$(m.Scope scope$) => (
      String name,
      StackTrace? stack, {
      m.FunctionPointer? stackFilter,
      bool? showSeparator,
    }) {
      Iterable<String> stackFilterProxy(Iterable stackFilter_input$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            stackFilter!,
            [stackFilter_input$],
            {},
          );
      return DiagnosticsStackTrace(
        name,
        stack,
        showSeparator: showSeparator ?? true,
        stackFilter: stackFilter == null ? null : stackFilterProxy,
      );
    };
Function _DiagnosticsStackTrace_singleFrame_$(m.Scope scope$) =>
    DiagnosticsStackTrace.singleFrame;
Function _debugPrintStack$(m.Scope scope$) => debugPrintStack;
