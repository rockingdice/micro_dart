// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/painting/borders.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/edge_insets.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/painting/borders.dart',
  {
    'BorderSide.none': _BorderSide_none$,
    'BorderSide.strokeAlignInside': _BorderSide_strokeAlignInside$,
    'BorderSide.strokeAlignCenter': _BorderSide_strokeAlignCenter$,
    'BorderSide.strokeAlignOutside': _BorderSide_strokeAlignOutside$,
    'BorderSide.': _BorderSide__$,
    'BorderSide.merge': _BorderSide_merge$,
    'BorderSide.canMerge': _BorderSide_canMerge$,
    'BorderSide.lerp': _BorderSide_lerp$,
    'ShapeBorder.lerp': _ShapeBorder_lerp$,
    'OutlinedBorder.lerp': _OutlinedBorder_lerp$,
    'BorderStyle.none': _BorderStyle_none$,
    'BorderStyle.solid': _BorderStyle_solid$,
    'BorderStyle.values': _BorderStyle_values$,
    'paintBorder': _paintBorder$,
  },
  {},
  {
    'BorderSide': m.ClassMirror(
      'BorderSide',
      {
        '#as': BorderSide_as$,
        '#is': BorderSide_is$,
        'color': _BorderSide_color$,
        'width': _BorderSide_width$,
        'style': _BorderSide_style$,
        'strokeAlign': _BorderSide_strokeAlign$,
        'strokeInset': _BorderSide_strokeInset$,
        'strokeOutset': _BorderSide_strokeOutset$,
        'strokeOffset': _BorderSide_strokeOffset$,
        'hashCode': _BorderSide_hashCode$,
        'copyWith': _BorderSide_copyWith$,
        'scale': _BorderSide_scale$,
        'toPaint': _BorderSide_toPaint$,
        '==': _BorderSide_eq$$,
        'toStringShort': _BorderSide_toStringShort$,
        'debugFillProperties': _BorderSide_debugFillProperties$,
      },
      {},
    ),
    'ShapeBorder': m.ClassMirror(
      'ShapeBorder',
      {
        '#as': ShapeBorder_as$,
        '#is': ShapeBorder_is$,
        'dimensions': _ShapeBorder_dimensions$,
        'preferPaintInterior': _ShapeBorder_preferPaintInterior$,
        'add': _ShapeBorder_add$,
        '+': _ShapeBorder_plus$$,
        'scale': _ShapeBorder_scale$,
        'lerpFrom': _ShapeBorder_lerpFrom$,
        'lerpTo': _ShapeBorder_lerpTo$,
        'getOuterPath': _ShapeBorder_getOuterPath$,
        'getInnerPath': _ShapeBorder_getInnerPath$,
        'paintInterior': _ShapeBorder_paintInterior$,
        'paint': _ShapeBorder_paint$,
        'toString': _ShapeBorder_toString$,
      },
      {},
    ),
    'OutlinedBorder': m.ClassMirror(
      'OutlinedBorder',
      {
        '#as': OutlinedBorder_as$,
        '#is': OutlinedBorder_is$,
        'side': _OutlinedBorder_side$,
        'dimensions': _OutlinedBorder_dimensions$,
        'copyWith': _OutlinedBorder_copyWith$,
        'scale': _OutlinedBorder_scale$,
        'lerpFrom': _OutlinedBorder_lerpFrom$,
        'lerpTo': _OutlinedBorder_lerpTo$,
      },
      {},
    ),
    'BorderStyle': m.ClassMirror(
      'BorderStyle',
      {},
      {},
    ),
  },
);
Function BorderSide_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as BorderSide;
Function BorderSide_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is BorderSide;
Function _BorderSide_color$(
  m.Scope scope$,
  BorderSide target$,
) =>
    () {
      return target$.color;
    };
Function _BorderSide_width$(
  m.Scope scope$,
  BorderSide target$,
) =>
    () {
      return target$.width;
    };
Function _BorderSide_style$(
  m.Scope scope$,
  BorderSide target$,
) =>
    () {
      return target$.style;
    };
Function _BorderSide_none$(m.Scope scope$) => () => BorderSide.none;
Function _BorderSide_strokeAlign$(
  m.Scope scope$,
  BorderSide target$,
) =>
    () {
      return target$.strokeAlign;
    };
Function _BorderSide_strokeAlignInside$(m.Scope scope$) =>
    () => BorderSide.strokeAlignInside;
Function _BorderSide_strokeAlignCenter$(m.Scope scope$) =>
    () => BorderSide.strokeAlignCenter;
Function _BorderSide_strokeAlignOutside$(m.Scope scope$) =>
    () => BorderSide.strokeAlignOutside;
Function _BorderSide_strokeInset$(
  m.Scope scope$,
  BorderSide target$,
) =>
    () {
      return target$.strokeInset;
    };
Function _BorderSide_strokeOutset$(
  m.Scope scope$,
  BorderSide target$,
) =>
    () {
      return target$.strokeOutset;
    };
Function _BorderSide_strokeOffset$(
  m.Scope scope$,
  BorderSide target$,
) =>
    () {
      return target$.strokeOffset;
    };
Function _BorderSide_hashCode$(
  m.Scope scope$,
  BorderSide target$,
) =>
    () {
      return target$.hashCode;
    };
Function _BorderSide__$(m.Scope scope$) => ({
      Color? color,
      double? width,
      BorderStyle? style,
      double? strokeAlign,
    }) {
      return BorderSide(
        color: color ?? const Color(0xFF000000),
        strokeAlign: strokeAlign ?? BorderSide.strokeAlignInside,
        style: style ?? BorderStyle.solid,
        width: width ?? 1.0,
      );
    };
Function _BorderSide_merge$(m.Scope scope$) => BorderSide.merge;
Function _BorderSide_copyWith$(
  m.Scope scope$,
  BorderSide target$,
) =>
    target$.copyWith;
Function _BorderSide_scale$(
  m.Scope scope$,
  BorderSide target$,
) =>
    target$.scale;
Function _BorderSide_toPaint$(
  m.Scope scope$,
  BorderSide target$,
) =>
    target$.toPaint;
Function _BorderSide_canMerge$(m.Scope scope$) => BorderSide.canMerge;
Function _BorderSide_lerp$(m.Scope scope$) => BorderSide.lerp;
Function _BorderSide_eq$$(
  m.Scope scope$,
  BorderSide target$,
) =>
    (Object other$) => target$ == other$;
Function _BorderSide_toStringShort$(
  m.Scope scope$,
  BorderSide target$,
) =>
    target$.toStringShort;
Function _BorderSide_debugFillProperties$(
  m.Scope scope$,
  BorderSide target$,
) =>
    target$.debugFillProperties;
Function ShapeBorder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ShapeBorder;
Function ShapeBorder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ShapeBorder;
Function _ShapeBorder_dimensions$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    () {
      return target$.dimensions;
    };
Function _ShapeBorder_preferPaintInterior$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    () {
      return target$.preferPaintInterior;
    };
Function _ShapeBorder_add$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    target$.add;
Function _ShapeBorder_plus$$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    (ShapeBorder other$) => target$ + other$;
Function _ShapeBorder_scale$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    target$.scale;
Function _ShapeBorder_lerpFrom$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    target$.lerpFrom;
Function _ShapeBorder_lerpTo$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    target$.lerpTo;
Function _ShapeBorder_lerp$(m.Scope scope$) => ShapeBorder.lerp;
Function _ShapeBorder_getOuterPath$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    target$.getOuterPath;
Function _ShapeBorder_getInnerPath$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    target$.getInnerPath;
Function _ShapeBorder_paintInterior$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    target$.paintInterior;
Function _ShapeBorder_paint$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    target$.paint;
Function _ShapeBorder_toString$(
  m.Scope scope$,
  ShapeBorder target$,
) =>
    target$.toString;
Function OutlinedBorder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as OutlinedBorder;
Function OutlinedBorder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is OutlinedBorder;
Function _OutlinedBorder_side$(
  m.Scope scope$,
  OutlinedBorder target$,
) =>
    () {
      return target$.side;
    };
Function _OutlinedBorder_dimensions$(
  m.Scope scope$,
  OutlinedBorder target$,
) =>
    () {
      return target$.dimensions;
    };
Function _OutlinedBorder_copyWith$(
  m.Scope scope$,
  OutlinedBorder target$,
) =>
    target$.copyWith;
Function _OutlinedBorder_scale$(
  m.Scope scope$,
  OutlinedBorder target$,
) =>
    target$.scale;
Function _OutlinedBorder_lerpFrom$(
  m.Scope scope$,
  OutlinedBorder target$,
) =>
    target$.lerpFrom;
Function _OutlinedBorder_lerpTo$(
  m.Scope scope$,
  OutlinedBorder target$,
) =>
    target$.lerpTo;
Function _OutlinedBorder_lerp$(m.Scope scope$) => OutlinedBorder.lerp;
Function _BorderStyle_none$(m.Scope scope$) => () => BorderStyle.none;
Function _BorderStyle_solid$(m.Scope scope$) => () => BorderStyle.solid;
Function _BorderStyle_values$(m.Scope scope$) => () => BorderStyle.values;
Function _paintBorder$(m.Scope scope$) => paintBorder;
