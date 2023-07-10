import 'package:flutter/src/material/search_bar_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@#as': (m.Scope scope, target)=>()=>target as SearchBarThemeData,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@#is': (m.Scope scope, target)=>()=>target is SearchBarThemeData,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@elevation': (m.Scope scope, SearchBarThemeData target)=>target.elevation,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@backgroundColor': (m.Scope scope, SearchBarThemeData target)=>target.backgroundColor,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@shadowColor': (m.Scope scope, SearchBarThemeData target)=>target.shadowColor,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@surfaceTintColor': (m.Scope scope, SearchBarThemeData target)=>target.surfaceTintColor,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@overlayColor': (m.Scope scope, SearchBarThemeData target)=>target.overlayColor,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@side': (m.Scope scope, SearchBarThemeData target)=>target.side,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@shape': (m.Scope scope, SearchBarThemeData target)=>target.shape,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@padding': (m.Scope scope, SearchBarThemeData target)=>target.padding,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@textStyle': (m.Scope scope, SearchBarThemeData target)=>target.textStyle,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@hintStyle': (m.Scope scope, SearchBarThemeData target)=>target.hintStyle,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@constraints': (m.Scope scope, SearchBarThemeData target)=>target.constraints,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@hashCode': (m.Scope scope, SearchBarThemeData target)=>target.hashCode,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@': (m.Scope scope)=>({ backgroundColor,  constraints,  elevation,  hintStyle,  overlayColor,  padding,  shadowColor,  shape,  side,  surfaceTintColor,  textStyle}){
return SearchBarThemeData(backgroundColor:backgroundColor, constraints:constraints, elevation:elevation, hintStyle:hintStyle, overlayColor:overlayColor, padding:padding, shadowColor:shadowColor, shape:shape, side:side, surfaceTintColor:surfaceTintColor, textStyle:textStyle);
},
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@copyWith': (m.Scope scope, SearchBarThemeData target)=>target.copyWith,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@lerp': (m.Scope scope)=>SearchBarThemeData.lerp,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@==': (m.Scope scope, SearchBarThemeData target)=>(other)=> target == other,
'package:flutter/src/material/search_bar_theme.dart@SearchBarThemeData@debugFillProperties': (m.Scope scope, SearchBarThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/search_bar_theme.dart@SearchBarTheme@#as': (m.Scope scope, target)=>()=>target as SearchBarTheme,
'package:flutter/src/material/search_bar_theme.dart@SearchBarTheme@#is': (m.Scope scope, target)=>()=>target is SearchBarTheme,
'package:flutter/src/material/search_bar_theme.dart@SearchBarTheme@data': (m.Scope scope, SearchBarTheme target)=>target.data,
'package:flutter/src/material/search_bar_theme.dart@SearchBarTheme@': (m.Scope scope)=>({ child,  data,  key}){
return SearchBarTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/search_bar_theme.dart@SearchBarTheme@of': (m.Scope scope)=>SearchBarTheme.of,
'package:flutter/src/material/search_bar_theme.dart@SearchBarTheme@updateShouldNotify': (m.Scope scope, SearchBarTheme target)=>target.updateShouldNotify,

};
}