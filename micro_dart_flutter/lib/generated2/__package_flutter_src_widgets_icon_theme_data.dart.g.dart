import 'package:flutter/src/widgets/icon_theme_data.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/framework.dart' show BuildContext;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@#as': (m.Scope scope, target)=>()=>target as IconThemeData,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@#is': (m.Scope scope, target)=>()=>target is IconThemeData,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@size': (m.Scope scope, IconThemeData target)=>target.size,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@fill': (m.Scope scope, IconThemeData target)=>target.fill,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@weight': (m.Scope scope, IconThemeData target)=>target.weight,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@grade': (m.Scope scope, IconThemeData target)=>target.grade,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@opticalSize': (m.Scope scope, IconThemeData target)=>target.opticalSize,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@color': (m.Scope scope, IconThemeData target)=>target.color,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@shadows': (m.Scope scope, IconThemeData target)=>target.shadows,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@isConcrete': (m.Scope scope, IconThemeData target)=>target.isConcrete,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@opacity': (m.Scope scope, IconThemeData target)=>target.opacity,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@hashCode': (m.Scope scope, IconThemeData target)=>target.hashCode,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@': (m.Scope scope)=>({ color,  fill,  grade,  opacity,  opticalSize,  shadows,  size,  weight}){
return IconThemeData(color:color, fill:fill, grade:grade, opacity:opacity, opticalSize:opticalSize, shadows:shadows, size:size, weight:weight);
},
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@fallback': (m.Scope scope)=>IconThemeData.fallback,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@copyWith': (m.Scope scope, IconThemeData target)=>target.copyWith,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@merge': (m.Scope scope, IconThemeData target)=>target.merge,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@resolve': (m.Scope scope, IconThemeData target)=>target.resolve,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@lerp': (m.Scope scope)=>IconThemeData.lerp,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@==': (m.Scope scope, IconThemeData target)=>(other)=> target == other,
'package:flutter/src/widgets/icon_theme_data.dart@IconThemeData@debugFillProperties': (m.Scope scope, IconThemeData target)=>target.debugFillProperties,

};
}