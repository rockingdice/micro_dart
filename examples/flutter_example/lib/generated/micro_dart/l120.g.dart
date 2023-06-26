import 'package:flutter/src/material/magnifier.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/material/magnifier.dart@TextMagnifier@#as':
        (m.Scope scope, target) => () => target as TextMagnifier,
    'package:flutter/src/material/magnifier.dart@TextMagnifier@#is':
        (m.Scope scope, target) => () => target is TextMagnifier,
    'package:flutter/src/material/magnifier.dart@TextMagnifier@adaptiveMagnifierConfiguration':
        (m.Scope scope) => TextMagnifier.adaptiveMagnifierConfiguration,
    'package:flutter/src/material/magnifier.dart@TextMagnifier@adaptiveMagnifierConfiguration:set':
        (m.Scope scope) =>
            (other) => TextMagnifier.adaptiveMagnifierConfiguration = other,
    'package:flutter/src/material/magnifier.dart@TextMagnifier@jumpBetweenLinesAnimationDuration':
        (m.Scope scope) => TextMagnifier.jumpBetweenLinesAnimationDuration,
    'package:flutter/src/material/magnifier.dart@TextMagnifier@magnifierInfo':
        (m.Scope scope, TextMagnifier target) => target.magnifierInfo,
    'package:flutter/src/material/magnifier.dart@TextMagnifier@':
        (m.Scope scope) => TextMagnifier,
    'package:flutter/src/material/magnifier.dart@TextMagnifier@createState':
        (m.Scope scope, TextMagnifier target) => target.createState,
    'package:flutter/src/material/magnifier.dart@Magnifier@#as':
        (m.Scope scope, target) => () => target as Magnifier,
    'package:flutter/src/material/magnifier.dart@Magnifier@#is':
        (m.Scope scope, target) => () => target is Magnifier,
    'package:flutter/src/material/magnifier.dart@Magnifier@kDefaultMagnifierSize':
        (m.Scope scope) => Magnifier.kDefaultMagnifierSize,
    'package:flutter/src/material/magnifier.dart@Magnifier@kStandardVerticalFocalPointShift':
        (m.Scope scope) => Magnifier.kStandardVerticalFocalPointShift,
    'package:flutter/src/material/magnifier.dart@Magnifier@additionalFocalPointOffset':
        (m.Scope scope, Magnifier target) => target.additionalFocalPointOffset,
    'package:flutter/src/material/magnifier.dart@Magnifier@borderRadius':
        (m.Scope scope, Magnifier target) => target.borderRadius,
    'package:flutter/src/material/magnifier.dart@Magnifier@filmColor':
        (m.Scope scope, Magnifier target) => target.filmColor,
    'package:flutter/src/material/magnifier.dart@Magnifier@shadows':
        (m.Scope scope, Magnifier target) => target.shadows,
    'package:flutter/src/material/magnifier.dart@Magnifier@size':
        (m.Scope scope, Magnifier target) => target.size,
    'package:flutter/src/material/magnifier.dart@Magnifier@': (m.Scope scope) =>
        (
            {additionalFocalPointOffset,
            borderRadius,
            filmColor,
            key,
            shadows,
            size}) {
          return Magnifier(
              additionalFocalPointOffset:
                  additionalFocalPointOffset ?? Offset.zero,
              borderRadius:
                  borderRadius ?? const BorderRadius.all(Radius.circular(40)),
              filmColor: filmColor ?? const Color.fromARGB(8, 158, 158, 158),
              key: key,
              shadows: shadows ??
                  const <BoxShadow>[
                    BoxShadow(
                        blurRadius: 1.5,
                        offset: Offset(0, 2),
                        spreadRadius: 0.75,
                        color: Color.fromARGB(25, 0, 0, 0))
                  ],
              size: size ?? Magnifier.kDefaultMagnifierSize);
        },
    'package:flutter/src/material/magnifier.dart@Magnifier@build':
        (m.Scope scope, Magnifier target) => target.build,
  };
}
