import 'package:provider/src/change_notifier_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/src/listenable_provider.dart';
import 'package:provider/src/provider.dart';
import 'package:provider/src/proxy_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProvider@#as':
        (m.Scope scope, target) => () => target as ChangeNotifierProvider,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProvider@#is':
        (m.Scope scope, target) => () => target is ChangeNotifierProvider,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProvider@':
        (m.Scope scope) =>
            <T extends ChangeNotifier?>({builder, child, create, key, lazy}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              T createProxy<T>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              return ChangeNotifierProvider<T>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: createProxy,
                  key: key,
                  lazy: lazy);
            },
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProvider@value':
        (m.Scope scope) =>
            <T extends ChangeNotifier?>({builder, child, key, value}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              return ChangeNotifierProvider<T>.value(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  key: key,
                  value: value);
            },
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider@#as':
        (m.Scope scope, target) => () => target as ChangeNotifierProxyProvider,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider@#is':
        (m.Scope scope, target) => () => target is ChangeNotifierProxyProvider,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider@':
        (m.Scope scope) => <T, R extends ChangeNotifier?>(
                {builder, child, create, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              R updateProxy<R, T>(context, value, previous) {
                return engine.callFunctionPointer(
                    scope, update!, [context, value, previous], {});
              }

              return ChangeNotifierProxyProvider<T, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: createProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider0@#as':
        (m.Scope scope, target) => () => target as ChangeNotifierProxyProvider0,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider0@#is':
        (m.Scope scope, target) => () => target is ChangeNotifierProxyProvider0,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider0@':
        (m.Scope scope) => <R extends ChangeNotifier?>(
                {builder, child, create, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              R updateProxy<R>($p0, value) {
                return engine
                    .callFunctionPointer(scope, update!, [$p0, value], {});
              }

              return ChangeNotifierProxyProvider0<R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: createProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider2@#as':
        (m.Scope scope, target) => () => target as ChangeNotifierProxyProvider2,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider2@#is':
        (m.Scope scope, target) => () => target is ChangeNotifierProxyProvider2,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider2@':
        (m.Scope scope) => <T, T2, R extends ChangeNotifier?>(
                {builder, child, create, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              R updateProxy<R, T, T2>(context, value, value2, previous) {
                return engine.callFunctionPointer(
                    scope, update!, [context, value, value2, previous], {});
              }

              return ChangeNotifierProxyProvider2<T, T2, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: createProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider3@#as':
        (m.Scope scope, target) => () => target as ChangeNotifierProxyProvider3,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider3@#is':
        (m.Scope scope, target) => () => target is ChangeNotifierProxyProvider3,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider3@':
        (m.Scope scope) => <T, T2, T3, R extends ChangeNotifier?>(
                {builder, child, create, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              R updateProxy<R, T, T2, T3>(
                  context, value, value2, value3, previous) {
                return engine.callFunctionPointer(scope, update!,
                    [context, value, value2, value3, previous], {});
              }

              return ChangeNotifierProxyProvider3<T, T2, T3, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: createProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider4@#as':
        (m.Scope scope, target) => () => target as ChangeNotifierProxyProvider4,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider4@#is':
        (m.Scope scope, target) => () => target is ChangeNotifierProxyProvider4,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider4@':
        (m.Scope scope) => <T, T2, T3, T4, R extends ChangeNotifier?>(
                {builder, child, create, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              R updateProxy<R, T, T2, T3, T4>(
                  context, value, value2, value3, value4, previous) {
                return engine.callFunctionPointer(scope, update!,
                    [context, value, value2, value3, value4, previous], {});
              }

              return ChangeNotifierProxyProvider4<T, T2, T3, T4, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: createProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider5@#as':
        (m.Scope scope, target) => () => target as ChangeNotifierProxyProvider5,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider5@#is':
        (m.Scope scope, target) => () => target is ChangeNotifierProxyProvider5,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider5@':
        (m.Scope scope) => <T, T2, T3, T4, T5, R extends ChangeNotifier?>(
                {builder, child, create, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              R updateProxy<R, T, T2, T3, T4, T5>(
                  context, value, value2, value3, value4, value5, previous) {
                return engine.callFunctionPointer(
                    scope,
                    update!,
                    [context, value, value2, value3, value4, value5, previous],
                    {});
              }

              return ChangeNotifierProxyProvider5<T, T2, T3, T4, T5, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: createProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider6@#as':
        (m.Scope scope, target) => () => target as ChangeNotifierProxyProvider6,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider6@#is':
        (m.Scope scope, target) => () => target is ChangeNotifierProxyProvider6,
    'package:provider/src/change_notifier_provider.dart@ChangeNotifierProxyProvider6@':
        (m.Scope scope) => <T, T2, T3, T4, T5, T6, R extends ChangeNotifier?>(
                {builder, child, create, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              R updateProxy<R, T, T2, T3, T4, T5, T6>(context, value, value2,
                  value3, value4, value5, value6, previous) {
                return engine.callFunctionPointer(scope, update!, [
                  context,
                  value,
                  value2,
                  value3,
                  value4,
                  value5,
                  value6,
                  previous
                ], {});
              }

              return ChangeNotifierProxyProvider6<T, T2, T3, T4, T5, T6, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: createProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
  };
}
