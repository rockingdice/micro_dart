import 'package:intl/number_symbols.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/number_symbols.dart@NumberSymbols@#as': (m.Scope scope, target)=>()=>target as NumberSymbols,
'package:intl/number_symbols.dart@NumberSymbols@#is': (m.Scope scope, target)=>()=>target is NumberSymbols,
'package:intl/number_symbols.dart@NumberSymbols@NAME': (m.Scope scope, NumberSymbols target)=>target.NAME,
'package:intl/number_symbols.dart@NumberSymbols@DECIMAL_SEP': (m.Scope scope, NumberSymbols target)=>target.DECIMAL_SEP,
'package:intl/number_symbols.dart@NumberSymbols@GROUP_SEP': (m.Scope scope, NumberSymbols target)=>target.GROUP_SEP,
'package:intl/number_symbols.dart@NumberSymbols@PERCENT': (m.Scope scope, NumberSymbols target)=>target.PERCENT,
'package:intl/number_symbols.dart@NumberSymbols@ZERO_DIGIT': (m.Scope scope, NumberSymbols target)=>target.ZERO_DIGIT,
'package:intl/number_symbols.dart@NumberSymbols@PLUS_SIGN': (m.Scope scope, NumberSymbols target)=>target.PLUS_SIGN,
'package:intl/number_symbols.dart@NumberSymbols@MINUS_SIGN': (m.Scope scope, NumberSymbols target)=>target.MINUS_SIGN,
'package:intl/number_symbols.dart@NumberSymbols@EXP_SYMBOL': (m.Scope scope, NumberSymbols target)=>target.EXP_SYMBOL,
'package:intl/number_symbols.dart@NumberSymbols@PERMILL': (m.Scope scope, NumberSymbols target)=>target.PERMILL,
'package:intl/number_symbols.dart@NumberSymbols@INFINITY': (m.Scope scope, NumberSymbols target)=>target.INFINITY,
'package:intl/number_symbols.dart@NumberSymbols@NAN': (m.Scope scope, NumberSymbols target)=>target.NAN,
'package:intl/number_symbols.dart@NumberSymbols@DECIMAL_PATTERN': (m.Scope scope, NumberSymbols target)=>target.DECIMAL_PATTERN,
'package:intl/number_symbols.dart@NumberSymbols@SCIENTIFIC_PATTERN': (m.Scope scope, NumberSymbols target)=>target.SCIENTIFIC_PATTERN,
'package:intl/number_symbols.dart@NumberSymbols@PERCENT_PATTERN': (m.Scope scope, NumberSymbols target)=>target.PERCENT_PATTERN,
'package:intl/number_symbols.dart@NumberSymbols@CURRENCY_PATTERN': (m.Scope scope, NumberSymbols target)=>target.CURRENCY_PATTERN,
'package:intl/number_symbols.dart@NumberSymbols@DEF_CURRENCY_CODE': (m.Scope scope, NumberSymbols target)=>target.DEF_CURRENCY_CODE,
'package:intl/number_symbols.dart@NumberSymbols@': (m.Scope scope)=>({ CURRENCY_PATTERN,  DECIMAL_PATTERN,  DECIMAL_SEP,  DEF_CURRENCY_CODE,  EXP_SYMBOL,  GROUP_SEP,  INFINITY,  MINUS_SIGN,  NAME,  NAN,  PERCENT,  PERCENT_PATTERN,  PERMILL,  PLUS_SIGN,  SCIENTIFIC_PATTERN,  ZERO_DIGIT}){
return NumberSymbols(CURRENCY_PATTERN:CURRENCY_PATTERN, DECIMAL_PATTERN:DECIMAL_PATTERN, DECIMAL_SEP:DECIMAL_SEP, DEF_CURRENCY_CODE:DEF_CURRENCY_CODE, EXP_SYMBOL:EXP_SYMBOL, GROUP_SEP:GROUP_SEP, INFINITY:INFINITY, MINUS_SIGN:MINUS_SIGN, NAME:NAME, NAN:NAN, PERCENT:PERCENT, PERCENT_PATTERN:PERCENT_PATTERN, PERMILL:PERMILL, PLUS_SIGN:PLUS_SIGN, SCIENTIFIC_PATTERN:SCIENTIFIC_PATTERN, ZERO_DIGIT:ZERO_DIGIT);
},
'package:intl/number_symbols.dart@NumberSymbols@toString': (m.Scope scope, NumberSymbols target)=>target.toString,
'package:intl/number_symbols.dart@CompactNumberSymbols@#as': (m.Scope scope, target)=>()=>target as CompactNumberSymbols,
'package:intl/number_symbols.dart@CompactNumberSymbols@#is': (m.Scope scope, target)=>()=>target is CompactNumberSymbols,
'package:intl/number_symbols.dart@CompactNumberSymbols@COMPACT_DECIMAL_SHORT_PATTERN': (m.Scope scope, CompactNumberSymbols target)=>target.COMPACT_DECIMAL_SHORT_PATTERN,
'package:intl/number_symbols.dart@CompactNumberSymbols@COMPACT_DECIMAL_LONG_PATTERN': (m.Scope scope, CompactNumberSymbols target)=>target.COMPACT_DECIMAL_LONG_PATTERN,
'package:intl/number_symbols.dart@CompactNumberSymbols@COMPACT_DECIMAL_SHORT_CURRENCY_PATTERN': (m.Scope scope, CompactNumberSymbols target)=>target.COMPACT_DECIMAL_SHORT_CURRENCY_PATTERN,
'package:intl/number_symbols.dart@CompactNumberSymbols@': (m.Scope scope)=>({ COMPACT_DECIMAL_LONG_PATTERN,  COMPACT_DECIMAL_SHORT_CURRENCY_PATTERN,  COMPACT_DECIMAL_SHORT_PATTERN}){
return CompactNumberSymbols(COMPACT_DECIMAL_LONG_PATTERN:COMPACT_DECIMAL_LONG_PATTERN, COMPACT_DECIMAL_SHORT_CURRENCY_PATTERN:COMPACT_DECIMAL_SHORT_CURRENCY_PATTERN, COMPACT_DECIMAL_SHORT_PATTERN:COMPACT_DECIMAL_SHORT_PATTERN);
},

};
}