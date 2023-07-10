import 'package:flutter/src/material/snack_bar_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@#as':
        (m.Scope scope, target) => () => target as SnackBarThemeData,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@#is':
        (m.Scope scope, target) => () => target is SnackBarThemeData,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@backgroundColor':
        (m.Scope scope, SnackBarThemeData target) => target.backgroundColor,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@actionTextColor':
        (m.Scope scope, SnackBarThemeData target) => target.actionTextColor,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@disabledActionTextColor':
        (m.Scope scope, SnackBarThemeData target) =>
            target.disabledActionTextColor,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@contentTextStyle':
        (m.Scope scope, SnackBarThemeData target) => target.contentTextStyle,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@elevation':
        (m.Scope scope, SnackBarThemeData target) => target.elevation,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@shape':
        (m.Scope scope, SnackBarThemeData target) => target.shape,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@behavior':
        (m.Scope scope, SnackBarThemeData target) => target.behavior,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@width':
        (m.Scope scope, SnackBarThemeData target) => target.width,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@insetPadding':
        (m.Scope scope, SnackBarThemeData target) => target.insetPadding,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@showCloseIcon':
        (m.Scope scope, SnackBarThemeData target) => target.showCloseIcon,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@closeIconColor':
        (m.Scope scope, SnackBarThemeData target) => target.closeIconColor,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@actionOverflowThreshold':
        (m.Scope scope, SnackBarThemeData target) =>
            target.actionOverflowThreshold,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@actionBackgroundColor':
        (m.Scope scope, SnackBarThemeData target) =>
            target.actionBackgroundColor,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@disabledActionBackgroundColor':
        (m.Scope scope, SnackBarThemeData target) =>
            target.disabledActionBackgroundColor,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@hashCode':
        (m.Scope scope, SnackBarThemeData target) => target.hashCode,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@':
        (m.Scope scope) => (
                {actionBackgroundColor,
                actionOverflowThreshold,
                actionTextColor,
                backgroundColor,
                behavior,
                closeIconColor,
                contentTextStyle,
                disabledActionBackgroundColor,
                disabledActionTextColor,
                elevation,
                insetPadding,
                shape,
                showCloseIcon,
                width}) {
              return SnackBarThemeData(
                  actionBackgroundColor: actionBackgroundColor,
                  actionOverflowThreshold: actionOverflowThreshold,
                  actionTextColor: actionTextColor,
                  backgroundColor: backgroundColor,
                  behavior: behavior,
                  closeIconColor: closeIconColor,
                  contentTextStyle: contentTextStyle,
                  disabledActionBackgroundColor: disabledActionBackgroundColor,
                  disabledActionTextColor: disabledActionTextColor,
                  elevation: elevation,
                  insetPadding: insetPadding,
                  shape: shape,
                  showCloseIcon: showCloseIcon,
                  width: width);
            },
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@copyWith':
        (m.Scope scope, SnackBarThemeData target) => target.copyWith,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@lerp':
        (m.Scope scope) => SnackBarThemeData.lerp,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@==':
        (m.Scope scope, SnackBarThemeData target) => (other) => target == other,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarThemeData@debugFillProperties':
        (m.Scope scope, SnackBarThemeData target) => target.debugFillProperties,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarBehavior@floating':
        (m.Scope scope) => SnackBarBehavior.floating,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarBehavior@fixed':
        (m.Scope scope) => SnackBarBehavior.fixed,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarBehavior@values':
        (m.Scope scope) => SnackBarBehavior.values,
    'package:flutter/src/material/snack_bar_theme.dart@SnackBarBehavior@index':
        (m.Scope scope, SnackBarBehavior target) => target.index,
  };
}
