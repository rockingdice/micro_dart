import 'package:flutter/src/material/menu_style.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/menu_anchor.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/menu_style.dart@MenuStyle@#as': (m.Scope scope, target)=>()=>target as MenuStyle,
'package:flutter/src/material/menu_style.dart@MenuStyle@#is': (m.Scope scope, target)=>()=>target is MenuStyle,
'package:flutter/src/material/menu_style.dart@MenuStyle@backgroundColor': (m.Scope scope, MenuStyle target)=>target.backgroundColor,
'package:flutter/src/material/menu_style.dart@MenuStyle@shadowColor': (m.Scope scope, MenuStyle target)=>target.shadowColor,
'package:flutter/src/material/menu_style.dart@MenuStyle@surfaceTintColor': (m.Scope scope, MenuStyle target)=>target.surfaceTintColor,
'package:flutter/src/material/menu_style.dart@MenuStyle@elevation': (m.Scope scope, MenuStyle target)=>target.elevation,
'package:flutter/src/material/menu_style.dart@MenuStyle@padding': (m.Scope scope, MenuStyle target)=>target.padding,
'package:flutter/src/material/menu_style.dart@MenuStyle@minimumSize': (m.Scope scope, MenuStyle target)=>target.minimumSize,
'package:flutter/src/material/menu_style.dart@MenuStyle@fixedSize': (m.Scope scope, MenuStyle target)=>target.fixedSize,
'package:flutter/src/material/menu_style.dart@MenuStyle@maximumSize': (m.Scope scope, MenuStyle target)=>target.maximumSize,
'package:flutter/src/material/menu_style.dart@MenuStyle@side': (m.Scope scope, MenuStyle target)=>target.side,
'package:flutter/src/material/menu_style.dart@MenuStyle@shape': (m.Scope scope, MenuStyle target)=>target.shape,
'package:flutter/src/material/menu_style.dart@MenuStyle@mouseCursor': (m.Scope scope, MenuStyle target)=>target.mouseCursor,
'package:flutter/src/material/menu_style.dart@MenuStyle@visualDensity': (m.Scope scope, MenuStyle target)=>target.visualDensity,
'package:flutter/src/material/menu_style.dart@MenuStyle@alignment': (m.Scope scope, MenuStyle target)=>target.alignment,
'package:flutter/src/material/menu_style.dart@MenuStyle@hashCode': (m.Scope scope, MenuStyle target)=>target.hashCode,
'package:flutter/src/material/menu_style.dart@MenuStyle@': (m.Scope scope)=>({ alignment,  backgroundColor,  elevation,  fixedSize,  maximumSize,  minimumSize,  mouseCursor,  padding,  shadowColor,  shape,  side,  surfaceTintColor,  visualDensity}){
return MenuStyle(alignment:alignment, backgroundColor:backgroundColor, elevation:elevation, fixedSize:fixedSize, maximumSize:maximumSize, minimumSize:minimumSize, mouseCursor:mouseCursor, padding:padding, shadowColor:shadowColor, shape:shape, side:side, surfaceTintColor:surfaceTintColor, visualDensity:visualDensity);
},
'package:flutter/src/material/menu_style.dart@MenuStyle@==': (m.Scope scope, MenuStyle target)=>(other)=> target == other,
'package:flutter/src/material/menu_style.dart@MenuStyle@copyWith': (m.Scope scope, MenuStyle target)=>target.copyWith,
'package:flutter/src/material/menu_style.dart@MenuStyle@merge': (m.Scope scope, MenuStyle target)=>target.merge,
'package:flutter/src/material/menu_style.dart@MenuStyle@lerp': (m.Scope scope)=>MenuStyle.lerp,
'package:flutter/src/material/menu_style.dart@MenuStyle@debugFillProperties': (m.Scope scope, MenuStyle target)=>target.debugFillProperties,

};
}