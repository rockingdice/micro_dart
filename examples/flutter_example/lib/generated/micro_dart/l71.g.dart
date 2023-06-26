import 'package:flutter/src/material/date_picker.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/material/back_button.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/calendar_date_picker.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/date.dart';
import 'package:flutter/src/material/date_picker_theme.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/dialog.dart';
import 'package:flutter/src/material/dialog_theme.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/input_date_picker_form_field.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/date_picker.dart@DatePickerDialog@#as': (m.Scope scope, target)=>()=>target as DatePickerDialog,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@#is': (m.Scope scope, target)=>()=>target is DatePickerDialog,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@initialDate': (m.Scope scope, DatePickerDialog target)=>target.initialDate,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@firstDate': (m.Scope scope, DatePickerDialog target)=>target.firstDate,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@lastDate': (m.Scope scope, DatePickerDialog target)=>target.lastDate,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@currentDate': (m.Scope scope, DatePickerDialog target)=>target.currentDate,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@initialEntryMode': (m.Scope scope, DatePickerDialog target)=>target.initialEntryMode,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@selectableDayPredicate': (m.Scope scope, DatePickerDialog target)=>target.selectableDayPredicate,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@cancelText': (m.Scope scope, DatePickerDialog target)=>target.cancelText,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@confirmText': (m.Scope scope, DatePickerDialog target)=>target.confirmText,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@helpText': (m.Scope scope, DatePickerDialog target)=>target.helpText,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@initialCalendarMode': (m.Scope scope, DatePickerDialog target)=>target.initialCalendarMode,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@errorFormatText': (m.Scope scope, DatePickerDialog target)=>target.errorFormatText,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@errorInvalidText': (m.Scope scope, DatePickerDialog target)=>target.errorInvalidText,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@fieldHintText': (m.Scope scope, DatePickerDialog target)=>target.fieldHintText,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@fieldLabelText': (m.Scope scope, DatePickerDialog target)=>target.fieldLabelText,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@keyboardType': (m.Scope scope, DatePickerDialog target)=>target.keyboardType,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@restorationId': (m.Scope scope, DatePickerDialog target)=>target.restorationId,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@onDatePickerModeChange': (m.Scope scope, DatePickerDialog target)=>target.onDatePickerModeChange,
'package:flutter/src/material/date_picker.dart@DatePickerDialog@': (m.Scope scope)=>({ cancelText,  confirmText,  currentDate,  errorFormatText,  errorInvalidText,  fieldHintText,  fieldLabelText,  firstDate,  helpText,  initialCalendarMode,  initialDate,  initialEntryMode,  key,  keyboardType,  lastDate,  onDatePickerModeChange,  restorationId,  selectableDayPredicate}){
void onDatePickerModeChangeProxy( value) {
 engine.callFunctionPointer(scope, onDatePickerModeChange!,[value], {});
}

bool selectableDayPredicateProxy( day) {
return  engine.callFunctionPointer(scope, selectableDayPredicate!,[day], {});
}

return DatePickerDialog(cancelText:cancelText, confirmText:confirmText, currentDate:currentDate, errorFormatText:errorFormatText, errorInvalidText:errorInvalidText, fieldHintText:fieldHintText, fieldLabelText:fieldLabelText, firstDate:firstDate, helpText:helpText, initialCalendarMode:initialCalendarMode ?? DatePickerMode.day, initialDate:initialDate, initialEntryMode:initialEntryMode ?? DatePickerEntryMode.calendar, key:key, keyboardType:keyboardType, lastDate:lastDate, onDatePickerModeChange:onDatePickerModeChange == null ? null :onDatePickerModeChangeProxy, restorationId:restorationId, selectableDayPredicate:selectableDayPredicate == null ? null :selectableDayPredicateProxy);
},
'package:flutter/src/material/date_picker.dart@DatePickerDialog@createState': (m.Scope scope, DatePickerDialog target)=>target.createState,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@#as': (m.Scope scope, target)=>()=>target as DateRangePickerDialog,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@#is': (m.Scope scope, target)=>()=>target is DateRangePickerDialog,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@initialDateRange': (m.Scope scope, DateRangePickerDialog target)=>target.initialDateRange,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@firstDate': (m.Scope scope, DateRangePickerDialog target)=>target.firstDate,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@lastDate': (m.Scope scope, DateRangePickerDialog target)=>target.lastDate,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@currentDate': (m.Scope scope, DateRangePickerDialog target)=>target.currentDate,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@initialEntryMode': (m.Scope scope, DateRangePickerDialog target)=>target.initialEntryMode,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@cancelText': (m.Scope scope, DateRangePickerDialog target)=>target.cancelText,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@confirmText': (m.Scope scope, DateRangePickerDialog target)=>target.confirmText,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@saveText': (m.Scope scope, DateRangePickerDialog target)=>target.saveText,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@helpText': (m.Scope scope, DateRangePickerDialog target)=>target.helpText,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@errorInvalidRangeText': (m.Scope scope, DateRangePickerDialog target)=>target.errorInvalidRangeText,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@errorFormatText': (m.Scope scope, DateRangePickerDialog target)=>target.errorFormatText,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@errorInvalidText': (m.Scope scope, DateRangePickerDialog target)=>target.errorInvalidText,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@fieldStartHintText': (m.Scope scope, DateRangePickerDialog target)=>target.fieldStartHintText,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@fieldEndHintText': (m.Scope scope, DateRangePickerDialog target)=>target.fieldEndHintText,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@fieldStartLabelText': (m.Scope scope, DateRangePickerDialog target)=>target.fieldStartLabelText,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@fieldEndLabelText': (m.Scope scope, DateRangePickerDialog target)=>target.fieldEndLabelText,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@keyboardType': (m.Scope scope, DateRangePickerDialog target)=>target.keyboardType,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@restorationId': (m.Scope scope, DateRangePickerDialog target)=>target.restorationId,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@': (m.Scope scope)=>DateRangePickerDialog,
'package:flutter/src/material/date_picker.dart@DateRangePickerDialog@createState': (m.Scope scope, DateRangePickerDialog target)=>target.createState,
'package:flutter/src/material/date_picker.dart@@showDatePicker': (m.Scope scope)=>({ anchorPoint,  builder,  cancelText,  confirmText,  context,  currentDate,  errorFormatText,  errorInvalidText,  fieldHintText,  fieldLabelText,  firstDate,  helpText,  initialDate,  initialDatePickerMode,  initialEntryMode,  keyboardType,  lastDate,  locale,  onDatePickerModeChange,  routeSettings,  selectableDayPredicate,  textDirection,  useRootNavigator}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

void onDatePickerModeChangeProxy( value) {
 engine.callFunctionPointer(scope, onDatePickerModeChange!,[value], {});
}

bool selectableDayPredicateProxy( day) {
return  engine.callFunctionPointer(scope, selectableDayPredicate!,[day], {});
}

return showDatePicker(anchorPoint:anchorPoint, builder:builder == null ? null :builderProxy, cancelText:cancelText, confirmText:confirmText, context:context, currentDate:currentDate, errorFormatText:errorFormatText, errorInvalidText:errorInvalidText, fieldHintText:fieldHintText, fieldLabelText:fieldLabelText, firstDate:firstDate, helpText:helpText, initialDate:initialDate, initialDatePickerMode:initialDatePickerMode ?? DatePickerMode.day, initialEntryMode:initialEntryMode ?? DatePickerEntryMode.calendar, keyboardType:keyboardType, lastDate:lastDate, locale:locale, onDatePickerModeChange:onDatePickerModeChange == null ? null :onDatePickerModeChangeProxy, routeSettings:routeSettings, selectableDayPredicate:selectableDayPredicate == null ? null :selectableDayPredicateProxy, textDirection:textDirection, useRootNavigator:useRootNavigator ?? true);
},
'package:flutter/src/material/date_picker.dart@@showDateRangePicker': (m.Scope scope)=>({ anchorPoint,  builder,  cancelText,  confirmText,  context,  currentDate,  errorFormatText,  errorInvalidRangeText,  errorInvalidText,  fieldEndHintText,  fieldEndLabelText,  fieldStartHintText,  fieldStartLabelText,  firstDate,  helpText,  initialDateRange,  initialEntryMode,  keyboardType,  lastDate,  locale,  routeSettings,  saveText,  textDirection,  useRootNavigator}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

return showDateRangePicker(anchorPoint:anchorPoint, builder:builder == null ? null :builderProxy, cancelText:cancelText, confirmText:confirmText, context:context, currentDate:currentDate, errorFormatText:errorFormatText, errorInvalidRangeText:errorInvalidRangeText, errorInvalidText:errorInvalidText, fieldEndHintText:fieldEndHintText, fieldEndLabelText:fieldEndLabelText, fieldStartHintText:fieldStartHintText, fieldStartLabelText:fieldStartLabelText, firstDate:firstDate, helpText:helpText, initialDateRange:initialDateRange, initialEntryMode:initialEntryMode ?? DatePickerEntryMode.calendar, keyboardType:keyboardType ?? TextInputType.datetime, lastDate:lastDate, locale:locale, routeSettings:routeSettings, saveText:saveText, textDirection:textDirection, useRootNavigator:useRootNavigator ?? true);
},

};
}