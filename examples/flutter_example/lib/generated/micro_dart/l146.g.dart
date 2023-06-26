import 'package:flutter/src/material/progress_indicator.dart';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/progress_indicator_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/material/progress_indicator.dart@ProgressIndicator@#as':
        (m.Scope scope, target) => () => target as ProgressIndicator,
    'package:flutter/src/material/progress_indicator.dart@ProgressIndicator@#is':
        (m.Scope scope, target) => () => target is ProgressIndicator,
    'package:flutter/src/material/progress_indicator.dart@ProgressIndicator@value':
        (m.Scope scope, ProgressIndicator target) => target.value,
    'package:flutter/src/material/progress_indicator.dart@ProgressIndicator@backgroundColor':
        (m.Scope scope, ProgressIndicator target) => target.backgroundColor,
    'package:flutter/src/material/progress_indicator.dart@ProgressIndicator@color':
        (m.Scope scope, ProgressIndicator target) => target.color,
    'package:flutter/src/material/progress_indicator.dart@ProgressIndicator@valueColor':
        (m.Scope scope, ProgressIndicator target) => target.valueColor,
    'package:flutter/src/material/progress_indicator.dart@ProgressIndicator@semanticsLabel':
        (m.Scope scope, ProgressIndicator target) => target.semanticsLabel,
    'package:flutter/src/material/progress_indicator.dart@ProgressIndicator@semanticsValue':
        (m.Scope scope, ProgressIndicator target) => target.semanticsValue,
    'package:flutter/src/material/progress_indicator.dart@ProgressIndicator@debugFillProperties':
        (m.Scope scope, ProgressIndicator target) => target.debugFillProperties,
    'package:flutter/src/material/progress_indicator.dart@LinearProgressIndicator@#as':
        (m.Scope scope, target) => () => target as LinearProgressIndicator,
    'package:flutter/src/material/progress_indicator.dart@LinearProgressIndicator@#is':
        (m.Scope scope, target) => () => target is LinearProgressIndicator,
    'package:flutter/src/material/progress_indicator.dart@LinearProgressIndicator@minHeight':
        (m.Scope scope, LinearProgressIndicator target) => target.minHeight,
    'package:flutter/src/material/progress_indicator.dart@LinearProgressIndicator@backgroundColor':
        (m.Scope scope, LinearProgressIndicator target) =>
            target.backgroundColor,
    'package:flutter/src/material/progress_indicator.dart@LinearProgressIndicator@':
        (m.Scope scope) => (
                {backgroundColor,
                color,
                key,
                minHeight,
                semanticsLabel,
                semanticsValue,
                value,
                valueColor}) {
              return LinearProgressIndicator(
                  backgroundColor: backgroundColor,
                  color: color,
                  key: key,
                  minHeight: minHeight,
                  semanticsLabel: semanticsLabel,
                  semanticsValue: semanticsValue,
                  value: value,
                  valueColor: valueColor);
            },
    'package:flutter/src/material/progress_indicator.dart@LinearProgressIndicator@createState':
        (m.Scope scope, LinearProgressIndicator target) => target.createState,
    'package:flutter/src/material/progress_indicator.dart@CircularProgressIndicator@#as':
        (m.Scope scope, target) => () => target as CircularProgressIndicator,
    'package:flutter/src/material/progress_indicator.dart@CircularProgressIndicator@#is':
        (m.Scope scope, target) => () => target is CircularProgressIndicator,
    'package:flutter/src/material/progress_indicator.dart@CircularProgressIndicator@strokeWidth':
        (m.Scope scope, CircularProgressIndicator target) => target.strokeWidth,
    'package:flutter/src/material/progress_indicator.dart@CircularProgressIndicator@backgroundColor':
        (m.Scope scope, CircularProgressIndicator target) =>
            target.backgroundColor,
    'package:flutter/src/material/progress_indicator.dart@CircularProgressIndicator@':
        (m.Scope scope) => (
                {backgroundColor,
                color,
                key,
                semanticsLabel,
                semanticsValue,
                strokeWidth,
                value,
                valueColor}) {
              return CircularProgressIndicator(
                  backgroundColor: backgroundColor,
                  color: color,
                  key: key,
                  semanticsLabel: semanticsLabel,
                  semanticsValue: semanticsValue,
                  strokeWidth: strokeWidth ?? 4.0,
                  value: value,
                  valueColor: valueColor);
            },
    'package:flutter/src/material/progress_indicator.dart@CircularProgressIndicator@adaptive':
        (m.Scope scope) => CircularProgressIndicator.adaptive,
    'package:flutter/src/material/progress_indicator.dart@CircularProgressIndicator@createState':
        (m.Scope scope, CircularProgressIndicator target) => target.createState,
    'package:flutter/src/material/progress_indicator.dart@RefreshProgressIndicator@#as':
        (m.Scope scope, target) => () => target as RefreshProgressIndicator,
    'package:flutter/src/material/progress_indicator.dart@RefreshProgressIndicator@#is':
        (m.Scope scope, target) => () => target is RefreshProgressIndicator,
    'package:flutter/src/material/progress_indicator.dart@RefreshProgressIndicator@defaultStrokeWidth':
        (m.Scope scope) => RefreshProgressIndicator.defaultStrokeWidth,
    'package:flutter/src/material/progress_indicator.dart@RefreshProgressIndicator@backgroundColor':
        (m.Scope scope, RefreshProgressIndicator target) =>
            target.backgroundColor,
    'package:flutter/src/material/progress_indicator.dart@RefreshProgressIndicator@':
        (m.Scope scope) => (
                {backgroundColor,
                color,
                key,
                semanticsLabel,
                semanticsValue,
                strokeWidth,
                value,
                valueColor}) {
              return RefreshProgressIndicator(
                  backgroundColor: backgroundColor,
                  color: color,
                  key: key,
                  semanticsLabel: semanticsLabel,
                  semanticsValue: semanticsValue,
                  strokeWidth: strokeWidth ??
                      RefreshProgressIndicator.defaultStrokeWidth,
                  value: value,
                  valueColor: valueColor);
            },
    'package:flutter/src/material/progress_indicator.dart@RefreshProgressIndicator@createState':
        (m.Scope scope, RefreshProgressIndicator target) => target.createState,
  };
}
