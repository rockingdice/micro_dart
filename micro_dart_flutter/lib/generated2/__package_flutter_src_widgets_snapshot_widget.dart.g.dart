import 'package:flutter/src/widgets/snapshot_widget.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotController@#as':
        (m.Scope scope, target) => () => target as SnapshotController,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotController@#is':
        (m.Scope scope, target) => () => target is SnapshotController,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotController@allowSnapshotting':
        (m.Scope scope, SnapshotController target) => target.allowSnapshotting,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotController@allowSnapshotting:set':
        (m.Scope scope, SnapshotController target) =>
            (other) => target.allowSnapshotting = other,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotController@':
        (m.Scope scope) => ({allowSnapshotting}) {
              return SnapshotController(
                  allowSnapshotting: allowSnapshotting ?? false);
            },
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotController@clear':
        (m.Scope scope, SnapshotController target) => target.clear,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotWidget@#as':
        (m.Scope scope, target) => () => target as SnapshotWidget,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotWidget@#is':
        (m.Scope scope, target) => () => target is SnapshotWidget,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotWidget@controller':
        (m.Scope scope, SnapshotWidget target) => target.controller,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotWidget@mode':
        (m.Scope scope, SnapshotWidget target) => target.mode,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotWidget@autoresize':
        (m.Scope scope, SnapshotWidget target) => target.autoresize,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotWidget@painter':
        (m.Scope scope, SnapshotWidget target) => target.painter,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotWidget@':
        (m.Scope scope) =>
            ({autoresize, child, controller, key, mode, painter}) {
              return SnapshotWidget(
                  autoresize: autoresize ?? false,
                  child: child,
                  controller: controller,
                  key: key,
                  mode: mode ?? SnapshotMode.normal,
                  painter: painter ?? const _DefaultSnapshotPainter());
            },
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotWidget@createRenderObject':
        (m.Scope scope, SnapshotWidget target) => target.createRenderObject,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotWidget@updateRenderObject':
        (m.Scope scope, SnapshotWidget target) => target.updateRenderObject,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotPainter@#as':
        (m.Scope scope, target) => () => target as SnapshotPainter,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotPainter@#is':
        (m.Scope scope, target) => () => target is SnapshotPainter,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotPainter@paintSnapshot':
        (m.Scope scope, SnapshotPainter target) => target.paintSnapshot,
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotPainter@paint':
        (m.Scope scope, SnapshotPainter target) =>
            (context, offset, size, painter) {
              void painterProxy(context, offset) {
                engine.callFunctionPointer(
                    scope, painter!, [context, offset], {});
              }

              target.paint(context, offset, size, painterProxy);
            },
    'package:flutter/src/widgets/snapshot_widget.dart@SnapshotPainter@shouldRepaint':
        (m.Scope scope, SnapshotPainter target) => target.shouldRepaint,
  };
}

class _DefaultSnapshotPainter implements SnapshotPainter {
  const _DefaultSnapshotPainter();

  @override
  void addListener(VoidCallback listener) {}

  @override
  void dispose() {}

  @override
  bool get hasListeners => false;

  @override
  void notifyListeners() {}

  @override
  void paint(PaintingContext context, Offset offset, Size size,
      PaintingContextCallback painter) {
    painter(context, offset);
  }

  @override
  void paintSnapshot(PaintingContext context, Offset offset, Size size,
      Image image, Size sourceSize, double pixelRatio) {
    final Rect src = Rect.fromLTWH(0, 0, sourceSize.width, sourceSize.height);
    final Rect dst =
        Rect.fromLTWH(offset.dx, offset.dy, size.width, size.height);
    final Paint paint = Paint()..filterQuality = FilterQuality.low;
    context.canvas.drawImageRect(image, src, dst, paint);
  }

  @override
  void removeListener(VoidCallback listener) {}

  @override
  bool shouldRepaint(covariant _DefaultSnapshotPainter oldPainter) => false;
}
