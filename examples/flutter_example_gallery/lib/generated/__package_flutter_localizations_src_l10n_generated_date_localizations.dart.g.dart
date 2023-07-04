import 'package:flutter_localizations/src/l10n/generated_date_localizations.dart';
import 'package:intl/date_symbols.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_localizations/src/l10n/generated_date_localizations.dart@@dateSymbols': (m.Scope scope)=>dateSymbols,
'package:flutter_localizations/src/l10n/generated_date_localizations.dart@@datePatterns': (m.Scope scope)=>datePatterns,

};
}