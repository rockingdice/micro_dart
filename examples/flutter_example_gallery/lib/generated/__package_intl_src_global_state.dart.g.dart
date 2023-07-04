import 'package:intl/src/global_state.dart';
import 'dart:async';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/global_state.dart@@systemLocale': (m.Scope scope)=>systemLocale,
'package:intl/src/global_state.dart@@systemLocale:set': (m.Scope scope)=>(other)=>systemLocale=other,
'package:intl/src/global_state.dart@@defaultLocale:set': (m.Scope scope)=>(other)=>defaultLocale=other,
'package:intl/src/global_state.dart@@defaultLocale': (m.Scope scope)=>defaultLocale,
'package:intl/src/global_state.dart@@getCurrentLocale': (m.Scope scope)=>getCurrentLocale,

};
}