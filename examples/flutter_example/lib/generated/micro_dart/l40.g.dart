import 'package:flutter/src/material/banner_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@#as': (m.Scope scope, target)=>()=>target as MaterialBannerThemeData,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@#is': (m.Scope scope, target)=>()=>target is MaterialBannerThemeData,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@backgroundColor': (m.Scope scope, MaterialBannerThemeData target)=>target.backgroundColor,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@surfaceTintColor': (m.Scope scope, MaterialBannerThemeData target)=>target.surfaceTintColor,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@shadowColor': (m.Scope scope, MaterialBannerThemeData target)=>target.shadowColor,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@dividerColor': (m.Scope scope, MaterialBannerThemeData target)=>target.dividerColor,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@contentTextStyle': (m.Scope scope, MaterialBannerThemeData target)=>target.contentTextStyle,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@elevation': (m.Scope scope, MaterialBannerThemeData target)=>target.elevation,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@padding': (m.Scope scope, MaterialBannerThemeData target)=>target.padding,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@leadingPadding': (m.Scope scope, MaterialBannerThemeData target)=>target.leadingPadding,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@hashCode': (m.Scope scope, MaterialBannerThemeData target)=>target.hashCode,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@': (m.Scope scope)=>({ backgroundColor,  contentTextStyle,  dividerColor,  elevation,  leadingPadding,  padding,  shadowColor,  surfaceTintColor}){
return MaterialBannerThemeData(backgroundColor:backgroundColor, contentTextStyle:contentTextStyle, dividerColor:dividerColor, elevation:elevation, leadingPadding:leadingPadding, padding:padding, shadowColor:shadowColor, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@copyWith': (m.Scope scope, MaterialBannerThemeData target)=>target.copyWith,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@lerp': (m.Scope scope)=>MaterialBannerThemeData.lerp,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@==': (m.Scope scope, MaterialBannerThemeData target)=>(other)=> target == other,
'package:flutter/src/material/banner_theme.dart@MaterialBannerThemeData@debugFillProperties': (m.Scope scope, MaterialBannerThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/banner_theme.dart@MaterialBannerTheme@#as': (m.Scope scope, target)=>()=>target as MaterialBannerTheme,
'package:flutter/src/material/banner_theme.dart@MaterialBannerTheme@#is': (m.Scope scope, target)=>()=>target is MaterialBannerTheme,
'package:flutter/src/material/banner_theme.dart@MaterialBannerTheme@data': (m.Scope scope, MaterialBannerTheme target)=>target.data,
'package:flutter/src/material/banner_theme.dart@MaterialBannerTheme@': (m.Scope scope)=>MaterialBannerTheme,
'package:flutter/src/material/banner_theme.dart@MaterialBannerTheme@of': (m.Scope scope)=>MaterialBannerTheme.of,
'package:flutter/src/material/banner_theme.dart@MaterialBannerTheme@wrap': (m.Scope scope, MaterialBannerTheme target)=>target.wrap,
'package:flutter/src/material/banner_theme.dart@MaterialBannerTheme@updateShouldNotify': (m.Scope scope, MaterialBannerTheme target)=>target.updateShouldNotify,

};
}