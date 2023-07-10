import 'package:flutter/src/material/text_button_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/text_button_theme.dart@TextButtonThemeData@#as': (m.Scope scope, target)=>()=>target as TextButtonThemeData,
'package:flutter/src/material/text_button_theme.dart@TextButtonThemeData@#is': (m.Scope scope, target)=>()=>target is TextButtonThemeData,
'package:flutter/src/material/text_button_theme.dart@TextButtonThemeData@style': (m.Scope scope, TextButtonThemeData target)=>target.style,
'package:flutter/src/material/text_button_theme.dart@TextButtonThemeData@hashCode': (m.Scope scope, TextButtonThemeData target)=>target.hashCode,
'package:flutter/src/material/text_button_theme.dart@TextButtonThemeData@': (m.Scope scope)=>({ style}){
return TextButtonThemeData(style:style);
},
'package:flutter/src/material/text_button_theme.dart@TextButtonThemeData@lerp': (m.Scope scope)=>TextButtonThemeData.lerp,
'package:flutter/src/material/text_button_theme.dart@TextButtonThemeData@==': (m.Scope scope, TextButtonThemeData target)=>(other)=> target == other,
'package:flutter/src/material/text_button_theme.dart@TextButtonThemeData@debugFillProperties': (m.Scope scope, TextButtonThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/text_button_theme.dart@TextButtonTheme@#as': (m.Scope scope, target)=>()=>target as TextButtonTheme,
'package:flutter/src/material/text_button_theme.dart@TextButtonTheme@#is': (m.Scope scope, target)=>()=>target is TextButtonTheme,
'package:flutter/src/material/text_button_theme.dart@TextButtonTheme@data': (m.Scope scope, TextButtonTheme target)=>target.data,
'package:flutter/src/material/text_button_theme.dart@TextButtonTheme@': (m.Scope scope)=>({ child,  data,  key}){
return TextButtonTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/text_button_theme.dart@TextButtonTheme@of': (m.Scope scope)=>TextButtonTheme.of,
'package:flutter/src/material/text_button_theme.dart@TextButtonTheme@wrap': (m.Scope scope, TextButtonTheme target)=>target.wrap,
'package:flutter/src/material/text_button_theme.dart@TextButtonTheme@updateShouldNotify': (m.Scope scope, TextButtonTheme target)=>target.updateShouldNotify,

};
}