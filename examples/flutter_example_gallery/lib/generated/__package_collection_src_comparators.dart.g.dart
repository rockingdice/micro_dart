import 'package:collection/src/comparators.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/comparators.dart@@equalsIgnoreAsciiCase': (m.Scope scope)=>equalsIgnoreAsciiCase,
'package:collection/src/comparators.dart@@hashIgnoreAsciiCase': (m.Scope scope)=>hashIgnoreAsciiCase,
'package:collection/src/comparators.dart@@compareAsciiUpperCase': (m.Scope scope)=>compareAsciiUpperCase,
'package:collection/src/comparators.dart@@compareAsciiLowerCase': (m.Scope scope)=>compareAsciiLowerCase,
'package:collection/src/comparators.dart@@compareNatural': (m.Scope scope)=>compareNatural,
'package:collection/src/comparators.dart@@compareAsciiLowerCaseNatural': (m.Scope scope)=>compareAsciiLowerCaseNatural,
'package:collection/src/comparators.dart@@compareAsciiUpperCaseNatural': (m.Scope scope)=>compareAsciiUpperCaseNatural,

};
}