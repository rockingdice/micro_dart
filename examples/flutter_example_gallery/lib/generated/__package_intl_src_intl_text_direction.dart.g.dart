import 'package:intl/src/intl/text_direction.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/intl/text_direction.dart@TextDirection@#as': (m.Scope scope, target)=>()=>target as TextDirection,
'package:intl/src/intl/text_direction.dart@TextDirection@#is': (m.Scope scope, target)=>()=>target is TextDirection,
'package:intl/src/intl/text_direction.dart@TextDirection@LTR': (m.Scope scope)=>TextDirection.LTR,
'package:intl/src/intl/text_direction.dart@TextDirection@RTL': (m.Scope scope)=>TextDirection.RTL,
'package:intl/src/intl/text_direction.dart@TextDirection@UNKNOWN': (m.Scope scope)=>TextDirection.UNKNOWN,
'package:intl/src/intl/text_direction.dart@TextDirection@value': (m.Scope scope, TextDirection target)=>target.value,
'package:intl/src/intl/text_direction.dart@TextDirection@spanText': (m.Scope scope, TextDirection target)=>target.spanText,
'package:intl/src/intl/text_direction.dart@TextDirection@isDirectionChange': (m.Scope scope, TextDirection target)=>target.isDirectionChange,

};
}