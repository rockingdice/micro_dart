import 'package:flutter/src/material/chip_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/chip_theme.dart@ChipTheme@#as': (m.Scope scope, target)=>()=>target as ChipTheme,
'package:flutter/src/material/chip_theme.dart@ChipTheme@#is': (m.Scope scope, target)=>()=>target is ChipTheme,
'package:flutter/src/material/chip_theme.dart@ChipTheme@data': (m.Scope scope, ChipTheme target)=>target.data,
'package:flutter/src/material/chip_theme.dart@ChipTheme@': (m.Scope scope)=>ChipTheme,
'package:flutter/src/material/chip_theme.dart@ChipTheme@of': (m.Scope scope)=>ChipTheme.of,
'package:flutter/src/material/chip_theme.dart@ChipTheme@wrap': (m.Scope scope, ChipTheme target)=>target.wrap,
'package:flutter/src/material/chip_theme.dart@ChipTheme@updateShouldNotify': (m.Scope scope, ChipTheme target)=>target.updateShouldNotify,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@#as': (m.Scope scope, target)=>()=>target as ChipThemeData,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@#is': (m.Scope scope, target)=>()=>target is ChipThemeData,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@backgroundColor': (m.Scope scope, ChipThemeData target)=>target.backgroundColor,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@deleteIconColor': (m.Scope scope, ChipThemeData target)=>target.deleteIconColor,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@disabledColor': (m.Scope scope, ChipThemeData target)=>target.disabledColor,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@selectedColor': (m.Scope scope, ChipThemeData target)=>target.selectedColor,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@secondarySelectedColor': (m.Scope scope, ChipThemeData target)=>target.secondarySelectedColor,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@shadowColor': (m.Scope scope, ChipThemeData target)=>target.shadowColor,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@surfaceTintColor': (m.Scope scope, ChipThemeData target)=>target.surfaceTintColor,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@selectedShadowColor': (m.Scope scope, ChipThemeData target)=>target.selectedShadowColor,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@showCheckmark': (m.Scope scope, ChipThemeData target)=>target.showCheckmark,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@checkmarkColor': (m.Scope scope, ChipThemeData target)=>target.checkmarkColor,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@labelPadding': (m.Scope scope, ChipThemeData target)=>target.labelPadding,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@padding': (m.Scope scope, ChipThemeData target)=>target.padding,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@side': (m.Scope scope, ChipThemeData target)=>target.side,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@shape': (m.Scope scope, ChipThemeData target)=>target.shape,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@labelStyle': (m.Scope scope, ChipThemeData target)=>target.labelStyle,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@secondaryLabelStyle': (m.Scope scope, ChipThemeData target)=>target.secondaryLabelStyle,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@brightness': (m.Scope scope, ChipThemeData target)=>target.brightness,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@elevation': (m.Scope scope, ChipThemeData target)=>target.elevation,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@pressElevation': (m.Scope scope, ChipThemeData target)=>target.pressElevation,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@iconTheme': (m.Scope scope, ChipThemeData target)=>target.iconTheme,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@hashCode': (m.Scope scope, ChipThemeData target)=>target.hashCode,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@': (m.Scope scope)=>({ backgroundColor,  brightness,  checkmarkColor,  deleteIconColor,  disabledColor,  elevation,  iconTheme,  labelPadding,  labelStyle,  padding,  pressElevation,  secondaryLabelStyle,  secondarySelectedColor,  selectedColor,  selectedShadowColor,  shadowColor,  shape,  showCheckmark,  side,  surfaceTintColor}){
return ChipThemeData(backgroundColor:backgroundColor, brightness:brightness, checkmarkColor:checkmarkColor, deleteIconColor:deleteIconColor, disabledColor:disabledColor, elevation:elevation, iconTheme:iconTheme, labelPadding:labelPadding, labelStyle:labelStyle, padding:padding, pressElevation:pressElevation, secondaryLabelStyle:secondaryLabelStyle, secondarySelectedColor:secondarySelectedColor, selectedColor:selectedColor, selectedShadowColor:selectedShadowColor, shadowColor:shadowColor, shape:shape, showCheckmark:showCheckmark, side:side, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/chip_theme.dart@ChipThemeData@fromDefaults': (m.Scope scope)=>ChipThemeData.fromDefaults,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@copyWith': (m.Scope scope, ChipThemeData target)=>target.copyWith,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@lerp': (m.Scope scope)=>ChipThemeData.lerp,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@==': (m.Scope scope, ChipThemeData target)=>(other)=> target == other,
'package:flutter/src/material/chip_theme.dart@ChipThemeData@debugFillProperties': (m.Scope scope, ChipThemeData target)=>target.debugFillProperties,

};
}