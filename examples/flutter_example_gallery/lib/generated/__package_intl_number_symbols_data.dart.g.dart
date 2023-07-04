import 'package:intl/number_symbols_data.dart';
import 'package:intl/number_symbols.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/number_symbols_data.dart@@numberFormatSymbols': (m.Scope scope)=>numberFormatSymbols,
'package:intl/number_symbols_data.dart@@compactNumberSymbols': (m.Scope scope)=>compactNumberSymbols,
'package:intl/number_symbols_data.dart@@compactNumberSymbols:set': (m.Scope scope)=>(other)=>compactNumberSymbols=other,
'package:intl/number_symbols_data.dart@@currencyFractionDigits': (m.Scope scope)=>currencyFractionDigits,

};
}