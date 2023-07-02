import 'package:flutter/src/material/mergeable_material.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/mergeable_material.dart@MergeableMaterialItem@#as': (m.Scope scope, target)=>()=>target as MergeableMaterialItem,
'package:flutter/src/material/mergeable_material.dart@MergeableMaterialItem@#is': (m.Scope scope, target)=>()=>target is MergeableMaterialItem,
'package:flutter/src/material/mergeable_material.dart@MergeableMaterialItem@key': (m.Scope scope, MergeableMaterialItem target)=>target.key,
'package:flutter/src/material/mergeable_material.dart@MaterialSlice@#as': (m.Scope scope, target)=>()=>target as MaterialSlice,
'package:flutter/src/material/mergeable_material.dart@MaterialSlice@#is': (m.Scope scope, target)=>()=>target is MaterialSlice,
'package:flutter/src/material/mergeable_material.dart@MaterialSlice@child': (m.Scope scope, MaterialSlice target)=>target.child,
'package:flutter/src/material/mergeable_material.dart@MaterialSlice@color': (m.Scope scope, MaterialSlice target)=>target.color,
'package:flutter/src/material/mergeable_material.dart@MaterialSlice@': (m.Scope scope)=>({ child,  color,  key}){
return MaterialSlice(child:child, color:color, key:key);
},
'package:flutter/src/material/mergeable_material.dart@MaterialSlice@toString': (m.Scope scope, MaterialSlice target)=>target.toString,
'package:flutter/src/material/mergeable_material.dart@MaterialGap@#as': (m.Scope scope, target)=>()=>target as MaterialGap,
'package:flutter/src/material/mergeable_material.dart@MaterialGap@#is': (m.Scope scope, target)=>()=>target is MaterialGap,
'package:flutter/src/material/mergeable_material.dart@MaterialGap@size': (m.Scope scope, MaterialGap target)=>target.size,
'package:flutter/src/material/mergeable_material.dart@MaterialGap@': (m.Scope scope)=>({ key,  size}){
return MaterialGap(key:key, size:size ?? 16.0);
},
'package:flutter/src/material/mergeable_material.dart@MaterialGap@toString': (m.Scope scope, MaterialGap target)=>target.toString,
'package:flutter/src/material/mergeable_material.dart@MergeableMaterial@#as': (m.Scope scope, target)=>()=>target as MergeableMaterial,
'package:flutter/src/material/mergeable_material.dart@MergeableMaterial@#is': (m.Scope scope, target)=>()=>target is MergeableMaterial,
'package:flutter/src/material/mergeable_material.dart@MergeableMaterial@children': (m.Scope scope, MergeableMaterial target)=>target.children,
'package:flutter/src/material/mergeable_material.dart@MergeableMaterial@mainAxis': (m.Scope scope, MergeableMaterial target)=>target.mainAxis,
'package:flutter/src/material/mergeable_material.dart@MergeableMaterial@elevation': (m.Scope scope, MergeableMaterial target)=>target.elevation,
'package:flutter/src/material/mergeable_material.dart@MergeableMaterial@hasDividers': (m.Scope scope, MergeableMaterial target)=>target.hasDividers,
'package:flutter/src/material/mergeable_material.dart@MergeableMaterial@dividerColor': (m.Scope scope, MergeableMaterial target)=>target.dividerColor,
'package:flutter/src/material/mergeable_material.dart@MergeableMaterial@': (m.Scope scope)=>({ children,  dividerColor,  elevation,  hasDividers,  key,  mainAxis}){
return MergeableMaterial(children:children ?? const <MergeableMaterialItem>[], dividerColor:dividerColor, elevation:elevation ?? 2, hasDividers:hasDividers ?? false, key:key, mainAxis:mainAxis ?? Axis.vertical);
},
'package:flutter/src/material/mergeable_material.dart@MergeableMaterial@debugFillProperties': (m.Scope scope, MergeableMaterial target)=>target.debugFillProperties,
'package:flutter/src/material/mergeable_material.dart@MergeableMaterial@createState': (m.Scope scope, MergeableMaterial target)=>target.createState,

};
}