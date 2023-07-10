import 'package:flutter/src/material/icon_button_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/icon_button_theme.dart@IconButtonThemeData@#as': (m.Scope scope, target)=>()=>target as IconButtonThemeData,
'package:flutter/src/material/icon_button_theme.dart@IconButtonThemeData@#is': (m.Scope scope, target)=>()=>target is IconButtonThemeData,
'package:flutter/src/material/icon_button_theme.dart@IconButtonThemeData@style': (m.Scope scope, IconButtonThemeData target)=>target.style,
'package:flutter/src/material/icon_button_theme.dart@IconButtonThemeData@hashCode': (m.Scope scope, IconButtonThemeData target)=>target.hashCode,
'package:flutter/src/material/icon_button_theme.dart@IconButtonThemeData@': (m.Scope scope)=>({ style}){
return IconButtonThemeData(style:style);
},
'package:flutter/src/material/icon_button_theme.dart@IconButtonThemeData@lerp': (m.Scope scope)=>IconButtonThemeData.lerp,
'package:flutter/src/material/icon_button_theme.dart@IconButtonThemeData@==': (m.Scope scope, IconButtonThemeData target)=>(other)=> target == other,
'package:flutter/src/material/icon_button_theme.dart@IconButtonThemeData@debugFillProperties': (m.Scope scope, IconButtonThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/icon_button_theme.dart@IconButtonTheme@#as': (m.Scope scope, target)=>()=>target as IconButtonTheme,
'package:flutter/src/material/icon_button_theme.dart@IconButtonTheme@#is': (m.Scope scope, target)=>()=>target is IconButtonTheme,
'package:flutter/src/material/icon_button_theme.dart@IconButtonTheme@data': (m.Scope scope, IconButtonTheme target)=>target.data,
'package:flutter/src/material/icon_button_theme.dart@IconButtonTheme@': (m.Scope scope)=>({ child,  data,  key}){
return IconButtonTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/icon_button_theme.dart@IconButtonTheme@of': (m.Scope scope)=>IconButtonTheme.of,
'package:flutter/src/material/icon_button_theme.dart@IconButtonTheme@wrap': (m.Scope scope, IconButtonTheme target)=>target.wrap,
'package:flutter/src/material/icon_button_theme.dart@IconButtonTheme@updateShouldNotify': (m.Scope scope, IconButtonTheme target)=>target.updateShouldNotify,

};
}