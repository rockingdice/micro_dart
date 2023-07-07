import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:dual_screen/src/media_query_extension.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    "package:dual_screen/src/media_query_extension.dart@@MediaQueryHinge|get#hinge":
        (m.Scope socpe) => (MediaQueryData target) => target.hinge
  };
}
