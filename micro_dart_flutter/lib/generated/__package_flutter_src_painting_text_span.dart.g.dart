import 'package:flutter/src/painting/text_span.dart';
import 'dart:ui' show Locale,LocaleStringAttribute,ParagraphBuilder,SpellOutStringAttribute,StringAttribute;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/inline_span.dart';
import 'package:flutter/src/painting/text_painter.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/text_span.dart@TextSpan@#as': (m.Scope scope, target)=>()=>target as TextSpan,
'package:flutter/src/painting/text_span.dart@TextSpan@#is': (m.Scope scope, target)=>()=>target is TextSpan,
'package:flutter/src/painting/text_span.dart@TextSpan@text': (m.Scope scope, TextSpan target)=>target.text,
'package:flutter/src/painting/text_span.dart@TextSpan@children': (m.Scope scope, TextSpan target)=>target.children,
'package:flutter/src/painting/text_span.dart@TextSpan@recognizer': (m.Scope scope, TextSpan target)=>target.recognizer,
'package:flutter/src/painting/text_span.dart@TextSpan@mouseCursor': (m.Scope scope, TextSpan target)=>target.mouseCursor,
'package:flutter/src/painting/text_span.dart@TextSpan@onEnter': (m.Scope scope, TextSpan target)=>target.onEnter,
'package:flutter/src/painting/text_span.dart@TextSpan@onExit': (m.Scope scope, TextSpan target)=>target.onExit,
'package:flutter/src/painting/text_span.dart@TextSpan@semanticsLabel': (m.Scope scope, TextSpan target)=>target.semanticsLabel,
'package:flutter/src/painting/text_span.dart@TextSpan@locale': (m.Scope scope, TextSpan target)=>target.locale,
'package:flutter/src/painting/text_span.dart@TextSpan@spellOut': (m.Scope scope, TextSpan target)=>target.spellOut,
'package:flutter/src/painting/text_span.dart@TextSpan@cursor': (m.Scope scope, TextSpan target)=>target.cursor,
'package:flutter/src/painting/text_span.dart@TextSpan@validForMouseTracker': (m.Scope scope, TextSpan target)=>target.validForMouseTracker,
'package:flutter/src/painting/text_span.dart@TextSpan@hashCode': (m.Scope scope, TextSpan target)=>target.hashCode,
'package:flutter/src/painting/text_span.dart@TextSpan@': (m.Scope scope)=>({ children,  locale,  mouseCursor,  onEnter,  onExit,  recognizer,  semanticsLabel,  spellOut,  style,  text}){
void onEnterProxy( event) {
 engine.callFunctionPointer(scope, onEnter!,[event], {});
}

void onExitProxy( event) {
 engine.callFunctionPointer(scope, onExit!,[event], {});
}

return TextSpan(children:children, locale:locale, mouseCursor:mouseCursor, onEnter:onEnter == null ? null :onEnterProxy, onExit:onExit == null ? null :onExitProxy, recognizer:recognizer, semanticsLabel:semanticsLabel, spellOut:spellOut, style:style, text:text);
},
'package:flutter/src/painting/text_span.dart@TextSpan@handleEvent': (m.Scope scope, TextSpan target)=>target.handleEvent,
'package:flutter/src/painting/text_span.dart@TextSpan@build': (m.Scope scope, TextSpan target)=>target.build,
'package:flutter/src/painting/text_span.dart@TextSpan@visitChildren': (m.Scope scope, TextSpan target)=>( visitor){
bool visitorProxy( span) {
return  engine.callFunctionPointer(scope, visitor!,[span], {});
}

return target.visitChildren(visitorProxy);
},
'package:flutter/src/painting/text_span.dart@TextSpan@getSpanForPositionVisitor': (m.Scope scope, TextSpan target)=>target.getSpanForPositionVisitor,
'package:flutter/src/painting/text_span.dart@TextSpan@computeToPlainText': (m.Scope scope, TextSpan target)=>target.computeToPlainText,
'package:flutter/src/painting/text_span.dart@TextSpan@computeSemanticsInformation': (m.Scope scope, TextSpan target)=>target.computeSemanticsInformation,
'package:flutter/src/painting/text_span.dart@TextSpan@codeUnitAtVisitor': (m.Scope scope, TextSpan target)=>target.codeUnitAtVisitor,
'package:flutter/src/painting/text_span.dart@TextSpan@describeSemantics': (m.Scope scope, TextSpan target)=>target.describeSemantics,
'package:flutter/src/painting/text_span.dart@TextSpan@debugAssertIsValid': (m.Scope scope, TextSpan target)=>target.debugAssertIsValid,
'package:flutter/src/painting/text_span.dart@TextSpan@compareTo': (m.Scope scope, TextSpan target)=>target.compareTo,
'package:flutter/src/painting/text_span.dart@TextSpan@==': (m.Scope scope, TextSpan target)=>(other)=> target == other,
'package:flutter/src/painting/text_span.dart@TextSpan@toStringShort': (m.Scope scope, TextSpan target)=>target.toStringShort,
'package:flutter/src/painting/text_span.dart@TextSpan@debugFillProperties': (m.Scope scope, TextSpan target)=>target.debugFillProperties,
'package:flutter/src/painting/text_span.dart@TextSpan@debugDescribeChildren': (m.Scope scope, TextSpan target)=>target.debugDescribeChildren,

};
}