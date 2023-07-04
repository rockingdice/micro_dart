import 'package:intl/src/plural_rules.dart';
import 'dart:math';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/plural_rules.dart@@pluralRules': (m.Scope scope)=>pluralRules,
'package:intl/src/plural_rules.dart@@ZERO': (m.Scope scope)=>ZERO,
'package:intl/src/plural_rules.dart@@ONE': (m.Scope scope)=>ONE,
'package:intl/src/plural_rules.dart@@TWO': (m.Scope scope)=>TWO,
'package:intl/src/plural_rules.dart@@FEW': (m.Scope scope)=>FEW,
'package:intl/src/plural_rules.dart@@MANY': (m.Scope scope)=>MANY,
'package:intl/src/plural_rules.dart@@OTHER': (m.Scope scope)=>OTHER,
'package:intl/src/plural_rules.dart@@startRuleEvaluation': (m.Scope scope)=>startRuleEvaluation,
'package:intl/src/plural_rules.dart@@localeHasPluralRules': (m.Scope scope)=>localeHasPluralRules,

};
}