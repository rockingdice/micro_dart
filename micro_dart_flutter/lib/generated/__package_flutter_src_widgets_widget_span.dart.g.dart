import 'package:flutter/src/widgets/widget_span.dart';
import 'dart:ui' show ParagraphBuilder, PlaceholderAlignment;
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@#as':
        (m.Scope scope, target) => () => target as WidgetSpan,
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@#is':
        (m.Scope scope, target) => () => target is WidgetSpan,
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@child':
        (m.Scope scope, WidgetSpan target) => target.child,
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@hashCode':
        (m.Scope scope, WidgetSpan target) => target.hashCode,
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@':
        (m.Scope scope) => ({alignment, baseline, child, style}) {
              return WidgetSpan(
                  alignment: alignment ?? PlaceholderAlignment.bottom,
                  baseline: baseline,
                  child: child,
                  style: style);
            },
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@build':
        (m.Scope scope, WidgetSpan target) => target.build,
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@visitChildren':
        (m.Scope scope, WidgetSpan target) => (visitor) {
              bool visitorProxy(span) {
                return engine.callFunctionPointer(scope, visitor!, [span], {});
              }

              return target.visitChildren(visitorProxy);
            },
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@getSpanForPositionVisitor':
        (m.Scope scope, WidgetSpan target) => target.getSpanForPositionVisitor,
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@codeUnitAtVisitor':
        (m.Scope scope, WidgetSpan target) => target.codeUnitAtVisitor,
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@compareTo':
        (m.Scope scope, WidgetSpan target) => target.compareTo,
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@==':
        (m.Scope scope, WidgetSpan target) => (other) => target == other,
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@getSpanForPosition':
        (m.Scope scope, WidgetSpan target) => target.getSpanForPosition,
    'package:flutter/src/widgets/widget_span.dart@WidgetSpan@debugAssertIsValid':
        (m.Scope scope, WidgetSpan target) => target.debugAssertIsValid,
  };
}
