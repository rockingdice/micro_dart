import 'package:flutter/src/material/grid_tile_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/grid_tile_bar.dart@GridTileBar@#as': (m.Scope scope, target)=>()=>target as GridTileBar,
'package:flutter/src/material/grid_tile_bar.dart@GridTileBar@#is': (m.Scope scope, target)=>()=>target is GridTileBar,
'package:flutter/src/material/grid_tile_bar.dart@GridTileBar@backgroundColor': (m.Scope scope, GridTileBar target)=>target.backgroundColor,
'package:flutter/src/material/grid_tile_bar.dart@GridTileBar@leading': (m.Scope scope, GridTileBar target)=>target.leading,
'package:flutter/src/material/grid_tile_bar.dart@GridTileBar@title': (m.Scope scope, GridTileBar target)=>target.title,
'package:flutter/src/material/grid_tile_bar.dart@GridTileBar@subtitle': (m.Scope scope, GridTileBar target)=>target.subtitle,
'package:flutter/src/material/grid_tile_bar.dart@GridTileBar@trailing': (m.Scope scope, GridTileBar target)=>target.trailing,
'package:flutter/src/material/grid_tile_bar.dart@GridTileBar@': (m.Scope scope)=>({ backgroundColor,  key,  leading,  subtitle,  title,  trailing}){
return GridTileBar(backgroundColor:backgroundColor, key:key, leading:leading, subtitle:subtitle, title:title, trailing:trailing);
},
'package:flutter/src/material/grid_tile_bar.dart@GridTileBar@build': (m.Scope scope, GridTileBar target)=>target.build,

};
}