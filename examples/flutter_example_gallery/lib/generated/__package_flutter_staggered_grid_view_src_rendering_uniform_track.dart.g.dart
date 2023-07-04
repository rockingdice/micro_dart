import 'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@UniformTrackParentData@#as': (m.Scope scope, target)=>()=>target as UniformTrackParentData,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@UniformTrackParentData@#is': (m.Scope scope, target)=>()=>target is UniformTrackParentData,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@UniformTrackParentData@': (m.Scope scope)=>(){
return UniformTrackParentData();
},
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@#as': (m.Scope scope, target)=>()=>target as RenderUniformTrack,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@#is': (m.Scope scope, target)=>()=>target is RenderUniformTrack,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@spacing': (m.Scope scope, RenderUniformTrack target)=>target.spacing,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@spacing:set': (m.Scope scope, RenderUniformTrack target)=>(other)=>target.spacing=other,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@direction': (m.Scope scope, RenderUniformTrack target)=>target.direction,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@direction:set': (m.Scope scope, RenderUniformTrack target)=>(other)=>target.direction=other,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@division': (m.Scope scope, RenderUniformTrack target)=>target.division,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@division:set': (m.Scope scope, RenderUniformTrack target)=>(other)=>target.division=other,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@': (m.Scope scope)=>({ children,  direction,  division,  spacing}){
return RenderUniformTrack(children:children, direction:direction, division:division, spacing:spacing ?? 0);
},
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@setupParentData': (m.Scope scope, RenderUniformTrack target)=>target.setupParentData,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@hitTestChildren': (m.Scope scope, RenderUniformTrack target)=>target.hitTestChildren,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@computeDryLayout': (m.Scope scope, RenderUniformTrack target)=>target.computeDryLayout,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@performLayout': (m.Scope scope, RenderUniformTrack target)=>target.performLayout,
'package:flutter_staggered_grid_view/src/rendering/uniform_track.dart@RenderUniformTrack@paint': (m.Scope scope, RenderUniformTrack target)=>target.paint,

};
}