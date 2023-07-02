import 'package:flutter/src/cupertino/date_picker.dart';
import 'dart:math';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:flutter/src/cupertino/picker.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@#as': (m.Scope scope, target)=>()=>target as CupertinoDatePicker,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@#is': (m.Scope scope, target)=>()=>target is CupertinoDatePicker,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@mode': (m.Scope scope, CupertinoDatePicker target)=>target.mode,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@initialDateTime': (m.Scope scope, CupertinoDatePicker target)=>target.initialDateTime,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@minimumDate': (m.Scope scope, CupertinoDatePicker target)=>target.minimumDate,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@maximumDate': (m.Scope scope, CupertinoDatePicker target)=>target.maximumDate,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@minimumYear': (m.Scope scope, CupertinoDatePicker target)=>target.minimumYear,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@maximumYear': (m.Scope scope, CupertinoDatePicker target)=>target.maximumYear,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@minuteInterval': (m.Scope scope, CupertinoDatePicker target)=>target.minuteInterval,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@use24hFormat': (m.Scope scope, CupertinoDatePicker target)=>target.use24hFormat,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@dateOrder': (m.Scope scope, CupertinoDatePicker target)=>target.dateOrder,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@onDateTimeChanged': (m.Scope scope, CupertinoDatePicker target)=>target.onDateTimeChanged,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@backgroundColor': (m.Scope scope, CupertinoDatePicker target)=>target.backgroundColor,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@showDayOfWeek': (m.Scope scope, CupertinoDatePicker target)=>target.showDayOfWeek,
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@': (m.Scope scope)=>({ backgroundColor,  dateOrder,  initialDateTime,  key,  maximumDate,  maximumYear,  minimumDate,  minimumYear,  minuteInterval,  mode,  onDateTimeChanged,  showDayOfWeek,  use24hFormat}){
void onDateTimeChangedProxy( value) {
 engine.callFunctionPointer(scope, onDateTimeChanged!,[value], {});
}

return CupertinoDatePicker(backgroundColor:backgroundColor, dateOrder:dateOrder, initialDateTime:initialDateTime, key:key, maximumDate:maximumDate, maximumYear:maximumYear, minimumDate:minimumDate, minimumYear:minimumYear ?? 1, minuteInterval:minuteInterval ?? 1, mode:mode ?? CupertinoDatePickerMode.dateAndTime, onDateTimeChanged:onDateTimeChangedProxy, showDayOfWeek:showDayOfWeek ?? false, use24hFormat:use24hFormat ?? false);
},
'package:flutter/src/cupertino/date_picker.dart@CupertinoDatePicker@createState': (m.Scope scope, CupertinoDatePicker target)=>target.createState,
'package:flutter/src/cupertino/date_picker.dart@CupertinoTimerPicker@#as': (m.Scope scope, target)=>()=>target as CupertinoTimerPicker,
'package:flutter/src/cupertino/date_picker.dart@CupertinoTimerPicker@#is': (m.Scope scope, target)=>()=>target is CupertinoTimerPicker,
'package:flutter/src/cupertino/date_picker.dart@CupertinoTimerPicker@mode': (m.Scope scope, CupertinoTimerPicker target)=>target.mode,
'package:flutter/src/cupertino/date_picker.dart@CupertinoTimerPicker@initialTimerDuration': (m.Scope scope, CupertinoTimerPicker target)=>target.initialTimerDuration,
'package:flutter/src/cupertino/date_picker.dart@CupertinoTimerPicker@minuteInterval': (m.Scope scope, CupertinoTimerPicker target)=>target.minuteInterval,
'package:flutter/src/cupertino/date_picker.dart@CupertinoTimerPicker@secondInterval': (m.Scope scope, CupertinoTimerPicker target)=>target.secondInterval,
'package:flutter/src/cupertino/date_picker.dart@CupertinoTimerPicker@onTimerDurationChanged': (m.Scope scope, CupertinoTimerPicker target)=>target.onTimerDurationChanged,
'package:flutter/src/cupertino/date_picker.dart@CupertinoTimerPicker@alignment': (m.Scope scope, CupertinoTimerPicker target)=>target.alignment,
'package:flutter/src/cupertino/date_picker.dart@CupertinoTimerPicker@backgroundColor': (m.Scope scope, CupertinoTimerPicker target)=>target.backgroundColor,
'package:flutter/src/cupertino/date_picker.dart@CupertinoTimerPicker@': (m.Scope scope)=>({ alignment,  backgroundColor,  initialTimerDuration,  key,  minuteInterval,  mode,  onTimerDurationChanged,  secondInterval}){
void onTimerDurationChangedProxy( value) {
 engine.callFunctionPointer(scope, onTimerDurationChanged!,[value], {});
}

return CupertinoTimerPicker(alignment:alignment ?? Alignment.center, backgroundColor:backgroundColor, initialTimerDuration:initialTimerDuration ?? Duration.zero, key:key, minuteInterval:minuteInterval ?? 1, mode:mode ?? CupertinoTimerPickerMode.hms, onTimerDurationChanged:onTimerDurationChangedProxy, secondInterval:secondInterval ?? 1);
},
'package:flutter/src/cupertino/date_picker.dart@CupertinoTimerPicker@createState': (m.Scope scope, CupertinoTimerPicker target)=>target.createState,

};
}