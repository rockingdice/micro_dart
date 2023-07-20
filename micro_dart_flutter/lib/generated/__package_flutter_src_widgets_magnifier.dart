// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/widgets/magnifier.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/overlay.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/widgets/magnifier.dart',
  {
    'MagnifierInfo.empty': _MagnifierInfo_empty$,
    'MagnifierInfo.': _MagnifierInfo__$,
    'TextMagnifierConfiguration.disabled':
        _TextMagnifierConfiguration_disabled$,
    'TextMagnifierConfiguration.': _TextMagnifierConfiguration__$,
    'MagnifierController.': _MagnifierController__$,
    'MagnifierController.shiftWithinBounds':
        _MagnifierController_shiftWithinBounds$,
    'MagnifierDecoration.': _MagnifierDecoration__$,
    'RawMagnifier.': _RawMagnifier__$,
  },
  {},
  {
    'MagnifierInfo': m.ClassMirror(
      'MagnifierInfo',
      {
        '#as': MagnifierInfo_as$,
        '#is': MagnifierInfo_is$,
        'globalGesturePosition': _MagnifierInfo_globalGesturePosition$,
        'currentLineBoundaries': _MagnifierInfo_currentLineBoundaries$,
        'caretRect': _MagnifierInfo_caretRect$,
        'fieldBounds': _MagnifierInfo_fieldBounds$,
        'hashCode': _MagnifierInfo_hashCode$,
        '==': _MagnifierInfo_eq$$,
      },
      {},
    ),
    'TextMagnifierConfiguration': m.ClassMirror(
      'TextMagnifierConfiguration',
      {
        '#as': TextMagnifierConfiguration_as$,
        '#is': TextMagnifierConfiguration_is$,
        'shouldDisplayHandlesInMagnifier':
            _TextMagnifierConfiguration_shouldDisplayHandlesInMagnifier$,
        'magnifierBuilder': _TextMagnifierConfiguration_magnifierBuilder$,
      },
      {},
    ),
    'MagnifierController': m.ClassMirror(
      'MagnifierController',
      {
        '#as': MagnifierController_as$,
        '#is': MagnifierController_is$,
        'animationController': _MagnifierController_animationController$,
        'overlayEntry': _MagnifierController_overlayEntry$,
        'shown': _MagnifierController_shown$,
        'show': _MagnifierController_show$,
        'hide': _MagnifierController_hide$,
        'removeFromOverlay': _MagnifierController_removeFromOverlay$,
      },
      {'animationController': _MagnifierController_animationController_set$},
    ),
    'MagnifierDecoration': m.ClassMirror(
      'MagnifierDecoration',
      {
        '#as': MagnifierDecoration_as$,
        '#is': MagnifierDecoration_is$,
        'opacity': _MagnifierDecoration_opacity$,
        'hashCode': _MagnifierDecoration_hashCode$,
        '==': _MagnifierDecoration_eq$$,
      },
      {},
    ),
    'RawMagnifier': m.ClassMirror(
      'RawMagnifier',
      {
        '#as': RawMagnifier_as$,
        '#is': RawMagnifier_is$,
        'child': _RawMagnifier_child$,
        'decoration': _RawMagnifier_decoration$,
        'focalPointOffset': _RawMagnifier_focalPointOffset$,
        'magnificationScale': _RawMagnifier_magnificationScale$,
        'size': _RawMagnifier_size$,
        'build': _RawMagnifier_build$,
      },
      {},
    ),
  },
);
Function MagnifierInfo_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as MagnifierInfo;
Function MagnifierInfo_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is MagnifierInfo;
Function _MagnifierInfo_empty$(m.Scope scope$) => () => MagnifierInfo.empty;
Function _MagnifierInfo_globalGesturePosition$(
  m.Scope scope$,
  MagnifierInfo target$,
) =>
    () {
      return target$.globalGesturePosition;
    };
Function _MagnifierInfo_currentLineBoundaries$(
  m.Scope scope$,
  MagnifierInfo target$,
) =>
    () {
      return target$.currentLineBoundaries;
    };
Function _MagnifierInfo_caretRect$(
  m.Scope scope$,
  MagnifierInfo target$,
) =>
    () {
      return target$.caretRect;
    };
Function _MagnifierInfo_fieldBounds$(
  m.Scope scope$,
  MagnifierInfo target$,
) =>
    () {
      return target$.fieldBounds;
    };
Function _MagnifierInfo_hashCode$(
  m.Scope scope$,
  MagnifierInfo target$,
) =>
    () {
      return target$.hashCode;
    };
Function _MagnifierInfo__$(m.Scope scope$) => ({
      required Offset globalGesturePosition,
      required Rect caretRect,
      required Rect fieldBounds,
      required Rect currentLineBoundaries,
    }) {
      return MagnifierInfo(
        caretRect: caretRect,
        currentLineBoundaries: currentLineBoundaries,
        fieldBounds: fieldBounds,
        globalGesturePosition: globalGesturePosition,
      );
    };
Function _MagnifierInfo_eq$$(
  m.Scope scope$,
  MagnifierInfo target$,
) =>
    (Object other$) => target$ == other$;
Function TextMagnifierConfiguration_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as TextMagnifierConfiguration;
Function TextMagnifierConfiguration_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is TextMagnifierConfiguration;
Function _TextMagnifierConfiguration_shouldDisplayHandlesInMagnifier$(
  m.Scope scope$,
  TextMagnifierConfiguration target$,
) =>
    () {
      return target$.shouldDisplayHandlesInMagnifier;
    };
Function _TextMagnifierConfiguration_disabled$(m.Scope scope$) =>
    () => TextMagnifierConfiguration.disabled;
Function _TextMagnifierConfiguration_magnifierBuilder$(
  m.Scope scope$,
  TextMagnifierConfiguration target$,
) =>
    () {
      return target$.magnifierBuilder;
    };
Function _TextMagnifierConfiguration__$(m.Scope scope$) => ({
      m.FunctionPointer? magnifierBuilder,
      bool? shouldDisplayHandlesInMagnifier,
    }) {
      Widget? magnifierBuilderProxy(
        BuildContext magnifierBuilder_context$,
        MagnifierController magnifierBuilder_controller$,
        ValueNotifier<MagnifierInfo> magnifierBuilder_magnifierInfo$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            magnifierBuilder!,
            [
              magnifierBuilder_context$,
              magnifierBuilder_controller$,
              magnifierBuilder_magnifierInfo$,
            ],
            {},
          );
      return TextMagnifierConfiguration(
        magnifierBuilder:
            magnifierBuilder == null ? null : magnifierBuilderProxy,
        shouldDisplayHandlesInMagnifier:
            shouldDisplayHandlesInMagnifier ?? true,
      );
    };
Function MagnifierController_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as MagnifierController;
Function MagnifierController_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is MagnifierController;
Function _MagnifierController_animationController$(
  m.Scope scope$,
  MagnifierController target$,
) =>
    () {
      return target$.animationController;
    };
void _MagnifierController_animationController_set$(
  m.Scope scope$,
  MagnifierController target$,
) =>
    (dynamic other$) {
      target$.animationController = other$;
    };
Function _MagnifierController_overlayEntry$(
  m.Scope scope$,
  MagnifierController target$,
) =>
    () {
      return target$.overlayEntry;
    };
Function _MagnifierController_shown$(
  m.Scope scope$,
  MagnifierController target$,
) =>
    () {
      return target$.shown;
    };
Function _MagnifierController__$(m.Scope scope$) =>
    ({AnimationController? animationController}) {
      return MagnifierController(animationController: animationController);
    };
Function _MagnifierController_show$(
  m.Scope scope$,
  MagnifierController target$,
) =>
    ({
      required BuildContext context,
      required m.FunctionPointer builder,
      Widget? debugRequiredFor,
      OverlayEntry? below,
    }) {
      Widget builderProxy(BuildContext builder_context$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            builder,
            [builder_context$],
            {},
          );
      return target$.show(
        below: below,
        builder: builderProxy,
        context: context,
        debugRequiredFor: debugRequiredFor,
      );
    };
Function _MagnifierController_hide$(
  m.Scope scope$,
  MagnifierController target$,
) =>
    target$.hide;
Function _MagnifierController_removeFromOverlay$(
  m.Scope scope$,
  MagnifierController target$,
) =>
    target$.removeFromOverlay;
Function _MagnifierController_shiftWithinBounds$(m.Scope scope$) =>
    MagnifierController.shiftWithinBounds;
Function MagnifierDecoration_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as MagnifierDecoration;
Function MagnifierDecoration_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is MagnifierDecoration;
Function _MagnifierDecoration_opacity$(
  m.Scope scope$,
  MagnifierDecoration target$,
) =>
    () {
      return target$.opacity;
    };
Function _MagnifierDecoration_hashCode$(
  m.Scope scope$,
  MagnifierDecoration target$,
) =>
    () {
      return target$.hashCode;
    };
Function _MagnifierDecoration__$(m.Scope scope$) => ({
      double? opacity,
      List? shadows,
      ShapeBorder? shape,
    }) {
      return MagnifierDecoration(
        opacity: opacity ?? 1,
        shadows: shadows == null ? null : List.from(shadows),
        shape: shape ?? const RoundedRectangleBorder(),
      );
    };
Function _MagnifierDecoration_eq$$(
  m.Scope scope$,
  MagnifierDecoration target$,
) =>
    (Object other$) => target$ == other$;
Function RawMagnifier_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as RawMagnifier;
Function RawMagnifier_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is RawMagnifier;
Function _RawMagnifier_child$(
  m.Scope scope$,
  RawMagnifier target$,
) =>
    () {
      return target$.child;
    };
Function _RawMagnifier_decoration$(
  m.Scope scope$,
  RawMagnifier target$,
) =>
    () {
      return target$.decoration;
    };
Function _RawMagnifier_focalPointOffset$(
  m.Scope scope$,
  RawMagnifier target$,
) =>
    () {
      return target$.focalPointOffset;
    };
Function _RawMagnifier_magnificationScale$(
  m.Scope scope$,
  RawMagnifier target$,
) =>
    () {
      return target$.magnificationScale;
    };
Function _RawMagnifier_size$(
  m.Scope scope$,
  RawMagnifier target$,
) =>
    () {
      return target$.size;
    };
Function _RawMagnifier__$(m.Scope scope$) => ({
      Key? key,
      Widget? child,
      MagnifierDecoration? decoration,
      Offset? focalPointOffset,
      double? magnificationScale,
      required Size size,
    }) {
      return RawMagnifier(
        child: child,
        decoration: decoration ?? const MagnifierDecoration(),
        focalPointOffset: focalPointOffset ?? Offset.zero,
        key: key,
        magnificationScale: magnificationScale ?? 1,
        size: size,
      );
    };
Function _RawMagnifier_build$(
  m.Scope scope$,
  RawMagnifier target$,
) =>
    target$.build;
