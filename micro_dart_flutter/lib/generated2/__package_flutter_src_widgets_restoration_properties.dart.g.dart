import 'package:flutter/src/widgets/restoration_properties.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter/src/widgets/restoration.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/restoration_properties.dart@RestorableValue@#as':
        (m.Scope scope, target) => () => target as RestorableValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableValue@#is':
        (m.Scope scope, target) => () => target is RestorableValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableValue@value':
        (m.Scope scope, RestorableValue target) => target.value,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableValue@value:set':
        (m.Scope scope, RestorableValue target) =>
            (other) => target.value = other,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableValue@initWithValue':
        (m.Scope scope, RestorableValue target) => target.initWithValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableValue@didUpdateValue':
        (m.Scope scope, RestorableValue target) => target.didUpdateValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableNum@#as':
        (m.Scope scope, target) => () => target as RestorableNum,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableNum@#is':
        (m.Scope scope, target) => () => target is RestorableNum,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableNum@':
        (m.Scope scope) => <T extends num>(defaultValue) {
              return RestorableNum<T>(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDouble@#as':
        (m.Scope scope, target) => () => target as RestorableDouble,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDouble@#is':
        (m.Scope scope, target) => () => target is RestorableDouble,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDouble@':
        (m.Scope scope) => (defaultValue) {
              return RestorableDouble(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableInt@#as':
        (m.Scope scope, target) => () => target as RestorableInt,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableInt@#is':
        (m.Scope scope, target) => () => target is RestorableInt,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableInt@':
        (m.Scope scope) => (defaultValue) {
              return RestorableInt(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableString@#as':
        (m.Scope scope, target) => () => target as RestorableString,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableString@#is':
        (m.Scope scope, target) => () => target is RestorableString,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableString@':
        (m.Scope scope) => (defaultValue) {
              return RestorableString(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableBool@#as':
        (m.Scope scope, target) => () => target as RestorableBool,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableBool@#is':
        (m.Scope scope, target) => () => target is RestorableBool,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableBool@':
        (m.Scope scope) => (defaultValue) {
              return RestorableBool(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableBoolN@#as':
        (m.Scope scope, target) => () => target as RestorableBoolN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableBoolN@#is':
        (m.Scope scope, target) => () => target is RestorableBoolN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableBoolN@':
        (m.Scope scope) => (defaultValue) {
              return RestorableBoolN(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableNumN@#as':
        (m.Scope scope, target) => () => target as RestorableNumN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableNumN@#is':
        (m.Scope scope, target) => () => target is RestorableNumN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableNumN@':
        (m.Scope scope) => <T extends num?>(defaultValue) {
              return RestorableNumN<T>(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDoubleN@#as':
        (m.Scope scope, target) => () => target as RestorableDoubleN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDoubleN@#is':
        (m.Scope scope, target) => () => target is RestorableDoubleN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDoubleN@':
        (m.Scope scope) => (defaultValue) {
              return RestorableDoubleN(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableIntN@#as':
        (m.Scope scope, target) => () => target as RestorableIntN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableIntN@#is':
        (m.Scope scope, target) => () => target is RestorableIntN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableIntN@':
        (m.Scope scope) => (defaultValue) {
              return RestorableIntN(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableStringN@#as':
        (m.Scope scope, target) => () => target as RestorableStringN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableStringN@#is':
        (m.Scope scope, target) => () => target is RestorableStringN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableStringN@':
        (m.Scope scope) => (defaultValue) {
              return RestorableStringN(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTime@#as':
        (m.Scope scope, target) => () => target as RestorableDateTime,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTime@#is':
        (m.Scope scope, target) => () => target is RestorableDateTime,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTime@':
        (m.Scope scope) => (defaultValue) {
              return RestorableDateTime(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTime@createDefaultValue':
        (m.Scope scope, RestorableDateTime target) => target.createDefaultValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTime@didUpdateValue':
        (m.Scope scope, RestorableDateTime target) => target.didUpdateValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTime@fromPrimitives':
        (m.Scope scope, RestorableDateTime target) => target.fromPrimitives,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTime@toPrimitives':
        (m.Scope scope, RestorableDateTime target) => target.toPrimitives,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTimeN@#as':
        (m.Scope scope, target) => () => target as RestorableDateTimeN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTimeN@#is':
        (m.Scope scope, target) => () => target is RestorableDateTimeN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTimeN@':
        (m.Scope scope) => (defaultValue) {
              return RestorableDateTimeN(defaultValue);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTimeN@createDefaultValue':
        (m.Scope scope, RestorableDateTimeN target) =>
            target.createDefaultValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTimeN@didUpdateValue':
        (m.Scope scope, RestorableDateTimeN target) => target.didUpdateValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTimeN@fromPrimitives':
        (m.Scope scope, RestorableDateTimeN target) => target.fromPrimitives,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableDateTimeN@toPrimitives':
        (m.Scope scope, RestorableDateTimeN target) => target.toPrimitives,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableListenable@#as':
        (m.Scope scope, target) => () => target as RestorableListenable,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableListenable@#is':
        (m.Scope scope, target) => () => target is RestorableListenable,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableListenable@value':
        (m.Scope scope, RestorableListenable target) => target.value,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableListenable@initWithValue':
        (m.Scope scope, RestorableListenable target) => target.initWithValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableListenable@dispose':
        (m.Scope scope, RestorableListenable target) => target.dispose,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableChangeNotifier@#as':
        (m.Scope scope, target) => () => target as RestorableChangeNotifier,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableChangeNotifier@#is':
        (m.Scope scope, target) => () => target is RestorableChangeNotifier,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableChangeNotifier@initWithValue':
        (m.Scope scope, RestorableChangeNotifier target) =>
            target.initWithValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableChangeNotifier@dispose':
        (m.Scope scope, RestorableChangeNotifier target) => target.dispose,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableTextEditingController@#as':
        (m.Scope scope, target) =>
            () => target as RestorableTextEditingController,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableTextEditingController@#is':
        (m.Scope scope, target) =>
            () => target is RestorableTextEditingController,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableTextEditingController@':
        (m.Scope scope) => ({text}) {
              return RestorableTextEditingController(text: text);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableTextEditingController@fromValue':
        (m.Scope scope) => RestorableTextEditingController.fromValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableTextEditingController@createDefaultValue':
        (m.Scope scope, RestorableTextEditingController target) =>
            target.createDefaultValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableTextEditingController@fromPrimitives':
        (m.Scope scope, RestorableTextEditingController target) =>
            target.fromPrimitives,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableTextEditingController@toPrimitives':
        (m.Scope scope, RestorableTextEditingController target) =>
            target.toPrimitives,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnumN@#as':
        (m.Scope scope, target) => () => target as RestorableEnumN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnumN@#is':
        (m.Scope scope, target) => () => target is RestorableEnumN,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnumN@values':
        (m.Scope scope, RestorableEnumN target) => target.values,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnumN@values:set':
        (m.Scope scope, RestorableEnumN target) =>
            (other) => target.values = other,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnumN@value:set':
        (m.Scope scope, RestorableEnumN target) =>
            (other) => target.value = other,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnumN@':
        (m.Scope scope) => <T extends Enum>(defaultValue, {values}) {
              return RestorableEnumN<T>(defaultValue, values: values);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnumN@createDefaultValue':
        (m.Scope scope, RestorableEnumN target) => target.createDefaultValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnumN@didUpdateValue':
        (m.Scope scope, RestorableEnumN target) => target.didUpdateValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnumN@fromPrimitives':
        (m.Scope scope, RestorableEnumN target) => target.fromPrimitives,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnumN@toPrimitives':
        (m.Scope scope, RestorableEnumN target) => target.toPrimitives,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnum@#as':
        (m.Scope scope, target) => () => target as RestorableEnum,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnum@#is':
        (m.Scope scope, target) => () => target is RestorableEnum,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnum@values':
        (m.Scope scope, RestorableEnum target) => target.values,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnum@values:set':
        (m.Scope scope, RestorableEnum target) =>
            (other) => target.values = other,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnum@value:set':
        (m.Scope scope, RestorableEnum target) =>
            (other) => target.value = other,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnum@':
        (m.Scope scope) => <T extends Enum>(defaultValue, {values}) {
              return RestorableEnum<T>(defaultValue, values: values);
            },
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnum@createDefaultValue':
        (m.Scope scope, RestorableEnum target) => target.createDefaultValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnum@didUpdateValue':
        (m.Scope scope, RestorableEnum target) => target.didUpdateValue,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnum@fromPrimitives':
        (m.Scope scope, RestorableEnum target) => target.fromPrimitives,
    'package:flutter/src/widgets/restoration_properties.dart@RestorableEnum@toPrimitives':
        (m.Scope scope, RestorableEnum target) => target.toPrimitives,
  };
}
