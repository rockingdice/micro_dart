import 'package:flutter/src/material/text_selection_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/text_selection_theme.dart@TextSelectionThemeData@#as': (m.Scope scope, target)=>()=>target as TextSelectionThemeData,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionThemeData@#is': (m.Scope scope, target)=>()=>target is TextSelectionThemeData,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionThemeData@cursorColor': (m.Scope scope, TextSelectionThemeData target)=>target.cursorColor,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionThemeData@selectionColor': (m.Scope scope, TextSelectionThemeData target)=>target.selectionColor,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionThemeData@selectionHandleColor': (m.Scope scope, TextSelectionThemeData target)=>target.selectionHandleColor,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionThemeData@hashCode': (m.Scope scope, TextSelectionThemeData target)=>target.hashCode,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionThemeData@': (m.Scope scope)=>({ cursorColor,  selectionColor,  selectionHandleColor}){
return TextSelectionThemeData(cursorColor:cursorColor, selectionColor:selectionColor, selectionHandleColor:selectionHandleColor);
},
'package:flutter/src/material/text_selection_theme.dart@TextSelectionThemeData@copyWith': (m.Scope scope, TextSelectionThemeData target)=>target.copyWith,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionThemeData@lerp': (m.Scope scope)=>TextSelectionThemeData.lerp,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionThemeData@==': (m.Scope scope, TextSelectionThemeData target)=>(other)=> target == other,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionThemeData@debugFillProperties': (m.Scope scope, TextSelectionThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionTheme@#as': (m.Scope scope, target)=>()=>target as TextSelectionTheme,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionTheme@#is': (m.Scope scope, target)=>()=>target is TextSelectionTheme,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionTheme@data': (m.Scope scope, TextSelectionTheme target)=>target.data,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionTheme@child': (m.Scope scope, TextSelectionTheme target)=>target.child,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionTheme@': (m.Scope scope)=>({ child,  data,  key}){
return TextSelectionTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/text_selection_theme.dart@TextSelectionTheme@of': (m.Scope scope)=>TextSelectionTheme.of,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionTheme@wrap': (m.Scope scope, TextSelectionTheme target)=>target.wrap,
'package:flutter/src/material/text_selection_theme.dart@TextSelectionTheme@updateShouldNotify': (m.Scope scope, TextSelectionTheme target)=>target.updateShouldNotify,

};
}