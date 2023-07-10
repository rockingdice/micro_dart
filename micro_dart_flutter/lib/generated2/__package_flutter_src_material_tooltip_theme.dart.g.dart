import 'package:flutter/src/material/tooltip_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@#as': (m.Scope scope, target)=>()=>target as TooltipThemeData,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@#is': (m.Scope scope, target)=>()=>target is TooltipThemeData,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@height': (m.Scope scope, TooltipThemeData target)=>target.height,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@padding': (m.Scope scope, TooltipThemeData target)=>target.padding,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@margin': (m.Scope scope, TooltipThemeData target)=>target.margin,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@verticalOffset': (m.Scope scope, TooltipThemeData target)=>target.verticalOffset,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@preferBelow': (m.Scope scope, TooltipThemeData target)=>target.preferBelow,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@excludeFromSemantics': (m.Scope scope, TooltipThemeData target)=>target.excludeFromSemantics,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@decoration': (m.Scope scope, TooltipThemeData target)=>target.decoration,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@textStyle': (m.Scope scope, TooltipThemeData target)=>target.textStyle,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@textAlign': (m.Scope scope, TooltipThemeData target)=>target.textAlign,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@waitDuration': (m.Scope scope, TooltipThemeData target)=>target.waitDuration,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@showDuration': (m.Scope scope, TooltipThemeData target)=>target.showDuration,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@triggerMode': (m.Scope scope, TooltipThemeData target)=>target.triggerMode,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@enableFeedback': (m.Scope scope, TooltipThemeData target)=>target.enableFeedback,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@hashCode': (m.Scope scope, TooltipThemeData target)=>target.hashCode,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@': (m.Scope scope)=>({ decoration,  enableFeedback,  excludeFromSemantics,  height,  margin,  padding,  preferBelow,  showDuration,  textAlign,  textStyle,  triggerMode,  verticalOffset,  waitDuration}){
return TooltipThemeData(decoration:decoration, enableFeedback:enableFeedback, excludeFromSemantics:excludeFromSemantics, height:height, margin:margin, padding:padding, preferBelow:preferBelow, showDuration:showDuration, textAlign:textAlign, textStyle:textStyle, triggerMode:triggerMode, verticalOffset:verticalOffset, waitDuration:waitDuration);
},
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@copyWith': (m.Scope scope, TooltipThemeData target)=>target.copyWith,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@lerp': (m.Scope scope)=>TooltipThemeData.lerp,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@==': (m.Scope scope, TooltipThemeData target)=>(other)=> target == other,
'package:flutter/src/material/tooltip_theme.dart@TooltipThemeData@debugFillProperties': (m.Scope scope, TooltipThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/tooltip_theme.dart@TooltipTheme@#as': (m.Scope scope, target)=>()=>target as TooltipTheme,
'package:flutter/src/material/tooltip_theme.dart@TooltipTheme@#is': (m.Scope scope, target)=>()=>target is TooltipTheme,
'package:flutter/src/material/tooltip_theme.dart@TooltipTheme@data': (m.Scope scope, TooltipTheme target)=>target.data,
'package:flutter/src/material/tooltip_theme.dart@TooltipTheme@': (m.Scope scope)=>({ child,  data,  key}){
return TooltipTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/tooltip_theme.dart@TooltipTheme@of': (m.Scope scope)=>TooltipTheme.of,
'package:flutter/src/material/tooltip_theme.dart@TooltipTheme@wrap': (m.Scope scope, TooltipTheme target)=>target.wrap,
'package:flutter/src/material/tooltip_theme.dart@TooltipTheme@updateShouldNotify': (m.Scope scope, TooltipTheme target)=>target.updateShouldNotify,

};
}