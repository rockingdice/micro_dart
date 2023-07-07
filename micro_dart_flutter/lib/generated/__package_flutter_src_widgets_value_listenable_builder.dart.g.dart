import 'package:flutter/src/widgets/value_listenable_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/value_listenable_builder.dart@ValueListenableBuilder@#as':
        (m.Scope scope, target) => () => target as ValueListenableBuilder,
    'package:flutter/src/widgets/value_listenable_builder.dart@ValueListenableBuilder@#is':
        (m.Scope scope, target) => () => target is ValueListenableBuilder,
    'package:flutter/src/widgets/value_listenable_builder.dart@ValueListenableBuilder@valueListenable':
        (m.Scope scope, ValueListenableBuilder target) =>
            target.valueListenable,
    'package:flutter/src/widgets/value_listenable_builder.dart@ValueListenableBuilder@builder':
        (m.Scope scope, ValueListenableBuilder target) => target.builder,
    'package:flutter/src/widgets/value_listenable_builder.dart@ValueListenableBuilder@child':
        (m.Scope scope, ValueListenableBuilder target) => target.child,
    'package:flutter/src/widgets/value_listenable_builder.dart@ValueListenableBuilder@':
        (m.Scope scope) => ({builder, child, key, valueListenable}) {
              Widget builderProxy<T>(context, value, child) {
                return engine.callFunctionPointer(
                    scope, builder!, [context, value, child], {});
              }

              return ValueListenableBuilder(
                  builder: builderProxy,
                  child: child,
                  key: key,
                  valueListenable: valueListenable);
            },
    'package:flutter/src/widgets/value_listenable_builder.dart@ValueListenableBuilder@createState':
        (m.Scope scope, ValueListenableBuilder target) => target.createState,
  };
}
