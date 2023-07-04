import 'package:flutter_staggered_grid_view/src/widgets/uniform_track.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/widgets/uniform_track.dart@UniformTrack@#as': (m.Scope scope, target)=>()=>target as UniformTrack,
'package:flutter_staggered_grid_view/src/widgets/uniform_track.dart@UniformTrack@#is': (m.Scope scope, target)=>()=>target is UniformTrack,
'package:flutter_staggered_grid_view/src/widgets/uniform_track.dart@UniformTrack@spacing': (m.Scope scope, UniformTrack target)=>target.spacing,
'package:flutter_staggered_grid_view/src/widgets/uniform_track.dart@UniformTrack@division': (m.Scope scope, UniformTrack target)=>target.division,
'package:flutter_staggered_grid_view/src/widgets/uniform_track.dart@UniformTrack@direction': (m.Scope scope, UniformTrack target)=>target.direction,
'package:flutter_staggered_grid_view/src/widgets/uniform_track.dart@UniformTrack@': (m.Scope scope)=>({ children,  direction,  division,  key,  spacing}){
return UniformTrack(children:children, direction:direction, division:division, key:key, spacing:spacing ?? 0);
},
'package:flutter_staggered_grid_view/src/widgets/uniform_track.dart@UniformTrack@createRenderObject': (m.Scope scope, UniformTrack target)=>target.createRenderObject,
'package:flutter_staggered_grid_view/src/widgets/uniform_track.dart@UniformTrack@updateRenderObject': (m.Scope scope, UniformTrack target)=>target.updateRenderObject,

};
}