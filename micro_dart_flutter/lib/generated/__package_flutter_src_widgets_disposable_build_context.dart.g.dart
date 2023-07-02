import 'package:flutter/src/widgets/disposable_build_context.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/disposable_build_context.dart@DisposableBuildContext@#as':
        (m.Scope scope, target) => () => target as DisposableBuildContext,
    'package:flutter/src/widgets/disposable_build_context.dart@DisposableBuildContext@#is':
        (m.Scope scope, target) => () => target is DisposableBuildContext,
    'package:flutter/src/widgets/disposable_build_context.dart@DisposableBuildContext@context':
        (m.Scope scope, DisposableBuildContext target) => target.context,
    'package:flutter/src/widgets/disposable_build_context.dart@DisposableBuildContext@':
        (m.Scope scope) => <T extends State>(_state) {
              return DisposableBuildContext<T>(_state);
            },
    'package:flutter/src/widgets/disposable_build_context.dart@DisposableBuildContext@dispose':
        (m.Scope scope, DisposableBuildContext target) => target.dispose,
  };
}
