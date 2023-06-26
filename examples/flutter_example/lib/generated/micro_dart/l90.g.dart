import 'package:flutter/src/material/expand_icon.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/expand_icon.dart@ExpandIcon@#as': (m.Scope scope, target)=>()=>target as ExpandIcon,
'package:flutter/src/material/expand_icon.dart@ExpandIcon@#is': (m.Scope scope, target)=>()=>target is ExpandIcon,
'package:flutter/src/material/expand_icon.dart@ExpandIcon@isExpanded': (m.Scope scope, ExpandIcon target)=>target.isExpanded,
'package:flutter/src/material/expand_icon.dart@ExpandIcon@size': (m.Scope scope, ExpandIcon target)=>target.size,
'package:flutter/src/material/expand_icon.dart@ExpandIcon@onPressed': (m.Scope scope, ExpandIcon target)=>target.onPressed,
'package:flutter/src/material/expand_icon.dart@ExpandIcon@padding': (m.Scope scope, ExpandIcon target)=>target.padding,
'package:flutter/src/material/expand_icon.dart@ExpandIcon@color': (m.Scope scope, ExpandIcon target)=>target.color,
'package:flutter/src/material/expand_icon.dart@ExpandIcon@disabledColor': (m.Scope scope, ExpandIcon target)=>target.disabledColor,
'package:flutter/src/material/expand_icon.dart@ExpandIcon@expandedColor': (m.Scope scope, ExpandIcon target)=>target.expandedColor,
'package:flutter/src/material/expand_icon.dart@ExpandIcon@': (m.Scope scope)=>({ color,  disabledColor,  expandedColor,  isExpanded,  key,  onPressed,  padding,  size}){
void onPressedProxy( value) {
 engine.callFunctionPointer(scope, onPressed!,[value], {});
}

return ExpandIcon(color:color, disabledColor:disabledColor, expandedColor:expandedColor, isExpanded:isExpanded ?? false, key:key, onPressed:onPressedProxy, padding:padding ?? const EdgeInsets.all(8.0), size:size ?? 24.0);
},
'package:flutter/src/material/expand_icon.dart@ExpandIcon@createState': (m.Scope scope, ExpandIcon target)=>target.createState,

};
}