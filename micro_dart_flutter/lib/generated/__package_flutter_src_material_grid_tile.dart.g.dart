import 'package:flutter/src/material/grid_tile.dart';
import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/grid_tile.dart@GridTile@#as': (m.Scope scope, target)=>()=>target as GridTile,
'package:flutter/src/material/grid_tile.dart@GridTile@#is': (m.Scope scope, target)=>()=>target is GridTile,
'package:flutter/src/material/grid_tile.dart@GridTile@header': (m.Scope scope, GridTile target)=>target.header,
'package:flutter/src/material/grid_tile.dart@GridTile@footer': (m.Scope scope, GridTile target)=>target.footer,
'package:flutter/src/material/grid_tile.dart@GridTile@child': (m.Scope scope, GridTile target)=>target.child,
'package:flutter/src/material/grid_tile.dart@GridTile@': (m.Scope scope)=>({ child,  footer,  header,  key}){
return GridTile(child:child, footer:footer, header:header, key:key);
},
'package:flutter/src/material/grid_tile.dart@GridTile@build': (m.Scope scope, GridTile target)=>target.build,

};
}