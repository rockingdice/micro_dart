import 'package:flutter/src/widgets/layout_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/layout_builder.dart@ConstrainedLayoutBuilder@#as':
        (m.Scope scope, target) => () => target as ConstrainedLayoutBuilder,
    'package:flutter/src/widgets/layout_builder.dart@ConstrainedLayoutBuilder@#is':
        (m.Scope scope, target) => () => target is ConstrainedLayoutBuilder,
    'package:flutter/src/widgets/layout_builder.dart@ConstrainedLayoutBuilder@builder':
        (m.Scope scope, ConstrainedLayoutBuilder target) => target.builder,
    'package:flutter/src/widgets/layout_builder.dart@ConstrainedLayoutBuilder@createElement':
        (m.Scope scope, ConstrainedLayoutBuilder target) =>
            target.createElement,
    'package:flutter/src/widgets/layout_builder.dart@LayoutBuilder@#as':
        (m.Scope scope, target) => () => target as LayoutBuilder,
    'package:flutter/src/widgets/layout_builder.dart@LayoutBuilder@#is':
        (m.Scope scope, target) => () => target is LayoutBuilder,
    'package:flutter/src/widgets/layout_builder.dart@LayoutBuilder@':
        (m.Scope scope) => ({builder, key}) {
              Widget builderProxy(context, constraints) {
                return engine.callFunctionPointer(
                    scope, builder!, [context, constraints], {});
              }

              return LayoutBuilder(builder: builderProxy, key: key);
            },
    'package:flutter/src/widgets/layout_builder.dart@LayoutBuilder@createRenderObject':
        (m.Scope scope, LayoutBuilder target) => target.createRenderObject,
  };
}
