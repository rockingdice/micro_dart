import 'package:flutter/src/painting/inline_span.dart';
import 'dart:ui' show ParagraphBuilder, StringAttribute;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/text_painter.dart';
import 'package:flutter/src/painting/text_span.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/painting/inline_span.dart@Accumulator@#as':
        (m.Scope scope, target) => () => target as Accumulator,
    'package:flutter/src/painting/inline_span.dart@Accumulator@#is':
        (m.Scope scope, target) => () => target is Accumulator,
    'package:flutter/src/painting/inline_span.dart@Accumulator@value':
        (m.Scope scope, Accumulator target) => target.value,
    'package:flutter/src/painting/inline_span.dart@Accumulator@':
        (m.Scope scope) => ([int? _value]) {
              if (_value == null) {
                return Accumulator();
              }
              return Accumulator(_value!);
            },
    'package:flutter/src/painting/inline_span.dart@Accumulator@increment':
        (m.Scope scope, Accumulator target) => target.increment,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@#as':
        (m.Scope scope, target) =>
            () => target as InlineSpanSemanticsInformation,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@#is':
        (m.Scope scope, target) =>
            () => target is InlineSpanSemanticsInformation,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@placeholder':
        (m.Scope scope) => InlineSpanSemanticsInformation.placeholder,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@text':
        (m.Scope scope, InlineSpanSemanticsInformation target) => target.text,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@semanticsLabel':
        (m.Scope scope, InlineSpanSemanticsInformation target) =>
            target.semanticsLabel,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@recognizer':
        (m.Scope scope, InlineSpanSemanticsInformation target) =>
            target.recognizer,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@isPlaceholder':
        (m.Scope scope, InlineSpanSemanticsInformation target) =>
            target.isPlaceholder,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@requiresOwnNode':
        (m.Scope scope, InlineSpanSemanticsInformation target) =>
            target.requiresOwnNode,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@stringAttributes':
        (m.Scope scope, InlineSpanSemanticsInformation target) =>
            target.stringAttributes,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@hashCode':
        (m.Scope scope, InlineSpanSemanticsInformation target) =>
            target.hashCode,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@':
        (m.Scope scope) => (text,
                {isPlaceholder, recognizer, semanticsLabel, stringAttributes}) {
              return InlineSpanSemanticsInformation(text,
                  isPlaceholder: isPlaceholder ?? false,
                  recognizer: recognizer,
                  semanticsLabel: semanticsLabel,
                  stringAttributes:
                      stringAttributes ?? const <StringAttribute>[]);
            },
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@==':
        (m.Scope scope, InlineSpanSemanticsInformation target) =>
            (other) => target == other,
    'package:flutter/src/painting/inline_span.dart@InlineSpanSemanticsInformation@toString':
        (m.Scope scope, InlineSpanSemanticsInformation target) =>
            target.toString,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@#as':
        (m.Scope scope, target) => () => target as InlineSpan,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@#is':
        (m.Scope scope, target) => () => target is InlineSpan,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@style':
        (m.Scope scope, InlineSpan target) => target.style,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@hashCode':
        (m.Scope scope, InlineSpan target) => target.hashCode,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@build':
        (m.Scope scope, InlineSpan target) => target.build,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@visitChildren':
        (m.Scope scope, InlineSpan target) => (visitor) {
              bool visitorProxy(span) {
                return engine.callFunctionPointer(scope, visitor!, [span], {});
              }

              return target.visitChildren(visitorProxy);
            },
    'package:flutter/src/painting/inline_span.dart@InlineSpan@getSpanForPosition':
        (m.Scope scope, InlineSpan target) => target.getSpanForPosition,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@getSpanForPositionVisitor':
        (m.Scope scope, InlineSpan target) => target.getSpanForPositionVisitor,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@toPlainText':
        (m.Scope scope, InlineSpan target) => target.toPlainText,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@getSemanticsInformation':
        (m.Scope scope, InlineSpan target) => target.getSemanticsInformation,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@computeSemanticsInformation':
        (m.Scope scope, InlineSpan target) =>
            target.computeSemanticsInformation,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@computeToPlainText':
        (m.Scope scope, InlineSpan target) => target.computeToPlainText,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@codeUnitAt':
        (m.Scope scope, InlineSpan target) => target.codeUnitAt,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@codeUnitAtVisitor':
        (m.Scope scope, InlineSpan target) => target.codeUnitAtVisitor,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@debugAssertIsValid':
        (m.Scope scope, InlineSpan target) => target.debugAssertIsValid,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@compareTo':
        (m.Scope scope, InlineSpan target) => target.compareTo,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@==':
        (m.Scope scope, InlineSpan target) => (other) => target == other,
    'package:flutter/src/painting/inline_span.dart@InlineSpan@debugFillProperties':
        (m.Scope scope, InlineSpan target) => target.debugFillProperties,
    'package:flutter/src/painting/inline_span.dart@@combineSemanticsInfo':
        (m.Scope scope) => combineSemanticsInfo,
  };
}
