import 'package:flutter/src/material/dialog_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/dialog_theme.dart@DialogTheme@#as': (m.Scope scope, target)=>()=>target as DialogTheme,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@#is': (m.Scope scope, target)=>()=>target is DialogTheme,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@backgroundColor': (m.Scope scope, DialogTheme target)=>target.backgroundColor,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@elevation': (m.Scope scope, DialogTheme target)=>target.elevation,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@shadowColor': (m.Scope scope, DialogTheme target)=>target.shadowColor,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@surfaceTintColor': (m.Scope scope, DialogTheme target)=>target.surfaceTintColor,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@shape': (m.Scope scope, DialogTheme target)=>target.shape,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@alignment': (m.Scope scope, DialogTheme target)=>target.alignment,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@titleTextStyle': (m.Scope scope, DialogTheme target)=>target.titleTextStyle,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@contentTextStyle': (m.Scope scope, DialogTheme target)=>target.contentTextStyle,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@actionsPadding': (m.Scope scope, DialogTheme target)=>target.actionsPadding,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@iconColor': (m.Scope scope, DialogTheme target)=>target.iconColor,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@hashCode': (m.Scope scope, DialogTheme target)=>target.hashCode,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@': (m.Scope scope)=>({ actionsPadding,  alignment,  backgroundColor,  contentTextStyle,  elevation,  iconColor,  shadowColor,  shape,  surfaceTintColor,  titleTextStyle}){
return DialogTheme(actionsPadding:actionsPadding, alignment:alignment, backgroundColor:backgroundColor, contentTextStyle:contentTextStyle, elevation:elevation, iconColor:iconColor, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor, titleTextStyle:titleTextStyle);
},
'package:flutter/src/material/dialog_theme.dart@DialogTheme@copyWith': (m.Scope scope, DialogTheme target)=>target.copyWith,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@of': (m.Scope scope)=>DialogTheme.of,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@lerp': (m.Scope scope)=>DialogTheme.lerp,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@==': (m.Scope scope, DialogTheme target)=>(other)=> target == other,
'package:flutter/src/material/dialog_theme.dart@DialogTheme@debugFillProperties': (m.Scope scope, DialogTheme target)=>target.debugFillProperties,

};
}