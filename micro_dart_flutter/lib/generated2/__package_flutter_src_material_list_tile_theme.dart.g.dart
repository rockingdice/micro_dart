import 'package:flutter/src/material/list_tile_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@#as': (m.Scope scope, target)=>()=>target as ListTileThemeData,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@#is': (m.Scope scope, target)=>()=>target is ListTileThemeData,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@dense': (m.Scope scope, ListTileThemeData target)=>target.dense,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@shape': (m.Scope scope, ListTileThemeData target)=>target.shape,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@style': (m.Scope scope, ListTileThemeData target)=>target.style,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@selectedColor': (m.Scope scope, ListTileThemeData target)=>target.selectedColor,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@iconColor': (m.Scope scope, ListTileThemeData target)=>target.iconColor,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@textColor': (m.Scope scope, ListTileThemeData target)=>target.textColor,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@titleTextStyle': (m.Scope scope, ListTileThemeData target)=>target.titleTextStyle,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@subtitleTextStyle': (m.Scope scope, ListTileThemeData target)=>target.subtitleTextStyle,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@leadingAndTrailingTextStyle': (m.Scope scope, ListTileThemeData target)=>target.leadingAndTrailingTextStyle,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@contentPadding': (m.Scope scope, ListTileThemeData target)=>target.contentPadding,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@tileColor': (m.Scope scope, ListTileThemeData target)=>target.tileColor,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@selectedTileColor': (m.Scope scope, ListTileThemeData target)=>target.selectedTileColor,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@horizontalTitleGap': (m.Scope scope, ListTileThemeData target)=>target.horizontalTitleGap,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@minVerticalPadding': (m.Scope scope, ListTileThemeData target)=>target.minVerticalPadding,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@minLeadingWidth': (m.Scope scope, ListTileThemeData target)=>target.minLeadingWidth,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@enableFeedback': (m.Scope scope, ListTileThemeData target)=>target.enableFeedback,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@mouseCursor': (m.Scope scope, ListTileThemeData target)=>target.mouseCursor,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@visualDensity': (m.Scope scope, ListTileThemeData target)=>target.visualDensity,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@titleAlignment': (m.Scope scope, ListTileThemeData target)=>target.titleAlignment,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@hashCode': (m.Scope scope, ListTileThemeData target)=>target.hashCode,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@': (m.Scope scope)=>({ contentPadding,  dense,  enableFeedback,  horizontalTitleGap,  iconColor,  leadingAndTrailingTextStyle,  minLeadingWidth,  minVerticalPadding,  mouseCursor,  selectedColor,  selectedTileColor,  shape,  style,  subtitleTextStyle,  textColor,  tileColor,  titleAlignment,  titleTextStyle,  visualDensity}){
return ListTileThemeData(contentPadding:contentPadding, dense:dense, enableFeedback:enableFeedback, horizontalTitleGap:horizontalTitleGap, iconColor:iconColor, leadingAndTrailingTextStyle:leadingAndTrailingTextStyle, minLeadingWidth:minLeadingWidth, minVerticalPadding:minVerticalPadding, mouseCursor:mouseCursor, selectedColor:selectedColor, selectedTileColor:selectedTileColor, shape:shape, style:style, subtitleTextStyle:subtitleTextStyle, textColor:textColor, tileColor:tileColor, titleAlignment:titleAlignment, titleTextStyle:titleTextStyle, visualDensity:visualDensity);
},
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@copyWith': (m.Scope scope, ListTileThemeData target)=>target.copyWith,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@lerp': (m.Scope scope)=>ListTileThemeData.lerp,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@==': (m.Scope scope, ListTileThemeData target)=>(other)=> target == other,
'package:flutter/src/material/list_tile_theme.dart@ListTileThemeData@debugFillProperties': (m.Scope scope, ListTileThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@#as': (m.Scope scope, target)=>()=>target as ListTileTheme,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@#is': (m.Scope scope, target)=>()=>target is ListTileTheme,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@data': (m.Scope scope, ListTileTheme target)=>target.data,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@dense': (m.Scope scope, ListTileTheme target)=>target.dense,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@shape': (m.Scope scope, ListTileTheme target)=>target.shape,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@style': (m.Scope scope, ListTileTheme target)=>target.style,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@selectedColor': (m.Scope scope, ListTileTheme target)=>target.selectedColor,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@iconColor': (m.Scope scope, ListTileTheme target)=>target.iconColor,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@textColor': (m.Scope scope, ListTileTheme target)=>target.textColor,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@contentPadding': (m.Scope scope, ListTileTheme target)=>target.contentPadding,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@tileColor': (m.Scope scope, ListTileTheme target)=>target.tileColor,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@selectedTileColor': (m.Scope scope, ListTileTheme target)=>target.selectedTileColor,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@horizontalTitleGap': (m.Scope scope, ListTileTheme target)=>target.horizontalTitleGap,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@minVerticalPadding': (m.Scope scope, ListTileTheme target)=>target.minVerticalPadding,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@minLeadingWidth': (m.Scope scope, ListTileTheme target)=>target.minLeadingWidth,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@enableFeedback': (m.Scope scope, ListTileTheme target)=>target.enableFeedback,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@': (m.Scope scope)=>({ child,  contentPadding,  data,  dense,  enableFeedback,  horizontalTitleGap,  iconColor,  key,  minLeadingWidth,  minVerticalPadding,  mouseCursor,  selectedColor,  selectedTileColor,  shape,  style,  textColor,  tileColor}){
return ListTileTheme(child:child, contentPadding:contentPadding, data:data, dense:dense, enableFeedback:enableFeedback, horizontalTitleGap:horizontalTitleGap, iconColor:iconColor, key:key, minLeadingWidth:minLeadingWidth, minVerticalPadding:minVerticalPadding, mouseCursor:mouseCursor, selectedColor:selectedColor, selectedTileColor:selectedTileColor, shape:shape, style:style, textColor:textColor, tileColor:tileColor);
},
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@of': (m.Scope scope)=>ListTileTheme.of,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@merge': (m.Scope scope)=>ListTileTheme.merge,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@wrap': (m.Scope scope, ListTileTheme target)=>target.wrap,
'package:flutter/src/material/list_tile_theme.dart@ListTileTheme@updateShouldNotify': (m.Scope scope, ListTileTheme target)=>target.updateShouldNotify,

};
}