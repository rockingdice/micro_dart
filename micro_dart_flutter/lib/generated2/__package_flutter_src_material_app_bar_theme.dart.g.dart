import 'package:flutter/src/material/app_bar_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@#as': (m.Scope scope, target)=>()=>target as AppBarTheme,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@#is': (m.Scope scope, target)=>()=>target is AppBarTheme,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@backgroundColor': (m.Scope scope, AppBarTheme target)=>target.backgroundColor,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@foregroundColor': (m.Scope scope, AppBarTheme target)=>target.foregroundColor,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@elevation': (m.Scope scope, AppBarTheme target)=>target.elevation,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@scrolledUnderElevation': (m.Scope scope, AppBarTheme target)=>target.scrolledUnderElevation,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@shadowColor': (m.Scope scope, AppBarTheme target)=>target.shadowColor,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@surfaceTintColor': (m.Scope scope, AppBarTheme target)=>target.surfaceTintColor,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@shape': (m.Scope scope, AppBarTheme target)=>target.shape,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@iconTheme': (m.Scope scope, AppBarTheme target)=>target.iconTheme,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@actionsIconTheme': (m.Scope scope, AppBarTheme target)=>target.actionsIconTheme,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@centerTitle': (m.Scope scope, AppBarTheme target)=>target.centerTitle,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@titleSpacing': (m.Scope scope, AppBarTheme target)=>target.titleSpacing,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@toolbarHeight': (m.Scope scope, AppBarTheme target)=>target.toolbarHeight,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@toolbarTextStyle': (m.Scope scope, AppBarTheme target)=>target.toolbarTextStyle,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@titleTextStyle': (m.Scope scope, AppBarTheme target)=>target.titleTextStyle,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@systemOverlayStyle': (m.Scope scope, AppBarTheme target)=>target.systemOverlayStyle,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@hashCode': (m.Scope scope, AppBarTheme target)=>target.hashCode,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@': (m.Scope scope)=>({ actionsIconTheme,  backgroundColor,  centerTitle,  color,  elevation,  foregroundColor,  iconTheme,  scrolledUnderElevation,  shadowColor,  shape,  surfaceTintColor,  systemOverlayStyle,  titleSpacing,  titleTextStyle,  toolbarHeight,  toolbarTextStyle}){
return AppBarTheme(actionsIconTheme:actionsIconTheme, backgroundColor:backgroundColor, centerTitle:centerTitle, color:color, elevation:elevation, foregroundColor:foregroundColor, iconTheme:iconTheme, scrolledUnderElevation:scrolledUnderElevation, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor, systemOverlayStyle:systemOverlayStyle, titleSpacing:titleSpacing, titleTextStyle:titleTextStyle, toolbarHeight:toolbarHeight, toolbarTextStyle:toolbarTextStyle);
},
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@copyWith': (m.Scope scope, AppBarTheme target)=>target.copyWith,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@of': (m.Scope scope)=>AppBarTheme.of,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@lerp': (m.Scope scope)=>AppBarTheme.lerp,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@==': (m.Scope scope, AppBarTheme target)=>(other)=> target == other,
'package:flutter/src/material/app_bar_theme.dart@AppBarTheme@debugFillProperties': (m.Scope scope, AppBarTheme target)=>target.debugFillProperties,

};
}