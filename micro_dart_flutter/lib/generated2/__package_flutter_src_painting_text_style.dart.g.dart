import 'package:flutter/src/painting/text_style.dart';
import 'dart:ui' show FontFeature,FontVariation,ParagraphStyle,Shadow,StrutStyle,TextHeightBehavior,TextLeadingDistribution,TextStyle,lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/colors.dart';
import 'package:flutter/src/painting/strut_style.dart';
import 'package:flutter/src/painting/text_painter.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/text_style.dart@TextStyle@#as': (m.Scope scope, target)=>()=>target as TextStyle,
'package:flutter/src/painting/text_style.dart@TextStyle@#is': (m.Scope scope, target)=>()=>target is TextStyle,
'package:flutter/src/painting/text_style.dart@TextStyle@inherit': (m.Scope scope, TextStyle target)=>target.inherit,
'package:flutter/src/painting/text_style.dart@TextStyle@color': (m.Scope scope, TextStyle target)=>target.color,
'package:flutter/src/painting/text_style.dart@TextStyle@backgroundColor': (m.Scope scope, TextStyle target)=>target.backgroundColor,
'package:flutter/src/painting/text_style.dart@TextStyle@fontFamily': (m.Scope scope, TextStyle target)=>target.fontFamily,
'package:flutter/src/painting/text_style.dart@TextStyle@fontSize': (m.Scope scope, TextStyle target)=>target.fontSize,
'package:flutter/src/painting/text_style.dart@TextStyle@fontWeight': (m.Scope scope, TextStyle target)=>target.fontWeight,
'package:flutter/src/painting/text_style.dart@TextStyle@fontStyle': (m.Scope scope, TextStyle target)=>target.fontStyle,
'package:flutter/src/painting/text_style.dart@TextStyle@letterSpacing': (m.Scope scope, TextStyle target)=>target.letterSpacing,
'package:flutter/src/painting/text_style.dart@TextStyle@wordSpacing': (m.Scope scope, TextStyle target)=>target.wordSpacing,
'package:flutter/src/painting/text_style.dart@TextStyle@textBaseline': (m.Scope scope, TextStyle target)=>target.textBaseline,
'package:flutter/src/painting/text_style.dart@TextStyle@height': (m.Scope scope, TextStyle target)=>target.height,
'package:flutter/src/painting/text_style.dart@TextStyle@leadingDistribution': (m.Scope scope, TextStyle target)=>target.leadingDistribution,
'package:flutter/src/painting/text_style.dart@TextStyle@locale': (m.Scope scope, TextStyle target)=>target.locale,
'package:flutter/src/painting/text_style.dart@TextStyle@foreground': (m.Scope scope, TextStyle target)=>target.foreground,
'package:flutter/src/painting/text_style.dart@TextStyle@background': (m.Scope scope, TextStyle target)=>target.background,
'package:flutter/src/painting/text_style.dart@TextStyle@decoration': (m.Scope scope, TextStyle target)=>target.decoration,
'package:flutter/src/painting/text_style.dart@TextStyle@decorationColor': (m.Scope scope, TextStyle target)=>target.decorationColor,
'package:flutter/src/painting/text_style.dart@TextStyle@decorationStyle': (m.Scope scope, TextStyle target)=>target.decorationStyle,
'package:flutter/src/painting/text_style.dart@TextStyle@decorationThickness': (m.Scope scope, TextStyle target)=>target.decorationThickness,
'package:flutter/src/painting/text_style.dart@TextStyle@debugLabel': (m.Scope scope, TextStyle target)=>target.debugLabel,
'package:flutter/src/painting/text_style.dart@TextStyle@shadows': (m.Scope scope, TextStyle target)=>target.shadows,
'package:flutter/src/painting/text_style.dart@TextStyle@fontFeatures': (m.Scope scope, TextStyle target)=>target.fontFeatures,
'package:flutter/src/painting/text_style.dart@TextStyle@fontVariations': (m.Scope scope, TextStyle target)=>target.fontVariations,
'package:flutter/src/painting/text_style.dart@TextStyle@overflow': (m.Scope scope, TextStyle target)=>target.overflow,
'package:flutter/src/painting/text_style.dart@TextStyle@fontFamilyFallback': (m.Scope scope, TextStyle target)=>target.fontFamilyFallback,
'package:flutter/src/painting/text_style.dart@TextStyle@hashCode': (m.Scope scope, TextStyle target)=>target.hashCode,
'package:flutter/src/painting/text_style.dart@TextStyle@': (m.Scope scope)=>({ background,  backgroundColor,  color,  debugLabel,  decoration,  decorationColor,  decorationStyle,  decorationThickness,  fontFamily,  fontFamilyFallback,  fontFeatures,  fontSize,  fontStyle,  fontVariations,  fontWeight,  foreground,  height,  inherit,  leadingDistribution,  letterSpacing,  locale,  overflow,  package,  shadows,  textBaseline,  wordSpacing}){
return TextStyle(background:background, backgroundColor:backgroundColor, color:color, debugLabel:debugLabel, decoration:decoration, decorationColor:decorationColor, decorationStyle:decorationStyle, decorationThickness:decorationThickness, fontFamily:fontFamily, fontFamilyFallback:fontFamilyFallback, fontFeatures:fontFeatures, fontSize:fontSize, fontStyle:fontStyle, fontVariations:fontVariations, fontWeight:fontWeight, foreground:foreground, height:height, inherit:inherit ?? true, leadingDistribution:leadingDistribution, letterSpacing:letterSpacing, locale:locale, overflow:overflow, package:package, shadows:shadows, textBaseline:textBaseline, wordSpacing:wordSpacing);
},
'package:flutter/src/painting/text_style.dart@TextStyle@copyWith': (m.Scope scope, TextStyle target)=>target.copyWith,
'package:flutter/src/painting/text_style.dart@TextStyle@apply': (m.Scope scope, TextStyle target)=>target.apply,
'package:flutter/src/painting/text_style.dart@TextStyle@merge': (m.Scope scope, TextStyle target)=>target.merge,
'package:flutter/src/painting/text_style.dart@TextStyle@lerp': (m.Scope scope)=>TextStyle.lerp,
'package:flutter/src/painting/text_style.dart@TextStyle@getTextStyle': (m.Scope scope, TextStyle target)=>target.getTextStyle,
'package:flutter/src/painting/text_style.dart@TextStyle@getParagraphStyle': (m.Scope scope, TextStyle target)=>target.getParagraphStyle,
'package:flutter/src/painting/text_style.dart@TextStyle@compareTo': (m.Scope scope, TextStyle target)=>target.compareTo,
'package:flutter/src/painting/text_style.dart@TextStyle@==': (m.Scope scope, TextStyle target)=>(other)=> target == other,
'package:flutter/src/painting/text_style.dart@TextStyle@toStringShort': (m.Scope scope, TextStyle target)=>target.toStringShort,
'package:flutter/src/painting/text_style.dart@TextStyle@debugFillProperties': (m.Scope scope, TextStyle target)=>target.debugFillProperties,

};
}