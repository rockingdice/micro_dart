import 'package:flutter/src/cupertino/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/icon_theme_data.dart';
import 'package:flutter/src/cupertino/text_theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/theme.dart@CupertinoTheme@#as': (m.Scope scope, target)=>()=>target as CupertinoTheme,
'package:flutter/src/cupertino/theme.dart@CupertinoTheme@#is': (m.Scope scope, target)=>()=>target is CupertinoTheme,
'package:flutter/src/cupertino/theme.dart@CupertinoTheme@data': (m.Scope scope, CupertinoTheme target)=>target.data,
'package:flutter/src/cupertino/theme.dart@CupertinoTheme@child': (m.Scope scope, CupertinoTheme target)=>target.child,
'package:flutter/src/cupertino/theme.dart@CupertinoTheme@': (m.Scope scope)=>CupertinoTheme,
'package:flutter/src/cupertino/theme.dart@CupertinoTheme@of': (m.Scope scope)=>CupertinoTheme.of,
'package:flutter/src/cupertino/theme.dart@CupertinoTheme@brightnessOf': (m.Scope scope)=>CupertinoTheme.brightnessOf,
'package:flutter/src/cupertino/theme.dart@CupertinoTheme@maybeBrightnessOf': (m.Scope scope)=>CupertinoTheme.maybeBrightnessOf,
'package:flutter/src/cupertino/theme.dart@CupertinoTheme@build': (m.Scope scope, CupertinoTheme target)=>target.build,
'package:flutter/src/cupertino/theme.dart@CupertinoTheme@debugFillProperties': (m.Scope scope, CupertinoTheme target)=>target.debugFillProperties,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@#as': (m.Scope scope, target)=>()=>target as CupertinoThemeData,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@#is': (m.Scope scope, target)=>()=>target is CupertinoThemeData,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@primaryColor': (m.Scope scope, CupertinoThemeData target)=>target.primaryColor,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@primaryContrastingColor': (m.Scope scope, CupertinoThemeData target)=>target.primaryContrastingColor,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@textTheme': (m.Scope scope, CupertinoThemeData target)=>target.textTheme,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@barBackgroundColor': (m.Scope scope, CupertinoThemeData target)=>target.barBackgroundColor,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@scaffoldBackgroundColor': (m.Scope scope, CupertinoThemeData target)=>target.scaffoldBackgroundColor,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@applyThemeToAll': (m.Scope scope, CupertinoThemeData target)=>target.applyThemeToAll,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@hashCode': (m.Scope scope, CupertinoThemeData target)=>target.hashCode,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@': (m.Scope scope)=>({ applyThemeToAll,  barBackgroundColor,  brightness,  primaryColor,  primaryContrastingColor,  scaffoldBackgroundColor,  textTheme}){
return CupertinoThemeData(applyThemeToAll:applyThemeToAll, barBackgroundColor:barBackgroundColor, brightness:brightness, primaryColor:primaryColor, primaryContrastingColor:primaryContrastingColor, scaffoldBackgroundColor:scaffoldBackgroundColor, textTheme:textTheme);
},
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@raw': (m.Scope scope)=>CupertinoThemeData.raw,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@noDefault': (m.Scope scope, CupertinoThemeData target)=>target.noDefault,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@resolveFrom': (m.Scope scope, CupertinoThemeData target)=>target.resolveFrom,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@copyWith': (m.Scope scope, CupertinoThemeData target)=>target.copyWith,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@debugFillProperties': (m.Scope scope, CupertinoThemeData target)=>target.debugFillProperties,
'package:flutter/src/cupertino/theme.dart@CupertinoThemeData@==': (m.Scope scope, CupertinoThemeData target)=>(other)=> target == other,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@#as': (m.Scope scope, target)=>()=>target as NoDefaultCupertinoThemeData,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@#is': (m.Scope scope, target)=>()=>target is NoDefaultCupertinoThemeData,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@brightness': (m.Scope scope, NoDefaultCupertinoThemeData target)=>target.brightness,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@primaryColor': (m.Scope scope, NoDefaultCupertinoThemeData target)=>target.primaryColor,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@primaryContrastingColor': (m.Scope scope, NoDefaultCupertinoThemeData target)=>target.primaryContrastingColor,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@textTheme': (m.Scope scope, NoDefaultCupertinoThemeData target)=>target.textTheme,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@barBackgroundColor': (m.Scope scope, NoDefaultCupertinoThemeData target)=>target.barBackgroundColor,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@scaffoldBackgroundColor': (m.Scope scope, NoDefaultCupertinoThemeData target)=>target.scaffoldBackgroundColor,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@applyThemeToAll': (m.Scope scope, NoDefaultCupertinoThemeData target)=>target.applyThemeToAll,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@': (m.Scope scope)=>({ applyThemeToAll,  barBackgroundColor,  brightness,  primaryColor,  primaryContrastingColor,  scaffoldBackgroundColor,  textTheme}){
return NoDefaultCupertinoThemeData(applyThemeToAll:applyThemeToAll, barBackgroundColor:barBackgroundColor, brightness:brightness, primaryColor:primaryColor, primaryContrastingColor:primaryContrastingColor, scaffoldBackgroundColor:scaffoldBackgroundColor, textTheme:textTheme);
},
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@noDefault': (m.Scope scope, NoDefaultCupertinoThemeData target)=>target.noDefault,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@resolveFrom': (m.Scope scope, NoDefaultCupertinoThemeData target)=>target.resolveFrom,
'package:flutter/src/cupertino/theme.dart@NoDefaultCupertinoThemeData@copyWith': (m.Scope scope, NoDefaultCupertinoThemeData target)=>target.copyWith,

};
}