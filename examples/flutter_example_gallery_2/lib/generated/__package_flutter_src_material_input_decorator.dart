// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/material/input_decorator.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icon_button_theme.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/material/input_decorator.dart',
  {
    'InputDecoration.': _InputDecoration__$,
    'InputDecoration.collapsed': _InputDecoration_collapsed_$,
    'InputDecorationTheme.': _InputDecorationTheme__$,
  },
  {},
  {},
);
Function _InputDecoration__$(m.Scope scope$) => ({
      Widget? icon,
      Color? iconColor,
      Widget? label,
      String? labelText,
      TextStyle? labelStyle,
      TextStyle? floatingLabelStyle,
      String? helperText,
      TextStyle? helperStyle,
      int? helperMaxLines,
      String? hintText,
      TextStyle? hintStyle,
      TextDirection? hintTextDirection,
      int? hintMaxLines,
      String? errorText,
      TextStyle? errorStyle,
      int? errorMaxLines,
      FloatingLabelBehavior? floatingLabelBehavior,
      FloatingLabelAlignment? floatingLabelAlignment,
      bool? isCollapsed,
      bool? isDense,
      EdgeInsetsGeometry? contentPadding,
      Widget? prefixIcon,
      BoxConstraints? prefixIconConstraints,
      Widget? prefix,
      String? prefixText,
      TextStyle? prefixStyle,
      Color? prefixIconColor,
      Widget? suffixIcon,
      Widget? suffix,
      String? suffixText,
      TextStyle? suffixStyle,
      Color? suffixIconColor,
      BoxConstraints? suffixIconConstraints,
      Widget? counter,
      String? counterText,
      TextStyle? counterStyle,
      bool? filled,
      Color? fillColor,
      Color? focusColor,
      Color? hoverColor,
      InputBorder? errorBorder,
      InputBorder? focusedBorder,
      InputBorder? focusedErrorBorder,
      InputBorder? disabledBorder,
      InputBorder? enabledBorder,
      InputBorder? border,
      bool? enabled,
      String? semanticCounterText,
      bool? alignLabelWithHint,
      BoxConstraints? constraints,
    }) {
      return InputDecoration(
        alignLabelWithHint: alignLabelWithHint,
        border: border,
        constraints: constraints,
        contentPadding: contentPadding,
        counter: counter,
        counterStyle: counterStyle,
        counterText: counterText,
        disabledBorder: disabledBorder,
        enabled: enabled ?? true,
        enabledBorder: enabledBorder,
        errorBorder: errorBorder,
        errorMaxLines: errorMaxLines,
        errorStyle: errorStyle,
        errorText: errorText,
        fillColor: fillColor,
        filled: filled,
        floatingLabelAlignment: floatingLabelAlignment,
        floatingLabelBehavior: floatingLabelBehavior,
        floatingLabelStyle: floatingLabelStyle,
        focusColor: focusColor,
        focusedBorder: focusedBorder,
        focusedErrorBorder: focusedErrorBorder,
        helperMaxLines: helperMaxLines,
        helperStyle: helperStyle,
        helperText: helperText,
        hintMaxLines: hintMaxLines,
        hintStyle: hintStyle,
        hintText: hintText,
        hintTextDirection: hintTextDirection,
        hoverColor: hoverColor,
        icon: icon,
        iconColor: iconColor,
        isCollapsed: isCollapsed ?? false,
        isDense: isDense,
        label: label,
        labelStyle: labelStyle,
        labelText: labelText,
        prefix: prefix,
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        prefixIconConstraints: prefixIconConstraints,
        prefixStyle: prefixStyle,
        prefixText: prefixText,
        semanticCounterText: semanticCounterText,
        suffix: suffix,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor,
        suffixIconConstraints: suffixIconConstraints,
        suffixStyle: suffixStyle,
        suffixText: suffixText,
      );
    };
Function _InputDecoration_collapsed_$(m.Scope scope$) =>
    InputDecoration.collapsed;
Function _InputDecorationTheme__$(m.Scope scope$) => ({
      TextStyle? labelStyle,
      TextStyle? floatingLabelStyle,
      TextStyle? helperStyle,
      int? helperMaxLines,
      TextStyle? hintStyle,
      TextStyle? errorStyle,
      int? errorMaxLines,
      FloatingLabelBehavior? floatingLabelBehavior,
      FloatingLabelAlignment? floatingLabelAlignment,
      bool? isDense,
      EdgeInsetsGeometry? contentPadding,
      bool? isCollapsed,
      Color? iconColor,
      TextStyle? prefixStyle,
      Color? prefixIconColor,
      TextStyle? suffixStyle,
      Color? suffixIconColor,
      TextStyle? counterStyle,
      bool? filled,
      Color? fillColor,
      BorderSide? activeIndicatorBorder,
      BorderSide? outlineBorder,
      Color? focusColor,
      Color? hoverColor,
      InputBorder? errorBorder,
      InputBorder? focusedBorder,
      InputBorder? focusedErrorBorder,
      InputBorder? disabledBorder,
      InputBorder? enabledBorder,
      InputBorder? border,
      bool? alignLabelWithHint,
      BoxConstraints? constraints,
    }) {
      return InputDecorationTheme(
        activeIndicatorBorder: activeIndicatorBorder,
        alignLabelWithHint: alignLabelWithHint ?? false,
        border: border,
        constraints: constraints,
        contentPadding: contentPadding,
        counterStyle: counterStyle,
        disabledBorder: disabledBorder,
        enabledBorder: enabledBorder,
        errorBorder: errorBorder,
        errorMaxLines: errorMaxLines,
        errorStyle: errorStyle,
        fillColor: fillColor,
        filled: filled ?? false,
        floatingLabelAlignment:
            floatingLabelAlignment ?? FloatingLabelAlignment.start,
        floatingLabelBehavior:
            floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        floatingLabelStyle: floatingLabelStyle,
        focusColor: focusColor,
        focusedBorder: focusedBorder,
        focusedErrorBorder: focusedErrorBorder,
        helperMaxLines: helperMaxLines,
        helperStyle: helperStyle,
        hintStyle: hintStyle,
        hoverColor: hoverColor,
        iconColor: iconColor,
        isCollapsed: isCollapsed ?? false,
        isDense: isDense ?? false,
        labelStyle: labelStyle,
        outlineBorder: outlineBorder,
        prefixIconColor: prefixIconColor,
        prefixStyle: prefixStyle,
        suffixIconColor: suffixIconColor,
        suffixStyle: suffixStyle,
      );
    };
