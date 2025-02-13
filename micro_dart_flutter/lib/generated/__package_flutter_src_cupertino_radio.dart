// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/cupertino/radio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/toggleable.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/cupertino/radio.dart',
  {'CupertinoRadio.': _CupertinoRadio__$},
  {},
  {
    'CupertinoRadio': m.ClassMirror(
      'CupertinoRadio',
      {
        '#as': CupertinoRadio_as$,
        '#is': CupertinoRadio_is$,
        'value': _CupertinoRadio_value$,
        'groupValue': _CupertinoRadio_groupValue$,
        'onChanged': _CupertinoRadio_onChanged$,
        'toggleable': _CupertinoRadio_toggleable$,
        'activeColor': _CupertinoRadio_activeColor$,
        'inactiveColor': _CupertinoRadio_inactiveColor$,
        'fillColor': _CupertinoRadio_fillColor$,
        'focusColor': _CupertinoRadio_focusColor$,
        'focusNode': _CupertinoRadio_focusNode$,
        'autofocus': _CupertinoRadio_autofocus$,
        'createState': _CupertinoRadio_createState$,
      },
      {},
    )
  },
);
Function CupertinoRadio_as$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as CupertinoRadio<T>;
Function CupertinoRadio_is$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is CupertinoRadio<T>;
Function _CupertinoRadio_value$<T>(
  m.Scope scope$,
  CupertinoRadio<T> target$,
) =>
    () {
      return target$.value;
    };
Function _CupertinoRadio_groupValue$<T>(
  m.Scope scope$,
  CupertinoRadio<T> target$,
) =>
    () {
      return target$.groupValue;
    };
Function _CupertinoRadio_onChanged$<T>(
  m.Scope scope$,
  CupertinoRadio<T> target$,
) =>
    () {
      return target$.onChanged;
    };
Function _CupertinoRadio_toggleable$<T>(
  m.Scope scope$,
  CupertinoRadio<T> target$,
) =>
    () {
      return target$.toggleable;
    };
Function _CupertinoRadio_activeColor$<T>(
  m.Scope scope$,
  CupertinoRadio<T> target$,
) =>
    () {
      return target$.activeColor;
    };
Function _CupertinoRadio_inactiveColor$<T>(
  m.Scope scope$,
  CupertinoRadio<T> target$,
) =>
    () {
      return target$.inactiveColor;
    };
Function _CupertinoRadio_fillColor$<T>(
  m.Scope scope$,
  CupertinoRadio<T> target$,
) =>
    () {
      return target$.fillColor;
    };
Function _CupertinoRadio_focusColor$<T>(
  m.Scope scope$,
  CupertinoRadio<T> target$,
) =>
    () {
      return target$.focusColor;
    };
Function _CupertinoRadio_focusNode$<T>(
  m.Scope scope$,
  CupertinoRadio<T> target$,
) =>
    () {
      return target$.focusNode;
    };
Function _CupertinoRadio_autofocus$<T>(
  m.Scope scope$,
  CupertinoRadio<T> target$,
) =>
    () {
      return target$.autofocus;
    };
Function _CupertinoRadio__$(m.Scope scope$) => ({
      Key? key,
      required dynamic value,
      required dynamic groupValue,
      required m.FunctionPointer? onChanged,
      bool? toggleable,
      Color? activeColor,
      Color? inactiveColor,
      Color? fillColor,
      Color? focusColor,
      FocusNode? focusNode,
      bool? autofocus,
    }) {
      void onChangedProxy(dynamic onChanged_value$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            onChanged!,
            [onChanged_value$],
            {},
          );
      return CupertinoRadio(
        activeColor: activeColor,
        autofocus: autofocus ?? false,
        fillColor: fillColor,
        focusColor: focusColor,
        focusNode: focusNode,
        groupValue: groupValue,
        inactiveColor: inactiveColor,
        key: key,
        onChanged: onChanged == null ? null : onChangedProxy,
        toggleable: toggleable ?? false,
        value: value,
      );
    };
Function _CupertinoRadio_createState$<T>(
  m.Scope scope$,
  CupertinoRadio<T> target$,
) =>
    target$.createState;
