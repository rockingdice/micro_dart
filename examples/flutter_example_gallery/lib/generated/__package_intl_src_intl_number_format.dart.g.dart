import 'package:intl/src/intl/number_format.dart';
import 'dart:math';
import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:intl/src/intl_helpers.dart';
import 'package:intl/src/plural_rules.dart';
import 'package:intl/src/intl/constants.dart';
import 'package:intl/src/intl/number_format_parser.dart';
import 'package:intl/src/intl/number_parser.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/intl/number_format.dart@NumberFormat@#as': (m.Scope scope, target)=>()=>target as NumberFormat,
'package:intl/src/intl/number_format.dart@NumberFormat@#is': (m.Scope scope, target)=>()=>target is NumberFormat,
'package:intl/src/intl/number_format.dart@NumberFormat@negativePrefix': (m.Scope scope, NumberFormat target)=>target.negativePrefix,
'package:intl/src/intl/number_format.dart@NumberFormat@positivePrefix': (m.Scope scope, NumberFormat target)=>target.positivePrefix,
'package:intl/src/intl/number_format.dart@NumberFormat@negativeSuffix': (m.Scope scope, NumberFormat target)=>target.negativeSuffix,
'package:intl/src/intl/number_format.dart@NumberFormat@positiveSuffix': (m.Scope scope, NumberFormat target)=>target.positiveSuffix,
'package:intl/src/intl/number_format.dart@NumberFormat@maximumIntegerDigits': (m.Scope scope, NumberFormat target)=>target.maximumIntegerDigits,
'package:intl/src/intl/number_format.dart@NumberFormat@maximumIntegerDigits:set': (m.Scope scope, NumberFormat target)=>(other)=>target.maximumIntegerDigits=other,
'package:intl/src/intl/number_format.dart@NumberFormat@minimumIntegerDigits': (m.Scope scope, NumberFormat target)=>target.minimumIntegerDigits,
'package:intl/src/intl/number_format.dart@NumberFormat@minimumIntegerDigits:set': (m.Scope scope, NumberFormat target)=>(other)=>target.minimumIntegerDigits=other,
'package:intl/src/intl/number_format.dart@NumberFormat@minimumExponentDigits': (m.Scope scope, NumberFormat target)=>target.minimumExponentDigits,
'package:intl/src/intl/number_format.dart@NumberFormat@minimumExponentDigits:set': (m.Scope scope, NumberFormat target)=>(other)=>target.minimumExponentDigits=other,
'package:intl/src/intl/number_format.dart@NumberFormat@minimumSignificantDigitsStrict': (m.Scope scope, NumberFormat target)=>target.minimumSignificantDigitsStrict,
'package:intl/src/intl/number_format.dart@NumberFormat@minimumSignificantDigitsStrict:set': (m.Scope scope, NumberFormat target)=>(other)=>target.minimumSignificantDigitsStrict=other,
'package:intl/src/intl/number_format.dart@NumberFormat@significantDigitsInUse': (m.Scope scope, NumberFormat target)=>target.significantDigitsInUse,
'package:intl/src/intl/number_format.dart@NumberFormat@significantDigitsInUse:set': (m.Scope scope, NumberFormat target)=>(other)=>target.significantDigitsInUse=other,
'package:intl/src/intl/number_format.dart@NumberFormat@multiplier': (m.Scope scope, NumberFormat target)=>target.multiplier,
'package:intl/src/intl/number_format.dart@NumberFormat@currencyName': (m.Scope scope, NumberFormat target)=>target.currencyName,
'package:intl/src/intl/number_format.dart@NumberFormat@currencyName:set': (m.Scope scope, NumberFormat target)=>(other)=>target.currencyName=other,
'package:intl/src/intl/number_format.dart@NumberFormat@currencySymbol': (m.Scope scope, NumberFormat target)=>target.currencySymbol,
'package:intl/src/intl/number_format.dart@NumberFormat@decimalDigits': (m.Scope scope, NumberFormat target)=>target.decimalDigits,
'package:intl/src/intl/number_format.dart@NumberFormat@localeZero': (m.Scope scope, NumberFormat target)=>target.localeZero,
'package:intl/src/intl/number_format.dart@NumberFormat@maximumFractionDigits': (m.Scope scope, NumberFormat target)=>target.maximumFractionDigits,
'package:intl/src/intl/number_format.dart@NumberFormat@maximumFractionDigits:set': (m.Scope scope, NumberFormat target)=>(other)=>target.maximumFractionDigits=other,
'package:intl/src/intl/number_format.dart@NumberFormat@minimumFractionDigits': (m.Scope scope, NumberFormat target)=>target.minimumFractionDigits,
'package:intl/src/intl/number_format.dart@NumberFormat@minimumFractionDigits:set': (m.Scope scope, NumberFormat target)=>(other)=>target.minimumFractionDigits=other,
'package:intl/src/intl/number_format.dart@NumberFormat@maximumSignificantDigits': (m.Scope scope, NumberFormat target)=>target.maximumSignificantDigits,
'package:intl/src/intl/number_format.dart@NumberFormat@maximumSignificantDigits:set': (m.Scope scope, NumberFormat target)=>(other)=>target.maximumSignificantDigits=other,
'package:intl/src/intl/number_format.dart@NumberFormat@minimumSignificantDigits': (m.Scope scope, NumberFormat target)=>target.minimumSignificantDigits,
'package:intl/src/intl/number_format.dart@NumberFormat@minimumSignificantDigits:set': (m.Scope scope, NumberFormat target)=>(other)=>target.minimumSignificantDigits=other,
'package:intl/src/intl/number_format.dart@NumberFormat@significantDigits:set': (m.Scope scope, NumberFormat target)=>(other)=>target.significantDigits=other,
'package:intl/src/intl/number_format.dart@NumberFormat@locale': (m.Scope scope, NumberFormat target)=>target.locale,
'package:intl/src/intl/number_format.dart@NumberFormat@symbols': (m.Scope scope, NumberFormat target)=>target.symbols,
'package:intl/src/intl/number_format.dart@NumberFormat@': (m.Scope scope)=>([String? newPattern, String? locale]){
if(newPattern == null && locale == null){
return NumberFormat();
}
if(locale == null){
return NumberFormat(newPattern!);
}
return NumberFormat(newPattern!, locale!);
},
'package:intl/src/intl/number_format.dart@NumberFormat@decimalPattern': (m.Scope scope)=>NumberFormat.decimalPattern,
'package:intl/src/intl/number_format.dart@NumberFormat@decimalPatternDigits': (m.Scope scope)=>NumberFormat.decimalPatternDigits,
'package:intl/src/intl/number_format.dart@NumberFormat@percentPattern': (m.Scope scope)=>NumberFormat.percentPattern,
'package:intl/src/intl/number_format.dart@NumberFormat@decimalPercentPattern': (m.Scope scope)=>NumberFormat.decimalPercentPattern,
'package:intl/src/intl/number_format.dart@NumberFormat@scientificPattern': (m.Scope scope)=>NumberFormat.scientificPattern,
'package:intl/src/intl/number_format.dart@NumberFormat@currency': (m.Scope scope)=>NumberFormat.currency,
'package:intl/src/intl/number_format.dart@NumberFormat@simpleCurrency': (m.Scope scope)=>NumberFormat.simpleCurrency,
'package:intl/src/intl/number_format.dart@NumberFormat@compact': (m.Scope scope)=>NumberFormat.compact,
'package:intl/src/intl/number_format.dart@NumberFormat@compactLong': (m.Scope scope)=>NumberFormat.compactLong,
'package:intl/src/intl/number_format.dart@NumberFormat@compactSimpleCurrency': (m.Scope scope)=>NumberFormat.compactSimpleCurrency,
'package:intl/src/intl/number_format.dart@NumberFormat@compactCurrency': (m.Scope scope)=>NumberFormat.compactCurrency,
'package:intl/src/intl/number_format.dart@NumberFormat@simpleCurrencySymbol': (m.Scope scope, NumberFormat target)=>target.simpleCurrencySymbol,
'package:intl/src/intl/number_format.dart@NumberFormat@localeExists': (m.Scope scope)=>NumberFormat.localeExists,
'package:intl/src/intl/number_format.dart@NumberFormat@format': (m.Scope scope, NumberFormat target)=>target.format,
'package:intl/src/intl/number_format.dart@NumberFormat@parse': (m.Scope scope, NumberFormat target)=>target.parse,
'package:intl/src/intl/number_format.dart@NumberFormat@numberOfIntegerDigits': (m.Scope scope)=>NumberFormat.numberOfIntegerDigits,
'package:intl/src/intl/number_format.dart@NumberFormat@turnOffGrouping': (m.Scope scope, NumberFormat target)=>target.turnOffGrouping,
'package:intl/src/intl/number_format.dart@NumberFormat@toString': (m.Scope scope, NumberFormat target)=>target.toString,

};
}