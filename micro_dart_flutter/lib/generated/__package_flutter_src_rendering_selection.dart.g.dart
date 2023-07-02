import 'package:flutter/src/rendering/selection.dart';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/selection.dart@SelectionHandler@#as': (m.Scope scope, target)=>()=>target as SelectionHandler,
'package:flutter/src/rendering/selection.dart@SelectionHandler@#is': (m.Scope scope, target)=>()=>target is SelectionHandler,
'package:flutter/src/rendering/selection.dart@SelectionHandler@pushHandleLayers': (m.Scope scope, SelectionHandler target)=>target.pushHandleLayers,
'package:flutter/src/rendering/selection.dart@SelectionHandler@getSelectedContent': (m.Scope scope, SelectionHandler target)=>target.getSelectedContent,
'package:flutter/src/rendering/selection.dart@SelectionHandler@dispatchSelectionEvent': (m.Scope scope, SelectionHandler target)=>target.dispatchSelectionEvent,
'package:flutter/src/rendering/selection.dart@SelectedContent@#as': (m.Scope scope, target)=>()=>target as SelectedContent,
'package:flutter/src/rendering/selection.dart@SelectedContent@#is': (m.Scope scope, target)=>()=>target is SelectedContent,
'package:flutter/src/rendering/selection.dart@SelectedContent@plainText': (m.Scope scope, SelectedContent target)=>target.plainText,
'package:flutter/src/rendering/selection.dart@SelectedContent@': (m.Scope scope)=>({ plainText}){
return SelectedContent(plainText:plainText);
},
'package:flutter/src/rendering/selection.dart@SelectionUtils@#as': (m.Scope scope, target)=>()=>target as SelectionUtils,
'package:flutter/src/rendering/selection.dart@SelectionUtils@#is': (m.Scope scope, target)=>()=>target is SelectionUtils,
'package:flutter/src/rendering/selection.dart@SelectionUtils@getResultBasedOnRect': (m.Scope scope)=>SelectionUtils.getResultBasedOnRect,
'package:flutter/src/rendering/selection.dart@SelectionUtils@adjustDragOffset': (m.Scope scope)=>SelectionUtils.adjustDragOffset,
'package:flutter/src/rendering/selection.dart@SelectionEvent@#as': (m.Scope scope, target)=>()=>target as SelectionEvent,
'package:flutter/src/rendering/selection.dart@SelectionEvent@#is': (m.Scope scope, target)=>()=>target is SelectionEvent,
'package:flutter/src/rendering/selection.dart@SelectionEvent@type': (m.Scope scope, SelectionEvent target)=>target.type,
'package:flutter/src/rendering/selection.dart@SelectAllSelectionEvent@#as': (m.Scope scope, target)=>()=>target as SelectAllSelectionEvent,
'package:flutter/src/rendering/selection.dart@SelectAllSelectionEvent@#is': (m.Scope scope, target)=>()=>target is SelectAllSelectionEvent,
'package:flutter/src/rendering/selection.dart@SelectAllSelectionEvent@': (m.Scope scope)=>(){
return SelectAllSelectionEvent();
},
'package:flutter/src/rendering/selection.dart@ClearSelectionEvent@#as': (m.Scope scope, target)=>()=>target as ClearSelectionEvent,
'package:flutter/src/rendering/selection.dart@ClearSelectionEvent@#is': (m.Scope scope, target)=>()=>target is ClearSelectionEvent,
'package:flutter/src/rendering/selection.dart@ClearSelectionEvent@': (m.Scope scope)=>(){
return ClearSelectionEvent();
},
'package:flutter/src/rendering/selection.dart@SelectWordSelectionEvent@#as': (m.Scope scope, target)=>()=>target as SelectWordSelectionEvent,
'package:flutter/src/rendering/selection.dart@SelectWordSelectionEvent@#is': (m.Scope scope, target)=>()=>target is SelectWordSelectionEvent,
'package:flutter/src/rendering/selection.dart@SelectWordSelectionEvent@globalPosition': (m.Scope scope, SelectWordSelectionEvent target)=>target.globalPosition,
'package:flutter/src/rendering/selection.dart@SelectWordSelectionEvent@': (m.Scope scope)=>({ globalPosition}){
return SelectWordSelectionEvent(globalPosition:globalPosition);
},
'package:flutter/src/rendering/selection.dart@SelectionEdgeUpdateEvent@#as': (m.Scope scope, target)=>()=>target as SelectionEdgeUpdateEvent,
'package:flutter/src/rendering/selection.dart@SelectionEdgeUpdateEvent@#is': (m.Scope scope, target)=>()=>target is SelectionEdgeUpdateEvent,
'package:flutter/src/rendering/selection.dart@SelectionEdgeUpdateEvent@globalPosition': (m.Scope scope, SelectionEdgeUpdateEvent target)=>target.globalPosition,
'package:flutter/src/rendering/selection.dart@SelectionEdgeUpdateEvent@forStart': (m.Scope scope)=>SelectionEdgeUpdateEvent.forStart,
'package:flutter/src/rendering/selection.dart@SelectionEdgeUpdateEvent@forEnd': (m.Scope scope)=>SelectionEdgeUpdateEvent.forEnd,
'package:flutter/src/rendering/selection.dart@GranularlyExtendSelectionEvent@#as': (m.Scope scope, target)=>()=>target as GranularlyExtendSelectionEvent,
'package:flutter/src/rendering/selection.dart@GranularlyExtendSelectionEvent@#is': (m.Scope scope, target)=>()=>target is GranularlyExtendSelectionEvent,
'package:flutter/src/rendering/selection.dart@GranularlyExtendSelectionEvent@forward': (m.Scope scope, GranularlyExtendSelectionEvent target)=>target.forward,
'package:flutter/src/rendering/selection.dart@GranularlyExtendSelectionEvent@isEnd': (m.Scope scope, GranularlyExtendSelectionEvent target)=>target.isEnd,
'package:flutter/src/rendering/selection.dart@GranularlyExtendSelectionEvent@granularity': (m.Scope scope, GranularlyExtendSelectionEvent target)=>target.granularity,
'package:flutter/src/rendering/selection.dart@GranularlyExtendSelectionEvent@': (m.Scope scope)=>({ forward,  granularity,  isEnd}){
return GranularlyExtendSelectionEvent(forward:forward, granularity:granularity, isEnd:isEnd);
},
'package:flutter/src/rendering/selection.dart@DirectionallyExtendSelectionEvent@#as': (m.Scope scope, target)=>()=>target as DirectionallyExtendSelectionEvent,
'package:flutter/src/rendering/selection.dart@DirectionallyExtendSelectionEvent@#is': (m.Scope scope, target)=>()=>target is DirectionallyExtendSelectionEvent,
'package:flutter/src/rendering/selection.dart@DirectionallyExtendSelectionEvent@dx': (m.Scope scope, DirectionallyExtendSelectionEvent target)=>target.dx,
'package:flutter/src/rendering/selection.dart@DirectionallyExtendSelectionEvent@isEnd': (m.Scope scope, DirectionallyExtendSelectionEvent target)=>target.isEnd,
'package:flutter/src/rendering/selection.dart@DirectionallyExtendSelectionEvent@direction': (m.Scope scope, DirectionallyExtendSelectionEvent target)=>target.direction,
'package:flutter/src/rendering/selection.dart@DirectionallyExtendSelectionEvent@': (m.Scope scope)=>({ direction,  dx,  isEnd}){
return DirectionallyExtendSelectionEvent(direction:direction, dx:dx, isEnd:isEnd);
},
'package:flutter/src/rendering/selection.dart@DirectionallyExtendSelectionEvent@copyWith': (m.Scope scope, DirectionallyExtendSelectionEvent target)=>target.copyWith,
'package:flutter/src/rendering/selection.dart@SelectionRegistrar@#as': (m.Scope scope, target)=>()=>target as SelectionRegistrar,
'package:flutter/src/rendering/selection.dart@SelectionRegistrar@#is': (m.Scope scope, target)=>()=>target is SelectionRegistrar,
'package:flutter/src/rendering/selection.dart@SelectionRegistrar@add': (m.Scope scope, SelectionRegistrar target)=>target.add,
'package:flutter/src/rendering/selection.dart@SelectionRegistrar@remove': (m.Scope scope, SelectionRegistrar target)=>target.remove,
'package:flutter/src/rendering/selection.dart@SelectionGeometry@#as': (m.Scope scope, target)=>()=>target as SelectionGeometry,
'package:flutter/src/rendering/selection.dart@SelectionGeometry@#is': (m.Scope scope, target)=>()=>target is SelectionGeometry,
'package:flutter/src/rendering/selection.dart@SelectionGeometry@startSelectionPoint': (m.Scope scope, SelectionGeometry target)=>target.startSelectionPoint,
'package:flutter/src/rendering/selection.dart@SelectionGeometry@endSelectionPoint': (m.Scope scope, SelectionGeometry target)=>target.endSelectionPoint,
'package:flutter/src/rendering/selection.dart@SelectionGeometry@status': (m.Scope scope, SelectionGeometry target)=>target.status,
'package:flutter/src/rendering/selection.dart@SelectionGeometry@hasContent': (m.Scope scope, SelectionGeometry target)=>target.hasContent,
'package:flutter/src/rendering/selection.dart@SelectionGeometry@hasSelection': (m.Scope scope, SelectionGeometry target)=>target.hasSelection,
'package:flutter/src/rendering/selection.dart@SelectionGeometry@hashCode': (m.Scope scope, SelectionGeometry target)=>target.hashCode,
'package:flutter/src/rendering/selection.dart@SelectionGeometry@': (m.Scope scope)=>({ endSelectionPoint,  hasContent,  startSelectionPoint,  status}){
return SelectionGeometry(endSelectionPoint:endSelectionPoint, hasContent:hasContent, startSelectionPoint:startSelectionPoint, status:status);
},
'package:flutter/src/rendering/selection.dart@SelectionGeometry@copyWith': (m.Scope scope, SelectionGeometry target)=>target.copyWith,
'package:flutter/src/rendering/selection.dart@SelectionGeometry@==': (m.Scope scope, SelectionGeometry target)=>(other)=> target == other,
'package:flutter/src/rendering/selection.dart@SelectionPoint@#as': (m.Scope scope, target)=>()=>target as SelectionPoint,
'package:flutter/src/rendering/selection.dart@SelectionPoint@#is': (m.Scope scope, target)=>()=>target is SelectionPoint,
'package:flutter/src/rendering/selection.dart@SelectionPoint@localPosition': (m.Scope scope, SelectionPoint target)=>target.localPosition,
'package:flutter/src/rendering/selection.dart@SelectionPoint@lineHeight': (m.Scope scope, SelectionPoint target)=>target.lineHeight,
'package:flutter/src/rendering/selection.dart@SelectionPoint@handleType': (m.Scope scope, SelectionPoint target)=>target.handleType,
'package:flutter/src/rendering/selection.dart@SelectionPoint@hashCode': (m.Scope scope, SelectionPoint target)=>target.hashCode,
'package:flutter/src/rendering/selection.dart@SelectionPoint@': (m.Scope scope)=>({ handleType,  lineHeight,  localPosition}){
return SelectionPoint(handleType:handleType, lineHeight:lineHeight, localPosition:localPosition);
},
'package:flutter/src/rendering/selection.dart@SelectionPoint@==': (m.Scope scope, SelectionPoint target)=>(other)=> target == other,

};
}