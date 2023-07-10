import 'package:flutter/src/services/text_layout_metrics.dart';
import 'dart:ui' show TextRange;
import 'package:flutter/src/services/text_editing.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/text_layout_metrics.dart@TextLayoutMetrics@#as': (m.Scope scope, target)=>()=>target as TextLayoutMetrics,
'package:flutter/src/services/text_layout_metrics.dart@TextLayoutMetrics@#is': (m.Scope scope, target)=>()=>target is TextLayoutMetrics,
'package:flutter/src/services/text_layout_metrics.dart@TextLayoutMetrics@isWhitespace': (m.Scope scope)=>TextLayoutMetrics.isWhitespace,
'package:flutter/src/services/text_layout_metrics.dart@TextLayoutMetrics@isLineTerminator': (m.Scope scope)=>TextLayoutMetrics.isLineTerminator,
'package:flutter/src/services/text_layout_metrics.dart@TextLayoutMetrics@getLineAtOffset': (m.Scope scope, TextLayoutMetrics target)=>target.getLineAtOffset,
'package:flutter/src/services/text_layout_metrics.dart@TextLayoutMetrics@getWordBoundary': (m.Scope scope, TextLayoutMetrics target)=>target.getWordBoundary,
'package:flutter/src/services/text_layout_metrics.dart@TextLayoutMetrics@getTextPositionAbove': (m.Scope scope, TextLayoutMetrics target)=>target.getTextPositionAbove,
'package:flutter/src/services/text_layout_metrics.dart@TextLayoutMetrics@getTextPositionBelow': (m.Scope scope, TextLayoutMetrics target)=>target.getTextPositionBelow,

};
}