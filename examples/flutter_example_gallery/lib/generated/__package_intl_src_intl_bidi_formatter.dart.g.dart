import 'package:intl/src/intl/bidi_formatter.dart';
import 'dart:convert';
import 'package:intl/src/intl/bidi.dart';
import 'package:intl/src/intl/text_direction.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/intl/bidi_formatter.dart@BidiFormatter@#as': (m.Scope scope, target)=>()=>target as BidiFormatter,
'package:intl/src/intl/bidi_formatter.dart@BidiFormatter@#is': (m.Scope scope, target)=>()=>target is BidiFormatter,
'package:intl/src/intl/bidi_formatter.dart@BidiFormatter@contextDirection': (m.Scope scope, BidiFormatter target)=>target.contextDirection,
'package:intl/src/intl/bidi_formatter.dart@BidiFormatter@contextDirection:set': (m.Scope scope, BidiFormatter target)=>(other)=>target.contextDirection=other,
'package:intl/src/intl/bidi_formatter.dart@BidiFormatter@isRTL': (m.Scope scope, BidiFormatter target)=>target.isRTL,
'package:intl/src/intl/bidi_formatter.dart@BidiFormatter@LTR': (m.Scope scope)=>BidiFormatter.LTR,
'package:intl/src/intl/bidi_formatter.dart@BidiFormatter@RTL': (m.Scope scope)=>BidiFormatter.RTL,
'package:intl/src/intl/bidi_formatter.dart@BidiFormatter@UNKNOWN': (m.Scope scope)=>BidiFormatter.UNKNOWN,
'package:intl/src/intl/bidi_formatter.dart@BidiFormatter@wrapWithSpan': (m.Scope scope, BidiFormatter target)=>target.wrapWithSpan,
'package:intl/src/intl/bidi_formatter.dart@BidiFormatter@wrapWithUnicode': (m.Scope scope, BidiFormatter target)=>target.wrapWithUnicode,
'package:intl/src/intl/bidi_formatter.dart@BidiFormatter@estimateDirection': (m.Scope scope, BidiFormatter target)=>target.estimateDirection,

};
}