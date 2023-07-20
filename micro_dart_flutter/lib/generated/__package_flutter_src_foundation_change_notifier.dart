// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/foundation/change_notifier.dart';
import 'dart:ui' show VoidCallback;
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/memory_allocations.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/foundation/change_notifier.dart',
  {
    'Listenable.merge': _Listenable_merge_$,
    'ChangeNotifier.': _ChangeNotifier__$,
    'ChangeNotifier.debugAssertNotDisposed':
        _ChangeNotifier_debugAssertNotDisposed$,
    'ValueNotifier.': _ValueNotifier__$,
  },
  {},
  {
    'Listenable': m.ClassMirror(
      'Listenable',
      {
        '#as': Listenable_as$,
        '#is': Listenable_is$,
        'addListener': _Listenable_addListener$,
        'removeListener': _Listenable_removeListener$,
      },
      {},
    ),
    'ValueListenable': m.ClassMirror(
      'ValueListenable',
      {
        '#as': ValueListenable_as$,
        '#is': ValueListenable_is$,
        'value': _ValueListenable_value$,
      },
      {},
    ),
    'ChangeNotifier': m.ClassMirror(
      'ChangeNotifier',
      {
        '#as': ChangeNotifier_as$,
        '#is': ChangeNotifier_is$,
        'hasListeners': _ChangeNotifier_hasListeners$,
        'addListener': _ChangeNotifier_addListener$,
        'removeListener': _ChangeNotifier_removeListener$,
        'dispose': _ChangeNotifier_dispose$,
        'notifyListeners': _ChangeNotifier_notifyListeners$,
      },
      {},
    ),
    'ValueNotifier': m.ClassMirror(
      'ValueNotifier',
      {
        '#as': ValueNotifier_as$,
        '#is': ValueNotifier_is$,
        'value': _ValueNotifier_value$,
        'toString': _ValueNotifier_toString$,
      },
      {'value': _ValueNotifier_value_set$},
    ),
  },
);
Function Listenable_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Listenable;
Function Listenable_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Listenable;
Function _Listenable_merge_$(m.Scope scope$) => Listenable.merge;
Function _Listenable_addListener$(
  m.Scope scope$,
  Listenable target$,
) =>
    (m.FunctionPointer listener) {
      void listenerProxy() => scope$.engine.callFunctionPointer(
            scope$,
            listener,
            [],
            {},
          );
      target$.addListener(listenerProxy);
    };
Function _Listenable_removeListener$(
  m.Scope scope$,
  Listenable target$,
) =>
    (m.FunctionPointer listener) {
      void listenerProxy() => scope$.engine.callFunctionPointer(
            scope$,
            listener,
            [],
            {},
          );
      target$.removeListener(listenerProxy);
    };
Function ValueListenable_as$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ValueListenable<T>;
Function ValueListenable_is$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ValueListenable<T>;
Function _ValueListenable_value$<T>(
  m.Scope scope$,
  ValueListenable<T> target$,
) =>
    () {
      return target$.value;
    };
Function ChangeNotifier_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ChangeNotifier;
Function ChangeNotifier_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ChangeNotifier;
Function _ChangeNotifier_hasListeners$(
  m.Scope scope$,
  ChangeNotifier target$,
) =>
    () {
      return target$.hasListeners;
    };
Function _ChangeNotifier__$(m.Scope scope$) => () {
      return ChangeNotifier();
    };
Function _ChangeNotifier_debugAssertNotDisposed$(m.Scope scope$) =>
    ChangeNotifier.debugAssertNotDisposed;
Function _ChangeNotifier_addListener$(
  m.Scope scope$,
  ChangeNotifier target$,
) =>
    (m.FunctionPointer listener) {
      void listenerProxy() => scope$.engine.callFunctionPointer(
            scope$,
            listener,
            [],
            {},
          );
      target$.addListener(listenerProxy);
    };
Function _ChangeNotifier_removeListener$(
  m.Scope scope$,
  ChangeNotifier target$,
) =>
    (m.FunctionPointer listener) {
      void listenerProxy() => scope$.engine.callFunctionPointer(
            scope$,
            listener,
            [],
            {},
          );
      target$.removeListener(listenerProxy);
    };
Function _ChangeNotifier_dispose$(
  m.Scope scope$,
  ChangeNotifier target$,
) =>
    target$.dispose;
Function _ChangeNotifier_notifyListeners$(
  m.Scope scope$,
  ChangeNotifier target$,
) =>
    target$.notifyListeners;
Function ValueNotifier_as$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ValueNotifier<T>;
Function ValueNotifier_is$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ValueNotifier<T>;
Function _ValueNotifier_value$<T>(
  m.Scope scope$,
  ValueNotifier<T> target$,
) =>
    () {
      return target$.value;
    };
void _ValueNotifier_value_set$<T>(
  m.Scope scope$,
  ValueNotifier target$,
) =>
    (dynamic other$) {
      target$.value = other$;
    };
Function _ValueNotifier__$(m.Scope scope$) => (dynamic _value) {
      return ValueNotifier(_value);
    };
Function _ValueNotifier_toString$<T>(
  m.Scope scope$,
  ValueNotifier<T> target$,
) =>
    target$.toString;
