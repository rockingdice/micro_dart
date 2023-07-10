import 'package:flutter/src/material/date_picker_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@#as': (m.Scope scope, target)=>()=>target as DatePickerThemeData,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@#is': (m.Scope scope, target)=>()=>target is DatePickerThemeData,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@backgroundColor': (m.Scope scope, DatePickerThemeData target)=>target.backgroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@elevation': (m.Scope scope, DatePickerThemeData target)=>target.elevation,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@shadowColor': (m.Scope scope, DatePickerThemeData target)=>target.shadowColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@surfaceTintColor': (m.Scope scope, DatePickerThemeData target)=>target.surfaceTintColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@shape': (m.Scope scope, DatePickerThemeData target)=>target.shape,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@headerBackgroundColor': (m.Scope scope, DatePickerThemeData target)=>target.headerBackgroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@headerForegroundColor': (m.Scope scope, DatePickerThemeData target)=>target.headerForegroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@headerHeadlineStyle': (m.Scope scope, DatePickerThemeData target)=>target.headerHeadlineStyle,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@headerHelpStyle': (m.Scope scope, DatePickerThemeData target)=>target.headerHelpStyle,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@weekdayStyle': (m.Scope scope, DatePickerThemeData target)=>target.weekdayStyle,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@dayStyle': (m.Scope scope, DatePickerThemeData target)=>target.dayStyle,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@dayForegroundColor': (m.Scope scope, DatePickerThemeData target)=>target.dayForegroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@dayBackgroundColor': (m.Scope scope, DatePickerThemeData target)=>target.dayBackgroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@dayOverlayColor': (m.Scope scope, DatePickerThemeData target)=>target.dayOverlayColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@todayForegroundColor': (m.Scope scope, DatePickerThemeData target)=>target.todayForegroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@todayBackgroundColor': (m.Scope scope, DatePickerThemeData target)=>target.todayBackgroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@todayBorder': (m.Scope scope, DatePickerThemeData target)=>target.todayBorder,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@yearStyle': (m.Scope scope, DatePickerThemeData target)=>target.yearStyle,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@yearForegroundColor': (m.Scope scope, DatePickerThemeData target)=>target.yearForegroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@yearBackgroundColor': (m.Scope scope, DatePickerThemeData target)=>target.yearBackgroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@yearOverlayColor': (m.Scope scope, DatePickerThemeData target)=>target.yearOverlayColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@rangePickerBackgroundColor': (m.Scope scope, DatePickerThemeData target)=>target.rangePickerBackgroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@rangePickerElevation': (m.Scope scope, DatePickerThemeData target)=>target.rangePickerElevation,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@rangePickerShadowColor': (m.Scope scope, DatePickerThemeData target)=>target.rangePickerShadowColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@rangePickerSurfaceTintColor': (m.Scope scope, DatePickerThemeData target)=>target.rangePickerSurfaceTintColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@rangePickerShape': (m.Scope scope, DatePickerThemeData target)=>target.rangePickerShape,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@rangePickerHeaderBackgroundColor': (m.Scope scope, DatePickerThemeData target)=>target.rangePickerHeaderBackgroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@rangePickerHeaderForegroundColor': (m.Scope scope, DatePickerThemeData target)=>target.rangePickerHeaderForegroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@rangePickerHeaderHeadlineStyle': (m.Scope scope, DatePickerThemeData target)=>target.rangePickerHeaderHeadlineStyle,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@rangePickerHeaderHelpStyle': (m.Scope scope, DatePickerThemeData target)=>target.rangePickerHeaderHelpStyle,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@rangeSelectionBackgroundColor': (m.Scope scope, DatePickerThemeData target)=>target.rangeSelectionBackgroundColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@rangeSelectionOverlayColor': (m.Scope scope, DatePickerThemeData target)=>target.rangeSelectionOverlayColor,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@hashCode': (m.Scope scope, DatePickerThemeData target)=>target.hashCode,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@': (m.Scope scope)=>({ backgroundColor,  dayBackgroundColor,  dayForegroundColor,  dayOverlayColor,  dayStyle,  elevation,  headerBackgroundColor,  headerForegroundColor,  headerHeadlineStyle,  headerHelpStyle,  rangePickerBackgroundColor,  rangePickerElevation,  rangePickerHeaderBackgroundColor,  rangePickerHeaderForegroundColor,  rangePickerHeaderHeadlineStyle,  rangePickerHeaderHelpStyle,  rangePickerShadowColor,  rangePickerShape,  rangePickerSurfaceTintColor,  rangeSelectionBackgroundColor,  rangeSelectionOverlayColor,  shadowColor,  shape,  surfaceTintColor,  todayBackgroundColor,  todayBorder,  todayForegroundColor,  weekdayStyle,  yearBackgroundColor,  yearForegroundColor,  yearOverlayColor,  yearStyle}){
return DatePickerThemeData(backgroundColor:backgroundColor, dayBackgroundColor:dayBackgroundColor, dayForegroundColor:dayForegroundColor, dayOverlayColor:dayOverlayColor, dayStyle:dayStyle, elevation:elevation, headerBackgroundColor:headerBackgroundColor, headerForegroundColor:headerForegroundColor, headerHeadlineStyle:headerHeadlineStyle, headerHelpStyle:headerHelpStyle, rangePickerBackgroundColor:rangePickerBackgroundColor, rangePickerElevation:rangePickerElevation, rangePickerHeaderBackgroundColor:rangePickerHeaderBackgroundColor, rangePickerHeaderForegroundColor:rangePickerHeaderForegroundColor, rangePickerHeaderHeadlineStyle:rangePickerHeaderHeadlineStyle, rangePickerHeaderHelpStyle:rangePickerHeaderHelpStyle, rangePickerShadowColor:rangePickerShadowColor, rangePickerShape:rangePickerShape, rangePickerSurfaceTintColor:rangePickerSurfaceTintColor, rangeSelectionBackgroundColor:rangeSelectionBackgroundColor, rangeSelectionOverlayColor:rangeSelectionOverlayColor, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor, todayBackgroundColor:todayBackgroundColor, todayBorder:todayBorder, todayForegroundColor:todayForegroundColor, weekdayStyle:weekdayStyle, yearBackgroundColor:yearBackgroundColor, yearForegroundColor:yearForegroundColor, yearOverlayColor:yearOverlayColor, yearStyle:yearStyle);
},
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@copyWith': (m.Scope scope, DatePickerThemeData target)=>target.copyWith,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@lerp': (m.Scope scope)=>DatePickerThemeData.lerp,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@==': (m.Scope scope, DatePickerThemeData target)=>(other)=> target == other,
'package:flutter/src/material/date_picker_theme.dart@DatePickerThemeData@debugFillProperties': (m.Scope scope, DatePickerThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/date_picker_theme.dart@DatePickerTheme@#as': (m.Scope scope, target)=>()=>target as DatePickerTheme,
'package:flutter/src/material/date_picker_theme.dart@DatePickerTheme@#is': (m.Scope scope, target)=>()=>target is DatePickerTheme,
'package:flutter/src/material/date_picker_theme.dart@DatePickerTheme@data': (m.Scope scope, DatePickerTheme target)=>target.data,
'package:flutter/src/material/date_picker_theme.dart@DatePickerTheme@': (m.Scope scope)=>({ child,  data,  key}){
return DatePickerTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/date_picker_theme.dart@DatePickerTheme@of': (m.Scope scope)=>DatePickerTheme.of,
'package:flutter/src/material/date_picker_theme.dart@DatePickerTheme@maybeOf': (m.Scope scope)=>DatePickerTheme.maybeOf,
'package:flutter/src/material/date_picker_theme.dart@DatePickerTheme@defaults': (m.Scope scope)=>DatePickerTheme.defaults,
'package:flutter/src/material/date_picker_theme.dart@DatePickerTheme@wrap': (m.Scope scope, DatePickerTheme target)=>target.wrap,
'package:flutter/src/material/date_picker_theme.dart@DatePickerTheme@updateShouldNotify': (m.Scope scope, DatePickerTheme target)=>target.updateShouldNotify,

};
}