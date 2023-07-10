import 'package:flutter/src/material/divider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/divider_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/divider.dart@Divider@#as': (m.Scope scope, target)=>()=>target as Divider,
'package:flutter/src/material/divider.dart@Divider@#is': (m.Scope scope, target)=>()=>target is Divider,
'package:flutter/src/material/divider.dart@Divider@height': (m.Scope scope, Divider target)=>target.height,
'package:flutter/src/material/divider.dart@Divider@thickness': (m.Scope scope, Divider target)=>target.thickness,
'package:flutter/src/material/divider.dart@Divider@indent': (m.Scope scope, Divider target)=>target.indent,
'package:flutter/src/material/divider.dart@Divider@endIndent': (m.Scope scope, Divider target)=>target.endIndent,
'package:flutter/src/material/divider.dart@Divider@color': (m.Scope scope, Divider target)=>target.color,
'package:flutter/src/material/divider.dart@Divider@': (m.Scope scope)=>({ color,  endIndent,  height,  indent,  key,  thickness}){
return Divider(color:color, endIndent:endIndent, height:height, indent:indent, key:key, thickness:thickness);
},
'package:flutter/src/material/divider.dart@Divider@createBorderSide': (m.Scope scope)=>Divider.createBorderSide,
'package:flutter/src/material/divider.dart@Divider@build': (m.Scope scope, Divider target)=>target.build,
'package:flutter/src/material/divider.dart@VerticalDivider@#as': (m.Scope scope, target)=>()=>target as VerticalDivider,
'package:flutter/src/material/divider.dart@VerticalDivider@#is': (m.Scope scope, target)=>()=>target is VerticalDivider,
'package:flutter/src/material/divider.dart@VerticalDivider@width': (m.Scope scope, VerticalDivider target)=>target.width,
'package:flutter/src/material/divider.dart@VerticalDivider@thickness': (m.Scope scope, VerticalDivider target)=>target.thickness,
'package:flutter/src/material/divider.dart@VerticalDivider@indent': (m.Scope scope, VerticalDivider target)=>target.indent,
'package:flutter/src/material/divider.dart@VerticalDivider@endIndent': (m.Scope scope, VerticalDivider target)=>target.endIndent,
'package:flutter/src/material/divider.dart@VerticalDivider@color': (m.Scope scope, VerticalDivider target)=>target.color,
'package:flutter/src/material/divider.dart@VerticalDivider@': (m.Scope scope)=>({ color,  endIndent,  indent,  key,  thickness,  width}){
return VerticalDivider(color:color, endIndent:endIndent, indent:indent, key:key, thickness:thickness, width:width);
},
'package:flutter/src/material/divider.dart@VerticalDivider@build': (m.Scope scope, VerticalDivider target)=>target.build,

};
}