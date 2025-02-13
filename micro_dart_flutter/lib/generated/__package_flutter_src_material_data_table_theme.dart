// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/material/data_table_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/material/data_table_theme.dart',
  {
    'DataTableThemeData.': _DataTableThemeData__$,
    'DataTableThemeData.lerp': _DataTableThemeData_lerp$,
    'DataTableTheme.': _DataTableTheme__$,
    'DataTableTheme.of': _DataTableTheme_of$,
  },
  {},
  {
    'DataTableThemeData': m.ClassMirror(
      'DataTableThemeData',
      {
        '#as': DataTableThemeData_as$,
        '#is': DataTableThemeData_is$,
        'decoration': _DataTableThemeData_decoration$,
        'dataRowColor': _DataTableThemeData_dataRowColor$,
        'dataRowMinHeight': _DataTableThemeData_dataRowMinHeight$,
        'dataRowMaxHeight': _DataTableThemeData_dataRowMaxHeight$,
        'dataTextStyle': _DataTableThemeData_dataTextStyle$,
        'headingRowColor': _DataTableThemeData_headingRowColor$,
        'headingRowHeight': _DataTableThemeData_headingRowHeight$,
        'headingTextStyle': _DataTableThemeData_headingTextStyle$,
        'horizontalMargin': _DataTableThemeData_horizontalMargin$,
        'columnSpacing': _DataTableThemeData_columnSpacing$,
        'dividerThickness': _DataTableThemeData_dividerThickness$,
        'checkboxHorizontalMargin':
            _DataTableThemeData_checkboxHorizontalMargin$,
        'headingCellCursor': _DataTableThemeData_headingCellCursor$,
        'dataRowCursor': _DataTableThemeData_dataRowCursor$,
        'hashCode': _DataTableThemeData_hashCode$,
        'copyWith': _DataTableThemeData_copyWith$,
        '==': _DataTableThemeData_eq$$,
        'debugFillProperties': _DataTableThemeData_debugFillProperties$,
      },
      {},
    ),
    'DataTableTheme': m.ClassMirror(
      'DataTableTheme',
      {
        '#as': DataTableTheme_as$,
        '#is': DataTableTheme_is$,
        'data': _DataTableTheme_data$,
        'updateShouldNotify': _DataTableTheme_updateShouldNotify$,
      },
      {},
    ),
  },
);
Function DataTableThemeData_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as DataTableThemeData;
Function DataTableThemeData_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is DataTableThemeData;
Function _DataTableThemeData_decoration$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.decoration;
    };
Function _DataTableThemeData_dataRowColor$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.dataRowColor;
    };
Function _DataTableThemeData_dataRowMinHeight$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.dataRowMinHeight;
    };
Function _DataTableThemeData_dataRowMaxHeight$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.dataRowMaxHeight;
    };
Function _DataTableThemeData_dataTextStyle$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.dataTextStyle;
    };
Function _DataTableThemeData_headingRowColor$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.headingRowColor;
    };
Function _DataTableThemeData_headingRowHeight$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.headingRowHeight;
    };
Function _DataTableThemeData_headingTextStyle$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.headingTextStyle;
    };
Function _DataTableThemeData_horizontalMargin$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.horizontalMargin;
    };
Function _DataTableThemeData_columnSpacing$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.columnSpacing;
    };
Function _DataTableThemeData_dividerThickness$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.dividerThickness;
    };
Function _DataTableThemeData_checkboxHorizontalMargin$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.checkboxHorizontalMargin;
    };
Function _DataTableThemeData_headingCellCursor$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.headingCellCursor;
    };
Function _DataTableThemeData_dataRowCursor$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.dataRowCursor;
    };
Function _DataTableThemeData_hashCode$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    () {
      return target$.hashCode;
    };
Function _DataTableThemeData__$(m.Scope scope$) => ({
      Decoration? decoration,
      MaterialStateProperty<Color>? dataRowColor,
      double? dataRowHeight,
      double? dataRowMinHeight,
      double? dataRowMaxHeight,
      TextStyle? dataTextStyle,
      MaterialStateProperty<Color>? headingRowColor,
      double? headingRowHeight,
      TextStyle? headingTextStyle,
      double? horizontalMargin,
      double? columnSpacing,
      double? dividerThickness,
      double? checkboxHorizontalMargin,
      MaterialStateProperty<MouseCursor>? headingCellCursor,
      MaterialStateProperty<MouseCursor>? dataRowCursor,
    }) {
      return DataTableThemeData(
        checkboxHorizontalMargin: checkboxHorizontalMargin,
        columnSpacing: columnSpacing,
        dataRowColor: dataRowColor,
        dataRowCursor: dataRowCursor,
        dataRowHeight: dataRowHeight,
        dataRowMaxHeight: dataRowMaxHeight,
        dataRowMinHeight: dataRowMinHeight,
        dataTextStyle: dataTextStyle,
        decoration: decoration,
        dividerThickness: dividerThickness,
        headingCellCursor: headingCellCursor,
        headingRowColor: headingRowColor,
        headingRowHeight: headingRowHeight,
        headingTextStyle: headingTextStyle,
        horizontalMargin: horizontalMargin,
      );
    };
Function _DataTableThemeData_copyWith$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    target$.copyWith;
Function _DataTableThemeData_lerp$(m.Scope scope$) => DataTableThemeData.lerp;
Function _DataTableThemeData_eq$$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    (Object other$) => target$ == other$;
Function _DataTableThemeData_debugFillProperties$(
  m.Scope scope$,
  DataTableThemeData target$,
) =>
    target$.debugFillProperties;
Function DataTableTheme_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as DataTableTheme;
Function DataTableTheme_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is DataTableTheme;
Function _DataTableTheme_data$(
  m.Scope scope$,
  DataTableTheme target$,
) =>
    () {
      return target$.data;
    };
Function _DataTableTheme__$(m.Scope scope$) => ({
      Key? key,
      required DataTableThemeData data,
      required Widget child,
    }) {
      return DataTableTheme(
        child: child,
        data: data,
        key: key,
      );
    };
Function _DataTableTheme_of$(m.Scope scope$) => DataTableTheme.of;
Function _DataTableTheme_updateShouldNotify$(
  m.Scope scope$,
  DataTableTheme target$,
) =>
    target$.updateShouldNotify;
