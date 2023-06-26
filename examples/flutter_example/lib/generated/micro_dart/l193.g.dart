import 'package:flutter/src/material/time_picker_theme.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@#as': (m.Scope scope, target)=>()=>target as TimePickerThemeData,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@#is': (m.Scope scope, target)=>()=>target is TimePickerThemeData,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@backgroundColor': (m.Scope scope, TimePickerThemeData target)=>target.backgroundColor,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@cancelButtonStyle': (m.Scope scope, TimePickerThemeData target)=>target.cancelButtonStyle,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@confirmButtonStyle': (m.Scope scope, TimePickerThemeData target)=>target.confirmButtonStyle,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@dayPeriodBorderSide': (m.Scope scope, TimePickerThemeData target)=>target.dayPeriodBorderSide,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@dayPeriodColor': (m.Scope scope, TimePickerThemeData target)=>target.dayPeriodColor,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@dayPeriodShape': (m.Scope scope, TimePickerThemeData target)=>target.dayPeriodShape,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@dayPeriodTextColor': (m.Scope scope, TimePickerThemeData target)=>target.dayPeriodTextColor,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@dayPeriodTextStyle': (m.Scope scope, TimePickerThemeData target)=>target.dayPeriodTextStyle,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@dialBackgroundColor': (m.Scope scope, TimePickerThemeData target)=>target.dialBackgroundColor,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@dialHandColor': (m.Scope scope, TimePickerThemeData target)=>target.dialHandColor,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@dialTextColor': (m.Scope scope, TimePickerThemeData target)=>target.dialTextColor,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@dialTextStyle': (m.Scope scope, TimePickerThemeData target)=>target.dialTextStyle,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@elevation': (m.Scope scope, TimePickerThemeData target)=>target.elevation,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@entryModeIconColor': (m.Scope scope, TimePickerThemeData target)=>target.entryModeIconColor,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@helpTextStyle': (m.Scope scope, TimePickerThemeData target)=>target.helpTextStyle,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@hourMinuteColor': (m.Scope scope, TimePickerThemeData target)=>target.hourMinuteColor,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@hourMinuteShape': (m.Scope scope, TimePickerThemeData target)=>target.hourMinuteShape,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@hourMinuteTextColor': (m.Scope scope, TimePickerThemeData target)=>target.hourMinuteTextColor,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@hourMinuteTextStyle': (m.Scope scope, TimePickerThemeData target)=>target.hourMinuteTextStyle,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@inputDecorationTheme': (m.Scope scope, TimePickerThemeData target)=>target.inputDecorationTheme,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@padding': (m.Scope scope, TimePickerThemeData target)=>target.padding,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@shape': (m.Scope scope, TimePickerThemeData target)=>target.shape,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@hashCode': (m.Scope scope, TimePickerThemeData target)=>target.hashCode,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@': (m.Scope scope)=>({ backgroundColor,  cancelButtonStyle,  confirmButtonStyle,  dayPeriodBorderSide,  dayPeriodColor,  dayPeriodShape,  dayPeriodTextColor,  dayPeriodTextStyle,  dialBackgroundColor,  dialHandColor,  dialTextColor,  dialTextStyle,  elevation,  entryModeIconColor,  helpTextStyle,  hourMinuteColor,  hourMinuteShape,  hourMinuteTextColor,  hourMinuteTextStyle,  inputDecorationTheme,  padding,  shape}){
return TimePickerThemeData(backgroundColor:backgroundColor, cancelButtonStyle:cancelButtonStyle, confirmButtonStyle:confirmButtonStyle, dayPeriodBorderSide:dayPeriodBorderSide, dayPeriodColor:dayPeriodColor, dayPeriodShape:dayPeriodShape, dayPeriodTextColor:dayPeriodTextColor, dayPeriodTextStyle:dayPeriodTextStyle, dialBackgroundColor:dialBackgroundColor, dialHandColor:dialHandColor, dialTextColor:dialTextColor, dialTextStyle:dialTextStyle, elevation:elevation, entryModeIconColor:entryModeIconColor, helpTextStyle:helpTextStyle, hourMinuteColor:hourMinuteColor, hourMinuteShape:hourMinuteShape, hourMinuteTextColor:hourMinuteTextColor, hourMinuteTextStyle:hourMinuteTextStyle, inputDecorationTheme:inputDecorationTheme, padding:padding, shape:shape);
},
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@copyWith': (m.Scope scope, TimePickerThemeData target)=>target.copyWith,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@lerp': (m.Scope scope)=>TimePickerThemeData.lerp,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@==': (m.Scope scope, TimePickerThemeData target)=>(other)=> target == other,
'package:flutter/src/material/time_picker_theme.dart@TimePickerThemeData@debugFillProperties': (m.Scope scope, TimePickerThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/time_picker_theme.dart@TimePickerTheme@#as': (m.Scope scope, target)=>()=>target as TimePickerTheme,
'package:flutter/src/material/time_picker_theme.dart@TimePickerTheme@#is': (m.Scope scope, target)=>()=>target is TimePickerTheme,
'package:flutter/src/material/time_picker_theme.dart@TimePickerTheme@data': (m.Scope scope, TimePickerTheme target)=>target.data,
'package:flutter/src/material/time_picker_theme.dart@TimePickerTheme@': (m.Scope scope)=>TimePickerTheme,
'package:flutter/src/material/time_picker_theme.dart@TimePickerTheme@of': (m.Scope scope)=>TimePickerTheme.of,
'package:flutter/src/material/time_picker_theme.dart@TimePickerTheme@wrap': (m.Scope scope, TimePickerTheme target)=>target.wrap,
'package:flutter/src/material/time_picker_theme.dart@TimePickerTheme@updateShouldNotify': (m.Scope scope, TimePickerTheme target)=>target.updateShouldNotify,

};
}