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
  };
}
