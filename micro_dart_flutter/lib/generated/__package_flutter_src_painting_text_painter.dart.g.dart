import 'package:flutter/src/painting/text_painter.dart';
import 'dart:math' show max,min;
import 'dart:ui' show BoxHeightStyle,BoxWidthStyle,LineMetrics,Paragraph,ParagraphBuilder,ParagraphConstraints,ParagraphStyle,PlaceholderAlignment,TextHeightBehavior,TextStyle;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/inline_span.dart';
import 'package:flutter/src/painting/placeholder_span.dart';
import 'package:flutter/src/painting/strut_style.dart';
import 'package:flutter/src/painting/text_span.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/text_painter.dart@PlaceholderDimensions@#as': (m.Scope scope, target)=>()=>target as PlaceholderDimensions,
'package:flutter/src/painting/text_painter.dart@PlaceholderDimensions@#is': (m.Scope scope, target)=>()=>target is PlaceholderDimensions,
'package:flutter/src/painting/text_painter.dart@PlaceholderDimensions@empty': (m.Scope scope)=>PlaceholderDimensions.empty,
'package:flutter/src/painting/text_painter.dart@PlaceholderDimensions@size': (m.Scope scope, PlaceholderDimensions target)=>target.size,
'package:flutter/src/painting/text_painter.dart@PlaceholderDimensions@alignment': (m.Scope scope, PlaceholderDimensions target)=>target.alignment,
'package:flutter/src/painting/text_painter.dart@PlaceholderDimensions@baselineOffset': (m.Scope scope, PlaceholderDimensions target)=>target.baselineOffset,
'package:flutter/src/painting/text_painter.dart@PlaceholderDimensions@baseline': (m.Scope scope, PlaceholderDimensions target)=>target.baseline,
'package:flutter/src/painting/text_painter.dart@PlaceholderDimensions@hashCode': (m.Scope scope, PlaceholderDimensions target)=>target.hashCode,
'package:flutter/src/painting/text_painter.dart@PlaceholderDimensions@': (m.Scope scope)=>({ alignment,  baseline,  baselineOffset,  size}){
return PlaceholderDimensions(alignment:alignment, baseline:baseline, baselineOffset:baselineOffset, size:size);
},
'package:flutter/src/painting/text_painter.dart@PlaceholderDimensions@==': (m.Scope scope, PlaceholderDimensions target)=>(other)=> target == other,
'package:flutter/src/painting/text_painter.dart@PlaceholderDimensions@toString': (m.Scope scope, PlaceholderDimensions target)=>target.toString,
'package:flutter/src/painting/text_painter.dart@WordBoundary@#as': (m.Scope scope, target)=>()=>target as WordBoundary,
'package:flutter/src/painting/text_painter.dart@WordBoundary@#is': (m.Scope scope, target)=>()=>target is WordBoundary,
'package:flutter/src/painting/text_painter.dart@WordBoundary@moveByWordBoundary': (m.Scope scope, WordBoundary target)=>target.moveByWordBoundary,
'package:flutter/src/painting/text_painter.dart@WordBoundary@getTextBoundaryAt': (m.Scope scope, WordBoundary target)=>target.getTextBoundaryAt,
'package:flutter/src/painting/text_painter.dart@TextPainter@#as': (m.Scope scope, target)=>()=>target as TextPainter,
'package:flutter/src/painting/text_painter.dart@TextPainter@#is': (m.Scope scope, target)=>()=>target is TextPainter,
'package:flutter/src/painting/text_painter.dart@TextPainter@text': (m.Scope scope, TextPainter target)=>target.text,
'package:flutter/src/painting/text_painter.dart@TextPainter@text:set': (m.Scope scope, TextPainter target)=>(other)=>target.text=other,
'package:flutter/src/painting/text_painter.dart@TextPainter@plainText': (m.Scope scope, TextPainter target)=>target.plainText,
'package:flutter/src/painting/text_painter.dart@TextPainter@textAlign': (m.Scope scope, TextPainter target)=>target.textAlign,
'package:flutter/src/painting/text_painter.dart@TextPainter@textAlign:set': (m.Scope scope, TextPainter target)=>(other)=>target.textAlign=other,
'package:flutter/src/painting/text_painter.dart@TextPainter@textDirection': (m.Scope scope, TextPainter target)=>target.textDirection,
'package:flutter/src/painting/text_painter.dart@TextPainter@textDirection:set': (m.Scope scope, TextPainter target)=>(other)=>target.textDirection=other,
'package:flutter/src/painting/text_painter.dart@TextPainter@textScaleFactor': (m.Scope scope, TextPainter target)=>target.textScaleFactor,
'package:flutter/src/painting/text_painter.dart@TextPainter@textScaleFactor:set': (m.Scope scope, TextPainter target)=>(other)=>target.textScaleFactor=other,
'package:flutter/src/painting/text_painter.dart@TextPainter@ellipsis': (m.Scope scope, TextPainter target)=>target.ellipsis,
'package:flutter/src/painting/text_painter.dart@TextPainter@ellipsis:set': (m.Scope scope, TextPainter target)=>(other)=>target.ellipsis=other,
'package:flutter/src/painting/text_painter.dart@TextPainter@locale': (m.Scope scope, TextPainter target)=>target.locale,
'package:flutter/src/painting/text_painter.dart@TextPainter@locale:set': (m.Scope scope, TextPainter target)=>(other)=>target.locale=other,
'package:flutter/src/painting/text_painter.dart@TextPainter@maxLines': (m.Scope scope, TextPainter target)=>target.maxLines,
'package:flutter/src/painting/text_painter.dart@TextPainter@maxLines:set': (m.Scope scope, TextPainter target)=>(other)=>target.maxLines=other,
'package:flutter/src/painting/text_painter.dart@TextPainter@strutStyle': (m.Scope scope, TextPainter target)=>target.strutStyle,
'package:flutter/src/painting/text_painter.dart@TextPainter@strutStyle:set': (m.Scope scope, TextPainter target)=>(other)=>target.strutStyle=other,
'package:flutter/src/painting/text_painter.dart@TextPainter@textWidthBasis': (m.Scope scope, TextPainter target)=>target.textWidthBasis,
'package:flutter/src/painting/text_painter.dart@TextPainter@textWidthBasis:set': (m.Scope scope, TextPainter target)=>(other)=>target.textWidthBasis=other,
'package:flutter/src/painting/text_painter.dart@TextPainter@textHeightBehavior': (m.Scope scope, TextPainter target)=>target.textHeightBehavior,
'package:flutter/src/painting/text_painter.dart@TextPainter@textHeightBehavior:set': (m.Scope scope, TextPainter target)=>(other)=>target.textHeightBehavior=other,
'package:flutter/src/painting/text_painter.dart@TextPainter@inlinePlaceholderBoxes': (m.Scope scope, TextPainter target)=>target.inlinePlaceholderBoxes,
'package:flutter/src/painting/text_painter.dart@TextPainter@inlinePlaceholderScales': (m.Scope scope, TextPainter target)=>target.inlinePlaceholderScales,
'package:flutter/src/painting/text_painter.dart@TextPainter@preferredLineHeight': (m.Scope scope, TextPainter target)=>target.preferredLineHeight,
'package:flutter/src/painting/text_painter.dart@TextPainter@minIntrinsicWidth': (m.Scope scope, TextPainter target)=>target.minIntrinsicWidth,
'package:flutter/src/painting/text_painter.dart@TextPainter@maxIntrinsicWidth': (m.Scope scope, TextPainter target)=>target.maxIntrinsicWidth,
'package:flutter/src/painting/text_painter.dart@TextPainter@width': (m.Scope scope, TextPainter target)=>target.width,
'package:flutter/src/painting/text_painter.dart@TextPainter@height': (m.Scope scope, TextPainter target)=>target.height,
'package:flutter/src/painting/text_painter.dart@TextPainter@size': (m.Scope scope, TextPainter target)=>target.size,
'package:flutter/src/painting/text_painter.dart@TextPainter@didExceedMaxLines': (m.Scope scope, TextPainter target)=>target.didExceedMaxLines,
'package:flutter/src/painting/text_painter.dart@TextPainter@wordBoundaries': (m.Scope scope, TextPainter target)=>target.wordBoundaries,
'package:flutter/src/painting/text_painter.dart@TextPainter@debugDisposed': (m.Scope scope, TextPainter target)=>target.debugDisposed,
'package:flutter/src/painting/text_painter.dart@TextPainter@': (m.Scope scope)=>({ ellipsis,  locale,  maxLines,  strutStyle,  text,  textAlign,  textDirection,  textHeightBehavior,  textScaleFactor,  textWidthBasis}){
return TextPainter(ellipsis:ellipsis, locale:locale, maxLines:maxLines, strutStyle:strutStyle, text:text, textAlign:textAlign ?? TextAlign.start, textDirection:textDirection, textHeightBehavior:textHeightBehavior, textScaleFactor:textScaleFactor ?? 1.0, textWidthBasis:textWidthBasis ?? TextWidthBasis.parent);
},
'package:flutter/src/painting/text_painter.dart@TextPainter@computeWidth': (m.Scope scope)=>TextPainter.computeWidth,
'package:flutter/src/painting/text_painter.dart@TextPainter@computeMaxIntrinsicWidth': (m.Scope scope)=>TextPainter.computeMaxIntrinsicWidth,
'package:flutter/src/painting/text_painter.dart@TextPainter@markNeedsLayout': (m.Scope scope, TextPainter target)=>target.markNeedsLayout,
'package:flutter/src/painting/text_painter.dart@TextPainter@setPlaceholderDimensions': (m.Scope scope, TextPainter target)=>target.setPlaceholderDimensions,
'package:flutter/src/painting/text_painter.dart@TextPainter@computeDistanceToActualBaseline': (m.Scope scope, TextPainter target)=>target.computeDistanceToActualBaseline,
'package:flutter/src/painting/text_painter.dart@TextPainter@layout': (m.Scope scope, TextPainter target)=>target.layout,
'package:flutter/src/painting/text_painter.dart@TextPainter@paint': (m.Scope scope, TextPainter target)=>target.paint,
'package:flutter/src/painting/text_painter.dart@TextPainter@getOffsetAfter': (m.Scope scope, TextPainter target)=>target.getOffsetAfter,
'package:flutter/src/painting/text_painter.dart@TextPainter@getOffsetBefore': (m.Scope scope, TextPainter target)=>target.getOffsetBefore,
'package:flutter/src/painting/text_painter.dart@TextPainter@getOffsetForCaret': (m.Scope scope, TextPainter target)=>target.getOffsetForCaret,
'package:flutter/src/painting/text_painter.dart@TextPainter@getFullHeightForCaret': (m.Scope scope, TextPainter target)=>target.getFullHeightForCaret,
'package:flutter/src/painting/text_painter.dart@TextPainter@getBoxesForSelection': (m.Scope scope, TextPainter target)=>target.getBoxesForSelection,
'package:flutter/src/painting/text_painter.dart@TextPainter@getPositionForOffset': (m.Scope scope, TextPainter target)=>target.getPositionForOffset,
'package:flutter/src/painting/text_painter.dart@TextPainter@getWordBoundary': (m.Scope scope, TextPainter target)=>target.getWordBoundary,
'package:flutter/src/painting/text_painter.dart@TextPainter@getLineBoundary': (m.Scope scope, TextPainter target)=>target.getLineBoundary,
'package:flutter/src/painting/text_painter.dart@TextPainter@computeLineMetrics': (m.Scope scope, TextPainter target)=>target.computeLineMetrics,
'package:flutter/src/painting/text_painter.dart@TextPainter@dispose': (m.Scope scope, TextPainter target)=>target.dispose,

};
}