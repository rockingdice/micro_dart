import 'package:intl/src/date_format_internal.dart';
import 'package:intl/date_symbols.dart';
import 'package:intl/src/intl_helpers.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/date_format_internal.dart@@cachedDateSymbols': (m.Scope scope)=>cachedDateSymbols,
'package:intl/src/date_format_internal.dart@@cachedDateSymbols:set': (m.Scope scope)=>(other)=>cachedDateSymbols=other,
'package:intl/src/date_format_internal.dart@@lastDateSymbolLocale': (m.Scope scope)=>lastDateSymbolLocale,
'package:intl/src/date_format_internal.dart@@lastDateSymbolLocale:set': (m.Scope scope)=>(other)=>lastDateSymbolLocale=other,
'package:intl/src/date_format_internal.dart@@dateTimePatterns': (m.Scope scope)=>dateTimePatterns,
'package:intl/src/date_format_internal.dart@@dateTimePatterns:set': (m.Scope scope)=>(other)=>dateTimePatterns=other,
'package:intl/src/date_format_internal.dart@@dateTimeSymbols': (m.Scope scope)=>dateTimeSymbols,
'package:intl/src/date_format_internal.dart@@dateTimeSymbols:set': (m.Scope scope)=>(other)=>dateTimeSymbols=other,
'package:intl/src/date_format_internal.dart@@initializeDateSymbols': (m.Scope scope)=>initializeDateSymbols,
'package:intl/src/date_format_internal.dart@@initializeDatePatterns': (m.Scope scope)=>initializeDatePatterns,
'package:intl/src/date_format_internal.dart@@initializeIndividualLocaleDateFormatting': (m.Scope scope)=>initializeIndividualLocaleDateFormatting,

};
}