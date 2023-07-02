import 'package:flutter/src/rendering/paragraph.dart';
import 'dart:collection';
import 'dart:math';
import 'dart:ui' show BoxHeightStyle,BoxWidthStyle,Gradient,LineMetrics,PlaceholderAlignment,Shader,TextBox,TextHeightBehavior;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/editable.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/selection.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/paragraph.dart@TextParentData@#as': (m.Scope scope, target)=>()=>target as TextParentData,
'package:flutter/src/rendering/paragraph.dart@TextParentData@#is': (m.Scope scope, target)=>()=>target is TextParentData,
'package:flutter/src/rendering/paragraph.dart@TextParentData@scale': (m.Scope scope, TextParentData target)=>target.scale,
'package:flutter/src/rendering/paragraph.dart@TextParentData@scale:set': (m.Scope scope, TextParentData target)=>(other)=>target.scale=other,
'package:flutter/src/rendering/paragraph.dart@TextParentData@': (m.Scope scope)=>(){
return TextParentData();
},
'package:flutter/src/rendering/paragraph.dart@TextParentData@toString': (m.Scope scope, TextParentData target)=>target.toString,
'package:flutter/src/rendering/paragraph.dart@PlaceholderSpanIndexSemanticsTag@#as': (m.Scope scope, target)=>()=>target as PlaceholderSpanIndexSemanticsTag,
'package:flutter/src/rendering/paragraph.dart@PlaceholderSpanIndexSemanticsTag@#is': (m.Scope scope, target)=>()=>target is PlaceholderSpanIndexSemanticsTag,
'package:flutter/src/rendering/paragraph.dart@PlaceholderSpanIndexSemanticsTag@index': (m.Scope scope, PlaceholderSpanIndexSemanticsTag target)=>target.index,
'package:flutter/src/rendering/paragraph.dart@PlaceholderSpanIndexSemanticsTag@hashCode': (m.Scope scope, PlaceholderSpanIndexSemanticsTag target)=>target.hashCode,
'package:flutter/src/rendering/paragraph.dart@PlaceholderSpanIndexSemanticsTag@': (m.Scope scope)=>( index){
return PlaceholderSpanIndexSemanticsTag(index);
},
'package:flutter/src/rendering/paragraph.dart@PlaceholderSpanIndexSemanticsTag@==': (m.Scope scope, PlaceholderSpanIndexSemanticsTag target)=>(other)=> target == other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@#as': (m.Scope scope, target)=>()=>target as RenderParagraph,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@#is': (m.Scope scope, target)=>()=>target is RenderParagraph,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@text': (m.Scope scope, RenderParagraph target)=>target.text,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@text:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.text=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@selections': (m.Scope scope, RenderParagraph target)=>target.selections,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@registrar': (m.Scope scope, RenderParagraph target)=>target.registrar,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@registrar:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.registrar=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@textAlign': (m.Scope scope, RenderParagraph target)=>target.textAlign,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@textAlign:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.textAlign=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@textDirection': (m.Scope scope, RenderParagraph target)=>target.textDirection,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@textDirection:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.textDirection=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@softWrap': (m.Scope scope, RenderParagraph target)=>target.softWrap,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@softWrap:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.softWrap=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@overflow': (m.Scope scope, RenderParagraph target)=>target.overflow,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@overflow:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.overflow=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@textScaleFactor': (m.Scope scope, RenderParagraph target)=>target.textScaleFactor,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@textScaleFactor:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.textScaleFactor=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@maxLines': (m.Scope scope, RenderParagraph target)=>target.maxLines,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@maxLines:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.maxLines=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@locale': (m.Scope scope, RenderParagraph target)=>target.locale,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@locale:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.locale=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@strutStyle': (m.Scope scope, RenderParagraph target)=>target.strutStyle,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@strutStyle:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.strutStyle=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@textWidthBasis': (m.Scope scope, RenderParagraph target)=>target.textWidthBasis,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@textWidthBasis:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.textWidthBasis=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@textHeightBehavior': (m.Scope scope, RenderParagraph target)=>target.textHeightBehavior,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@textHeightBehavior:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.textHeightBehavior=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@selectionColor': (m.Scope scope, RenderParagraph target)=>target.selectionColor,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@selectionColor:set': (m.Scope scope, RenderParagraph target)=>(other)=>target.selectionColor=other,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@debugHasOverflowShader': (m.Scope scope, RenderParagraph target)=>target.debugHasOverflowShader,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@textSize': (m.Scope scope, RenderParagraph target)=>target.textSize,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@': (m.Scope scope)=>( text, { children,  locale,  maxLines,  overflow,  registrar,  selectionColor,  softWrap,  strutStyle,  textAlign,  textDirection,  textHeightBehavior,  textScaleFactor,  textWidthBasis}){
return RenderParagraph(text, children:children, locale:locale, maxLines:maxLines, overflow:overflow ?? TextOverflow.clip, registrar:registrar, selectionColor:selectionColor, softWrap:softWrap ?? true, strutStyle:strutStyle, textAlign:textAlign ?? TextAlign.start, textDirection:textDirection, textHeightBehavior:textHeightBehavior, textScaleFactor:textScaleFactor ?? 1.0, textWidthBasis:textWidthBasis ?? TextWidthBasis.parent);
},
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@setupParentData': (m.Scope scope, RenderParagraph target)=>target.setupParentData,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@markNeedsLayout': (m.Scope scope, RenderParagraph target)=>target.markNeedsLayout,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@dispose': (m.Scope scope, RenderParagraph target)=>target.dispose,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@computeMinIntrinsicWidth': (m.Scope scope, RenderParagraph target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@computeMaxIntrinsicWidth': (m.Scope scope, RenderParagraph target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@computeMinIntrinsicHeight': (m.Scope scope, RenderParagraph target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@computeMaxIntrinsicHeight': (m.Scope scope, RenderParagraph target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@computeDistanceToActualBaseline': (m.Scope scope, RenderParagraph target)=>target.computeDistanceToActualBaseline,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@hitTestSelf': (m.Scope scope, RenderParagraph target)=>target.hitTestSelf,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@hitTestChildren': (m.Scope scope, RenderParagraph target)=>target.hitTestChildren,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@systemFontsDidChange': (m.Scope scope, RenderParagraph target)=>target.systemFontsDidChange,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@computeDryLayout': (m.Scope scope, RenderParagraph target)=>target.computeDryLayout,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@performLayout': (m.Scope scope, RenderParagraph target)=>target.performLayout,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@paint': (m.Scope scope, RenderParagraph target)=>target.paint,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@getOffsetForCaret': (m.Scope scope, RenderParagraph target)=>target.getOffsetForCaret,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@getFullHeightForCaret': (m.Scope scope, RenderParagraph target)=>target.getFullHeightForCaret,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@getBoxesForSelection': (m.Scope scope, RenderParagraph target)=>target.getBoxesForSelection,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@getPositionForOffset': (m.Scope scope, RenderParagraph target)=>target.getPositionForOffset,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@getWordBoundary': (m.Scope scope, RenderParagraph target)=>target.getWordBoundary,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@describeSemanticsConfiguration': (m.Scope scope, RenderParagraph target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@assembleSemanticsNode': (m.Scope scope, RenderParagraph target)=>target.assembleSemanticsNode,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@clearSemantics': (m.Scope scope, RenderParagraph target)=>target.clearSemantics,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@debugDescribeChildren': (m.Scope scope, RenderParagraph target)=>target.debugDescribeChildren,
'package:flutter/src/rendering/paragraph.dart@RenderParagraph@debugFillProperties': (m.Scope scope, RenderParagraph target)=>target.debugFillProperties,

};
}