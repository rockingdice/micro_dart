import 'package:flutter/src/services/text_boundary.dart';
import 'dart:math';
import 'package:characters/characters.dart' show CharacterRange;
import 'package:flutter/src/services/text_layout_metrics.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/text_boundary.dart@TextBoundary@#as': (m.Scope scope, target)=>()=>target as TextBoundary,
'package:flutter/src/services/text_boundary.dart@TextBoundary@#is': (m.Scope scope, target)=>()=>target is TextBoundary,
'package:flutter/src/services/text_boundary.dart@TextBoundary@getLeadingTextBoundaryAt': (m.Scope scope, TextBoundary target)=>target.getLeadingTextBoundaryAt,
'package:flutter/src/services/text_boundary.dart@TextBoundary@getTrailingTextBoundaryAt': (m.Scope scope, TextBoundary target)=>target.getTrailingTextBoundaryAt,
'package:flutter/src/services/text_boundary.dart@TextBoundary@getTextBoundaryAt': (m.Scope scope, TextBoundary target)=>target.getTextBoundaryAt,
'package:flutter/src/services/text_boundary.dart@CharacterBoundary@#as': (m.Scope scope, target)=>()=>target as CharacterBoundary,
'package:flutter/src/services/text_boundary.dart@CharacterBoundary@#is': (m.Scope scope, target)=>()=>target is CharacterBoundary,
'package:flutter/src/services/text_boundary.dart@CharacterBoundary@': (m.Scope scope)=>CharacterBoundary,
'package:flutter/src/services/text_boundary.dart@CharacterBoundary@getLeadingTextBoundaryAt': (m.Scope scope, CharacterBoundary target)=>target.getLeadingTextBoundaryAt,
'package:flutter/src/services/text_boundary.dart@CharacterBoundary@getTrailingTextBoundaryAt': (m.Scope scope, CharacterBoundary target)=>target.getTrailingTextBoundaryAt,
'package:flutter/src/services/text_boundary.dart@CharacterBoundary@getTextBoundaryAt': (m.Scope scope, CharacterBoundary target)=>target.getTextBoundaryAt,
'package:flutter/src/services/text_boundary.dart@LineBoundary@#as': (m.Scope scope, target)=>()=>target as LineBoundary,
'package:flutter/src/services/text_boundary.dart@LineBoundary@#is': (m.Scope scope, target)=>()=>target is LineBoundary,
'package:flutter/src/services/text_boundary.dart@LineBoundary@': (m.Scope scope)=>LineBoundary,
'package:flutter/src/services/text_boundary.dart@LineBoundary@getTextBoundaryAt': (m.Scope scope, LineBoundary target)=>target.getTextBoundaryAt,
'package:flutter/src/services/text_boundary.dart@ParagraphBoundary@#as': (m.Scope scope, target)=>()=>target as ParagraphBoundary,
'package:flutter/src/services/text_boundary.dart@ParagraphBoundary@#is': (m.Scope scope, target)=>()=>target is ParagraphBoundary,
'package:flutter/src/services/text_boundary.dart@ParagraphBoundary@': (m.Scope scope)=>ParagraphBoundary,
'package:flutter/src/services/text_boundary.dart@ParagraphBoundary@getLeadingTextBoundaryAt': (m.Scope scope, ParagraphBoundary target)=>target.getLeadingTextBoundaryAt,
'package:flutter/src/services/text_boundary.dart@ParagraphBoundary@getTrailingTextBoundaryAt': (m.Scope scope, ParagraphBoundary target)=>target.getTrailingTextBoundaryAt,
'package:flutter/src/services/text_boundary.dart@DocumentBoundary@#as': (m.Scope scope, target)=>()=>target as DocumentBoundary,
'package:flutter/src/services/text_boundary.dart@DocumentBoundary@#is': (m.Scope scope, target)=>()=>target is DocumentBoundary,
'package:flutter/src/services/text_boundary.dart@DocumentBoundary@': (m.Scope scope)=>DocumentBoundary,
'package:flutter/src/services/text_boundary.dart@DocumentBoundary@getLeadingTextBoundaryAt': (m.Scope scope, DocumentBoundary target)=>target.getLeadingTextBoundaryAt,
'package:flutter/src/services/text_boundary.dart@DocumentBoundary@getTrailingTextBoundaryAt': (m.Scope scope, DocumentBoundary target)=>target.getTrailingTextBoundaryAt,

};
}