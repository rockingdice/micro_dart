import 'package:flutter/src/material/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/typography.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/theme.dart@@kThemeAnimationDuration': (m.Scope scope)=>kThemeAnimationDuration,
'package:flutter/src/material/theme.dart@Theme@#as': (m.Scope scope, target)=>()=>target as Theme,
'package:flutter/src/material/theme.dart@Theme@#is': (m.Scope scope, target)=>()=>target is Theme,
'package:flutter/src/material/theme.dart@Theme@data': (m.Scope scope, Theme target)=>target.data,
'package:flutter/src/material/theme.dart@Theme@child': (m.Scope scope, Theme target)=>target.child,
'package:flutter/src/material/theme.dart@Theme@': (m.Scope scope)=>({ child,  data,  key}){
return Theme(child:child, data:data, key:key);
},
'package:flutter/src/material/theme.dart@Theme@of': (m.Scope scope)=>Theme.of,
'package:flutter/src/material/theme.dart@Theme@build': (m.Scope scope, Theme target)=>target.build,
'package:flutter/src/material/theme.dart@Theme@debugFillProperties': (m.Scope scope, Theme target)=>target.debugFillProperties,
'package:flutter/src/material/theme.dart@ThemeDataTween@#as': (m.Scope scope, target)=>()=>target as ThemeDataTween,
'package:flutter/src/material/theme.dart@ThemeDataTween@#is': (m.Scope scope, target)=>()=>target is ThemeDataTween,
'package:flutter/src/material/theme.dart@ThemeDataTween@': (m.Scope scope)=>({ begin,  end}){
return ThemeDataTween(begin:begin, end:end);
},
'package:flutter/src/material/theme.dart@ThemeDataTween@lerp': (m.Scope scope, ThemeDataTween target)=>target.lerp,
'package:flutter/src/material/theme.dart@AnimatedTheme@#as': (m.Scope scope, target)=>()=>target as AnimatedTheme,
'package:flutter/src/material/theme.dart@AnimatedTheme@#is': (m.Scope scope, target)=>()=>target is AnimatedTheme,
'package:flutter/src/material/theme.dart@AnimatedTheme@data': (m.Scope scope, AnimatedTheme target)=>target.data,
'package:flutter/src/material/theme.dart@AnimatedTheme@child': (m.Scope scope, AnimatedTheme target)=>target.child,
'package:flutter/src/material/theme.dart@AnimatedTheme@': (m.Scope scope)=>({ child,  curve,  data,  duration,  key,  onEnd}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedTheme(child:child, curve:curve ?? Curves.linear, data:data, duration:duration ?? kThemeAnimationDuration, key:key, onEnd:onEnd == null ? null :onEndProxy);
},
'package:flutter/src/material/theme.dart@AnimatedTheme@createState': (m.Scope scope, AnimatedTheme target)=>target.createState,

};
}