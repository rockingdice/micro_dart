import 'package:flutter_localizations/src/utils/date_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart';
import 'package:intl/date_symbols.dart';
import 'package:flutter_localizations/src/l10n/generated_date_localizations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_localizations/src/utils/date_localizations.dart@@loadDateIntlDataIfNotLoaded': (m.Scope scope)=>loadDateIntlDataIfNotLoaded,

};
}