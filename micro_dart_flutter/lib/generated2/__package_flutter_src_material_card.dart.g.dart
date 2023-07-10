import 'package:flutter/src/material/card.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/card_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/card.dart@Card@#as': (m.Scope scope, target)=>()=>target as Card,
'package:flutter/src/material/card.dart@Card@#is': (m.Scope scope, target)=>()=>target is Card,
'package:flutter/src/material/card.dart@Card@color': (m.Scope scope, Card target)=>target.color,
'package:flutter/src/material/card.dart@Card@shadowColor': (m.Scope scope, Card target)=>target.shadowColor,
'package:flutter/src/material/card.dart@Card@surfaceTintColor': (m.Scope scope, Card target)=>target.surfaceTintColor,
'package:flutter/src/material/card.dart@Card@elevation': (m.Scope scope, Card target)=>target.elevation,
'package:flutter/src/material/card.dart@Card@shape': (m.Scope scope, Card target)=>target.shape,
'package:flutter/src/material/card.dart@Card@borderOnForeground': (m.Scope scope, Card target)=>target.borderOnForeground,
'package:flutter/src/material/card.dart@Card@clipBehavior': (m.Scope scope, Card target)=>target.clipBehavior,
'package:flutter/src/material/card.dart@Card@margin': (m.Scope scope, Card target)=>target.margin,
'package:flutter/src/material/card.dart@Card@semanticContainer': (m.Scope scope, Card target)=>target.semanticContainer,
'package:flutter/src/material/card.dart@Card@child': (m.Scope scope, Card target)=>target.child,
'package:flutter/src/material/card.dart@Card@': (m.Scope scope)=>({ borderOnForeground,  child,  clipBehavior,  color,  elevation,  key,  margin,  semanticContainer,  shadowColor,  shape,  surfaceTintColor}){
return Card(borderOnForeground:borderOnForeground ?? true, child:child, clipBehavior:clipBehavior, color:color, elevation:elevation, key:key, margin:margin, semanticContainer:semanticContainer ?? true, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/card.dart@Card@build': (m.Scope scope, Card target)=>target.build,

};
}