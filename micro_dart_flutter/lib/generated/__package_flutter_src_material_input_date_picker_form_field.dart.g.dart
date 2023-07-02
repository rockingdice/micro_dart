import 'package:flutter/src/material/input_date_picker_form_field.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/date.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_form_field.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@#as': (m.Scope scope, target)=>()=>target as InputDatePickerFormField,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@#is': (m.Scope scope, target)=>()=>target is InputDatePickerFormField,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@initialDate': (m.Scope scope, InputDatePickerFormField target)=>target.initialDate,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@firstDate': (m.Scope scope, InputDatePickerFormField target)=>target.firstDate,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@lastDate': (m.Scope scope, InputDatePickerFormField target)=>target.lastDate,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@onDateSubmitted': (m.Scope scope, InputDatePickerFormField target)=>target.onDateSubmitted,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@onDateSaved': (m.Scope scope, InputDatePickerFormField target)=>target.onDateSaved,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@selectableDayPredicate': (m.Scope scope, InputDatePickerFormField target)=>target.selectableDayPredicate,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@errorFormatText': (m.Scope scope, InputDatePickerFormField target)=>target.errorFormatText,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@errorInvalidText': (m.Scope scope, InputDatePickerFormField target)=>target.errorInvalidText,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@fieldHintText': (m.Scope scope, InputDatePickerFormField target)=>target.fieldHintText,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@fieldLabelText': (m.Scope scope, InputDatePickerFormField target)=>target.fieldLabelText,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@keyboardType': (m.Scope scope, InputDatePickerFormField target)=>target.keyboardType,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@autofocus': (m.Scope scope, InputDatePickerFormField target)=>target.autofocus,
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@': (m.Scope scope)=>({ autofocus,  errorFormatText,  errorInvalidText,  fieldHintText,  fieldLabelText,  firstDate,  initialDate,  key,  keyboardType,  lastDate,  onDateSaved,  onDateSubmitted,  selectableDayPredicate}){
void onDateSavedProxy( value) {
 engine.callFunctionPointer(scope, onDateSaved!,[value], {});
}

void onDateSubmittedProxy( value) {
 engine.callFunctionPointer(scope, onDateSubmitted!,[value], {});
}

bool selectableDayPredicateProxy( day) {
return  engine.callFunctionPointer(scope, selectableDayPredicate!,[day], {});
}

return InputDatePickerFormField(autofocus:autofocus ?? false, errorFormatText:errorFormatText, errorInvalidText:errorInvalidText, fieldHintText:fieldHintText, fieldLabelText:fieldLabelText, firstDate:firstDate, initialDate:initialDate, key:key, keyboardType:keyboardType, lastDate:lastDate, onDateSaved:onDateSaved == null ? null :onDateSavedProxy, onDateSubmitted:onDateSubmitted == null ? null :onDateSubmittedProxy, selectableDayPredicate:selectableDayPredicate == null ? null :selectableDayPredicateProxy);
},
'package:flutter/src/material/input_date_picker_form_field.dart@InputDatePickerFormField@createState': (m.Scope scope, InputDatePickerFormField target)=>target.createState,

};
}