import 'package:flutter/src/material/tab_bar_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/tabs.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@#as': (m.Scope scope, target)=>()=>target as TabBarTheme,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@#is': (m.Scope scope, target)=>()=>target is TabBarTheme,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@indicator': (m.Scope scope, TabBarTheme target)=>target.indicator,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@indicatorColor': (m.Scope scope, TabBarTheme target)=>target.indicatorColor,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@indicatorSize': (m.Scope scope, TabBarTheme target)=>target.indicatorSize,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@dividerColor': (m.Scope scope, TabBarTheme target)=>target.dividerColor,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@labelColor': (m.Scope scope, TabBarTheme target)=>target.labelColor,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@labelPadding': (m.Scope scope, TabBarTheme target)=>target.labelPadding,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@labelStyle': (m.Scope scope, TabBarTheme target)=>target.labelStyle,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@unselectedLabelColor': (m.Scope scope, TabBarTheme target)=>target.unselectedLabelColor,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@unselectedLabelStyle': (m.Scope scope, TabBarTheme target)=>target.unselectedLabelStyle,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@overlayColor': (m.Scope scope, TabBarTheme target)=>target.overlayColor,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@splashFactory': (m.Scope scope, TabBarTheme target)=>target.splashFactory,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@mouseCursor': (m.Scope scope, TabBarTheme target)=>target.mouseCursor,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@hashCode': (m.Scope scope, TabBarTheme target)=>target.hashCode,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@': (m.Scope scope)=>({ dividerColor,  indicator,  indicatorColor,  indicatorSize,  labelColor,  labelPadding,  labelStyle,  mouseCursor,  overlayColor,  splashFactory,  unselectedLabelColor,  unselectedLabelStyle}){
return TabBarTheme(dividerColor:dividerColor, indicator:indicator, indicatorColor:indicatorColor, indicatorSize:indicatorSize, labelColor:labelColor, labelPadding:labelPadding, labelStyle:labelStyle, mouseCursor:mouseCursor, overlayColor:overlayColor, splashFactory:splashFactory, unselectedLabelColor:unselectedLabelColor, unselectedLabelStyle:unselectedLabelStyle);
},
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@copyWith': (m.Scope scope, TabBarTheme target)=>target.copyWith,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@of': (m.Scope scope)=>TabBarTheme.of,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@lerp': (m.Scope scope)=>TabBarTheme.lerp,
'package:flutter/src/material/tab_bar_theme.dart@TabBarTheme@==': (m.Scope scope, TabBarTheme target)=>(other)=> target == other,

};
}