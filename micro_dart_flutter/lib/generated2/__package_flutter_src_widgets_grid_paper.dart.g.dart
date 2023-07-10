import 'package:flutter/src/widgets/grid_paper.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/grid_paper.dart@GridPaper@#as': (m.Scope scope, target)=>()=>target as GridPaper,
'package:flutter/src/widgets/grid_paper.dart@GridPaper@#is': (m.Scope scope, target)=>()=>target is GridPaper,
'package:flutter/src/widgets/grid_paper.dart@GridPaper@color': (m.Scope scope, GridPaper target)=>target.color,
'package:flutter/src/widgets/grid_paper.dart@GridPaper@interval': (m.Scope scope, GridPaper target)=>target.interval,
'package:flutter/src/widgets/grid_paper.dart@GridPaper@divisions': (m.Scope scope, GridPaper target)=>target.divisions,
'package:flutter/src/widgets/grid_paper.dart@GridPaper@subdivisions': (m.Scope scope, GridPaper target)=>target.subdivisions,
'package:flutter/src/widgets/grid_paper.dart@GridPaper@child': (m.Scope scope, GridPaper target)=>target.child,
'package:flutter/src/widgets/grid_paper.dart@GridPaper@': (m.Scope scope)=>({ child,  color,  divisions,  interval,  key,  subdivisions}){
return GridPaper(child:child, color:color ?? const Color(0x7FC3E8F3), divisions:divisions ?? 2, interval:interval ?? 100.0, key:key, subdivisions:subdivisions ?? 5);
},
'package:flutter/src/widgets/grid_paper.dart@GridPaper@build': (m.Scope scope, GridPaper target)=>target.build,

};
}