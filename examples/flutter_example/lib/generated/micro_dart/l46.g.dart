import 'package:flutter/src/material/bottom_sheet_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@#as': (m.Scope scope, target)=>()=>target as BottomSheetThemeData,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@#is': (m.Scope scope, target)=>()=>target is BottomSheetThemeData,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@backgroundColor': (m.Scope scope, BottomSheetThemeData target)=>target.backgroundColor,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@surfaceTintColor': (m.Scope scope, BottomSheetThemeData target)=>target.surfaceTintColor,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@elevation': (m.Scope scope, BottomSheetThemeData target)=>target.elevation,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@modalBackgroundColor': (m.Scope scope, BottomSheetThemeData target)=>target.modalBackgroundColor,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@modalBarrierColor': (m.Scope scope, BottomSheetThemeData target)=>target.modalBarrierColor,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@shadowColor': (m.Scope scope, BottomSheetThemeData target)=>target.shadowColor,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@modalElevation': (m.Scope scope, BottomSheetThemeData target)=>target.modalElevation,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@shape': (m.Scope scope, BottomSheetThemeData target)=>target.shape,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@showDragHandle': (m.Scope scope, BottomSheetThemeData target)=>target.showDragHandle,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@dragHandleColor': (m.Scope scope, BottomSheetThemeData target)=>target.dragHandleColor,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@dragHandleSize': (m.Scope scope, BottomSheetThemeData target)=>target.dragHandleSize,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@clipBehavior': (m.Scope scope, BottomSheetThemeData target)=>target.clipBehavior,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@constraints': (m.Scope scope, BottomSheetThemeData target)=>target.constraints,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@hashCode': (m.Scope scope, BottomSheetThemeData target)=>target.hashCode,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@': (m.Scope scope)=>({ backgroundColor,  clipBehavior,  constraints,  dragHandleColor,  dragHandleSize,  elevation,  modalBackgroundColor,  modalBarrierColor,  modalElevation,  shadowColor,  shape,  showDragHandle,  surfaceTintColor}){
return BottomSheetThemeData(backgroundColor:backgroundColor, clipBehavior:clipBehavior, constraints:constraints, dragHandleColor:dragHandleColor, dragHandleSize:dragHandleSize, elevation:elevation, modalBackgroundColor:modalBackgroundColor, modalBarrierColor:modalBarrierColor, modalElevation:modalElevation, shadowColor:shadowColor, shape:shape, showDragHandle:showDragHandle, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@copyWith': (m.Scope scope, BottomSheetThemeData target)=>target.copyWith,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@lerp': (m.Scope scope)=>BottomSheetThemeData.lerp,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@==': (m.Scope scope, BottomSheetThemeData target)=>(other)=> target == other,
'package:flutter/src/material/bottom_sheet_theme.dart@BottomSheetThemeData@debugFillProperties': (m.Scope scope, BottomSheetThemeData target)=>target.debugFillProperties,

};
}