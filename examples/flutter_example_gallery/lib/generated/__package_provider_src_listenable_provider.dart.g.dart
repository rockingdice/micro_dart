import 'package:provider/src/listenable_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/src/change_notifier_provider.dart'
    show ChangeNotifierProvider, ChangeNotifierProxyProvider;
import 'package:provider/src/provider.dart';
import 'package:provider/src/proxy_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:provider/src/listenable_provider.dart@ListenableProvider@#as':
        (m.Scope scope, target) => () => target as ListenableProvider,
    'package:provider/src/listenable_provider.dart@ListenableProvider@#is':
        (m.Scope scope, target) => () => target is ListenableProvider,
    'package:provider/src/listenable_provider.dart@ListenableProvider@':
        (m.Scope scope) => <T extends Listenable?>(
                {builder, child, create, dispose, key, lazy}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              T createProxy<T>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              void disposeProxy<T>(context, value) {
                engine
                    .callFunctionPointer(scope, dispose!, [context, value], {});
              }

              return ListenableProvider<T>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: createProxy,
                  dispose: dispose == null ? null : disposeProxy,
                  key: key,
                  lazy: lazy);
            },
    'package:provider/src/listenable_provider.dart@ListenableProvider@value':
        (m.Scope scope) => <T extends Listenable?>(
                {builder, child, key, updateShouldNotify, value}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              bool updateShouldNotifyProxy<T>(previous, current) {
                return engine.callFunctionPointer(
                    scope, updateShouldNotify!, [previous, current], {});
              }

              return ListenableProvider<T>.value(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  key: key,
                  updateShouldNotify: updateShouldNotify == null
                      ? null
                      : updateShouldNotifyProxy,
                  value: value);
            },
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider0@#as':
        (m.Scope scope, target) => () => target as ListenableProxyProvider0,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider0@#is':
        (m.Scope scope, target) => () => target is ListenableProxyProvider0,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider0@':
        (m.Scope scope) => <R extends Listenable?>(
                {builder,
                child,
                create,
                dispose,
                key,
                lazy,
                update,
                updateShouldNotify}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              void disposeProxy<R>(context, value) {
                engine
                    .callFunctionPointer(scope, dispose!, [context, value], {});
              }

              R updateProxy<R>($p0, previous) {
                return engine
                    .callFunctionPointer(scope, update!, [$p0, previous], {});
              }

              bool updateShouldNotifyProxy<R>(previous, current) {
                return engine.callFunctionPointer(
                    scope, updateShouldNotify!, [previous, current], {});
              }

              return ListenableProxyProvider0<R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: create == null ? null : createProxy,
                  dispose: dispose == null ? null : disposeProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy,
                  updateShouldNotify: updateShouldNotify == null
                      ? null
                      : updateShouldNotifyProxy);
            },
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider@#as':
        (m.Scope scope, target) => () => target as ListenableProxyProvider,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider@#is':
        (m.Scope scope, target) => () => target is ListenableProxyProvider,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider@':
        (m.Scope scope) => <T, R extends Listenable?>(
                {builder, child, create, dispose, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              void disposeProxy<R>(context, value) {
                engine
                    .callFunctionPointer(scope, dispose!, [context, value], {});
              }

              R updateProxy<R, T>(context, value, previous) {
                return engine.callFunctionPointer(
                    scope, update!, [context, value, previous], {});
              }

              return ListenableProxyProvider<T, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: create == null ? null : createProxy,
                  dispose: dispose == null ? null : disposeProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider2@#as':
        (m.Scope scope, target) => () => target as ListenableProxyProvider2,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider2@#is':
        (m.Scope scope, target) => () => target is ListenableProxyProvider2,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider2@':
        (m.Scope scope) => <T, T2, R extends Listenable?>(
                {builder, child, create, dispose, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              void disposeProxy<R>(context, value) {
                engine
                    .callFunctionPointer(scope, dispose!, [context, value], {});
              }

              R updateProxy<R, T, T2>(context, value, value2, previous) {
                return engine.callFunctionPointer(
                    scope, update!, [context, value, value2, previous], {});
              }

              return ListenableProxyProvider2<T, T2, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: create == null ? null : createProxy,
                  dispose: dispose == null ? null : disposeProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider3@#as':
        (m.Scope scope, target) => () => target as ListenableProxyProvider3,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider3@#is':
        (m.Scope scope, target) => () => target is ListenableProxyProvider3,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider3@':
        (m.Scope scope) => <T, T2, T3, R extends Listenable?>(
                {builder, child, create, dispose, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              void disposeProxy<R>(context, value) {
                engine
                    .callFunctionPointer(scope, dispose!, [context, value], {});
              }

              R updateProxy<R, T, T2, T3>(
                  context, value, value2, value3, previous) {
                return engine.callFunctionPointer(scope, update!,
                    [context, value, value2, value3, previous], {});
              }

              return ListenableProxyProvider3<T, T2, T3, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: create == null ? null : createProxy,
                  dispose: dispose == null ? null : disposeProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider4@#as':
        (m.Scope scope, target) => () => target as ListenableProxyProvider4,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider4@#is':
        (m.Scope scope, target) => () => target is ListenableProxyProvider4,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider4@':
        (m.Scope scope) => <T, T2, T3, T4, R extends Listenable?>(
                {builder, child, create, dispose, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              void disposeProxy<R>(context, value) {
                engine
                    .callFunctionPointer(scope, dispose!, [context, value], {});
              }

              R updateProxy<R, T, T2, T3, T4>(
                  context, value, value2, value3, value4, previous) {
                return engine.callFunctionPointer(scope, update!,
                    [context, value, value2, value3, value4, previous], {});
              }

              return ListenableProxyProvider4<T, T2, T3, T4, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: create == null ? null : createProxy,
                  dispose: dispose == null ? null : disposeProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider5@#as':
        (m.Scope scope, target) => () => target as ListenableProxyProvider5,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider5@#is':
        (m.Scope scope, target) => () => target is ListenableProxyProvider5,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider5@':
        (m.Scope scope) => <T, T2, T3, T4, T5, R extends Listenable?>(
                {builder, child, create, dispose, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              void disposeProxy<R>(context, value) {
                engine
                    .callFunctionPointer(scope, dispose!, [context, value], {});
              }

              R updateProxy<R, T, T2, T3, T4, T5>(
                  context, value, value2, value3, value4, value5, previous) {
                return engine.callFunctionPointer(
                    scope,
                    update!,
                    [context, value, value2, value3, value4, value5, previous],
                    {});
              }

              return ListenableProxyProvider5<T, T2, T3, T4, T5, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: create == null ? null : createProxy,
                  dispose: dispose == null ? null : disposeProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider6@#as':
        (m.Scope scope, target) => () => target as ListenableProxyProvider6,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider6@#is':
        (m.Scope scope, target) => () => target is ListenableProxyProvider6,
    'package:provider/src/listenable_provider.dart@ListenableProxyProvider6@':
        (m.Scope scope) => <T, T2, T3, T4, T5, T6, R extends Listenable?>(
                {builder, child, create, dispose, key, lazy, update}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              R createProxy<R>(context) {
                return engine
                    .callFunctionPointer(scope, create!, [context], {});
              }

              void disposeProxy<R>(context, value) {
                engine
                    .callFunctionPointer(scope, dispose!, [context, value], {});
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

              return ListenableProxyProvider6<T, T2, T3, T4, T5, T6, R>(
                  builder: builder == null ? null : builderProxy,
                  child: child,
                  create: create == null ? null : createProxy,
                  dispose: dispose == null ? null : disposeProxy,
                  key: key,
                  lazy: lazy,
                  update: updateProxy);
            },
  };
}
