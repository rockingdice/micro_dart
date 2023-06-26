import 'package:flutter/src/material/divider_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/divider_theme.dart@DividerThemeData@#as': (m.Scope scope, target)=>()=>target as DividerThemeData,
'package:flutter/src/material/divider_theme.dart@DividerThemeData@#is': (m.Scope scope, target)=>()=>target is DividerThemeData,
'package:flutter/src/material/divider_theme.dart@DividerThemeData@color': (m.Scope scope, DividerThemeData target)=>target.color,
'package:flutter/src/material/divider_theme.dart@DividerThemeData@space': (m.Scope scope, DividerThemeData target)=>target.space,
'package:flutter/src/material/divider_theme.dart@DividerThemeData@thickness': (m.Scope scope, DividerThemeData target)=>target.thickness,
'package:flutter/src/material/divider_theme.dart@DividerThemeData@indent': (m.Scope scope, DividerThemeData target)=>target.indent,
'package:flutter/src/material/divider_theme.dart@DividerThemeData@endIndent': (m.Scope scope, DividerThemeData target)=>target.endIndent,
'package:flutter/src/material/divider_theme.dart@DividerThemeData@hashCode': (m.Scope scope, DividerThemeData target)=>target.hashCode,
'package:flutter/src/material/divider_theme.dart@DividerThemeData@': (m.Scope scope)=>({ color,  endIndent,  indent,  space,  thickness}){
return DividerThemeData(color:color, endIndent:endIndent, indent:indent, space:space, thickness:thickness);
},
'package:flutter/src/material/divider_theme.dart@DividerThemeData@copyWith': (m.Scope scope, DividerThemeData target)=>target.copyWith,
'package:flutter/src/material/divider_theme.dart@DividerThemeData@lerp': (m.Scope scope)=>DividerThemeData.lerp,
'package:flutter/src/material/divider_theme.dart@DividerThemeData@==': (m.Scope scope, DividerThemeData target)=>(other)=> target == other,
'package:flutter/src/material/divider_theme.dart@DividerThemeData@debugFillProperties': (m.Scope scope, DividerThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/divider_theme.dart@DividerTheme@#as': (m.Scope scope, target)=>()=>target as DividerTheme,
'package:flutter/src/material/divider_theme.dart@DividerTheme@#is': (m.Scope scope, target)=>()=>target is DividerTheme,
'package:flutter/src/material/divider_theme.dart@DividerTheme@data': (m.Scope scope, DividerTheme target)=>target.data,
'package:flutter/src/material/divider_theme.dart@DividerTheme@': (m.Scope scope)=>DividerTheme,
'package:flutter/src/material/divider_theme.dart@DividerTheme@of': (m.Scope scope)=>DividerTheme.of,
'package:flutter/src/material/divider_theme.dart@DividerTheme@wrap': (m.Scope scope, DividerTheme target)=>target.wrap,
'package:flutter/src/material/divider_theme.dart@DividerTheme@updateShouldNotify': (m.Scope scope, DividerTheme target)=>target.updateShouldNotify,

};
}