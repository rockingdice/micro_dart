import 'package:flutter/src/material/calendar_date_picker.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/date.dart';
import 'package:flutter/src/material/date_picker_theme.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@#as': (m.Scope scope, target)=>()=>target as CalendarDatePicker,
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@#is': (m.Scope scope, target)=>()=>target is CalendarDatePicker,
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@initialDate': (m.Scope scope, CalendarDatePicker target)=>target.initialDate,
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@firstDate': (m.Scope scope, CalendarDatePicker target)=>target.firstDate,
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@lastDate': (m.Scope scope, CalendarDatePicker target)=>target.lastDate,
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@currentDate': (m.Scope scope, CalendarDatePicker target)=>target.currentDate,
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@onDateChanged': (m.Scope scope, CalendarDatePicker target)=>target.onDateChanged,
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@onDisplayedMonthChanged': (m.Scope scope, CalendarDatePicker target)=>target.onDisplayedMonthChanged,
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@initialCalendarMode': (m.Scope scope, CalendarDatePicker target)=>target.initialCalendarMode,
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@selectableDayPredicate': (m.Scope scope, CalendarDatePicker target)=>target.selectableDayPredicate,
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@': (m.Scope scope)=>({ currentDate,  firstDate,  initialCalendarMode,  initialDate,  key,  lastDate,  onDateChanged,  onDisplayedMonthChanged,  selectableDayPredicate}){
void onDateChangedProxy( value) {
 engine.callFunctionPointer(scope, onDateChanged!,[value], {});
}

void onDisplayedMonthChangedProxy( value) {
 engine.callFunctionPointer(scope, onDisplayedMonthChanged!,[value], {});
}

bool selectableDayPredicateProxy( day) {
return  engine.callFunctionPointer(scope, selectableDayPredicate!,[day], {});
}

return CalendarDatePicker(currentDate:currentDate, firstDate:firstDate, initialCalendarMode:initialCalendarMode ?? DatePickerMode.day, initialDate:initialDate, key:key, lastDate:lastDate, onDateChanged:onDateChangedProxy, onDisplayedMonthChanged:onDisplayedMonthChanged == null ? null :onDisplayedMonthChangedProxy, selectableDayPredicate:selectableDayPredicate == null ? null :selectableDayPredicateProxy);
},
'package:flutter/src/material/calendar_date_picker.dart@CalendarDatePicker@createState': (m.Scope scope, CalendarDatePicker target)=>target.createState,
'package:flutter/src/material/calendar_date_picker.dart@YearPicker@#as': (m.Scope scope, target)=>()=>target as YearPicker,
'package:flutter/src/material/calendar_date_picker.dart@YearPicker@#is': (m.Scope scope, target)=>()=>target is YearPicker,
'package:flutter/src/material/calendar_date_picker.dart@YearPicker@currentDate': (m.Scope scope, YearPicker target)=>target.currentDate,
'package:flutter/src/material/calendar_date_picker.dart@YearPicker@firstDate': (m.Scope scope, YearPicker target)=>target.firstDate,
'package:flutter/src/material/calendar_date_picker.dart@YearPicker@lastDate': (m.Scope scope, YearPicker target)=>target.lastDate,
'package:flutter/src/material/calendar_date_picker.dart@YearPicker@initialDate': (m.Scope scope, YearPicker target)=>target.initialDate,
'package:flutter/src/material/calendar_date_picker.dart@YearPicker@selectedDate': (m.Scope scope, YearPicker target)=>target.selectedDate,
'package:flutter/src/material/calendar_date_picker.dart@YearPicker@onChanged': (m.Scope scope, YearPicker target)=>target.onChanged,
'package:flutter/src/material/calendar_date_picker.dart@YearPicker@dragStartBehavior': (m.Scope scope, YearPicker target)=>target.dragStartBehavior,
'package:flutter/src/material/calendar_date_picker.dart@YearPicker@': (m.Scope scope)=>({ currentDate,  dragStartBehavior,  firstDate,  initialDate,  key,  lastDate,  onChanged,  selectedDate}){
void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

return YearPicker(currentDate:currentDate, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, firstDate:firstDate, initialDate:initialDate, key:key, lastDate:lastDate, onChanged:onChangedProxy, selectedDate:selectedDate);
},
'package:flutter/src/material/calendar_date_picker.dart@YearPicker@createState': (m.Scope scope, YearPicker target)=>target.createState,

};
}