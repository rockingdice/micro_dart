import 'package:flutter/src/widgets/annotated_region.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/annotated_region.dart@AnnotatedRegion@#as':
        (m.Scope scope, target) => () => target as AnnotatedRegion,
    'package:flutter/src/widgets/annotated_region.dart@AnnotatedRegion@#is':
        (m.Scope scope, target) => () => target is AnnotatedRegion,
    'package:flutter/src/widgets/annotated_region.dart@AnnotatedRegion@value':
        (m.Scope scope, AnnotatedRegion target) => target.value,
    'package:flutter/src/widgets/annotated_region.dart@AnnotatedRegion@sized':
        (m.Scope scope, AnnotatedRegion target) => target.sized,
    'package:flutter/src/widgets/annotated_region.dart@AnnotatedRegion@':
        (m.Scope scope) => <T extends Object>({child, key, sized, value}) {
              return AnnotatedRegion<T>(
                  child: child, key: key, sized: sized ?? true, value: value);
            },
    'package:flutter/src/widgets/annotated_region.dart@AnnotatedRegion@createRenderObject':
        (m.Scope scope, AnnotatedRegion target) => target.createRenderObject,
    'package:flutter/src/widgets/annotated_region.dart@AnnotatedRegion@updateRenderObject':
        (m.Scope scope, AnnotatedRegion target) => target.updateRenderObject,
  };
}
