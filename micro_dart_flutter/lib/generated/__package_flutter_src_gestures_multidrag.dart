// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/gestures/multidrag.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/binding.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/drag.dart';
import 'package:flutter/src/gestures/drag_details.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/gestures/multidrag.dart',
  {
    'ImmediateMultiDragGestureRecognizer.':
        _ImmediateMultiDragGestureRecognizer__$,
    'HorizontalMultiDragGestureRecognizer.':
        _HorizontalMultiDragGestureRecognizer__$,
    'VerticalMultiDragGestureRecognizer.':
        _VerticalMultiDragGestureRecognizer__$,
    'DelayedMultiDragGestureRecognizer.': _DelayedMultiDragGestureRecognizer__$,
  },
  {},
  {
    'MultiDragPointerState': m.ClassMirror(
      'MultiDragPointerState',
      {
        '#as': MultiDragPointerState_as$,
        '#is': MultiDragPointerState_is$,
        'gestureSettings': _MultiDragPointerState_gestureSettings$,
        'initialPosition': _MultiDragPointerState_initialPosition$,
        'kind': _MultiDragPointerState_kind$,
        'pendingDelta': _MultiDragPointerState_pendingDelta$,
        'resolve': _MultiDragPointerState_resolve$,
        'checkForResolutionAfterMove':
            _MultiDragPointerState_checkForResolutionAfterMove$,
        'accepted': _MultiDragPointerState_accepted$,
        'rejected': _MultiDragPointerState_rejected$,
        'dispose': _MultiDragPointerState_dispose$,
      },
      {},
    ),
    'MultiDragGestureRecognizer': m.ClassMirror(
      'MultiDragGestureRecognizer',
      {
        '#as': MultiDragGestureRecognizer_as$,
        '#is': MultiDragGestureRecognizer_is$,
        'onStart': _MultiDragGestureRecognizer_onStart$,
        'addAllowedPointer': _MultiDragGestureRecognizer_addAllowedPointer$,
        'createNewPointerState':
            _MultiDragGestureRecognizer_createNewPointerState$,
        'acceptGesture': _MultiDragGestureRecognizer_acceptGesture$,
        'rejectGesture': _MultiDragGestureRecognizer_rejectGesture$,
        'dispose': _MultiDragGestureRecognizer_dispose$,
      },
      {'onStart': _MultiDragGestureRecognizer_onStart_set$},
    ),
    'ImmediateMultiDragGestureRecognizer': m.ClassMirror(
      'ImmediateMultiDragGestureRecognizer',
      {
        '#as': ImmediateMultiDragGestureRecognizer_as$,
        '#is': ImmediateMultiDragGestureRecognizer_is$,
        'debugDescription':
            _ImmediateMultiDragGestureRecognizer_debugDescription$,
        'createNewPointerState':
            _ImmediateMultiDragGestureRecognizer_createNewPointerState$,
      },
      {},
    ),
    'HorizontalMultiDragGestureRecognizer': m.ClassMirror(
      'HorizontalMultiDragGestureRecognizer',
      {
        '#as': HorizontalMultiDragGestureRecognizer_as$,
        '#is': HorizontalMultiDragGestureRecognizer_is$,
        'debugDescription':
            _HorizontalMultiDragGestureRecognizer_debugDescription$,
        'createNewPointerState':
            _HorizontalMultiDragGestureRecognizer_createNewPointerState$,
      },
      {},
    ),
    'VerticalMultiDragGestureRecognizer': m.ClassMirror(
      'VerticalMultiDragGestureRecognizer',
      {
        '#as': VerticalMultiDragGestureRecognizer_as$,
        '#is': VerticalMultiDragGestureRecognizer_is$,
        'debugDescription':
            _VerticalMultiDragGestureRecognizer_debugDescription$,
        'createNewPointerState':
            _VerticalMultiDragGestureRecognizer_createNewPointerState$,
      },
      {},
    ),
    'DelayedMultiDragGestureRecognizer': m.ClassMirror(
      'DelayedMultiDragGestureRecognizer',
      {
        '#as': DelayedMultiDragGestureRecognizer_as$,
        '#is': DelayedMultiDragGestureRecognizer_is$,
        'delay': _DelayedMultiDragGestureRecognizer_delay$,
        'debugDescription':
            _DelayedMultiDragGestureRecognizer_debugDescription$,
        'createNewPointerState':
            _DelayedMultiDragGestureRecognizer_createNewPointerState$,
      },
      {},
    ),
  },
);
Function MultiDragPointerState_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as MultiDragPointerState;
Function MultiDragPointerState_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is MultiDragPointerState;
Function _MultiDragPointerState_gestureSettings$(
  m.Scope scope$,
  MultiDragPointerState target$,
) =>
    () {
      return target$.gestureSettings;
    };
Function _MultiDragPointerState_initialPosition$(
  m.Scope scope$,
  MultiDragPointerState target$,
) =>
    () {
      return target$.initialPosition;
    };
Function _MultiDragPointerState_kind$(
  m.Scope scope$,
  MultiDragPointerState target$,
) =>
    () {
      return target$.kind;
    };
Function _MultiDragPointerState_pendingDelta$(
  m.Scope scope$,
  MultiDragPointerState target$,
) =>
    () {
      return target$.pendingDelta;
    };
Function _MultiDragPointerState_resolve$(
  m.Scope scope$,
  MultiDragPointerState target$,
) =>
    target$.resolve;
Function _MultiDragPointerState_checkForResolutionAfterMove$(
  m.Scope scope$,
  MultiDragPointerState target$,
) =>
    target$.checkForResolutionAfterMove;
Function _MultiDragPointerState_accepted$(
  m.Scope scope$,
  MultiDragPointerState target$,
) =>
    (m.FunctionPointer starter) {
      Drag? starterProxy(Offset starter_position$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            starter,
            [starter_position$],
            {},
          );
      target$.accepted(starterProxy);
    };
Function _MultiDragPointerState_rejected$(
  m.Scope scope$,
  MultiDragPointerState target$,
) =>
    target$.rejected;
Function _MultiDragPointerState_dispose$(
  m.Scope scope$,
  MultiDragPointerState target$,
) =>
    target$.dispose;
Function MultiDragGestureRecognizer_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as MultiDragGestureRecognizer;
Function MultiDragGestureRecognizer_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is MultiDragGestureRecognizer;
Function _MultiDragGestureRecognizer_onStart$(
  m.Scope scope$,
  MultiDragGestureRecognizer target$,
) =>
    () {
      return target$.onStart;
    };
Function _MultiDragGestureRecognizer_onStart_set$(
  m.Scope scope$,
  MultiDragGestureRecognizer target$,
) =>
    (m.FunctionPointer? _onStart) {
      Drag? _onStartProxy(Offset _onStart_position$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            _onStart!,
            [_onStart_position$],
            {},
          );
      target$.onStart = (_onStart == null ? null : _onStartProxy);
    };
Function _MultiDragGestureRecognizer_addAllowedPointer$(
  m.Scope scope$,
  MultiDragGestureRecognizer target$,
) =>
    target$.addAllowedPointer;
Function _MultiDragGestureRecognizer_createNewPointerState$(
  m.Scope scope$,
  MultiDragGestureRecognizer target$,
) =>
    target$.createNewPointerState;
Function _MultiDragGestureRecognizer_acceptGesture$(
  m.Scope scope$,
  MultiDragGestureRecognizer target$,
) =>
    target$.acceptGesture;
Function _MultiDragGestureRecognizer_rejectGesture$(
  m.Scope scope$,
  MultiDragGestureRecognizer target$,
) =>
    target$.rejectGesture;
Function _MultiDragGestureRecognizer_dispose$(
  m.Scope scope$,
  MultiDragGestureRecognizer target$,
) =>
    target$.dispose;
Function ImmediateMultiDragGestureRecognizer_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ImmediateMultiDragGestureRecognizer;
Function ImmediateMultiDragGestureRecognizer_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ImmediateMultiDragGestureRecognizer;
Function _ImmediateMultiDragGestureRecognizer_debugDescription$(
  m.Scope scope$,
  ImmediateMultiDragGestureRecognizer target$,
) =>
    () {
      return target$.debugDescription;
    };
Function _ImmediateMultiDragGestureRecognizer__$(m.Scope scope$) => ({
      Object? debugOwner,
      Set? supportedDevices,
      m.FunctionPointer? allowedButtonsFilter,
    }) {
      bool allowedButtonsFilterProxy(int allowedButtonsFilter_buttons$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            allowedButtonsFilter!,
            [allowedButtonsFilter_buttons$],
            {},
          );
      return ImmediateMultiDragGestureRecognizer(
        allowedButtonsFilter:
            allowedButtonsFilter == null ? null : allowedButtonsFilterProxy,
        debugOwner: debugOwner,
        supportedDevices:
            supportedDevices == null ? null : Set.from(supportedDevices),
      );
    };
Function _ImmediateMultiDragGestureRecognizer_createNewPointerState$(
  m.Scope scope$,
  ImmediateMultiDragGestureRecognizer target$,
) =>
    target$.createNewPointerState;
Function HorizontalMultiDragGestureRecognizer_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as HorizontalMultiDragGestureRecognizer;
Function HorizontalMultiDragGestureRecognizer_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is HorizontalMultiDragGestureRecognizer;
Function _HorizontalMultiDragGestureRecognizer_debugDescription$(
  m.Scope scope$,
  HorizontalMultiDragGestureRecognizer target$,
) =>
    () {
      return target$.debugDescription;
    };
Function _HorizontalMultiDragGestureRecognizer__$(m.Scope scope$) => ({
      Object? debugOwner,
      Set? supportedDevices,
      m.FunctionPointer? allowedButtonsFilter,
    }) {
      bool allowedButtonsFilterProxy(int allowedButtonsFilter_buttons$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            allowedButtonsFilter!,
            [allowedButtonsFilter_buttons$],
            {},
          );
      return HorizontalMultiDragGestureRecognizer(
        allowedButtonsFilter:
            allowedButtonsFilter == null ? null : allowedButtonsFilterProxy,
        debugOwner: debugOwner,
        supportedDevices:
            supportedDevices == null ? null : Set.from(supportedDevices),
      );
    };
Function _HorizontalMultiDragGestureRecognizer_createNewPointerState$(
  m.Scope scope$,
  HorizontalMultiDragGestureRecognizer target$,
) =>
    target$.createNewPointerState;
Function VerticalMultiDragGestureRecognizer_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as VerticalMultiDragGestureRecognizer;
Function VerticalMultiDragGestureRecognizer_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is VerticalMultiDragGestureRecognizer;
Function _VerticalMultiDragGestureRecognizer_debugDescription$(
  m.Scope scope$,
  VerticalMultiDragGestureRecognizer target$,
) =>
    () {
      return target$.debugDescription;
    };
Function _VerticalMultiDragGestureRecognizer__$(m.Scope scope$) => ({
      Object? debugOwner,
      Set? supportedDevices,
      m.FunctionPointer? allowedButtonsFilter,
    }) {
      bool allowedButtonsFilterProxy(int allowedButtonsFilter_buttons$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            allowedButtonsFilter!,
            [allowedButtonsFilter_buttons$],
            {},
          );
      return VerticalMultiDragGestureRecognizer(
        allowedButtonsFilter:
            allowedButtonsFilter == null ? null : allowedButtonsFilterProxy,
        debugOwner: debugOwner,
        supportedDevices:
            supportedDevices == null ? null : Set.from(supportedDevices),
      );
    };
Function _VerticalMultiDragGestureRecognizer_createNewPointerState$(
  m.Scope scope$,
  VerticalMultiDragGestureRecognizer target$,
) =>
    target$.createNewPointerState;
Function DelayedMultiDragGestureRecognizer_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as DelayedMultiDragGestureRecognizer;
Function DelayedMultiDragGestureRecognizer_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is DelayedMultiDragGestureRecognizer;
Function _DelayedMultiDragGestureRecognizer_delay$(
  m.Scope scope$,
  DelayedMultiDragGestureRecognizer target$,
) =>
    () {
      return target$.delay;
    };
Function _DelayedMultiDragGestureRecognizer_debugDescription$(
  m.Scope scope$,
  DelayedMultiDragGestureRecognizer target$,
) =>
    () {
      return target$.debugDescription;
    };
Function _DelayedMultiDragGestureRecognizer__$(m.Scope scope$) => ({
      Duration? delay,
      Object? debugOwner,
      Set? supportedDevices,
      m.FunctionPointer? allowedButtonsFilter,
    }) {
      bool allowedButtonsFilterProxy(int allowedButtonsFilter_buttons$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            allowedButtonsFilter!,
            [allowedButtonsFilter_buttons$],
            {},
          );
      return DelayedMultiDragGestureRecognizer(
        allowedButtonsFilter:
            allowedButtonsFilter == null ? null : allowedButtonsFilterProxy,
        debugOwner: debugOwner,
        delay: delay ?? kLongPressTimeout,
        supportedDevices:
            supportedDevices == null ? null : Set.from(supportedDevices),
      );
    };
Function _DelayedMultiDragGestureRecognizer_createNewPointerState$(
  m.Scope scope$,
  DelayedMultiDragGestureRecognizer target$,
) =>
    target$.createNewPointerState;
