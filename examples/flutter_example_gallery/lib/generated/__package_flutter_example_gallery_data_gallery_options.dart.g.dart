import 'package:flutter_example_gallery/data/gallery_options.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:flutter_example_gallery/constants.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter_example_gallery/data/gallery_options.dart@@rtlLanguages':
        (m.Scope scope) => rtlLanguages,
    'package:flutter_example_gallery/data/gallery_options.dart@@systemLocaleOption':
        (m.Scope scope) => systemLocaleOption,
    'package:flutter_example_gallery/data/gallery_options.dart@@deviceLocale':
        (m.Scope scope) => deviceLocale,
    'package:flutter_example_gallery/data/gallery_options.dart@@deviceLocale:set':
        (m.Scope scope) => (other) => deviceLocale = other,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@#as':
        (m.Scope scope, target) => () => target as GalleryOptions,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@#is':
        (m.Scope scope, target) => () => target is GalleryOptions,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@themeMode':
        (m.Scope scope, GalleryOptions target) => target.themeMode,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@customTextDirection':
        (m.Scope scope, GalleryOptions target) => target.customTextDirection,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@timeDilation':
        (m.Scope scope, GalleryOptions target) => target.timeDilation,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@platform':
        (m.Scope scope, GalleryOptions target) => target.platform,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@isTestMode':
        (m.Scope scope, GalleryOptions target) => target.isTestMode,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@locale':
        (m.Scope scope, GalleryOptions target) => target.locale,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@hashCode':
        (m.Scope scope, GalleryOptions target) => target.hashCode,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@':
        (m.Scope scope) => (
                {customTextDirection,
                isTestMode,
                locale,
                platform,
                textScaleFactor,
                themeMode,
                timeDilation}) {
              return GalleryOptions(
                  customTextDirection: customTextDirection,
                  isTestMode: isTestMode,
                  locale: locale,
                  platform: platform,
                  textScaleFactor: textScaleFactor,
                  themeMode: themeMode,
                  timeDilation: timeDilation);
            },
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@textScaleFactor':
        (m.Scope scope, GalleryOptions target) => target.textScaleFactor,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@resolvedTextDirection':
        (m.Scope scope, GalleryOptions target) => target.resolvedTextDirection,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@resolvedSystemUiOverlayStyle':
        (m.Scope scope, GalleryOptions target) =>
            target.resolvedSystemUiOverlayStyle,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@copyWith':
        (m.Scope scope, GalleryOptions target) => target.copyWith,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@==':
        (m.Scope scope, GalleryOptions target) => (other) => target == other,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@of':
        (m.Scope scope) => GalleryOptions.of,
    'package:flutter_example_gallery/data/gallery_options.dart@GalleryOptions@update':
        (m.Scope scope) => GalleryOptions.update,
    'package:flutter_example_gallery/data/gallery_options.dart@ApplyTextOptions@#as':
        (m.Scope scope, target) => () => target as ApplyTextOptions,
    'package:flutter_example_gallery/data/gallery_options.dart@ApplyTextOptions@#is':
        (m.Scope scope, target) => () => target is ApplyTextOptions,
    'package:flutter_example_gallery/data/gallery_options.dart@ApplyTextOptions@child':
        (m.Scope scope, ApplyTextOptions target) => target.child,
    'package:flutter_example_gallery/data/gallery_options.dart@ApplyTextOptions@':
        (m.Scope scope) => ({child, key}) {
              return ApplyTextOptions(child: child, key: key);
            },
    'package:flutter_example_gallery/data/gallery_options.dart@ApplyTextOptions@build':
        (m.Scope scope, ApplyTextOptions target) => target.build,
    'package:flutter_example_gallery/data/gallery_options.dart@ModelBinding@#as':
        (m.Scope scope, target) => () => target as ModelBinding,
    'package:flutter_example_gallery/data/gallery_options.dart@ModelBinding@#is':
        (m.Scope scope, target) => () => target is ModelBinding,
    'package:flutter_example_gallery/data/gallery_options.dart@ModelBinding@initialModel':
        (m.Scope scope, ModelBinding target) => target.initialModel,
    'package:flutter_example_gallery/data/gallery_options.dart@ModelBinding@child':
        (m.Scope scope, ModelBinding target) => target.child,
    'package:flutter_example_gallery/data/gallery_options.dart@ModelBinding@':
        (m.Scope scope) => ({child, initialModel, key}) {
              return ModelBinding(
                  child: child, initialModel: initialModel, key: key);
            },
    'package:flutter_example_gallery/data/gallery_options.dart@ModelBinding@createState':
        (m.Scope scope, ModelBinding target) => target.createState,
    'package:flutter_example_gallery/data/gallery_options.dart@CustomTextDirection@localeBased':
        (m.Scope scope) => CustomTextDirection.localeBased,
    'package:flutter_example_gallery/data/gallery_options.dart@CustomTextDirection@values':
        (m.Scope scope) => CustomTextDirection.values,
    'package:flutter_example_gallery/data/gallery_options.dart@CustomTextDirection@ltr':
        (m.Scope scope) => CustomTextDirection.ltr,
    'package:flutter_example_gallery/data/gallery_options.dart@CustomTextDirection@rtl':
        (m.Scope scope) => CustomTextDirection.rtl,
  };
}
