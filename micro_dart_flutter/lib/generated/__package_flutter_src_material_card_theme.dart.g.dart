import 'package:flutter/src/material/card_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/card_theme.dart@CardTheme@#as': (m.Scope scope, target)=>()=>target as CardTheme,
'package:flutter/src/material/card_theme.dart@CardTheme@#is': (m.Scope scope, target)=>()=>target is CardTheme,
'package:flutter/src/material/card_theme.dart@CardTheme@clipBehavior': (m.Scope scope, CardTheme target)=>target.clipBehavior,
'package:flutter/src/material/card_theme.dart@CardTheme@color': (m.Scope scope, CardTheme target)=>target.color,
'package:flutter/src/material/card_theme.dart@CardTheme@shadowColor': (m.Scope scope, CardTheme target)=>target.shadowColor,
'package:flutter/src/material/card_theme.dart@CardTheme@surfaceTintColor': (m.Scope scope, CardTheme target)=>target.surfaceTintColor,
'package:flutter/src/material/card_theme.dart@CardTheme@elevation': (m.Scope scope, CardTheme target)=>target.elevation,
'package:flutter/src/material/card_theme.dart@CardTheme@margin': (m.Scope scope, CardTheme target)=>target.margin,
'package:flutter/src/material/card_theme.dart@CardTheme@shape': (m.Scope scope, CardTheme target)=>target.shape,
'package:flutter/src/material/card_theme.dart@CardTheme@hashCode': (m.Scope scope, CardTheme target)=>target.hashCode,
'package:flutter/src/material/card_theme.dart@CardTheme@': (m.Scope scope)=>({ clipBehavior,  color,  elevation,  margin,  shadowColor,  shape,  surfaceTintColor}){
return CardTheme(clipBehavior:clipBehavior, color:color, elevation:elevation, margin:margin, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/card_theme.dart@CardTheme@copyWith': (m.Scope scope, CardTheme target)=>target.copyWith,
'package:flutter/src/material/card_theme.dart@CardTheme@of': (m.Scope scope)=>CardTheme.of,
'package:flutter/src/material/card_theme.dart@CardTheme@lerp': (m.Scope scope)=>CardTheme.lerp,
'package:flutter/src/material/card_theme.dart@CardTheme@==': (m.Scope scope, CardTheme target)=>(other)=> target == other,
'package:flutter/src/material/card_theme.dart@CardTheme@debugFillProperties': (m.Scope scope, CardTheme target)=>target.debugFillProperties,

};
}