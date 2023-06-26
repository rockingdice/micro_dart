import 'package:flutter/src/material/badge_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@#as': (m.Scope scope, target)=>()=>target as BadgeThemeData,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@#is': (m.Scope scope, target)=>()=>target is BadgeThemeData,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@backgroundColor': (m.Scope scope, BadgeThemeData target)=>target.backgroundColor,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@textColor': (m.Scope scope, BadgeThemeData target)=>target.textColor,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@smallSize': (m.Scope scope, BadgeThemeData target)=>target.smallSize,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@largeSize': (m.Scope scope, BadgeThemeData target)=>target.largeSize,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@textStyle': (m.Scope scope, BadgeThemeData target)=>target.textStyle,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@padding': (m.Scope scope, BadgeThemeData target)=>target.padding,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@alignment': (m.Scope scope, BadgeThemeData target)=>target.alignment,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@offset': (m.Scope scope, BadgeThemeData target)=>target.offset,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@hashCode': (m.Scope scope, BadgeThemeData target)=>target.hashCode,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@': (m.Scope scope)=>({ alignment,  backgroundColor,  largeSize,  offset,  padding,  smallSize,  textColor,  textStyle}){
return BadgeThemeData(alignment:alignment, backgroundColor:backgroundColor, largeSize:largeSize, offset:offset, padding:padding, smallSize:smallSize, textColor:textColor, textStyle:textStyle);
},
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@copyWith': (m.Scope scope, BadgeThemeData target)=>target.copyWith,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@lerp': (m.Scope scope)=>BadgeThemeData.lerp,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@==': (m.Scope scope, BadgeThemeData target)=>(other)=> target == other,
'package:flutter/src/material/badge_theme.dart@BadgeThemeData@debugFillProperties': (m.Scope scope, BadgeThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/badge_theme.dart@BadgeTheme@#as': (m.Scope scope, target)=>()=>target as BadgeTheme,
'package:flutter/src/material/badge_theme.dart@BadgeTheme@#is': (m.Scope scope, target)=>()=>target is BadgeTheme,
'package:flutter/src/material/badge_theme.dart@BadgeTheme@data': (m.Scope scope, BadgeTheme target)=>target.data,
'package:flutter/src/material/badge_theme.dart@BadgeTheme@': (m.Scope scope)=>BadgeTheme,
'package:flutter/src/material/badge_theme.dart@BadgeTheme@of': (m.Scope scope)=>BadgeTheme.of,
'package:flutter/src/material/badge_theme.dart@BadgeTheme@wrap': (m.Scope scope, BadgeTheme target)=>target.wrap,
'package:flutter/src/material/badge_theme.dart@BadgeTheme@updateShouldNotify': (m.Scope scope, BadgeTheme target)=>target.updateShouldNotify,

};
}