import 'package:intl/intl.dart';
import 'dart:async';
import 'package:intl/src/global_state.dart';
import 'package:intl/src/intl/date_format.dart' show DateFormat;
import 'package:intl/src/intl_helpers.dart';
import 'package:intl/src/plural_rules.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/intl.dart@Intl@#as': (m.Scope scope, target)=>()=>target as Intl,
'package:intl/intl.dart@Intl@#is': (m.Scope scope, target)=>()=>target is Intl,
'package:intl/intl.dart@Intl@defaultLocale': (m.Scope scope)=>Intl.defaultLocale,
'package:intl/intl.dart@Intl@defaultLocale:set': (m.Scope scope)=>(other)=>Intl.defaultLocale=other,
'package:intl/intl.dart@Intl@systemLocale': (m.Scope scope)=>Intl.systemLocale,
'package:intl/intl.dart@Intl@systemLocale:set': (m.Scope scope)=>(other)=>Intl.systemLocale=other,
'package:intl/intl.dart@Intl@locale': (m.Scope scope, Intl target)=>target.locale,
'package:intl/intl.dart@Intl@': (m.Scope scope)=>([String? aLocale]){
if(aLocale == null){
return Intl();
}
return Intl(aLocale!);
},
'package:intl/intl.dart@Intl@date': (m.Scope scope, Intl target)=>target.date,
'package:intl/intl.dart@Intl@message': (m.Scope scope)=>Intl.message,
'package:intl/intl.dart@Intl@verifiedLocale': (m.Scope scope)=>( newLocale,  localeExists, { onFailure}){
bool localeExistsProxy( $p0) {
return  engine.callFunctionPointer(scope, localeExists!,[$p0], {});
}

String onFailureProxy( $p0) {
return  engine.callFunctionPointer(scope, onFailure!,[$p0], {});
}

return Intl.verifiedLocale(newLocale, localeExistsProxy, onFailure:onFailure == null ? null :onFailureProxy);
},
'package:intl/intl.dart@Intl@shortLocale': (m.Scope scope)=>Intl.shortLocale,
'package:intl/intl.dart@Intl@canonicalizedLocale': (m.Scope scope)=>Intl.canonicalizedLocale,
'package:intl/intl.dart@Intl@plural': (m.Scope scope)=>Intl.plural,
'package:intl/intl.dart@Intl@pluralLogic': (m.Scope scope)=>Intl.pluralLogic,
'package:intl/intl.dart@Intl@gender': (m.Scope scope)=>Intl.gender,
'package:intl/intl.dart@Intl@genderLogic': (m.Scope scope)=>Intl.genderLogic,
'package:intl/intl.dart@Intl@select': (m.Scope scope)=>Intl.select,
'package:intl/intl.dart@Intl@selectLogic': (m.Scope scope)=>Intl.selectLogic,
'package:intl/intl.dart@Intl@withLocale': (m.Scope scope)=>( locale,  function){
T functionProxy<T>() {
return  engine.callFunctionPointer(scope, function!,[], {});
}

return Intl.withLocale(locale, functionProxy);
},
'package:intl/intl.dart@Intl@getCurrentLocale': (m.Scope scope)=>Intl.getCurrentLocale,
'package:intl/intl.dart@Intl@toString': (m.Scope scope, Intl target)=>target.toString,
'package:intl/intl.dart@@toBeginningOfSentenceCase': (m.Scope scope)=>toBeginningOfSentenceCase,

};
}