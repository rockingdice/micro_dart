// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/widgets/form.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/restoration.dart';
import 'package:flutter/src/widgets/restoration_properties.dart';
import 'package:flutter/src/widgets/will_pop_scope.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/widgets/form.dart',
  {
    'Form.': _Form__$,
    'Form.maybeOf': _Form_maybeOf$,
    'Form.of': _Form_of$,
    'FormState.': _FormState__$,
    'FormField.': _FormField__$,
    'FormFieldState.': _FormFieldState__$,
    'AutovalidateMode.disabled': _AutovalidateMode_disabled$,
    'AutovalidateMode.always': _AutovalidateMode_always$,
    'AutovalidateMode.onUserInteraction': _AutovalidateMode_onUserInteraction$,
    'AutovalidateMode.values': _AutovalidateMode_values$,
  },
  {},
  {
    'Form': m.ClassMirror(
      'Form',
      {
        '#as': Form_as$,
        '#is': Form_is$,
        'child': _Form_child$,
        'onWillPop': _Form_onWillPop$,
        'onChanged': _Form_onChanged$,
        'autovalidateMode': _Form_autovalidateMode$,
        'createState': _Form_createState$,
      },
      {},
    ),
    'FormState': m.ClassMirror(
      'FormState',
      {
        '#as': FormState_as$,
        '#is': FormState_is$,
        'build': _FormState_build$,
        'save': _FormState_save$,
        'reset': _FormState_reset$,
        'validate': _FormState_validate$,
      },
      {},
    ),
    'FormField': m.ClassMirror(
      'FormField',
      {
        '#as': FormField_as$,
        '#is': FormField_is$,
        'onSaved': _FormField_onSaved$,
        'validator': _FormField_validator$,
        'builder': _FormField_builder$,
        'initialValue': _FormField_initialValue$,
        'enabled': _FormField_enabled$,
        'autovalidateMode': _FormField_autovalidateMode$,
        'restorationId': _FormField_restorationId$,
        'createState': _FormField_createState$,
      },
      {},
    ),
    'FormFieldState': m.ClassMirror(
      'FormFieldState',
      {
        '#as': FormFieldState_as$,
        '#is': FormFieldState_is$,
        'value': _FormFieldState_value$,
        'errorText': _FormFieldState_errorText$,
        'hasError': _FormFieldState_hasError$,
        'isValid': _FormFieldState_isValid$,
        'restorationId': _FormFieldState_restorationId$,
        'save': _FormFieldState_save$,
        'reset': _FormFieldState_reset$,
        'validate': _FormFieldState_validate$,
        'didChange': _FormFieldState_didChange$,
        'setValue': _FormFieldState_setValue$,
        'restoreState': _FormFieldState_restoreState$,
        'deactivate': _FormFieldState_deactivate$,
        'build': _FormFieldState_build$,
      },
      {},
    ),
    'AutovalidateMode': m.ClassMirror(
      'AutovalidateMode',
      {},
      {},
    ),
  },
);
Function Form_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Form;
Function Form_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Form;
Function _Form_child$(
  m.Scope scope$,
  Form target$,
) =>
    () {
      return target$.child;
    };
Function _Form_onWillPop$(
  m.Scope scope$,
  Form target$,
) =>
    () {
      return target$.onWillPop;
    };
Function _Form_onChanged$(
  m.Scope scope$,
  Form target$,
) =>
    () {
      return target$.onChanged;
    };
Function _Form_autovalidateMode$(
  m.Scope scope$,
  Form target$,
) =>
    () {
      return target$.autovalidateMode;
    };
Function _Form__$(m.Scope scope$) => ({
      Key? key,
      required Widget child,
      m.FunctionPointer? onWillPop,
      m.FunctionPointer? onChanged,
      AutovalidateMode? autovalidateMode,
    }) {
      void onChangedProxy() => scope$.engine.callFunctionPointer(
            scope$,
            onChanged!,
            [],
            {},
          );
      Future<bool> onWillPopProxy() async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            onWillPop!,
            [],
            {},
          );
      return Form(
        autovalidateMode: autovalidateMode,
        child: child,
        key: key,
        onChanged: onChanged == null ? null : onChangedProxy,
        onWillPop: onWillPop == null ? null : onWillPopProxy,
      );
    };
Function _Form_maybeOf$(m.Scope scope$) => Form.maybeOf;
Function _Form_of$(m.Scope scope$) => Form.of;
Function _Form_createState$(
  m.Scope scope$,
  Form target$,
) =>
    target$.createState;
Function FormState_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as FormState;
Function FormState_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is FormState;
Function _FormState__$(m.Scope scope$) => () {
      return FormState();
    };
Function _FormState_build$(
  m.Scope scope$,
  FormState target$,
) =>
    target$.build;
Function _FormState_save$(
  m.Scope scope$,
  FormState target$,
) =>
    target$.save;
Function _FormState_reset$(
  m.Scope scope$,
  FormState target$,
) =>
    target$.reset;
Function _FormState_validate$(
  m.Scope scope$,
  FormState target$,
) =>
    target$.validate;
Function FormField_as$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as FormField<T>;
Function FormField_is$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is FormField<T>;
Function _FormField_onSaved$<T>(
  m.Scope scope$,
  FormField<T> target$,
) =>
    () {
      return target$.onSaved;
    };
Function _FormField_validator$<T>(
  m.Scope scope$,
  FormField<T> target$,
) =>
    () {
      return target$.validator;
    };
Function _FormField_builder$<T>(
  m.Scope scope$,
  FormField<T> target$,
) =>
    () {
      return target$.builder;
    };
Function _FormField_initialValue$<T>(
  m.Scope scope$,
  FormField<T> target$,
) =>
    () {
      return target$.initialValue;
    };
Function _FormField_enabled$<T>(
  m.Scope scope$,
  FormField<T> target$,
) =>
    () {
      return target$.enabled;
    };
Function _FormField_autovalidateMode$<T>(
  m.Scope scope$,
  FormField<T> target$,
) =>
    () {
      return target$.autovalidateMode;
    };
Function _FormField_restorationId$<T>(
  m.Scope scope$,
  FormField<T> target$,
) =>
    () {
      return target$.restorationId;
    };
Function _FormField__$(m.Scope scope$) => ({
      Key? key,
      required m.FunctionPointer builder,
      m.FunctionPointer? onSaved,
      m.FunctionPointer? validator,
      dynamic? initialValue,
      bool? enabled,
      AutovalidateMode? autovalidateMode,
      String? restorationId,
    }) {
      Widget builderProxy(FormFieldState builder_field$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            builder,
            [builder_field$],
            {},
          );
      void onSavedProxy(dynamic onSaved_newValue$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            onSaved!,
            [onSaved_newValue$],
            {},
          );
      String? validatorProxy(dynamic validator_value$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            validator!,
            [validator_value$],
            {},
          );
      return FormField(
        autovalidateMode: autovalidateMode,
        builder: builderProxy,
        enabled: enabled ?? true,
        initialValue: initialValue,
        key: key,
        onSaved: onSaved == null ? null : onSavedProxy,
        restorationId: restorationId,
        validator: validator == null ? null : validatorProxy,
      );
    };
Function _FormField_createState$<T>(
  m.Scope scope$,
  FormField<T> target$,
) =>
    target$.createState;
Function FormFieldState_as$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as FormFieldState<T>;
Function FormFieldState_is$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is FormFieldState<T>;
Function _FormFieldState_value$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    () {
      return target$.value;
    };
Function _FormFieldState_errorText$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    () {
      return target$.errorText;
    };
Function _FormFieldState_hasError$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    () {
      return target$.hasError;
    };
Function _FormFieldState_isValid$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    () {
      return target$.isValid;
    };
Function _FormFieldState_restorationId$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    () {
      return target$.restorationId;
    };
Function _FormFieldState__$(m.Scope scope$) => () {
      return FormFieldState();
    };
Function _FormFieldState_save$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    target$.save;
Function _FormFieldState_reset$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    target$.reset;
Function _FormFieldState_validate$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    target$.validate;
Function _FormFieldState_didChange$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    target$.didChange;
Function _FormFieldState_setValue$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    target$.setValue;
Function _FormFieldState_restoreState$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    target$.restoreState;
Function _FormFieldState_deactivate$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    target$.deactivate;
Function _FormFieldState_build$<T>(
  m.Scope scope$,
  FormFieldState<T> target$,
) =>
    target$.build;
Function _AutovalidateMode_disabled$(m.Scope scope$) =>
    () => AutovalidateMode.disabled;
Function _AutovalidateMode_always$(m.Scope scope$) =>
    () => AutovalidateMode.always;
Function _AutovalidateMode_onUserInteraction$(m.Scope scope$) =>
    () => AutovalidateMode.onUserInteraction;
Function _AutovalidateMode_values$(m.Scope scope$) =>
    () => AutovalidateMode.values;
