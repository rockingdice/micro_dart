import 'package:flutter/src/material/switch_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@#as': (m.Scope scope, target)=>()=>target as SwitchThemeData,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@#is': (m.Scope scope, target)=>()=>target is SwitchThemeData,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@thumbColor': (m.Scope scope, SwitchThemeData target)=>target.thumbColor,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@trackColor': (m.Scope scope, SwitchThemeData target)=>target.trackColor,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@trackOutlineColor': (m.Scope scope, SwitchThemeData target)=>target.trackOutlineColor,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@materialTapTargetSize': (m.Scope scope, SwitchThemeData target)=>target.materialTapTargetSize,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@mouseCursor': (m.Scope scope, SwitchThemeData target)=>target.mouseCursor,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@overlayColor': (m.Scope scope, SwitchThemeData target)=>target.overlayColor,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@splashRadius': (m.Scope scope, SwitchThemeData target)=>target.splashRadius,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@thumbIcon': (m.Scope scope, SwitchThemeData target)=>target.thumbIcon,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@hashCode': (m.Scope scope, SwitchThemeData target)=>target.hashCode,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@': (m.Scope scope)=>({ materialTapTargetSize,  mouseCursor,  overlayColor,  splashRadius,  thumbColor,  thumbIcon,  trackColor,  trackOutlineColor}){
return SwitchThemeData(materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, overlayColor:overlayColor, splashRadius:splashRadius, thumbColor:thumbColor, thumbIcon:thumbIcon, trackColor:trackColor, trackOutlineColor:trackOutlineColor);
},
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@copyWith': (m.Scope scope, SwitchThemeData target)=>target.copyWith,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@lerp': (m.Scope scope)=>SwitchThemeData.lerp,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@==': (m.Scope scope, SwitchThemeData target)=>(other)=> target == other,
'package:flutter/src/material/switch_theme.dart@SwitchThemeData@debugFillProperties': (m.Scope scope, SwitchThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/switch_theme.dart@SwitchTheme@#as': (m.Scope scope, target)=>()=>target as SwitchTheme,
'package:flutter/src/material/switch_theme.dart@SwitchTheme@#is': (m.Scope scope, target)=>()=>target is SwitchTheme,
'package:flutter/src/material/switch_theme.dart@SwitchTheme@data': (m.Scope scope, SwitchTheme target)=>target.data,
'package:flutter/src/material/switch_theme.dart@SwitchTheme@': (m.Scope scope)=>({ child,  data,  key}){
return SwitchTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/switch_theme.dart@SwitchTheme@of': (m.Scope scope)=>SwitchTheme.of,
'package:flutter/src/material/switch_theme.dart@SwitchTheme@updateShouldNotify': (m.Scope scope, SwitchTheme target)=>target.updateShouldNotify,

};
}