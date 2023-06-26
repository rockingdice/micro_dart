import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/gesture_detector.dart@GestureRecognizerFactory@#as':
        (m.Scope scope, target) => () => target as GestureRecognizerFactory,
    'package:flutter/src/widgets/gesture_detector.dart@GestureRecognizerFactory@#is':
        (m.Scope scope, target) => () => target is GestureRecognizerFactory,
    'package:flutter/src/widgets/gesture_detector.dart@GestureRecognizerFactory@constructor':
        (m.Scope scope, GestureRecognizerFactory target) => target.constructor,
    'package:flutter/src/widgets/gesture_detector.dart@GestureRecognizerFactory@initializer':
        (m.Scope scope, GestureRecognizerFactory target) => target.initializer,
    'package:flutter/src/widgets/gesture_detector.dart@GestureRecognizerFactoryWithHandlers@#as':
        (m.Scope scope, target) =>
            () => target as GestureRecognizerFactoryWithHandlers,
    'package:flutter/src/widgets/gesture_detector.dart@GestureRecognizerFactoryWithHandlers@#is':
        (m.Scope scope, target) =>
            () => target is GestureRecognizerFactoryWithHandlers,
    'package:flutter/src/widgets/gesture_detector.dart@GestureRecognizerFactoryWithHandlers@':
        (m.Scope scope) => <T extends GestureRecognizer>(_constructor, _initializer) {
              T _constructorProxy<T>() {
                return engine.callFunctionPointer(scope, _constructor!, [], {});
              }

              void _initializerProxy<T>(instance) {
                engine
                    .callFunctionPointer(scope, _initializer!, [instance], {});
              }

              return GestureRecognizerFactoryWithHandlers<T>(
                  _constructorProxy, _initializerProxy);
            },
    'package:flutter/src/widgets/gesture_detector.dart@GestureRecognizerFactoryWithHandlers@constructor':
        (m.Scope scope, GestureRecognizerFactoryWithHandlers target) =>
            target.constructor,
    'package:flutter/src/widgets/gesture_detector.dart@GestureRecognizerFactoryWithHandlers@initializer':
        (m.Scope scope, GestureRecognizerFactoryWithHandlers target) =>
            target.initializer,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@#as':
        (m.Scope scope, target) => () => target as GestureDetector,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@#is':
        (m.Scope scope, target) => () => target is GestureDetector,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@child':
        (m.Scope scope, GestureDetector target) => target.child,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTapDown':
        (m.Scope scope, GestureDetector target) => target.onTapDown,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTapUp':
        (m.Scope scope, GestureDetector target) => target.onTapUp,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTap':
        (m.Scope scope, GestureDetector target) => target.onTap,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTapCancel':
        (m.Scope scope, GestureDetector target) => target.onTapCancel,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onSecondaryTap':
        (m.Scope scope, GestureDetector target) => target.onSecondaryTap,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onSecondaryTapDown':
        (m.Scope scope, GestureDetector target) => target.onSecondaryTapDown,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onSecondaryTapUp':
        (m.Scope scope, GestureDetector target) => target.onSecondaryTapUp,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onSecondaryTapCancel':
        (m.Scope scope, GestureDetector target) => target.onSecondaryTapCancel,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTertiaryTapDown':
        (m.Scope scope, GestureDetector target) => target.onTertiaryTapDown,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTertiaryTapUp':
        (m.Scope scope, GestureDetector target) => target.onTertiaryTapUp,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTertiaryTapCancel':
        (m.Scope scope, GestureDetector target) => target.onTertiaryTapCancel,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onDoubleTapDown':
        (m.Scope scope, GestureDetector target) => target.onDoubleTapDown,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onDoubleTap':
        (m.Scope scope, GestureDetector target) => target.onDoubleTap,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onDoubleTapCancel':
        (m.Scope scope, GestureDetector target) => target.onDoubleTapCancel,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onLongPressDown':
        (m.Scope scope, GestureDetector target) => target.onLongPressDown,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onLongPressCancel':
        (m.Scope scope, GestureDetector target) => target.onLongPressCancel,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onLongPress':
        (m.Scope scope, GestureDetector target) => target.onLongPress,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onLongPressStart':
        (m.Scope scope, GestureDetector target) => target.onLongPressStart,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onLongPressMoveUpdate':
        (m.Scope scope, GestureDetector target) => target.onLongPressMoveUpdate,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onLongPressUp':
        (m.Scope scope, GestureDetector target) => target.onLongPressUp,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onLongPressEnd':
        (m.Scope scope, GestureDetector target) => target.onLongPressEnd,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onSecondaryLongPressDown':
        (m.Scope scope, GestureDetector target) =>
            target.onSecondaryLongPressDown,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onSecondaryLongPressCancel':
        (m.Scope scope, GestureDetector target) =>
            target.onSecondaryLongPressCancel,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onSecondaryLongPress':
        (m.Scope scope, GestureDetector target) => target.onSecondaryLongPress,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onSecondaryLongPressStart':
        (m.Scope scope, GestureDetector target) =>
            target.onSecondaryLongPressStart,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onSecondaryLongPressMoveUpdate':
        (m.Scope scope, GestureDetector target) =>
            target.onSecondaryLongPressMoveUpdate,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onSecondaryLongPressUp':
        (m.Scope scope, GestureDetector target) =>
            target.onSecondaryLongPressUp,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onSecondaryLongPressEnd':
        (m.Scope scope, GestureDetector target) =>
            target.onSecondaryLongPressEnd,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTertiaryLongPressDown':
        (m.Scope scope, GestureDetector target) =>
            target.onTertiaryLongPressDown,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTertiaryLongPressCancel':
        (m.Scope scope, GestureDetector target) =>
            target.onTertiaryLongPressCancel,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTertiaryLongPress':
        (m.Scope scope, GestureDetector target) => target.onTertiaryLongPress,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTertiaryLongPressStart':
        (m.Scope scope, GestureDetector target) =>
            target.onTertiaryLongPressStart,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTertiaryLongPressMoveUpdate':
        (m.Scope scope, GestureDetector target) =>
            target.onTertiaryLongPressMoveUpdate,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTertiaryLongPressUp':
        (m.Scope scope, GestureDetector target) => target.onTertiaryLongPressUp,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onTertiaryLongPressEnd':
        (m.Scope scope, GestureDetector target) =>
            target.onTertiaryLongPressEnd,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onVerticalDragDown':
        (m.Scope scope, GestureDetector target) => target.onVerticalDragDown,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onVerticalDragStart':
        (m.Scope scope, GestureDetector target) => target.onVerticalDragStart,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onVerticalDragUpdate':
        (m.Scope scope, GestureDetector target) => target.onVerticalDragUpdate,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onVerticalDragEnd':
        (m.Scope scope, GestureDetector target) => target.onVerticalDragEnd,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onVerticalDragCancel':
        (m.Scope scope, GestureDetector target) => target.onVerticalDragCancel,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onHorizontalDragDown':
        (m.Scope scope, GestureDetector target) => target.onHorizontalDragDown,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onHorizontalDragStart':
        (m.Scope scope, GestureDetector target) => target.onHorizontalDragStart,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onHorizontalDragUpdate':
        (m.Scope scope, GestureDetector target) =>
            target.onHorizontalDragUpdate,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onHorizontalDragEnd':
        (m.Scope scope, GestureDetector target) => target.onHorizontalDragEnd,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onHorizontalDragCancel':
        (m.Scope scope, GestureDetector target) =>
            target.onHorizontalDragCancel,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onPanDown':
        (m.Scope scope, GestureDetector target) => target.onPanDown,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onPanStart':
        (m.Scope scope, GestureDetector target) => target.onPanStart,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onPanUpdate':
        (m.Scope scope, GestureDetector target) => target.onPanUpdate,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onPanEnd':
        (m.Scope scope, GestureDetector target) => target.onPanEnd,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onPanCancel':
        (m.Scope scope, GestureDetector target) => target.onPanCancel,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onScaleStart':
        (m.Scope scope, GestureDetector target) => target.onScaleStart,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onScaleUpdate':
        (m.Scope scope, GestureDetector target) => target.onScaleUpdate,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onScaleEnd':
        (m.Scope scope, GestureDetector target) => target.onScaleEnd,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onForcePressStart':
        (m.Scope scope, GestureDetector target) => target.onForcePressStart,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onForcePressPeak':
        (m.Scope scope, GestureDetector target) => target.onForcePressPeak,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onForcePressUpdate':
        (m.Scope scope, GestureDetector target) => target.onForcePressUpdate,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@onForcePressEnd':
        (m.Scope scope, GestureDetector target) => target.onForcePressEnd,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@behavior':
        (m.Scope scope, GestureDetector target) => target.behavior,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@excludeFromSemantics':
        (m.Scope scope, GestureDetector target) => target.excludeFromSemantics,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@dragStartBehavior':
        (m.Scope scope, GestureDetector target) => target.dragStartBehavior,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@supportedDevices':
        (m.Scope scope, GestureDetector target) => target.supportedDevices,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@trackpadScrollCausesScale':
        (m.Scope scope, GestureDetector target) =>
            target.trackpadScrollCausesScale,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@trackpadScrollToScaleFactor':
        (m.Scope scope, GestureDetector target) =>
            target.trackpadScrollToScaleFactor,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@': (m
                .Scope
            scope) =>
        (
            {behavior,
            child,
            dragStartBehavior,
            excludeFromSemantics,
            key,
            onDoubleTap,
            onDoubleTapCancel,
            onDoubleTapDown,
            onForcePressEnd,
            onForcePressPeak,
            onForcePressStart,
            onForcePressUpdate,
            onHorizontalDragCancel,
            onHorizontalDragDown,
            onHorizontalDragEnd,
            onHorizontalDragStart,
            onHorizontalDragUpdate,
            onLongPress,
            onLongPressCancel,
            onLongPressDown,
            onLongPressEnd,
            onLongPressMoveUpdate,
            onLongPressStart,
            onLongPressUp,
            onPanCancel,
            onPanDown,
            onPanEnd,
            onPanStart,
            onPanUpdate,
            onScaleEnd,
            onScaleStart,
            onScaleUpdate,
            onSecondaryLongPress,
            onSecondaryLongPressCancel,
            onSecondaryLongPressDown,
            onSecondaryLongPressEnd,
            onSecondaryLongPressMoveUpdate,
            onSecondaryLongPressStart,
            onSecondaryLongPressUp,
            onSecondaryTap,
            onSecondaryTapCancel,
            onSecondaryTapDown,
            onSecondaryTapUp,
            onTap,
            onTapCancel,
            onTapDown,
            onTapUp,
            onTertiaryLongPress,
            onTertiaryLongPressCancel,
            onTertiaryLongPressDown,
            onTertiaryLongPressEnd,
            onTertiaryLongPressMoveUpdate,
            onTertiaryLongPressStart,
            onTertiaryLongPressUp,
            onTertiaryTapCancel,
            onTertiaryTapDown,
            onTertiaryTapUp,
            onVerticalDragCancel,
            onVerticalDragDown,
            onVerticalDragEnd,
            onVerticalDragStart,
            onVerticalDragUpdate,
            supportedDevices,
            trackpadScrollCausesScale,
            trackpadScrollToScaleFactor}) {
          void onDoubleTapProxy() {
            engine.callFunctionPointer(scope, onDoubleTap!, [], {});
          }

          void onDoubleTapCancelProxy() {
            engine.callFunctionPointer(scope, onDoubleTapCancel!, [], {});
          }

          void onDoubleTapDownProxy(details) {
            engine.callFunctionPointer(scope, onDoubleTapDown!, [details], {});
          }

          void onForcePressEndProxy(details) {
            engine.callFunctionPointer(scope, onForcePressEnd!, [details], {});
          }

          void onForcePressPeakProxy(details) {
            engine.callFunctionPointer(scope, onForcePressPeak!, [details], {});
          }

          void onForcePressStartProxy(details) {
            engine
                .callFunctionPointer(scope, onForcePressStart!, [details], {});
          }

          void onForcePressUpdateProxy(details) {
            engine
                .callFunctionPointer(scope, onForcePressUpdate!, [details], {});
          }

          void onHorizontalDragCancelProxy() {
            engine.callFunctionPointer(scope, onHorizontalDragCancel!, [], {});
          }

          void onHorizontalDragDownProxy(details) {
            engine.callFunctionPointer(
                scope, onHorizontalDragDown!, [details], {});
          }

          void onHorizontalDragEndProxy(details) {
            engine.callFunctionPointer(
                scope, onHorizontalDragEnd!, [details], {});
          }

          void onHorizontalDragStartProxy(details) {
            engine.callFunctionPointer(
                scope, onHorizontalDragStart!, [details], {});
          }

          void onHorizontalDragUpdateProxy(details) {
            engine.callFunctionPointer(
                scope, onHorizontalDragUpdate!, [details], {});
          }

          void onLongPressProxy() {
            engine.callFunctionPointer(scope, onLongPress!, [], {});
          }

          void onLongPressCancelProxy() {
            engine.callFunctionPointer(scope, onLongPressCancel!, [], {});
          }

          void onLongPressDownProxy(details) {
            engine.callFunctionPointer(scope, onLongPressDown!, [details], {});
          }

          void onLongPressEndProxy(details) {
            engine.callFunctionPointer(scope, onLongPressEnd!, [details], {});
          }

          void onLongPressMoveUpdateProxy(details) {
            engine.callFunctionPointer(
                scope, onLongPressMoveUpdate!, [details], {});
          }

          void onLongPressStartProxy(details) {
            engine.callFunctionPointer(scope, onLongPressStart!, [details], {});
          }

          void onLongPressUpProxy() {
            engine.callFunctionPointer(scope, onLongPressUp!, [], {});
          }

          void onPanCancelProxy() {
            engine.callFunctionPointer(scope, onPanCancel!, [], {});
          }

          void onPanDownProxy(details) {
            engine.callFunctionPointer(scope, onPanDown!, [details], {});
          }

          void onPanEndProxy(details) {
            engine.callFunctionPointer(scope, onPanEnd!, [details], {});
          }

          void onPanStartProxy(details) {
            engine.callFunctionPointer(scope, onPanStart!, [details], {});
          }

          void onPanUpdateProxy(details) {
            engine.callFunctionPointer(scope, onPanUpdate!, [details], {});
          }

          void onScaleEndProxy(details) {
            engine.callFunctionPointer(scope, onScaleEnd!, [details], {});
          }

          void onScaleStartProxy(details) {
            engine.callFunctionPointer(scope, onScaleStart!, [details], {});
          }

          void onScaleUpdateProxy(details) {
            engine.callFunctionPointer(scope, onScaleUpdate!, [details], {});
          }

          void onSecondaryLongPressProxy() {
            engine.callFunctionPointer(scope, onSecondaryLongPress!, [], {});
          }

          void onSecondaryLongPressCancelProxy() {
            engine.callFunctionPointer(
                scope, onSecondaryLongPressCancel!, [], {});
          }

          void onSecondaryLongPressDownProxy(details) {
            engine.callFunctionPointer(
                scope, onSecondaryLongPressDown!, [details], {});
          }

          void onSecondaryLongPressEndProxy(details) {
            engine.callFunctionPointer(
                scope, onSecondaryLongPressEnd!, [details], {});
          }

          void onSecondaryLongPressMoveUpdateProxy(details) {
            engine.callFunctionPointer(
                scope, onSecondaryLongPressMoveUpdate!, [details], {});
          }

          void onSecondaryLongPressStartProxy(details) {
            engine.callFunctionPointer(
                scope, onSecondaryLongPressStart!, [details], {});
          }

          void onSecondaryLongPressUpProxy() {
            engine.callFunctionPointer(scope, onSecondaryLongPressUp!, [], {});
          }

          void onSecondaryTapProxy() {
            engine.callFunctionPointer(scope, onSecondaryTap!, [], {});
          }

          void onSecondaryTapCancelProxy() {
            engine.callFunctionPointer(scope, onSecondaryTapCancel!, [], {});
          }

          void onSecondaryTapDownProxy(details) {
            engine
                .callFunctionPointer(scope, onSecondaryTapDown!, [details], {});
          }

          void onSecondaryTapUpProxy(details) {
            engine.callFunctionPointer(scope, onSecondaryTapUp!, [details], {});
          }

          void onTapProxy() {
            engine.callFunctionPointer(scope, onTap!, [], {});
          }

          void onTapCancelProxy() {
            engine.callFunctionPointer(scope, onTapCancel!, [], {});
          }

          void onTapDownProxy(details) {
            engine.callFunctionPointer(scope, onTapDown!, [details], {});
          }

          void onTapUpProxy(details) {
            engine.callFunctionPointer(scope, onTapUp!, [details], {});
          }

          void onTertiaryLongPressProxy() {
            engine.callFunctionPointer(scope, onTertiaryLongPress!, [], {});
          }

          void onTertiaryLongPressCancelProxy() {
            engine
                .callFunctionPointer(scope, onTertiaryLongPressCancel!, [], {});
          }

          void onTertiaryLongPressDownProxy(details) {
            engine.callFunctionPointer(
                scope, onTertiaryLongPressDown!, [details], {});
          }

          void onTertiaryLongPressEndProxy(details) {
            engine.callFunctionPointer(
                scope, onTertiaryLongPressEnd!, [details], {});
          }

          void onTertiaryLongPressMoveUpdateProxy(details) {
            engine.callFunctionPointer(
                scope, onTertiaryLongPressMoveUpdate!, [details], {});
          }

          void onTertiaryLongPressStartProxy(details) {
            engine.callFunctionPointer(
                scope, onTertiaryLongPressStart!, [details], {});
          }

          void onTertiaryLongPressUpProxy() {
            engine.callFunctionPointer(scope, onTertiaryLongPressUp!, [], {});
          }

          void onTertiaryTapCancelProxy() {
            engine.callFunctionPointer(scope, onTertiaryTapCancel!, [], {});
          }

          void onTertiaryTapDownProxy(details) {
            engine
                .callFunctionPointer(scope, onTertiaryTapDown!, [details], {});
          }

          void onTertiaryTapUpProxy(details) {
            engine.callFunctionPointer(scope, onTertiaryTapUp!, [details], {});
          }

          void onVerticalDragCancelProxy() {
            engine.callFunctionPointer(scope, onVerticalDragCancel!, [], {});
          }

          void onVerticalDragDownProxy(details) {
            engine
                .callFunctionPointer(scope, onVerticalDragDown!, [details], {});
          }

          void onVerticalDragEndProxy(details) {
            engine
                .callFunctionPointer(scope, onVerticalDragEnd!, [details], {});
          }

          void onVerticalDragStartProxy(details) {
            engine.callFunctionPointer(
                scope, onVerticalDragStart!, [details], {});
          }

          void onVerticalDragUpdateProxy(details) {
            engine.callFunctionPointer(
                scope, onVerticalDragUpdate!, [details], {});
          }

          return GestureDetector(
              behavior: behavior,
              child: child,
              dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
              excludeFromSemantics: excludeFromSemantics ?? false,
              key: key,
              onDoubleTap: onDoubleTap == null ? null : onDoubleTapProxy,
              onDoubleTapCancel:
                  onDoubleTapCancel == null ? null : onDoubleTapCancelProxy,
              onDoubleTapDown:
                  onDoubleTapDown == null ? null : onDoubleTapDownProxy,
              onForcePressEnd:
                  onForcePressEnd == null ? null : onForcePressEndProxy,
              onForcePressPeak:
                  onForcePressPeak == null ? null : onForcePressPeakProxy,
              onForcePressStart:
                  onForcePressStart == null ? null : onForcePressStartProxy,
              onForcePressUpdate:
                  onForcePressUpdate == null ? null : onForcePressUpdateProxy,
              onHorizontalDragCancel: onHorizontalDragCancel == null
                  ? null
                  : onHorizontalDragCancelProxy,
              onHorizontalDragDown: onHorizontalDragDown == null
                  ? null
                  : onHorizontalDragDownProxy,
              onHorizontalDragEnd:
                  onHorizontalDragEnd == null ? null : onHorizontalDragEndProxy,
              onHorizontalDragStart: onHorizontalDragStart == null
                  ? null
                  : onHorizontalDragStartProxy,
              onHorizontalDragUpdate: onHorizontalDragUpdate == null
                  ? null
                  : onHorizontalDragUpdateProxy,
              onLongPress: onLongPress == null ? null : onLongPressProxy,
              onLongPressCancel:
                  onLongPressCancel == null ? null : onLongPressCancelProxy,
              onLongPressDown:
                  onLongPressDown == null ? null : onLongPressDownProxy,
              onLongPressEnd:
                  onLongPressEnd == null ? null : onLongPressEndProxy,
              onLongPressMoveUpdate: onLongPressMoveUpdate == null
                  ? null
                  : onLongPressMoveUpdateProxy,
              onLongPressStart:
                  onLongPressStart == null ? null : onLongPressStartProxy,
              onLongPressUp: onLongPressUp == null ? null : onLongPressUpProxy,
              onPanCancel: onPanCancel == null ? null : onPanCancelProxy,
              onPanDown: onPanDown == null ? null : onPanDownProxy,
              onPanEnd: onPanEnd == null ? null : onPanEndProxy,
              onPanStart: onPanStart == null ? null : onPanStartProxy,
              onPanUpdate: onPanUpdate == null ? null : onPanUpdateProxy,
              onScaleEnd: onScaleEnd == null ? null : onScaleEndProxy,
              onScaleStart: onScaleStart == null ? null : onScaleStartProxy,
              onScaleUpdate: onScaleUpdate == null ? null : onScaleUpdateProxy,
              onSecondaryLongPress: onSecondaryLongPress == null
                  ? null
                  : onSecondaryLongPressProxy,
              onSecondaryLongPressCancel: onSecondaryLongPressCancel == null
                  ? null
                  : onSecondaryLongPressCancelProxy,
              onSecondaryLongPressDown: onSecondaryLongPressDown == null
                  ? null
                  : onSecondaryLongPressDownProxy,
              onSecondaryLongPressEnd: onSecondaryLongPressEnd == null
                  ? null
                  : onSecondaryLongPressEndProxy,
              onSecondaryLongPressMoveUpdate:
                  onSecondaryLongPressMoveUpdate == null
                      ? null
                      : onSecondaryLongPressMoveUpdateProxy,
              onSecondaryLongPressStart: onSecondaryLongPressStart == null
                  ? null
                  : onSecondaryLongPressStartProxy,
              onSecondaryLongPressUp: onSecondaryLongPressUp == null
                  ? null
                  : onSecondaryLongPressUpProxy,
              onSecondaryTap:
                  onSecondaryTap == null ? null : onSecondaryTapProxy,
              onSecondaryTapCancel: onSecondaryTapCancel == null
                  ? null
                  : onSecondaryTapCancelProxy,
              onSecondaryTapDown:
                  onSecondaryTapDown == null ? null : onSecondaryTapDownProxy,
              onSecondaryTapUp:
                  onSecondaryTapUp == null ? null : onSecondaryTapUpProxy,
              onTap: onTap == null ? null : onTapProxy,
              onTapCancel: onTapCancel == null ? null : onTapCancelProxy,
              onTapDown: onTapDown == null ? null : onTapDownProxy,
              onTapUp: onTapUp == null ? null : onTapUpProxy,
              onTertiaryLongPress:
                  onTertiaryLongPress == null ? null : onTertiaryLongPressProxy,
              onTertiaryLongPressCancel: onTertiaryLongPressCancel == null
                  ? null
                  : onTertiaryLongPressCancelProxy,
              onTertiaryLongPressDown: onTertiaryLongPressDown == null
                  ? null
                  : onTertiaryLongPressDownProxy,
              onTertiaryLongPressEnd: onTertiaryLongPressEnd == null
                  ? null
                  : onTertiaryLongPressEndProxy,
              onTertiaryLongPressMoveUpdate:
                  onTertiaryLongPressMoveUpdate == null
                      ? null
                      : onTertiaryLongPressMoveUpdateProxy,
              onTertiaryLongPressStart: onTertiaryLongPressStart == null
                  ? null
                  : onTertiaryLongPressStartProxy,
              onTertiaryLongPressUp: onTertiaryLongPressUp == null
                  ? null
                  : onTertiaryLongPressUpProxy,
              onTertiaryTapCancel:
                  onTertiaryTapCancel == null ? null : onTertiaryTapCancelProxy,
              onTertiaryTapDown:
                  onTertiaryTapDown == null ? null : onTertiaryTapDownProxy,
              onTertiaryTapUp:
                  onTertiaryTapUp == null ? null : onTertiaryTapUpProxy,
              onVerticalDragCancel: onVerticalDragCancel == null
                  ? null
                  : onVerticalDragCancelProxy,
              onVerticalDragDown:
                  onVerticalDragDown == null ? null : onVerticalDragDownProxy,
              onVerticalDragEnd:
                  onVerticalDragEnd == null ? null : onVerticalDragEndProxy,
              onVerticalDragStart:
                  onVerticalDragStart == null ? null : onVerticalDragStartProxy,
              onVerticalDragUpdate: onVerticalDragUpdate == null
                  ? null
                  : onVerticalDragUpdateProxy,
              supportedDevices: supportedDevices,
              trackpadScrollCausesScale: trackpadScrollCausesScale ?? false,
              trackpadScrollToScaleFactor: trackpadScrollToScaleFactor ??
                  kDefaultTrackpadScrollToScaleFactor);
        },
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@build':
        (m.Scope scope, GestureDetector target) => target.build,
    'package:flutter/src/widgets/gesture_detector.dart@GestureDetector@debugFillProperties':
        (m.Scope scope, GestureDetector target) => target.debugFillProperties,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetector@#as':
        (m.Scope scope, target) => () => target as RawGestureDetector,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetector@#is':
        (m.Scope scope, target) => () => target is RawGestureDetector,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetector@child':
        (m.Scope scope, RawGestureDetector target) => target.child,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetector@gestures':
        (m.Scope scope, RawGestureDetector target) => target.gestures,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetector@behavior':
        (m.Scope scope, RawGestureDetector target) => target.behavior,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetector@excludeFromSemantics':
        (m.Scope scope, RawGestureDetector target) =>
            target.excludeFromSemantics,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetector@semantics':
        (m.Scope scope, RawGestureDetector target) => target.semantics,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetector@':
        (m.Scope scope) => (
                {behavior,
                child,
                excludeFromSemantics,
                gestures,
                key,
                semantics}) {
              return RawGestureDetector(
                  behavior: behavior,
                  child: child,
                  excludeFromSemantics: excludeFromSemantics ?? false,
                  gestures:
                      gestures ?? const <Type, GestureRecognizerFactory>{},
                  key: key,
                  semantics: semantics);
            },
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetector@createState':
        (m.Scope scope, RawGestureDetector target) => target.createState,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetectorState@#as':
        (m.Scope scope, target) => () => target as RawGestureDetectorState,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetectorState@#is':
        (m.Scope scope, target) => () => target is RawGestureDetectorState,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetectorState@':
        (m.Scope scope) => () {
              return RawGestureDetectorState();
            },
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetectorState@initState':
        (m.Scope scope, RawGestureDetectorState target) => target.initState,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetectorState@didUpdateWidget':
        (m.Scope scope, RawGestureDetectorState target) =>
            target.didUpdateWidget,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetectorState@replaceGestureRecognizers':
        (m.Scope scope, RawGestureDetectorState target) =>
            target.replaceGestureRecognizers,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetectorState@replaceSemanticsActions':
        (m.Scope scope, RawGestureDetectorState target) =>
            target.replaceSemanticsActions,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetectorState@dispose':
        (m.Scope scope, RawGestureDetectorState target) => target.dispose,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetectorState@build':
        (m.Scope scope, RawGestureDetectorState target) => target.build,
    'package:flutter/src/widgets/gesture_detector.dart@RawGestureDetectorState@debugFillProperties':
        (m.Scope scope, RawGestureDetectorState target) =>
            target.debugFillProperties,
    'package:flutter/src/widgets/gesture_detector.dart@SemanticsGestureDelegate@#as':
        (m.Scope scope, target) => () => target as SemanticsGestureDelegate,
    'package:flutter/src/widgets/gesture_detector.dart@SemanticsGestureDelegate@#is':
        (m.Scope scope, target) => () => target is SemanticsGestureDelegate,
    'package:flutter/src/widgets/gesture_detector.dart@SemanticsGestureDelegate@assignSemantics':
        (m.Scope scope, SemanticsGestureDelegate target) =>
            target.assignSemantics,
    'package:flutter/src/widgets/gesture_detector.dart@SemanticsGestureDelegate@toString':
        (m.Scope scope, SemanticsGestureDelegate target) => target.toString,
  };
}
