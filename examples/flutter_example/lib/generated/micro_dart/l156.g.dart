import 'package:flutter/src/material/scrollbar_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@#as': (m.Scope scope, target)=>()=>target as ScrollbarThemeData,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@#is': (m.Scope scope, target)=>()=>target is ScrollbarThemeData,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@thumbVisibility': (m.Scope scope, ScrollbarThemeData target)=>target.thumbVisibility,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@thickness': (m.Scope scope, ScrollbarThemeData target)=>target.thickness,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@trackVisibility': (m.Scope scope, ScrollbarThemeData target)=>target.trackVisibility,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@showTrackOnHover': (m.Scope scope, ScrollbarThemeData target)=>target.showTrackOnHover,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@isAlwaysShown': (m.Scope scope, ScrollbarThemeData target)=>target.isAlwaysShown,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@interactive': (m.Scope scope, ScrollbarThemeData target)=>target.interactive,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@radius': (m.Scope scope, ScrollbarThemeData target)=>target.radius,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@thumbColor': (m.Scope scope, ScrollbarThemeData target)=>target.thumbColor,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@trackColor': (m.Scope scope, ScrollbarThemeData target)=>target.trackColor,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@trackBorderColor': (m.Scope scope, ScrollbarThemeData target)=>target.trackBorderColor,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@crossAxisMargin': (m.Scope scope, ScrollbarThemeData target)=>target.crossAxisMargin,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@mainAxisMargin': (m.Scope scope, ScrollbarThemeData target)=>target.mainAxisMargin,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@minThumbLength': (m.Scope scope, ScrollbarThemeData target)=>target.minThumbLength,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@hashCode': (m.Scope scope, ScrollbarThemeData target)=>target.hashCode,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@': (m.Scope scope)=>({ crossAxisMargin,  interactive,  isAlwaysShown,  mainAxisMargin,  minThumbLength,  radius,  showTrackOnHover,  thickness,  thumbColor,  thumbVisibility,  trackBorderColor,  trackColor,  trackVisibility}){
return ScrollbarThemeData(crossAxisMargin:crossAxisMargin, interactive:interactive, isAlwaysShown:isAlwaysShown, mainAxisMargin:mainAxisMargin, minThumbLength:minThumbLength, radius:radius, showTrackOnHover:showTrackOnHover, thickness:thickness, thumbColor:thumbColor, thumbVisibility:thumbVisibility, trackBorderColor:trackBorderColor, trackColor:trackColor, trackVisibility:trackVisibility);
},
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@copyWith': (m.Scope scope, ScrollbarThemeData target)=>target.copyWith,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@lerp': (m.Scope scope)=>ScrollbarThemeData.lerp,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@==': (m.Scope scope, ScrollbarThemeData target)=>(other)=> target == other,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarThemeData@debugFillProperties': (m.Scope scope, ScrollbarThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarTheme@#as': (m.Scope scope, target)=>()=>target as ScrollbarTheme,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarTheme@#is': (m.Scope scope, target)=>()=>target is ScrollbarTheme,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarTheme@data': (m.Scope scope, ScrollbarTheme target)=>target.data,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarTheme@': (m.Scope scope)=>ScrollbarTheme,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarTheme@of': (m.Scope scope)=>ScrollbarTheme.of,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarTheme@wrap': (m.Scope scope, ScrollbarTheme target)=>target.wrap,
'package:flutter/src/material/scrollbar_theme.dart@ScrollbarTheme@updateShouldNotify': (m.Scope scope, ScrollbarTheme target)=>target.updateShouldNotify,

};
}