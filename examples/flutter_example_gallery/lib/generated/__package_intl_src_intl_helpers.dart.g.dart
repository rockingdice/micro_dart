import 'package:intl/src/intl_helpers.dart';
import 'package:intl/src/global_state.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/intl_helpers.dart@@messageLookup': (m.Scope scope)=>messageLookup,
'package:intl/src/intl_helpers.dart@@messageLookup:set': (m.Scope scope)=>(other)=>messageLookup=other,
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@#as': (m.Scope scope, target)=>()=>target as UninitializedLocaleData,
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@#is': (m.Scope scope, target)=>()=>target is UninitializedLocaleData,
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@message': (m.Scope scope, UninitializedLocaleData target)=>target.message,
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@fallbackData': (m.Scope scope, UninitializedLocaleData target)=>target.fallbackData,
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@throwOnFallback': (m.Scope scope)=>UninitializedLocaleData.throwOnFallback,
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@keys': (m.Scope scope, UninitializedLocaleData target)=>target.keys,
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@': (m.Scope scope)=><F>( message,  fallbackData){
return UninitializedLocaleData(message, fallbackData);
},
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@[]': (m.Scope scope, UninitializedLocaleData target)=>(index)=> target[index],
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@lookupMessage': (m.Scope scope, UninitializedLocaleData target)=>( messageText,  locale,  name,  args,  meaning, { ifAbsent}){
String ifAbsentProxy( messageText,  args) {
return  engine.callFunctionPointer(scope, ifAbsent!,[messageText, args], {});
}

return target.lookupMessage(messageText, locale, name, args, meaning, ifAbsent:ifAbsent == null ? null :ifAbsentProxy);
},
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@findLocale': (m.Scope scope, UninitializedLocaleData target)=>target.findLocale,
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@containsKey': (m.Scope scope, UninitializedLocaleData target)=>target.containsKey,
'package:intl/src/intl_helpers.dart@UninitializedLocaleData@addLocale': (m.Scope scope, UninitializedLocaleData target)=>target.addLocale,
'package:intl/src/intl_helpers.dart@MessageLookup@#as': (m.Scope scope, target)=>()=>target as MessageLookup,
'package:intl/src/intl_helpers.dart@MessageLookup@#is': (m.Scope scope, target)=>()=>target is MessageLookup,
'package:intl/src/intl_helpers.dart@MessageLookup@lookupMessage': (m.Scope scope, MessageLookup target)=>( messageText,  locale,  name,  args,  meaning, { ifAbsent}){
String ifAbsentProxy( messageText,  args) {
return  engine.callFunctionPointer(scope, ifAbsent!,[messageText, args], {});
}

return target.lookupMessage(messageText, locale, name, args, meaning, ifAbsent:ifAbsent == null ? null :ifAbsentProxy);
},
'package:intl/src/intl_helpers.dart@MessageLookup@addLocale': (m.Scope scope, MessageLookup target)=>target.addLocale,
'package:intl/src/intl_helpers.dart@LocaleDataException@#as': (m.Scope scope, target)=>()=>target as LocaleDataException,
'package:intl/src/intl_helpers.dart@LocaleDataException@#is': (m.Scope scope, target)=>()=>target is LocaleDataException,
'package:intl/src/intl_helpers.dart@LocaleDataException@message': (m.Scope scope, LocaleDataException target)=>target.message,
'package:intl/src/intl_helpers.dart@LocaleDataException@': (m.Scope scope)=>( message){
return LocaleDataException(message);
},
'package:intl/src/intl_helpers.dart@LocaleDataException@toString': (m.Scope scope, LocaleDataException target)=>target.toString,
'package:intl/src/intl_helpers.dart@LocaleDataReader@#as': (m.Scope scope, target)=>()=>target as LocaleDataReader,
'package:intl/src/intl_helpers.dart@LocaleDataReader@#is': (m.Scope scope, target)=>()=>target is LocaleDataReader,
'package:intl/src/intl_helpers.dart@LocaleDataReader@read': (m.Scope scope, LocaleDataReader target)=>target.read,
'package:intl/src/intl_helpers.dart@@initializeInternalMessageLookup': (m.Scope scope)=>initializeInternalMessageLookup,
'package:intl/src/intl_helpers.dart@@computeMessageName': (m.Scope scope)=>computeMessageName,
'package:intl/src/intl_helpers.dart@@canonicalizedLocale': (m.Scope scope)=>canonicalizedLocale,
'package:intl/src/intl_helpers.dart@@verifiedLocale': (m.Scope scope)=>( newLocale,  localeExists,  onFailure){
bool localeExistsProxy( $p0) {
return  engine.callFunctionPointer(scope, localeExists!,[$p0], {});
}

String onFailureProxy( $p0) {
return  engine.callFunctionPointer(scope, onFailure!,[$p0], {});
}

return verifiedLocale(newLocale, localeExistsProxy, onFailureProxy);
},
'package:intl/src/intl_helpers.dart@@shortLocale': (m.Scope scope)=>shortLocale,

};
}