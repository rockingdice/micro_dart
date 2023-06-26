import 'package:flutter/src/material/drawer_header.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/drawer_header.dart@DrawerHeader@#as': (m.Scope scope, target)=>()=>target as DrawerHeader,
'package:flutter/src/material/drawer_header.dart@DrawerHeader@#is': (m.Scope scope, target)=>()=>target is DrawerHeader,
'package:flutter/src/material/drawer_header.dart@DrawerHeader@decoration': (m.Scope scope, DrawerHeader target)=>target.decoration,
'package:flutter/src/material/drawer_header.dart@DrawerHeader@padding': (m.Scope scope, DrawerHeader target)=>target.padding,
'package:flutter/src/material/drawer_header.dart@DrawerHeader@margin': (m.Scope scope, DrawerHeader target)=>target.margin,
'package:flutter/src/material/drawer_header.dart@DrawerHeader@duration': (m.Scope scope, DrawerHeader target)=>target.duration,
'package:flutter/src/material/drawer_header.dart@DrawerHeader@curve': (m.Scope scope, DrawerHeader target)=>target.curve,
'package:flutter/src/material/drawer_header.dart@DrawerHeader@child': (m.Scope scope, DrawerHeader target)=>target.child,
'package:flutter/src/material/drawer_header.dart@DrawerHeader@': (m.Scope scope)=>DrawerHeader,
'package:flutter/src/material/drawer_header.dart@DrawerHeader@build': (m.Scope scope, DrawerHeader target)=>target.build,

};
}