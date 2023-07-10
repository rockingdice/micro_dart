import 'package:flutter/src/material/time_picker.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/curves.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/dialog.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/src/material/text_form_field.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/time.dart';
import 'package:flutter/src/material/time_picker_theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/time_picker.dart@TimePickerDialog@#as': (m.Scope scope, target)=>()=>target as TimePickerDialog,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@#is': (m.Scope scope, target)=>()=>target is TimePickerDialog,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@initialTime': (m.Scope scope, TimePickerDialog target)=>target.initialTime,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@cancelText': (m.Scope scope, TimePickerDialog target)=>target.cancelText,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@confirmText': (m.Scope scope, TimePickerDialog target)=>target.confirmText,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@helpText': (m.Scope scope, TimePickerDialog target)=>target.helpText,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@errorInvalidText': (m.Scope scope, TimePickerDialog target)=>target.errorInvalidText,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@hourLabelText': (m.Scope scope, TimePickerDialog target)=>target.hourLabelText,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@minuteLabelText': (m.Scope scope, TimePickerDialog target)=>target.minuteLabelText,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@restorationId': (m.Scope scope, TimePickerDialog target)=>target.restorationId,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@initialEntryMode': (m.Scope scope, TimePickerDialog target)=>target.initialEntryMode,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@orientation': (m.Scope scope, TimePickerDialog target)=>target.orientation,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@onEntryModeChanged': (m.Scope scope, TimePickerDialog target)=>target.onEntryModeChanged,
'package:flutter/src/material/time_picker.dart@TimePickerDialog@': (m.Scope scope)=>({ cancelText,  confirmText,  errorInvalidText,  helpText,  hourLabelText,  initialEntryMode,  initialTime,  key,  minuteLabelText,  onEntryModeChanged,  orientation,  restorationId}){
void onEntryModeChangedProxy( $p0) {
 engine.callFunctionPointer(scope, onEntryModeChanged!,[$p0], {});
}

return TimePickerDialog(cancelText:cancelText, confirmText:confirmText, errorInvalidText:errorInvalidText, helpText:helpText, hourLabelText:hourLabelText, initialEntryMode:initialEntryMode ?? TimePickerEntryMode.dial, initialTime:initialTime, key:key, minuteLabelText:minuteLabelText, onEntryModeChanged:onEntryModeChanged == null ? null :onEntryModeChangedProxy, orientation:orientation, restorationId:restorationId);
},
'package:flutter/src/material/time_picker.dart@TimePickerDialog@createState': (m.Scope scope, TimePickerDialog target)=>target.createState,
'package:flutter/src/material/time_picker.dart@@showTimePicker': (m.Scope scope)=>({ anchorPoint,  builder,  cancelText,  confirmText,  context,  errorInvalidText,  helpText,  hourLabelText,  initialEntryMode,  initialTime,  minuteLabelText,  onEntryModeChanged,  orientation,  routeSettings,  useRootNavigator}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

void onEntryModeChangedProxy( $p0) {
 engine.callFunctionPointer(scope, onEntryModeChanged!,[$p0], {});
}

return showTimePicker(anchorPoint:anchorPoint, builder:builder == null ? null :builderProxy, cancelText:cancelText, confirmText:confirmText, context:context, errorInvalidText:errorInvalidText, helpText:helpText, hourLabelText:hourLabelText, initialEntryMode:initialEntryMode ?? TimePickerEntryMode.dial, initialTime:initialTime, minuteLabelText:minuteLabelText, onEntryModeChanged:onEntryModeChanged == null ? null :onEntryModeChangedProxy, orientation:orientation, routeSettings:routeSettings, useRootNavigator:useRootNavigator ?? true);
},

};
}