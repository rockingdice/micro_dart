import 'package:intl/date_symbol_data_custom.dart';
import 'package:intl/date_symbols.dart';
import 'package:intl/src/date_format_internal.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/date_symbol_data_custom.dart@@initializeDateFormattingCustom': (m.Scope scope)=>initializeDateFormattingCustom,

};
}