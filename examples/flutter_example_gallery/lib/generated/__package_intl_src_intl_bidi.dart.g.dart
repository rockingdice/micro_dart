import 'package:intl/src/intl/bidi.dart';
import 'package:intl/src/global_state.dart';
import 'package:intl/src/intl/text_direction.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/intl/bidi.dart@Bidi@#as': (m.Scope scope, target)=>()=>target as Bidi,
'package:intl/src/intl/bidi.dart@Bidi@#is': (m.Scope scope, target)=>()=>target is Bidi,
'package:intl/src/intl/bidi.dart@Bidi@LRE': (m.Scope scope)=>Bidi.LRE,
'package:intl/src/intl/bidi.dart@Bidi@RLE': (m.Scope scope)=>Bidi.RLE,
'package:intl/src/intl/bidi.dart@Bidi@PDF': (m.Scope scope)=>Bidi.PDF,
'package:intl/src/intl/bidi.dart@Bidi@LRM': (m.Scope scope)=>Bidi.LRM,
'package:intl/src/intl/bidi.dart@Bidi@RLM': (m.Scope scope)=>Bidi.RLM,
'package:intl/src/intl/bidi.dart@Bidi@': (m.Scope scope)=>(){
return Bidi();
},
'package:intl/src/intl/bidi.dart@Bidi@stripHtmlIfNeeded': (m.Scope scope)=>Bidi.stripHtmlIfNeeded,
'package:intl/src/intl/bidi.dart@Bidi@startsWithLtr': (m.Scope scope)=>Bidi.startsWithLtr,
'package:intl/src/intl/bidi.dart@Bidi@startsWithRtl': (m.Scope scope)=>Bidi.startsWithRtl,
'package:intl/src/intl/bidi.dart@Bidi@endsWithLtr': (m.Scope scope)=>Bidi.endsWithLtr,
'package:intl/src/intl/bidi.dart@Bidi@endsWithRtl': (m.Scope scope)=>Bidi.endsWithRtl,
'package:intl/src/intl/bidi.dart@Bidi@hasAnyLtr': (m.Scope scope)=>Bidi.hasAnyLtr,
'package:intl/src/intl/bidi.dart@Bidi@hasAnyRtl': (m.Scope scope)=>Bidi.hasAnyRtl,
'package:intl/src/intl/bidi.dart@Bidi@isRtlLanguage': (m.Scope scope)=>Bidi.isRtlLanguage,
'package:intl/src/intl/bidi.dart@Bidi@enforceRtlInHtml': (m.Scope scope)=>Bidi.enforceRtlInHtml,
'package:intl/src/intl/bidi.dart@Bidi@enforceRtlInText': (m.Scope scope)=>Bidi.enforceRtlInText,
'package:intl/src/intl/bidi.dart@Bidi@enforceLtrInHtml': (m.Scope scope)=>Bidi.enforceLtrInHtml,
'package:intl/src/intl/bidi.dart@Bidi@enforceLtrInText': (m.Scope scope)=>Bidi.enforceLtrInText,
'package:intl/src/intl/bidi.dart@Bidi@guardBracketInHtml': (m.Scope scope)=>Bidi.guardBracketInHtml,
'package:intl/src/intl/bidi.dart@Bidi@guardBracketInText': (m.Scope scope)=>Bidi.guardBracketInText,
'package:intl/src/intl/bidi.dart@Bidi@estimateDirectionOfText': (m.Scope scope)=>Bidi.estimateDirectionOfText,
'package:intl/src/intl/bidi.dart@Bidi@normalizeHebrewQuote': (m.Scope scope)=>Bidi.normalizeHebrewQuote,
'package:intl/src/intl/bidi.dart@Bidi@detectRtlDirectionality': (m.Scope scope)=>Bidi.detectRtlDirectionality,

};
}