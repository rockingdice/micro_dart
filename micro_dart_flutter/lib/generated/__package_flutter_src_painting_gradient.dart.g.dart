import 'package:flutter/src/painting/gradient.dart';
import 'dart:collection';
import 'dart:math';
import 'dart:ui' show Gradient, lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/painting/gradient.dart@GradientTransform@#as':
        (m.Scope scope, target) => () => target as GradientTransform,
    'package:flutter/src/painting/gradient.dart@GradientTransform@#is':
        (m.Scope scope, target) => () => target is GradientTransform,
    'package:flutter/src/painting/gradient.dart@GradientTransform@transform':
        (m.Scope scope, GradientTransform target) => target.transform,
    'package:flutter/src/painting/gradient.dart@GradientRotation@#as':
        (m.Scope scope, target) => () => target as GradientRotation,
    'package:flutter/src/painting/gradient.dart@GradientRotation@#is':
        (m.Scope scope, target) => () => target is GradientRotation,
    'package:flutter/src/painting/gradient.dart@GradientRotation@radians':
        (m.Scope scope, GradientRotation target) => target.radians,
    'package:flutter/src/painting/gradient.dart@GradientRotation@hashCode':
        (m.Scope scope, GradientRotation target) => target.hashCode,
    'package:flutter/src/painting/gradient.dart@GradientRotation@':
        (m.Scope scope) => (radians) {
              return GradientRotation(radians);
            },
    'package:flutter/src/painting/gradient.dart@GradientRotation@transform':
        (m.Scope scope, GradientRotation target) => target.transform,
    'package:flutter/src/painting/gradient.dart@GradientRotation@==':
        (m.Scope scope, GradientRotation target) => (other) => target == other,
    'package:flutter/src/painting/gradient.dart@GradientRotation@toString':
        (m.Scope scope, GradientRotation target) => target.toString,
    'package:flutter/src/painting/gradient.dart@Gradient@#as':
        (m.Scope scope, target) => () => target as Gradient,
    'package:flutter/src/painting/gradient.dart@Gradient@#is':
        (m.Scope scope, target) => () => target is Gradient,
    'package:flutter/src/painting/gradient.dart@Gradient@colors':
        (m.Scope scope, Gradient target) => target.colors,
    'package:flutter/src/painting/gradient.dart@Gradient@stops':
        (m.Scope scope, Gradient target) => target.stops,
    'package:flutter/src/painting/gradient.dart@Gradient@transform':
        (m.Scope scope, Gradient target) => target.transform,
    'package:flutter/src/painting/gradient.dart@Gradient@createShader':
        (m.Scope scope, Gradient target) => target.createShader,
    'package:flutter/src/painting/gradient.dart@Gradient@scale':
        (m.Scope scope, Gradient target) => target.scale,
    'package:flutter/src/painting/gradient.dart@Gradient@lerpFrom':
        (m.Scope scope, Gradient target) => target.lerpFrom,
    'package:flutter/src/painting/gradient.dart@Gradient@lerpTo':
        (m.Scope scope, Gradient target) => target.lerpTo,
    'package:flutter/src/painting/gradient.dart@Gradient@lerp':
        (m.Scope scope) => Gradient.lerp,
    'package:flutter/src/painting/gradient.dart@LinearGradient@#as':
        (m.Scope scope, target) => () => target as LinearGradient,
    'package:flutter/src/painting/gradient.dart@LinearGradient@#is':
        (m.Scope scope, target) => () => target is LinearGradient,
    'package:flutter/src/painting/gradient.dart@LinearGradient@begin':
        (m.Scope scope, LinearGradient target) => target.begin,
    'package:flutter/src/painting/gradient.dart@LinearGradient@end':
        (m.Scope scope, LinearGradient target) => target.end,
    'package:flutter/src/painting/gradient.dart@LinearGradient@tileMode':
        (m.Scope scope, LinearGradient target) => target.tileMode,
    'package:flutter/src/painting/gradient.dart@LinearGradient@hashCode':
        (m.Scope scope, LinearGradient target) => target.hashCode,
    'package:flutter/src/painting/gradient.dart@LinearGradient@':
        (m.Scope scope) => ({begin, colors, end, stops, tileMode, transform}) {
              return LinearGradient(
                  begin: begin ?? Alignment.centerLeft,
                  colors: colors,
                  end: end ?? Alignment.centerRight,
                  stops: stops,
                  tileMode: tileMode ?? TileMode.clamp,
                  transform: transform);
            },
    'package:flutter/src/painting/gradient.dart@LinearGradient@createShader':
        (m.Scope scope, LinearGradient target) => target.createShader,
    'package:flutter/src/painting/gradient.dart@LinearGradient@scale':
        (m.Scope scope, LinearGradient target) => target.scale,
    'package:flutter/src/painting/gradient.dart@LinearGradient@lerpFrom':
        (m.Scope scope, LinearGradient target) => target.lerpFrom,
    'package:flutter/src/painting/gradient.dart@LinearGradient@lerpTo':
        (m.Scope scope, LinearGradient target) => target.lerpTo,
    'package:flutter/src/painting/gradient.dart@LinearGradient@lerp':
        (m.Scope scope) => LinearGradient.lerp,
    'package:flutter/src/painting/gradient.dart@LinearGradient@==':
        (m.Scope scope, LinearGradient target) => (other) => target == other,
    'package:flutter/src/painting/gradient.dart@LinearGradient@toString':
        (m.Scope scope, LinearGradient target) => target.toString,
    'package:flutter/src/painting/gradient.dart@RadialGradient@#as':
        (m.Scope scope, target) => () => target as RadialGradient,
    'package:flutter/src/painting/gradient.dart@RadialGradient@#is':
        (m.Scope scope, target) => () => target is RadialGradient,
    'package:flutter/src/painting/gradient.dart@RadialGradient@center':
        (m.Scope scope, RadialGradient target) => target.center,
    'package:flutter/src/painting/gradient.dart@RadialGradient@radius':
        (m.Scope scope, RadialGradient target) => target.radius,
    'package:flutter/src/painting/gradient.dart@RadialGradient@tileMode':
        (m.Scope scope, RadialGradient target) => target.tileMode,
    'package:flutter/src/painting/gradient.dart@RadialGradient@focal':
        (m.Scope scope, RadialGradient target) => target.focal,
    'package:flutter/src/painting/gradient.dart@RadialGradient@focalRadius':
        (m.Scope scope, RadialGradient target) => target.focalRadius,
    'package:flutter/src/painting/gradient.dart@RadialGradient@hashCode':
        (m.Scope scope, RadialGradient target) => target.hashCode,
    'package:flutter/src/painting/gradient.dart@RadialGradient@':
        (m.Scope scope) => (
                {center,
                colors,
                focal,
                focalRadius,
                radius,
                stops,
                tileMode,
                transform}) {
              return RadialGradient(
                  center: center ?? Alignment.center,
                  colors: colors,
                  focal: focal,
                  focalRadius: focalRadius ?? 0.0,
                  radius: radius ?? 0.5,
                  stops: stops,
                  tileMode: tileMode ?? TileMode.clamp,
                  transform: transform);
            },
    'package:flutter/src/painting/gradient.dart@RadialGradient@createShader':
        (m.Scope scope, RadialGradient target) => target.createShader,
    'package:flutter/src/painting/gradient.dart@RadialGradient@scale':
        (m.Scope scope, RadialGradient target) => target.scale,
    'package:flutter/src/painting/gradient.dart@RadialGradient@lerpFrom':
        (m.Scope scope, RadialGradient target) => target.lerpFrom,
    'package:flutter/src/painting/gradient.dart@RadialGradient@lerpTo':
        (m.Scope scope, RadialGradient target) => target.lerpTo,
    'package:flutter/src/painting/gradient.dart@RadialGradient@lerp':
        (m.Scope scope) => RadialGradient.lerp,
    'package:flutter/src/painting/gradient.dart@RadialGradient@==':
        (m.Scope scope, RadialGradient target) => (other) => target == other,
    'package:flutter/src/painting/gradient.dart@RadialGradient@toString':
        (m.Scope scope, RadialGradient target) => target.toString,
    'package:flutter/src/painting/gradient.dart@SweepGradient@#as':
        (m.Scope scope, target) => () => target as SweepGradient,
    'package:flutter/src/painting/gradient.dart@SweepGradient@#is':
        (m.Scope scope, target) => () => target is SweepGradient,
    'package:flutter/src/painting/gradient.dart@SweepGradient@center':
        (m.Scope scope, SweepGradient target) => target.center,
    'package:flutter/src/painting/gradient.dart@SweepGradient@startAngle':
        (m.Scope scope, SweepGradient target) => target.startAngle,
    'package:flutter/src/painting/gradient.dart@SweepGradient@endAngle':
        (m.Scope scope, SweepGradient target) => target.endAngle,
    'package:flutter/src/painting/gradient.dart@SweepGradient@tileMode':
        (m.Scope scope, SweepGradient target) => target.tileMode,
    'package:flutter/src/painting/gradient.dart@SweepGradient@hashCode':
        (m.Scope scope, SweepGradient target) => target.hashCode,
    'package:flutter/src/painting/gradient.dart@SweepGradient@':
        (m.Scope scope) => (
                {center,
                colors,
                endAngle,
                startAngle,
                stops,
                tileMode,
                transform}) {
              return SweepGradient(
                  center: center ?? Alignment.center,
                  colors: colors,
                  endAngle: endAngle ?? pi * 2,
                  startAngle: startAngle ?? 0.0,
                  stops: stops,
                  tileMode: tileMode ?? TileMode.clamp,
                  transform: transform);
            },
    'package:flutter/src/painting/gradient.dart@SweepGradient@createShader':
        (m.Scope scope, SweepGradient target) => target.createShader,
    'package:flutter/src/painting/gradient.dart@SweepGradient@scale':
        (m.Scope scope, SweepGradient target) => target.scale,
    'package:flutter/src/painting/gradient.dart@SweepGradient@lerpFrom':
        (m.Scope scope, SweepGradient target) => target.lerpFrom,
    'package:flutter/src/painting/gradient.dart@SweepGradient@lerpTo':
        (m.Scope scope, SweepGradient target) => target.lerpTo,
    'package:flutter/src/painting/gradient.dart@SweepGradient@lerp':
        (m.Scope scope) => SweepGradient.lerp,
    'package:flutter/src/painting/gradient.dart@SweepGradient@==':
        (m.Scope scope, SweepGradient target) => (other) => target == other,
    'package:flutter/src/painting/gradient.dart@SweepGradient@toString':
        (m.Scope scope, SweepGradient target) => target.toString,
  };
}
