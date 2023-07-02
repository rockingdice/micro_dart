import 'package:flutter/src/services/text_formatter.dart';
import 'dart:math';
import 'package:characters/characters.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/text_input.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/text_formatter.dart@TextInputFormatter@#as': (m.Scope scope, target)=>()=>target as TextInputFormatter,
'package:flutter/src/services/text_formatter.dart@TextInputFormatter@#is': (m.Scope scope, target)=>()=>target is TextInputFormatter,
'package:flutter/src/services/text_formatter.dart@TextInputFormatter@formatEditUpdate': (m.Scope scope, TextInputFormatter target)=>target.formatEditUpdate,
'package:flutter/src/services/text_formatter.dart@TextInputFormatter@withFunction': (m.Scope scope)=>( formatFunction){
TextEditingValue formatFunctionProxy( oldValue,  newValue) {
return  engine.callFunctionPointer(scope, formatFunction!,[oldValue, newValue], {});
}

return TextInputFormatter.withFunction(formatFunctionProxy);
},
'package:flutter/src/services/text_formatter.dart@FilteringTextInputFormatter@#as': (m.Scope scope, target)=>()=>target as FilteringTextInputFormatter,
'package:flutter/src/services/text_formatter.dart@FilteringTextInputFormatter@#is': (m.Scope scope, target)=>()=>target is FilteringTextInputFormatter,
'package:flutter/src/services/text_formatter.dart@FilteringTextInputFormatter@filterPattern': (m.Scope scope, FilteringTextInputFormatter target)=>target.filterPattern,
'package:flutter/src/services/text_formatter.dart@FilteringTextInputFormatter@allow': (m.Scope scope, FilteringTextInputFormatter target)=>target.allow,
'package:flutter/src/services/text_formatter.dart@FilteringTextInputFormatter@replacementString': (m.Scope scope, FilteringTextInputFormatter target)=>target.replacementString,
'package:flutter/src/services/text_formatter.dart@FilteringTextInputFormatter@singleLineFormatter': (m.Scope scope)=>FilteringTextInputFormatter.singleLineFormatter,
'package:flutter/src/services/text_formatter.dart@FilteringTextInputFormatter@digitsOnly': (m.Scope scope)=>FilteringTextInputFormatter.digitsOnly,
'package:flutter/src/services/text_formatter.dart@FilteringTextInputFormatter@': (m.Scope scope)=>( filterPattern, { allow,  replacementString}){
return FilteringTextInputFormatter(filterPattern, allow:allow, replacementString:replacementString ?? '');
},
'package:flutter/src/services/text_formatter.dart@FilteringTextInputFormatter@allow': (m.Scope scope)=>FilteringTextInputFormatter.allow,
'package:flutter/src/services/text_formatter.dart@FilteringTextInputFormatter@deny': (m.Scope scope)=>FilteringTextInputFormatter.deny,
'package:flutter/src/services/text_formatter.dart@FilteringTextInputFormatter@formatEditUpdate': (m.Scope scope, FilteringTextInputFormatter target)=>target.formatEditUpdate,
'package:flutter/src/services/text_formatter.dart@LengthLimitingTextInputFormatter@#as': (m.Scope scope, target)=>()=>target as LengthLimitingTextInputFormatter,
'package:flutter/src/services/text_formatter.dart@LengthLimitingTextInputFormatter@#is': (m.Scope scope, target)=>()=>target is LengthLimitingTextInputFormatter,
'package:flutter/src/services/text_formatter.dart@LengthLimitingTextInputFormatter@maxLength': (m.Scope scope, LengthLimitingTextInputFormatter target)=>target.maxLength,
'package:flutter/src/services/text_formatter.dart@LengthLimitingTextInputFormatter@maxLengthEnforcement': (m.Scope scope, LengthLimitingTextInputFormatter target)=>target.maxLengthEnforcement,
'package:flutter/src/services/text_formatter.dart@LengthLimitingTextInputFormatter@': (m.Scope scope)=>( maxLength, { maxLengthEnforcement}){
return LengthLimitingTextInputFormatter(maxLength, maxLengthEnforcement:maxLengthEnforcement);
},
'package:flutter/src/services/text_formatter.dart@LengthLimitingTextInputFormatter@getDefaultMaxLengthEnforcement': (m.Scope scope)=>LengthLimitingTextInputFormatter.getDefaultMaxLengthEnforcement,
'package:flutter/src/services/text_formatter.dart@LengthLimitingTextInputFormatter@truncate': (m.Scope scope)=>LengthLimitingTextInputFormatter.truncate,
'package:flutter/src/services/text_formatter.dart@LengthLimitingTextInputFormatter@formatEditUpdate': (m.Scope scope, LengthLimitingTextInputFormatter target)=>target.formatEditUpdate,

};
}