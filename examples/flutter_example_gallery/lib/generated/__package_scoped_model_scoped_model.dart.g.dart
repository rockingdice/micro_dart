import 'package:scoped_model/scoped_model.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:scoped_model/scoped_model.dart@Model@#as':
        (m.Scope scope, target) => () => target as Model,
    'package:scoped_model/scoped_model.dart@Model@#is':
        (m.Scope scope, target) => () => target is Model,
    'package:scoped_model/scoped_model.dart@Model@listenerCount':
        (m.Scope scope, Model target) => target.listenerCount,
    'package:scoped_model/scoped_model.dart@Model@addListener':
        (m.Scope scope, Model target) => (listener) {
              void listenerProxy() {
                engine.callFunctionPointer(scope, listener!, [], {});
              }

              target.addListener(listenerProxy);
            },
    'package:scoped_model/scoped_model.dart@Model@removeListener':
        (m.Scope scope, Model target) => (listener) {
              void listenerProxy() {
                engine.callFunctionPointer(scope, listener!, [], {});
              }

              target.removeListener(listenerProxy);
            },
    'package:scoped_model/scoped_model.dart@Model@notifyListeners':
        (m.Scope scope, Model target) => target.notifyListeners,
    'package:scoped_model/scoped_model.dart@ModelFinder@#as':
        (m.Scope scope, target) => () => target as ModelFinder,
    'package:scoped_model/scoped_model.dart@ModelFinder@#is':
        (m.Scope scope, target) => () => target is ModelFinder,
    'package:scoped_model/scoped_model.dart@ModelFinder@': (m.Scope scope) =>
        <T>() {
          return ModelFinder();
        },
    'package:scoped_model/scoped_model.dart@ModelFinder@of':
        (m.Scope scope, ModelFinder target) => target.of,
    'package:scoped_model/scoped_model.dart@ScopedModel@#as':
        (m.Scope scope, target) => () => target as ScopedModel,
    'package:scoped_model/scoped_model.dart@ScopedModel@#is':
        (m.Scope scope, target) => () => target is ScopedModel,
    'package:scoped_model/scoped_model.dart@ScopedModel@model':
        (m.Scope scope, ScopedModel target) => target.model,
    'package:scoped_model/scoped_model.dart@ScopedModel@child':
        (m.Scope scope, ScopedModel target) => target.child,
    'package:scoped_model/scoped_model.dart@ScopedModel@': (m.Scope scope) =>
        <T extends Model>({child, model}) {
          return ScopedModel<T>(child: child, model: model);
        },
    'package:scoped_model/scoped_model.dart@ScopedModel@build':
        (m.Scope scope, ScopedModel target) => target.build,
    'package:scoped_model/scoped_model.dart@ScopedModel@of': (m.Scope scope) =>
        ScopedModel.of,
    'package:scoped_model/scoped_model.dart@ScopedModelDescendant@#as':
        (m.Scope scope, target) => () => target as ScopedModelDescendant,
    'package:scoped_model/scoped_model.dart@ScopedModelDescendant@#is':
        (m.Scope scope, target) => () => target is ScopedModelDescendant,
    'package:scoped_model/scoped_model.dart@ScopedModelDescendant@builder':
        (m.Scope scope, ScopedModelDescendant target) => target.builder,
    'package:scoped_model/scoped_model.dart@ScopedModelDescendant@child':
        (m.Scope scope, ScopedModelDescendant target) => target.child,
    'package:scoped_model/scoped_model.dart@ScopedModelDescendant@rebuildOnChange':
        (m.Scope scope, ScopedModelDescendant target) => target.rebuildOnChange,
    'package:scoped_model/scoped_model.dart@ScopedModelDescendant@':
        (m.Scope scope) => ({builder, child, rebuildOnChange}) {
              Widget builderProxy<T>(context, child, model) {
                return engine.callFunctionPointer(
                    scope, builder!, [context, child, model], {});
              }

              return ScopedModelDescendant(
                  builder: builderProxy,
                  child: child,
                  rebuildOnChange: rebuildOnChange ?? true);
            },
    'package:scoped_model/scoped_model.dart@ScopedModelDescendant@build':
        (m.Scope scope, ScopedModelDescendant target) => target.build,
    'package:scoped_model/scoped_model.dart@ScopedModelError@#as':
        (m.Scope scope, target) => () => target as ScopedModelError,
    'package:scoped_model/scoped_model.dart@ScopedModelError@#is':
        (m.Scope scope, target) => () => target is ScopedModelError,
    'package:scoped_model/scoped_model.dart@ScopedModelError@':
        (m.Scope scope) => () {
              return ScopedModelError();
            },
    'package:scoped_model/scoped_model.dart@ScopedModelError@toString':
        (m.Scope scope, ScopedModelError target) => target.toString,
  };
}
