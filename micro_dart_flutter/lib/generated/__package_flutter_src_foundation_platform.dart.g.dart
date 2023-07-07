import 'package:flutter/src/foundation/platform.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/foundation/platform.dart@@debugDefaultTargetPlatformOverride':
        (m.Scope scope) => debugDefaultTargetPlatformOverride,
    'package:flutter/src/foundation/platform.dart@@debugDefaultTargetPlatformOverride:set':
        (m.Scope scope) =>
            (other) => debugDefaultTargetPlatformOverride = other,
    'package:flutter/src/foundation/platform.dart@@defaultTargetPlatform':
        (m.Scope scope) => defaultTargetPlatform,
    'package:flutter/src/foundation/platform.dart@TargetPlatform@windows':
        (m.Scope scope) => TargetPlatform.windows,
    'package:flutter/src/foundation/platform.dart@TargetPlatform@values':
        (m.Scope scope) => TargetPlatform.values,
    'package:flutter/src/foundation/platform.dart@TargetPlatform@android':
        (m.Scope scope) => TargetPlatform.android,
    'package:flutter/src/foundation/platform.dart@TargetPlatform@fuchsia':
        (m.Scope scope) => TargetPlatform.fuchsia,
    'package:flutter/src/foundation/platform.dart@TargetPlatform@iOS':
        (m.Scope scope) => TargetPlatform.iOS,
    'package:flutter/src/foundation/platform.dart@TargetPlatform@linux':
        (m.Scope scope) => TargetPlatform.linux,
    'package:flutter/src/foundation/platform.dart@TargetPlatform@macOS':
        (m.Scope scope) => TargetPlatform.macOS,
  };
}
