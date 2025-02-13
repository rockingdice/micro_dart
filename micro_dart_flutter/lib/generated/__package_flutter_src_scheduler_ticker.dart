// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/scheduler/ticker.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/scheduler/binding.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/scheduler/ticker.dart',
  {
    'Ticker.': _Ticker__$,
    'TickerFuture.complete': _TickerFuture_complete_$,
    'TickerCanceled.': _TickerCanceled__$,
  },
  {},
  {
    'TickerProvider': m.ClassMirror(
      'TickerProvider',
      {
        '#as': TickerProvider_as$,
        '#is': TickerProvider_is$,
        'createTicker': _TickerProvider_createTicker$,
      },
      {},
    ),
    'Ticker': m.ClassMirror(
      'Ticker',
      {
        '#as': Ticker_as$,
        '#is': Ticker_is$,
        'debugLabel': _Ticker_debugLabel$,
        'muted': _Ticker_muted$,
        'isTicking': _Ticker_isTicking$,
        'isActive': _Ticker_isActive$,
        'scheduled': _Ticker_scheduled$,
        'shouldScheduleTick': _Ticker_shouldScheduleTick$,
        'start': _Ticker_start$,
        'describeForError': _Ticker_describeForError$,
        'stop': _Ticker_stop$,
        'scheduleTick': _Ticker_scheduleTick$,
        'unscheduleTick': _Ticker_unscheduleTick$,
        'absorbTicker': _Ticker_absorbTicker$,
        'dispose': _Ticker_dispose$,
        'toString': _Ticker_toString$,
      },
      {'muted': _Ticker_muted_set$},
    ),
    'TickerFuture': m.ClassMirror(
      'TickerFuture',
      {
        '#as': TickerFuture_as$,
        '#is': TickerFuture_is$,
        'orCancel': _TickerFuture_orCancel$,
        'whenCompleteOrCancel': _TickerFuture_whenCompleteOrCancel$,
        'asStream': _TickerFuture_asStream$,
        'catchError': _TickerFuture_catchError$,
        'then': _TickerFuture_then$,
        'timeout': _TickerFuture_timeout$,
        'whenComplete': _TickerFuture_whenComplete$,
        'toString': _TickerFuture_toString$,
      },
      {},
    ),
    'TickerCanceled': m.ClassMirror(
      'TickerCanceled',
      {
        '#as': TickerCanceled_as$,
        '#is': TickerCanceled_is$,
        'ticker': _TickerCanceled_ticker$,
        'toString': _TickerCanceled_toString$,
      },
      {},
    ),
  },
);
Function TickerProvider_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as TickerProvider;
Function TickerProvider_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is TickerProvider;
Function _TickerProvider_createTicker$(
  m.Scope scope$,
  TickerProvider target$,
) =>
    (m.FunctionPointer onTick) {
      void onTickProxy(Duration onTick_elapsed$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            onTick,
            [onTick_elapsed$],
            {},
          );
      return target$.createTicker(onTickProxy);
    };
Function Ticker_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Ticker;
Function Ticker_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Ticker;
Function _Ticker_debugLabel$(
  m.Scope scope$,
  Ticker target$,
) =>
    () {
      return target$.debugLabel;
    };
Function _Ticker_muted$(
  m.Scope scope$,
  Ticker target$,
) =>
    () {
      return target$.muted;
    };
void _Ticker_muted_set$(
  m.Scope scope$,
  Ticker target$,
) =>
    (dynamic other$) {
      target$.muted = other$;
    };
Function _Ticker_isTicking$(
  m.Scope scope$,
  Ticker target$,
) =>
    () {
      return target$.isTicking;
    };
Function _Ticker_isActive$(
  m.Scope scope$,
  Ticker target$,
) =>
    () {
      return target$.isActive;
    };
Function _Ticker_scheduled$(
  m.Scope scope$,
  Ticker target$,
) =>
    () {
      return target$.scheduled;
    };
Function _Ticker_shouldScheduleTick$(
  m.Scope scope$,
  Ticker target$,
) =>
    () {
      return target$.shouldScheduleTick;
    };
Function _Ticker__$(m.Scope scope$) => (
      m.FunctionPointer _onTick, {
      String? debugLabel,
    }) {
      void _onTickProxy(Duration _onTick_elapsed$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            _onTick,
            [_onTick_elapsed$],
            {},
          );
      return Ticker(
        _onTickProxy,
        debugLabel: debugLabel,
      );
    };
Function _Ticker_start$(
  m.Scope scope$,
  Ticker target$,
) =>
    target$.start;
Function _Ticker_describeForError$(
  m.Scope scope$,
  Ticker target$,
) =>
    target$.describeForError;
Function _Ticker_stop$(
  m.Scope scope$,
  Ticker target$,
) =>
    target$.stop;
Function _Ticker_scheduleTick$(
  m.Scope scope$,
  Ticker target$,
) =>
    target$.scheduleTick;
Function _Ticker_unscheduleTick$(
  m.Scope scope$,
  Ticker target$,
) =>
    target$.unscheduleTick;
Function _Ticker_absorbTicker$(
  m.Scope scope$,
  Ticker target$,
) =>
    target$.absorbTicker;
Function _Ticker_dispose$(
  m.Scope scope$,
  Ticker target$,
) =>
    target$.dispose;
Function _Ticker_toString$(
  m.Scope scope$,
  Ticker target$,
) =>
    target$.toString;
Function TickerFuture_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as TickerFuture;
Function TickerFuture_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is TickerFuture;
Function _TickerFuture_orCancel$(
  m.Scope scope$,
  TickerFuture target$,
) =>
    () {
      return target$.orCancel;
    };
Function _TickerFuture_complete_$(m.Scope scope$) => TickerFuture.complete;
Function _TickerFuture_whenCompleteOrCancel$(
  m.Scope scope$,
  TickerFuture target$,
) =>
    (m.FunctionPointer callback) {
      void callbackProxy() => scope$.engine.callFunctionPointer(
            scope$,
            callback,
            [],
            {},
          );
      target$.whenCompleteOrCancel(callbackProxy);
    };
Function _TickerFuture_asStream$(
  m.Scope scope$,
  TickerFuture target$,
) =>
    target$.asStream;
Function _TickerFuture_catchError$(
  m.Scope scope$,
  TickerFuture target$,
) =>
    (
      Function onError, {
      m.FunctionPointer? test,
    }) {
      bool testProxy(Object test_$p0$) => scope$.engine.callFunctionPointer(
            scope$,
            test!,
            [test_$p0$],
            {},
          );
      return target$.catchError(
        onError,
        test: test == null ? null : testProxy,
      );
    };
Function _TickerFuture_then$(
  m.Scope scope$,
  TickerFuture target$,
) =>
    (
      m.FunctionPointer onValue, {
      Function? onError,
    }) {
      FutureOr onValueProxy(dynamic onValue_value$) async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            onValue,
            [onValue_value$],
            {},
          );
      return target$.then(
        onValueProxy,
        onError: onError,
      );
    };
Function _TickerFuture_timeout$(
  m.Scope scope$,
  TickerFuture target$,
) =>
    (
      Duration timeLimit, {
      m.FunctionPointer? onTimeout,
    }) {
      FutureOr<void> onTimeoutProxy() async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            onTimeout!,
            [],
            {},
          );
      return target$.timeout(
        timeLimit,
        onTimeout: onTimeout == null ? null : onTimeoutProxy,
      );
    };
Function _TickerFuture_whenComplete$(
  m.Scope scope$,
  TickerFuture target$,
) =>
    (m.FunctionPointer action) {
      dynamic actionProxy() => scope$.engine.callFunctionPointer(
            scope$,
            action,
            [],
            {},
          );
      return target$.whenComplete(actionProxy);
    };
Function _TickerFuture_toString$(
  m.Scope scope$,
  TickerFuture target$,
) =>
    target$.toString;
Function TickerCanceled_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as TickerCanceled;
Function TickerCanceled_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is TickerCanceled;
Function _TickerCanceled_ticker$(
  m.Scope scope$,
  TickerCanceled target$,
) =>
    () {
      return target$.ticker;
    };
Function _TickerCanceled__$(m.Scope scope$) => ([Ticker? ticker]) {
      if (ticker == null) {
        return TickerCanceled();
      }
      return TickerCanceled(ticker!);
    };
Function _TickerCanceled_toString$(
  m.Scope scope$,
  TickerCanceled target$,
) =>
    target$.toString;
