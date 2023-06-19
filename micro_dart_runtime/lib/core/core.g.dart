import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

import '../bridge/bridge.dart';

Map<String, LibraryBridge> getLibrary() {
  return {
    "dart:core": LibraryBridge(getters: {
      'dart:core@@deprecated': (m.Scope scope) => deprecated,
      "dart:core@@override": (m.Scope scope) => override,
    }, setters: {}, classes: {
      "dart:core@Deprecated": ClassBridge(constructors: {}, getters: {
        "dart:core@Deprecated@#as": (m.Scope scope, Object target) =>
            target as Deprecated,
        "dart:core@Deprecated@#is": (m.Scope scope, Object target) =>
            target is Deprecated,
        "dart:core@Deprecated@message": (m.Scope scope, Deprecated target) =>
            target.message,
        "dart:core@Deprecated@toString": (m.Scope scope, Deprecated target) =>
            target.toString,
      }, setters: {}),
    }),
  };
}
