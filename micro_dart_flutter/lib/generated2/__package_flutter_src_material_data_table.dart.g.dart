import 'package:flutter/src/material/data_table.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/checkbox.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/data_table_theme.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/data_table.dart@DataColumn@#as': (m.Scope scope, target)=>()=>target as DataColumn,
'package:flutter/src/material/data_table.dart@DataColumn@#is': (m.Scope scope, target)=>()=>target is DataColumn,
'package:flutter/src/material/data_table.dart@DataColumn@label': (m.Scope scope, DataColumn target)=>target.label,
'package:flutter/src/material/data_table.dart@DataColumn@tooltip': (m.Scope scope, DataColumn target)=>target.tooltip,
'package:flutter/src/material/data_table.dart@DataColumn@numeric': (m.Scope scope, DataColumn target)=>target.numeric,
'package:flutter/src/material/data_table.dart@DataColumn@onSort': (m.Scope scope, DataColumn target)=>target.onSort,
'package:flutter/src/material/data_table.dart@DataColumn@mouseCursor': (m.Scope scope, DataColumn target)=>target.mouseCursor,
'package:flutter/src/material/data_table.dart@DataColumn@': (m.Scope scope)=>({ label,  mouseCursor,  numeric,  onSort,  tooltip}){
void onSortProxy( columnIndex,  ascending) {
 engine.callFunctionPointer(scope, onSort!,[columnIndex, ascending], {});
}

return DataColumn(label:label, mouseCursor:mouseCursor, numeric:numeric ?? false, onSort:onSort == null ? null :onSortProxy, tooltip:tooltip);
},
'package:flutter/src/material/data_table.dart@DataRow@#as': (m.Scope scope, target)=>()=>target as DataRow,
'package:flutter/src/material/data_table.dart@DataRow@#is': (m.Scope scope, target)=>()=>target is DataRow,
'package:flutter/src/material/data_table.dart@DataRow@key': (m.Scope scope, DataRow target)=>target.key,
'package:flutter/src/material/data_table.dart@DataRow@onSelectChanged': (m.Scope scope, DataRow target)=>target.onSelectChanged,
'package:flutter/src/material/data_table.dart@DataRow@onLongPress': (m.Scope scope, DataRow target)=>target.onLongPress,
'package:flutter/src/material/data_table.dart@DataRow@selected': (m.Scope scope, DataRow target)=>target.selected,
'package:flutter/src/material/data_table.dart@DataRow@cells': (m.Scope scope, DataRow target)=>target.cells,
'package:flutter/src/material/data_table.dart@DataRow@color': (m.Scope scope, DataRow target)=>target.color,
'package:flutter/src/material/data_table.dart@DataRow@mouseCursor': (m.Scope scope, DataRow target)=>target.mouseCursor,
'package:flutter/src/material/data_table.dart@DataRow@': (m.Scope scope)=>({ cells,  color,  key,  mouseCursor,  onLongPress,  onSelectChanged,  selected}){
void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onSelectChangedProxy( value) {
 engine.callFunctionPointer(scope, onSelectChanged!,[value], {});
}

return DataRow(cells:cells, color:color, key:key, mouseCursor:mouseCursor, onLongPress:onLongPress == null ? null :onLongPressProxy, onSelectChanged:onSelectChanged == null ? null :onSelectChangedProxy, selected:selected ?? false);
},
'package:flutter/src/material/data_table.dart@DataRow@byIndex': (m.Scope scope)=>({ cells,  color,  index,  mouseCursor,  onLongPress,  onSelectChanged,  selected}){
void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onSelectChangedProxy( value) {
 engine.callFunctionPointer(scope, onSelectChanged!,[value], {});
}

return DataRow.byIndex(cells:cells, color:color, index:index, mouseCursor:mouseCursor, onLongPress:onLongPress == null ? null :onLongPressProxy, onSelectChanged:onSelectChanged == null ? null :onSelectChangedProxy, selected:selected ?? false);
},
'package:flutter/src/material/data_table.dart@DataCell@#as': (m.Scope scope, target)=>()=>target as DataCell,
'package:flutter/src/material/data_table.dart@DataCell@#is': (m.Scope scope, target)=>()=>target is DataCell,
'package:flutter/src/material/data_table.dart@DataCell@empty': (m.Scope scope)=>DataCell.empty,
'package:flutter/src/material/data_table.dart@DataCell@child': (m.Scope scope, DataCell target)=>target.child,
'package:flutter/src/material/data_table.dart@DataCell@placeholder': (m.Scope scope, DataCell target)=>target.placeholder,
'package:flutter/src/material/data_table.dart@DataCell@showEditIcon': (m.Scope scope, DataCell target)=>target.showEditIcon,
'package:flutter/src/material/data_table.dart@DataCell@onTap': (m.Scope scope, DataCell target)=>target.onTap,
'package:flutter/src/material/data_table.dart@DataCell@onDoubleTap': (m.Scope scope, DataCell target)=>target.onDoubleTap,
'package:flutter/src/material/data_table.dart@DataCell@onLongPress': (m.Scope scope, DataCell target)=>target.onLongPress,
'package:flutter/src/material/data_table.dart@DataCell@onTapDown': (m.Scope scope, DataCell target)=>target.onTapDown,
'package:flutter/src/material/data_table.dart@DataCell@onTapCancel': (m.Scope scope, DataCell target)=>target.onTapCancel,
'package:flutter/src/material/data_table.dart@DataCell@': (m.Scope scope)=>( child, { onDoubleTap,  onLongPress,  onTap,  onTapCancel,  onTapDown,  placeholder,  showEditIcon}){
void onDoubleTapProxy() {
 engine.callFunctionPointer(scope, onDoubleTap!,[], {});
}

void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

void onTapCancelProxy() {
 engine.callFunctionPointer(scope, onTapCancel!,[], {});
}

void onTapDownProxy( details) {
 engine.callFunctionPointer(scope, onTapDown!,[details], {});
}

return DataCell(child, onDoubleTap:onDoubleTap == null ? null :onDoubleTapProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onTap:onTap == null ? null :onTapProxy, onTapCancel:onTapCancel == null ? null :onTapCancelProxy, onTapDown:onTapDown == null ? null :onTapDownProxy, placeholder:placeholder ?? false, showEditIcon:showEditIcon ?? false);
},
'package:flutter/src/material/data_table.dart@DataTable@#as': (m.Scope scope, target)=>()=>target as DataTable,
'package:flutter/src/material/data_table.dart@DataTable@#is': (m.Scope scope, target)=>()=>target is DataTable,
'package:flutter/src/material/data_table.dart@DataTable@columns': (m.Scope scope, DataTable target)=>target.columns,
'package:flutter/src/material/data_table.dart@DataTable@sortColumnIndex': (m.Scope scope, DataTable target)=>target.sortColumnIndex,
'package:flutter/src/material/data_table.dart@DataTable@sortAscending': (m.Scope scope, DataTable target)=>target.sortAscending,
'package:flutter/src/material/data_table.dart@DataTable@onSelectAll': (m.Scope scope, DataTable target)=>target.onSelectAll,
'package:flutter/src/material/data_table.dart@DataTable@decoration': (m.Scope scope, DataTable target)=>target.decoration,
'package:flutter/src/material/data_table.dart@DataTable@dataRowColor': (m.Scope scope, DataTable target)=>target.dataRowColor,
'package:flutter/src/material/data_table.dart@DataTable@dataRowMinHeight': (m.Scope scope, DataTable target)=>target.dataRowMinHeight,
'package:flutter/src/material/data_table.dart@DataTable@dataRowMaxHeight': (m.Scope scope, DataTable target)=>target.dataRowMaxHeight,
'package:flutter/src/material/data_table.dart@DataTable@dataTextStyle': (m.Scope scope, DataTable target)=>target.dataTextStyle,
'package:flutter/src/material/data_table.dart@DataTable@headingRowColor': (m.Scope scope, DataTable target)=>target.headingRowColor,
'package:flutter/src/material/data_table.dart@DataTable@headingRowHeight': (m.Scope scope, DataTable target)=>target.headingRowHeight,
'package:flutter/src/material/data_table.dart@DataTable@headingTextStyle': (m.Scope scope, DataTable target)=>target.headingTextStyle,
'package:flutter/src/material/data_table.dart@DataTable@horizontalMargin': (m.Scope scope, DataTable target)=>target.horizontalMargin,
'package:flutter/src/material/data_table.dart@DataTable@columnSpacing': (m.Scope scope, DataTable target)=>target.columnSpacing,
'package:flutter/src/material/data_table.dart@DataTable@showCheckboxColumn': (m.Scope scope, DataTable target)=>target.showCheckboxColumn,
'package:flutter/src/material/data_table.dart@DataTable@rows': (m.Scope scope, DataTable target)=>target.rows,
'package:flutter/src/material/data_table.dart@DataTable@dividerThickness': (m.Scope scope, DataTable target)=>target.dividerThickness,
'package:flutter/src/material/data_table.dart@DataTable@showBottomBorder': (m.Scope scope, DataTable target)=>target.showBottomBorder,
'package:flutter/src/material/data_table.dart@DataTable@checkboxHorizontalMargin': (m.Scope scope, DataTable target)=>target.checkboxHorizontalMargin,
'package:flutter/src/material/data_table.dart@DataTable@border': (m.Scope scope, DataTable target)=>target.border,
'package:flutter/src/material/data_table.dart@DataTable@clipBehavior': (m.Scope scope, DataTable target)=>target.clipBehavior,
'package:flutter/src/material/data_table.dart@DataTable@': (m.Scope scope)=>({ border,  checkboxHorizontalMargin,  clipBehavior,  columnSpacing,  columns,  dataRowColor,  dataRowHeight,  dataRowMaxHeight,  dataRowMinHeight,  dataTextStyle,  decoration,  dividerThickness,  headingRowColor,  headingRowHeight,  headingTextStyle,  horizontalMargin,  key,  onSelectAll,  rows,  showBottomBorder,  showCheckboxColumn,  sortAscending,  sortColumnIndex}){
void onSelectAllProxy( value) {
 engine.callFunctionPointer(scope, onSelectAll!,[value], {});
}

return DataTable(border:border, checkboxHorizontalMargin:checkboxHorizontalMargin, clipBehavior:clipBehavior ?? Clip.none, columnSpacing:columnSpacing, columns:columns, dataRowColor:dataRowColor, dataRowHeight:dataRowHeight, dataRowMaxHeight:dataRowMaxHeight, dataRowMinHeight:dataRowMinHeight, dataTextStyle:dataTextStyle, decoration:decoration, dividerThickness:dividerThickness, headingRowColor:headingRowColor, headingRowHeight:headingRowHeight, headingTextStyle:headingTextStyle, horizontalMargin:horizontalMargin, key:key, onSelectAll:onSelectAll == null ? null :onSelectAllProxy, rows:rows, showBottomBorder:showBottomBorder ?? false, showCheckboxColumn:showCheckboxColumn ?? true, sortAscending:sortAscending ?? true, sortColumnIndex:sortColumnIndex);
},
'package:flutter/src/material/data_table.dart@DataTable@build': (m.Scope scope, DataTable target)=>target.build,
'package:flutter/src/material/data_table.dart@TableRowInkWell@#as': (m.Scope scope, target)=>()=>target as TableRowInkWell,
'package:flutter/src/material/data_table.dart@TableRowInkWell@#is': (m.Scope scope, target)=>()=>target is TableRowInkWell,
'package:flutter/src/material/data_table.dart@TableRowInkWell@': (m.Scope scope)=>({ child,  key,  mouseCursor,  onDoubleTap,  onHighlightChanged,  onLongPress,  onSecondaryTap,  onSecondaryTapDown,  onTap,  overlayColor}){
void onDoubleTapProxy() {
 engine.callFunctionPointer(scope, onDoubleTap!,[], {});
}

void onHighlightChangedProxy( value) {
 engine.callFunctionPointer(scope, onHighlightChanged!,[value], {});
}

void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onSecondaryTapProxy() {
 engine.callFunctionPointer(scope, onSecondaryTap!,[], {});
}

void onSecondaryTapDownProxy( details) {
 engine.callFunctionPointer(scope, onSecondaryTapDown!,[details], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return TableRowInkWell(child:child, key:key, mouseCursor:mouseCursor, onDoubleTap:onDoubleTap == null ? null :onDoubleTapProxy, onHighlightChanged:onHighlightChanged == null ? null :onHighlightChangedProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onSecondaryTap:onSecondaryTap == null ? null :onSecondaryTapProxy, onSecondaryTapDown:onSecondaryTapDown == null ? null :onSecondaryTapDownProxy, onTap:onTap == null ? null :onTapProxy, overlayColor:overlayColor);
},
'package:flutter/src/material/data_table.dart@TableRowInkWell@getRectCallback': (m.Scope scope, TableRowInkWell target)=>target.getRectCallback,
'package:flutter/src/material/data_table.dart@TableRowInkWell@debugCheckContext': (m.Scope scope, TableRowInkWell target)=>target.debugCheckContext,

};
}