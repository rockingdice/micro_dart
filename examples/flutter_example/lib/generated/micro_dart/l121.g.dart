import 'package:flutter/src/material/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/elevation_overlay.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/material.dart@@kMaterialEdges': (m.Scope scope)=>kMaterialEdges,
'package:flutter/src/material/material.dart@MaterialInkController@#as': (m.Scope scope, target)=>()=>target as MaterialInkController,
'package:flutter/src/material/material.dart@MaterialInkController@#is': (m.Scope scope, target)=>()=>target is MaterialInkController,
'package:flutter/src/material/material.dart@MaterialInkController@color': (m.Scope scope, MaterialInkController target)=>target.color,
'package:flutter/src/material/material.dart@MaterialInkController@vsync': (m.Scope scope, MaterialInkController target)=>target.vsync,
'package:flutter/src/material/material.dart@MaterialInkController@addInkFeature': (m.Scope scope, MaterialInkController target)=>target.addInkFeature,
'package:flutter/src/material/material.dart@MaterialInkController@markNeedsPaint': (m.Scope scope, MaterialInkController target)=>target.markNeedsPaint,
'package:flutter/src/material/material.dart@Material@#as': (m.Scope scope, target)=>()=>target as Material,
'package:flutter/src/material/material.dart@Material@#is': (m.Scope scope, target)=>()=>target is Material,
'package:flutter/src/material/material.dart@Material@child': (m.Scope scope, Material target)=>target.child,
'package:flutter/src/material/material.dart@Material@type': (m.Scope scope, Material target)=>target.type,
'package:flutter/src/material/material.dart@Material@elevation': (m.Scope scope, Material target)=>target.elevation,
'package:flutter/src/material/material.dart@Material@color': (m.Scope scope, Material target)=>target.color,
'package:flutter/src/material/material.dart@Material@shadowColor': (m.Scope scope, Material target)=>target.shadowColor,
'package:flutter/src/material/material.dart@Material@surfaceTintColor': (m.Scope scope, Material target)=>target.surfaceTintColor,
'package:flutter/src/material/material.dart@Material@textStyle': (m.Scope scope, Material target)=>target.textStyle,
'package:flutter/src/material/material.dart@Material@shape': (m.Scope scope, Material target)=>target.shape,
'package:flutter/src/material/material.dart@Material@borderOnForeground': (m.Scope scope, Material target)=>target.borderOnForeground,
'package:flutter/src/material/material.dart@Material@clipBehavior': (m.Scope scope, Material target)=>target.clipBehavior,
'package:flutter/src/material/material.dart@Material@animationDuration': (m.Scope scope, Material target)=>target.animationDuration,
'package:flutter/src/material/material.dart@Material@borderRadius': (m.Scope scope, Material target)=>target.borderRadius,
'package:flutter/src/material/material.dart@Material@defaultSplashRadius': (m.Scope scope)=>Material.defaultSplashRadius,
'package:flutter/src/material/material.dart@Material@': (m.Scope scope)=>({ animationDuration,  borderOnForeground,  borderRadius,  child,  clipBehavior,  color,  elevation,  key,  shadowColor,  shape,  surfaceTintColor,  textStyle,  type}){
return Material(animationDuration:animationDuration ?? kThemeChangeDuration, borderOnForeground:borderOnForeground ?? true, borderRadius:borderRadius, child:child, clipBehavior:clipBehavior ?? Clip.none, color:color, elevation:elevation ?? 0.0, key:key, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor, textStyle:textStyle, type:type ?? MaterialType.canvas);
},
'package:flutter/src/material/material.dart@Material@maybeOf': (m.Scope scope)=>Material.maybeOf,
'package:flutter/src/material/material.dart@Material@of': (m.Scope scope)=>Material.of,
'package:flutter/src/material/material.dart@Material@createState': (m.Scope scope, Material target)=>target.createState,
'package:flutter/src/material/material.dart@Material@debugFillProperties': (m.Scope scope, Material target)=>target.debugFillProperties,
'package:flutter/src/material/material.dart@InkFeature@#as': (m.Scope scope, target)=>()=>target as InkFeature,
'package:flutter/src/material/material.dart@InkFeature@#is': (m.Scope scope, target)=>()=>target is InkFeature,
'package:flutter/src/material/material.dart@InkFeature@referenceBox': (m.Scope scope, InkFeature target)=>target.referenceBox,
'package:flutter/src/material/material.dart@InkFeature@onRemoved': (m.Scope scope, InkFeature target)=>target.onRemoved,
'package:flutter/src/material/material.dart@InkFeature@controller': (m.Scope scope, InkFeature target)=>target.controller,
'package:flutter/src/material/material.dart@InkFeature@dispose': (m.Scope scope, InkFeature target)=>target.dispose,
'package:flutter/src/material/material.dart@InkFeature@paintFeature': (m.Scope scope, InkFeature target)=>target.paintFeature,
'package:flutter/src/material/material.dart@InkFeature@toString': (m.Scope scope, InkFeature target)=>target.toString,
'package:flutter/src/material/material.dart@ShapeBorderTween@#as': (m.Scope scope, target)=>()=>target as ShapeBorderTween,
'package:flutter/src/material/material.dart@ShapeBorderTween@#is': (m.Scope scope, target)=>()=>target is ShapeBorderTween,
'package:flutter/src/material/material.dart@ShapeBorderTween@': (m.Scope scope)=>({ begin,  end}){
return ShapeBorderTween(begin:begin, end:end);
},
'package:flutter/src/material/material.dart@ShapeBorderTween@lerp': (m.Scope scope, ShapeBorderTween target)=>target.lerp,

};
}