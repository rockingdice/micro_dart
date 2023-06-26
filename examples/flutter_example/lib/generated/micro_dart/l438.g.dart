import 'package:flutter/src/cupertino/thumb_painter.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/cupertino/thumb_painter.dart@CupertinoThumbPainter@#as':
        (m.Scope scope, target) => () => target as CupertinoThumbPainter,
    'package:flutter/src/cupertino/thumb_painter.dart@CupertinoThumbPainter@#is':
        (m.Scope scope, target) => () => target is CupertinoThumbPainter,
    'package:flutter/src/cupertino/thumb_painter.dart@CupertinoThumbPainter@color':
        (m.Scope scope, CupertinoThumbPainter target) => target.color,
    'package:flutter/src/cupertino/thumb_painter.dart@CupertinoThumbPainter@shadows':
        (m.Scope scope, CupertinoThumbPainter target) => target.shadows,
    'package:flutter/src/cupertino/thumb_painter.dart@CupertinoThumbPainter@radius':
        (m.Scope scope) => CupertinoThumbPainter.radius,
    'package:flutter/src/cupertino/thumb_painter.dart@CupertinoThumbPainter@extension':
        (m.Scope scope) => CupertinoThumbPainter.extension,
    'package:flutter/src/cupertino/thumb_painter.dart@CupertinoThumbPainter@':
        (m.Scope scope) => ({color, shadows}) {
              return CupertinoThumbPainter(
                  color: color ?? CupertinoColors.white,
                  shadows: shadows ??
                      <BoxShadow>[
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: Offset(0, 3),
                          blurRadius: 8.0,
                        ),
                        BoxShadow(
                          color: Color(0x29000000),
                          offset: Offset(0, 1),
                          blurRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 3),
                          blurRadius: 1.0,
                        ),
                      ]);
            },
    'package:flutter/src/cupertino/thumb_painter.dart@CupertinoThumbPainter@switchThumb':
        (m.Scope scope) => CupertinoThumbPainter.switchThumb,
    'package:flutter/src/cupertino/thumb_painter.dart@CupertinoThumbPainter@paint':
        (m.Scope scope, CupertinoThumbPainter target) => target.paint,
  };
}
