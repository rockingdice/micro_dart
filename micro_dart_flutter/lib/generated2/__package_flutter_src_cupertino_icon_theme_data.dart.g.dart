import 'package:flutter/src/cupertino/icon_theme_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/icon_theme_data.dart@CupertinoIconThemeData@#as': (m.Scope scope, target)=>()=>target as CupertinoIconThemeData,
'package:flutter/src/cupertino/icon_theme_data.dart@CupertinoIconThemeData@#is': (m.Scope scope, target)=>()=>target is CupertinoIconThemeData,
'package:flutter/src/cupertino/icon_theme_data.dart@CupertinoIconThemeData@': (m.Scope scope)=>({ color,  fill,  grade,  opacity,  opticalSize,  shadows,  size,  weight}){
return CupertinoIconThemeData(color:color, fill:fill, grade:grade, opacity:opacity, opticalSize:opticalSize, shadows:shadows, size:size, weight:weight);
},
'package:flutter/src/cupertino/icon_theme_data.dart@CupertinoIconThemeData@resolve': (m.Scope scope, CupertinoIconThemeData target)=>target.resolve,
'package:flutter/src/cupertino/icon_theme_data.dart@CupertinoIconThemeData@copyWith': (m.Scope scope, CupertinoIconThemeData target)=>target.copyWith,
'package:flutter/src/cupertino/icon_theme_data.dart@CupertinoIconThemeData@debugFillProperties': (m.Scope scope, CupertinoIconThemeData target)=>target.debugFillProperties,

};
}