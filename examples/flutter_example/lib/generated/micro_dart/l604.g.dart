import 'package:flutter/src/painting/placeholder_span.dart';
import 'dart:ui' show PlaceholderAlignment;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/inline_span.dart';
import 'package:flutter/src/painting/text_painter.dart';
import 'package:flutter/src/painting/text_span.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/placeholder_span.dart@PlaceholderSpan@#as': (m.Scope scope, target)=>()=>target as PlaceholderSpan,
'package:flutter/src/painting/placeholder_span.dart@PlaceholderSpan@#is': (m.Scope scope, target)=>()=>target is PlaceholderSpan,
'package:flutter/src/painting/placeholder_span.dart@PlaceholderSpan@placeholderCodeUnit': (m.Scope scope)=>PlaceholderSpan.placeholderCodeUnit,
'package:flutter/src/painting/placeholder_span.dart@PlaceholderSpan@alignment': (m.Scope scope, PlaceholderSpan target)=>target.alignment,
'package:flutter/src/painting/placeholder_span.dart@PlaceholderSpan@baseline': (m.Scope scope, PlaceholderSpan target)=>target.baseline,
'package:flutter/src/painting/placeholder_span.dart@PlaceholderSpan@computeToPlainText': (m.Scope scope, PlaceholderSpan target)=>target.computeToPlainText,
'package:flutter/src/painting/placeholder_span.dart@PlaceholderSpan@computeSemanticsInformation': (m.Scope scope, PlaceholderSpan target)=>target.computeSemanticsInformation,
'package:flutter/src/painting/placeholder_span.dart@PlaceholderSpan@describeSemantics': (m.Scope scope, PlaceholderSpan target)=>target.describeSemantics,
'package:flutter/src/painting/placeholder_span.dart@PlaceholderSpan@debugFillProperties': (m.Scope scope, PlaceholderSpan target)=>target.debugFillProperties,

};
}