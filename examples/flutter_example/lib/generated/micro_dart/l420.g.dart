import 'package:flutter/src/cupertino/refresh.dart';
import 'dart:math';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/activity_indicator.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/cupertino/refresh.dart@CupertinoSliverRefreshControl@#as':
        (m.Scope scope, target) =>
            () => target as CupertinoSliverRefreshControl,
    'package:flutter/src/cupertino/refresh.dart@CupertinoSliverRefreshControl@#is':
        (m.Scope scope, target) =>
            () => target is CupertinoSliverRefreshControl,
    'package:flutter/src/cupertino/refresh.dart@CupertinoSliverRefreshControl@refreshTriggerPullDistance':
        (m.Scope scope, CupertinoSliverRefreshControl target) =>
            target.refreshTriggerPullDistance,
    'package:flutter/src/cupertino/refresh.dart@CupertinoSliverRefreshControl@refreshIndicatorExtent':
        (m.Scope scope, CupertinoSliverRefreshControl target) =>
            target.refreshIndicatorExtent,
    'package:flutter/src/cupertino/refresh.dart@CupertinoSliverRefreshControl@builder':
        (m.Scope scope, CupertinoSliverRefreshControl target) => target.builder,
    'package:flutter/src/cupertino/refresh.dart@CupertinoSliverRefreshControl@onRefresh':
        (m.Scope scope, CupertinoSliverRefreshControl target) =>
            target.onRefresh,
    'package:flutter/src/cupertino/refresh.dart@CupertinoSliverRefreshControl@':
        (m.Scope scope) => (
                {builder,
                key,
                onRefresh,
                refreshIndicatorExtent,
                refreshTriggerPullDistance}) {
              Widget builderProxy(context, refreshState, pulledExtent,
                  refreshTriggerPullDistance, refreshIndicatorExtent) {
                return engine.callFunctionPointer(scope, builder!, [
                  context,
                  refreshState,
                  pulledExtent,
                  refreshTriggerPullDistance,
                  refreshIndicatorExtent
                ], {});
              }

              Future onRefreshProxy() async {
                return await engine
                    .callFunctionPointerAsync(scope, onRefresh!, [], {});
              }

              return CupertinoSliverRefreshControl(
                  builder: builder == null
                      ? CupertinoSliverRefreshControl.buildRefreshIndicator
                      : builderProxy,
                  key: key,
                  onRefresh: onRefresh == null ? null : onRefreshProxy,
                  refreshIndicatorExtent: refreshIndicatorExtent ?? 60.0,
                  refreshTriggerPullDistance:
                      refreshTriggerPullDistance ?? 100.0);
            },
    'package:flutter/src/cupertino/refresh.dart@CupertinoSliverRefreshControl@state':
        (m.Scope scope) => CupertinoSliverRefreshControl.state,
    'package:flutter/src/cupertino/refresh.dart@CupertinoSliverRefreshControl@buildRefreshIndicator':
        (m.Scope scope) => CupertinoSliverRefreshControl.buildRefreshIndicator,
    'package:flutter/src/cupertino/refresh.dart@CupertinoSliverRefreshControl@createState':
        (m.Scope scope, CupertinoSliverRefreshControl target) =>
            target.createState,
  };
}
