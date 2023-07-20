// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/painting/strut_style.dart';
import 'dart:ui' show TextLeadingDistribution;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/text_style.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/painting/strut_style.dart',
  {
    'StrutStyle.disabled': _StrutStyle_disabled$,
    'StrutStyle.': _StrutStyle__$,
    'StrutStyle.fromTextStyle': _StrutStyle_fromTextStyle_$,
  },
  {},
  {
    'StrutStyle': m.ClassMirror(
      'StrutStyle',
      {
        '#as': StrutStyle_as$,
        '#is': StrutStyle_is$,
        'fontFamily': _StrutStyle_fontFamily$,
        'fontSize': _StrutStyle_fontSize$,
        'height': _StrutStyle_height$,
        'leadingDistribution': _StrutStyle_leadingDistribution$,
        'fontWeight': _StrutStyle_fontWeight$,
        'fontStyle': _StrutStyle_fontStyle$,
        'leading': _StrutStyle_leading$,
        'forceStrutHeight': _StrutStyle_forceStrutHeight$,
        'debugLabel': _StrutStyle_debugLabel$,
        'fontFamilyFallback': _StrutStyle_fontFamilyFallback$,
        'hashCode': _StrutStyle_hashCode$,
        'compareTo': _StrutStyle_compareTo$,
        'inheritFromTextStyle': _StrutStyle_inheritFromTextStyle$,
        '==': _StrutStyle_eq$$,
        'toStringShort': _StrutStyle_toStringShort$,
        'debugFillProperties': _StrutStyle_debugFillProperties$,
      },
      {},
    )
  },
);
Function StrutStyle_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as StrutStyle;
Function StrutStyle_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is StrutStyle;
Function _StrutStyle_disabled$(m.Scope scope$) => () => StrutStyle.disabled;
Function _StrutStyle_fontFamily$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    () {
      return target$.fontFamily;
    };
Function _StrutStyle_fontSize$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    () {
      return target$.fontSize;
    };
Function _StrutStyle_height$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    () {
      return target$.height;
    };
Function _StrutStyle_leadingDistribution$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    () {
      return target$.leadingDistribution;
    };
Function _StrutStyle_fontWeight$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    () {
      return target$.fontWeight;
    };
Function _StrutStyle_fontStyle$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    () {
      return target$.fontStyle;
    };
Function _StrutStyle_leading$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    () {
      return target$.leading;
    };
Function _StrutStyle_forceStrutHeight$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    () {
      return target$.forceStrutHeight;
    };
Function _StrutStyle_debugLabel$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    () {
      return target$.debugLabel;
    };
Function _StrutStyle_fontFamilyFallback$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    () {
      return target$.fontFamilyFallback;
    };
Function _StrutStyle_hashCode$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    () {
      return target$.hashCode;
    };
Function _StrutStyle__$(m.Scope scope$) => ({
      String? fontFamily,
      List? fontFamilyFallback,
      double? fontSize,
      double? height,
      TextLeadingDistribution? leadingDistribution,
      double? leading,
      FontWeight? fontWeight,
      FontStyle? fontStyle,
      bool? forceStrutHeight,
      String? debugLabel,
      String? package,
    }) {
      return StrutStyle(
        debugLabel: debugLabel,
        fontFamily: fontFamily,
        fontFamilyFallback:
            fontFamilyFallback == null ? null : List.from(fontFamilyFallback),
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        forceStrutHeight: forceStrutHeight,
        height: height,
        leading: leading,
        leadingDistribution: leadingDistribution,
        package: package,
      );
    };
Function _StrutStyle_fromTextStyle_$(m.Scope scope$) =>
    StrutStyle.fromTextStyle;
Function _StrutStyle_compareTo$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    target$.compareTo;
Function _StrutStyle_inheritFromTextStyle$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    target$.inheritFromTextStyle;
Function _StrutStyle_eq$$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    (Object other$) => target$ == other$;
Function _StrutStyle_toStringShort$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    target$.toStringShort;
Function _StrutStyle_debugFillProperties$(
  m.Scope scope$,
  StrutStyle target$,
) =>
    target$.debugFillProperties;
