import 'package:flutter/src/material/search_view_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@#as': (m.Scope scope, target)=>()=>target as SearchViewThemeData,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@#is': (m.Scope scope, target)=>()=>target is SearchViewThemeData,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@backgroundColor': (m.Scope scope, SearchViewThemeData target)=>target.backgroundColor,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@elevation': (m.Scope scope, SearchViewThemeData target)=>target.elevation,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@surfaceTintColor': (m.Scope scope, SearchViewThemeData target)=>target.surfaceTintColor,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@side': (m.Scope scope, SearchViewThemeData target)=>target.side,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@shape': (m.Scope scope, SearchViewThemeData target)=>target.shape,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@headerTextStyle': (m.Scope scope, SearchViewThemeData target)=>target.headerTextStyle,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@headerHintStyle': (m.Scope scope, SearchViewThemeData target)=>target.headerHintStyle,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@constraints': (m.Scope scope, SearchViewThemeData target)=>target.constraints,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@dividerColor': (m.Scope scope, SearchViewThemeData target)=>target.dividerColor,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@hashCode': (m.Scope scope, SearchViewThemeData target)=>target.hashCode,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@': (m.Scope scope)=>({ backgroundColor,  constraints,  dividerColor,  elevation,  headerHintStyle,  headerTextStyle,  shape,  side,  surfaceTintColor}){
return SearchViewThemeData(backgroundColor:backgroundColor, constraints:constraints, dividerColor:dividerColor, elevation:elevation, headerHintStyle:headerHintStyle, headerTextStyle:headerTextStyle, shape:shape, side:side, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@copyWith': (m.Scope scope, SearchViewThemeData target)=>target.copyWith,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@lerp': (m.Scope scope)=>SearchViewThemeData.lerp,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@==': (m.Scope scope, SearchViewThemeData target)=>(other)=> target == other,
'package:flutter/src/material/search_view_theme.dart@SearchViewThemeData@debugFillProperties': (m.Scope scope, SearchViewThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/search_view_theme.dart@SearchViewTheme@#as': (m.Scope scope, target)=>()=>target as SearchViewTheme,
'package:flutter/src/material/search_view_theme.dart@SearchViewTheme@#is': (m.Scope scope, target)=>()=>target is SearchViewTheme,
'package:flutter/src/material/search_view_theme.dart@SearchViewTheme@data': (m.Scope scope, SearchViewTheme target)=>target.data,
'package:flutter/src/material/search_view_theme.dart@SearchViewTheme@': (m.Scope scope)=>SearchViewTheme,
'package:flutter/src/material/search_view_theme.dart@SearchViewTheme@of': (m.Scope scope)=>SearchViewTheme.of,
'package:flutter/src/material/search_view_theme.dart@SearchViewTheme@updateShouldNotify': (m.Scope scope, SearchViewTheme target)=>target.updateShouldNotify,

};
}