import 'package:flutter/src/painting/borders.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/painting/borders.dart@BorderSide@#as':
        (m.Scope scope, target) => () => target as BorderSide,
    'package:flutter/src/painting/borders.dart@BorderSide@#is':
        (m.Scope scope, target) => () => target is BorderSide,
    'package:flutter/src/painting/borders.dart@BorderSide@color':
        (m.Scope scope, BorderSide target) => target.color,
    'package:flutter/src/painting/borders.dart@BorderSide@width':
        (m.Scope scope, BorderSide target) => target.width,
    'package:flutter/src/painting/borders.dart@BorderSide@style':
        (m.Scope scope, BorderSide target) => target.style,
    'package:flutter/src/painting/borders.dart@BorderSide@none':
        (m.Scope scope) => BorderSide.none,
    'package:flutter/src/painting/borders.dart@BorderSide@strokeAlign':
        (m.Scope scope, BorderSide target) => target.strokeAlign,
    'package:flutter/src/painting/borders.dart@BorderSide@strokeAlignInside':
        (m.Scope scope) => BorderSide.strokeAlignInside,
    'package:flutter/src/painting/borders.dart@BorderSide@strokeAlignCenter':
        (m.Scope scope) => BorderSide.strokeAlignCenter,
    'package:flutter/src/painting/borders.dart@BorderSide@strokeAlignOutside':
        (m.Scope scope) => BorderSide.strokeAlignOutside,
    'package:flutter/src/painting/borders.dart@BorderSide@strokeInset':
        (m.Scope scope, BorderSide target) => target.strokeInset,
    'package:flutter/src/painting/borders.dart@BorderSide@strokeOutset':
        (m.Scope scope, BorderSide target) => target.strokeOutset,
    'package:flutter/src/painting/borders.dart@BorderSide@strokeOffset':
        (m.Scope scope, BorderSide target) => target.strokeOffset,
    'package:flutter/src/painting/borders.dart@BorderSide@hashCode':
        (m.Scope scope, BorderSide target) => target.hashCode,
    'package:flutter/src/painting/borders.dart@BorderSide@': (m.Scope scope) =>
        ({color, strokeAlign, style, width}) {
          return BorderSide(
              color: color ?? const Color(0xFF000000),
              strokeAlign: strokeAlign ?? BorderSide.strokeAlignInside,
              style: style ?? BorderStyle.solid,
              width: width ?? 1.0);
        },
    'package:flutter/src/painting/borders.dart@BorderSide@merge':
        (m.Scope scope) => BorderSide.merge,
    'package:flutter/src/painting/borders.dart@BorderSide@copyWith':
        (m.Scope scope, BorderSide target) => target.copyWith,
    'package:flutter/src/painting/borders.dart@BorderSide@scale':
        (m.Scope scope, BorderSide target) => target.scale,
    'package:flutter/src/painting/borders.dart@BorderSide@toPaint':
        (m.Scope scope, BorderSide target) => target.toPaint,
    'package:flutter/src/painting/borders.dart@BorderSide@canMerge':
        (m.Scope scope) => BorderSide.canMerge,
    'package:flutter/src/painting/borders.dart@BorderSide@lerp':
        (m.Scope scope) => BorderSide.lerp,
    'package:flutter/src/painting/borders.dart@BorderSide@==':
        (m.Scope scope, BorderSide target) => (other) => target == other,
    'package:flutter/src/painting/borders.dart@BorderSide@toStringShort':
        (m.Scope scope, BorderSide target) => target.toStringShort,
    'package:flutter/src/painting/borders.dart@BorderSide@debugFillProperties':
        (m.Scope scope, BorderSide target) => target.debugFillProperties,
    'package:flutter/src/painting/borders.dart@ShapeBorder@#as':
        (m.Scope scope, target) => () => target as ShapeBorder,
    'package:flutter/src/painting/borders.dart@ShapeBorder@#is':
        (m.Scope scope, target) => () => target is ShapeBorder,
    'package:flutter/src/painting/borders.dart@ShapeBorder@dimensions':
        (m.Scope scope, ShapeBorder target) => target.dimensions,
    'package:flutter/src/painting/borders.dart@ShapeBorder@preferPaintInterior':
        (m.Scope scope, ShapeBorder target) => target.preferPaintInterior,
    'package:flutter/src/painting/borders.dart@ShapeBorder@add':
        (m.Scope scope, ShapeBorder target) => target.add,
    'package:flutter/src/painting/borders.dart@ShapeBorder@+':
        (m.Scope scope, ShapeBorder target) => (other) => target + other,
    'package:flutter/src/painting/borders.dart@ShapeBorder@scale':
        (m.Scope scope, ShapeBorder target) => target.scale,
    'package:flutter/src/painting/borders.dart@ShapeBorder@lerpFrom':
        (m.Scope scope, ShapeBorder target) => target.lerpFrom,
    'package:flutter/src/painting/borders.dart@ShapeBorder@lerpTo':
        (m.Scope scope, ShapeBorder target) => target.lerpTo,
    'package:flutter/src/painting/borders.dart@ShapeBorder@lerp':
        (m.Scope scope) => ShapeBorder.lerp,
    'package:flutter/src/painting/borders.dart@ShapeBorder@getOuterPath':
        (m.Scope scope, ShapeBorder target) => target.getOuterPath,
    'package:flutter/src/painting/borders.dart@ShapeBorder@getInnerPath':
        (m.Scope scope, ShapeBorder target) => target.getInnerPath,
    'package:flutter/src/painting/borders.dart@ShapeBorder@paintInterior':
        (m.Scope scope, ShapeBorder target) => target.paintInterior,
    'package:flutter/src/painting/borders.dart@ShapeBorder@paint':
        (m.Scope scope, ShapeBorder target) => target.paint,
    'package:flutter/src/painting/borders.dart@ShapeBorder@toString':
        (m.Scope scope, ShapeBorder target) => target.toString,
    'package:flutter/src/painting/borders.dart@OutlinedBorder@#as':
        (m.Scope scope, target) => () => target as OutlinedBorder,
    'package:flutter/src/painting/borders.dart@OutlinedBorder@#is':
        (m.Scope scope, target) => () => target is OutlinedBorder,
    'package:flutter/src/painting/borders.dart@OutlinedBorder@side':
        (m.Scope scope, OutlinedBorder target) => target.side,
    'package:flutter/src/painting/borders.dart@OutlinedBorder@dimensions':
        (m.Scope scope, OutlinedBorder target) => target.dimensions,
    'package:flutter/src/painting/borders.dart@OutlinedBorder@copyWith':
        (m.Scope scope, OutlinedBorder target) => target.copyWith,
    'package:flutter/src/painting/borders.dart@OutlinedBorder@scale':
        (m.Scope scope, OutlinedBorder target) => target.scale,
    'package:flutter/src/painting/borders.dart@OutlinedBorder@lerpFrom':
        (m.Scope scope, OutlinedBorder target) => target.lerpFrom,
    'package:flutter/src/painting/borders.dart@OutlinedBorder@lerpTo':
        (m.Scope scope, OutlinedBorder target) => target.lerpTo,
    'package:flutter/src/painting/borders.dart@OutlinedBorder@lerp':
        (m.Scope scope) => OutlinedBorder.lerp,
    'package:flutter/src/painting/borders.dart@@paintBorder': (m.Scope scope) =>
        paintBorder,
  };
}
