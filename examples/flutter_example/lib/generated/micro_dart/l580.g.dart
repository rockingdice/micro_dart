import 'package:flutter/src/painting/box_shadow.dart';
import 'dart:math';
import 'dart:ui' show Shadow, lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/debug.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@#as':
        (m.Scope scope, target) => () => target as BoxShadow,
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@#is':
        (m.Scope scope, target) => () => target is BoxShadow,
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@spreadRadius':
        (m.Scope scope, BoxShadow target) => target.spreadRadius,
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@blurStyle':
        (m.Scope scope, BoxShadow target) => target.blurStyle,
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@hashCode':
        (m.Scope scope, BoxShadow target) => target.hashCode,
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@':
        (m.Scope scope) =>
            ({blurRadius, blurStyle, color, offset, spreadRadius}) {
              return BoxShadow(
                  blurRadius: blurRadius ?? 0.0,
                  blurStyle: blurStyle ?? BlurStyle.normal,
                  color: color ?? const Color(0xFF000000),
                  offset: offset ?? Offset.zero,
                  spreadRadius: spreadRadius ?? 0.0);
            },
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@toPaint':
        (m.Scope scope, BoxShadow target) => target.toPaint,
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@scale':
        (m.Scope scope, BoxShadow target) => target.scale,
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@lerp':
        (m.Scope scope) => BoxShadow.lerp,
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@lerpList':
        (m.Scope scope) => BoxShadow.lerpList,
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@==':
        (m.Scope scope, BoxShadow target) => (other) => target == other,
    'package:flutter/src/painting/box_shadow.dart@BoxShadow@toString':
        (m.Scope scope, BoxShadow target) => target.toString,
  };
}
