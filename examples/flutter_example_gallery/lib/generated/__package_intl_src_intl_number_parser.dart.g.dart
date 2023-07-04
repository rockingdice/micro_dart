import 'package:intl/src/intl/number_parser.dart';
import 'package:intl/number_symbols.dart';
import 'package:intl/src/intl/constants.dart';
import 'package:intl/src/intl/number_format.dart';
import 'package:intl/src/intl/number_format_parser.dart';
import 'package:intl/src/intl/string_stack.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/intl/number_parser.dart@NumberParser@#as': (m.Scope scope, target)=>()=>target as NumberParser,
'package:intl/src/intl/number_parser.dart@NumberParser@#is': (m.Scope scope, target)=>()=>target is NumberParser,
'package:intl/src/intl/number_parser.dart@NumberParser@format': (m.Scope scope, NumberParser target)=>target.format,
'package:intl/src/intl/number_parser.dart@NumberParser@text': (m.Scope scope, NumberParser target)=>target.text,
'package:intl/src/intl/number_parser.dart@NumberParser@input': (m.Scope scope, NumberParser target)=>target.input,
'package:intl/src/intl/number_parser.dart@NumberParser@value': (m.Scope scope, NumberParser target)=>target.value,
'package:intl/src/intl/number_parser.dart@NumberParser@value:set': (m.Scope scope, NumberParser target)=>(other)=>target.value=other,
'package:intl/src/intl/number_parser.dart@NumberParser@gotPositive': (m.Scope scope, NumberParser target)=>target.gotPositive,
'package:intl/src/intl/number_parser.dart@NumberParser@gotPositive:set': (m.Scope scope, NumberParser target)=>(other)=>target.gotPositive=other,
'package:intl/src/intl/number_parser.dart@NumberParser@gotNegative': (m.Scope scope, NumberParser target)=>target.gotNegative,
'package:intl/src/intl/number_parser.dart@NumberParser@gotNegative:set': (m.Scope scope, NumberParser target)=>(other)=>target.gotNegative=other,
'package:intl/src/intl/number_parser.dart@NumberParser@gotPositiveSuffix': (m.Scope scope, NumberParser target)=>target.gotPositiveSuffix,
'package:intl/src/intl/number_parser.dart@NumberParser@gotPositiveSuffix:set': (m.Scope scope, NumberParser target)=>(other)=>target.gotPositiveSuffix=other,
'package:intl/src/intl/number_parser.dart@NumberParser@gotNegativeSuffix': (m.Scope scope, NumberParser target)=>target.gotNegativeSuffix,
'package:intl/src/intl/number_parser.dart@NumberParser@gotNegativeSuffix:set': (m.Scope scope, NumberParser target)=>(other)=>target.gotNegativeSuffix=other,
'package:intl/src/intl/number_parser.dart@NumberParser@done': (m.Scope scope, NumberParser target)=>target.done,
'package:intl/src/intl/number_parser.dart@NumberParser@done:set': (m.Scope scope, NumberParser target)=>(other)=>target.done=other,
'package:intl/src/intl/number_parser.dart@NumberParser@prefixesSkipped': (m.Scope scope, NumberParser target)=>target.prefixesSkipped,
'package:intl/src/intl/number_parser.dart@NumberParser@prefixesSkipped:set': (m.Scope scope, NumberParser target)=>(other)=>target.prefixesSkipped=other,
'package:intl/src/intl/number_parser.dart@NumberParser@scale': (m.Scope scope, NumberParser target)=>target.scale,
'package:intl/src/intl/number_parser.dart@NumberParser@scale:set': (m.Scope scope, NumberParser target)=>(other)=>target.scale=other,
'package:intl/src/intl/number_parser.dart@NumberParser@symbols': (m.Scope scope, NumberParser target)=>target.symbols,
'package:intl/src/intl/number_parser.dart@NumberParser@replacements': (m.Scope scope, NumberParser target)=>target.replacements,
'package:intl/src/intl/number_parser.dart@NumberParser@groupingIsNotASpaceOrElseItIsSpaceFollowedByADigit': (m.Scope scope, NumberParser target)=>target.groupingIsNotASpaceOrElseItIsSpaceFollowedByADigit,
'package:intl/src/intl/number_parser.dart@NumberParser@': (m.Scope scope)=>( format,  text){
return NumberParser(format, text);
},
'package:intl/src/intl/number_parser.dart@NumberParser@invalidFormat': (m.Scope scope, NumberParser target)=>target.invalidFormat,
'package:intl/src/intl/number_parser.dart@NumberParser@handleSpace': (m.Scope scope, NumberParser target)=>target.handleSpace,
'package:intl/src/intl/number_parser.dart@NumberParser@asDigit': (m.Scope scope, NumberParser target)=>target.asDigit,
'package:intl/src/intl/number_parser.dart@NumberParser@checkPrefixes': (m.Scope scope, NumberParser target)=>target.checkPrefixes,
'package:intl/src/intl/number_parser.dart@NumberParser@checkSuffixes': (m.Scope scope, NumberParser target)=>target.checkSuffixes,
'package:intl/src/intl/number_parser.dart@NumberParser@processNonDigit': (m.Scope scope, NumberParser target)=>target.processNonDigit,
'package:intl/src/intl/number_parser.dart@NumberParser@parse': (m.Scope scope, NumberParser target)=>target.parse,
'package:intl/src/intl/number_parser.dart@NumberParser@invalidNumber': (m.Scope scope, NumberParser target)=>target.invalidNumber,
'package:intl/src/intl/number_parser.dart@NumberParser@parseNumber': (m.Scope scope, NumberParser target)=>target.parseNumber,

};
}