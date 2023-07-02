import 'package:flutter/src/rendering/table.dart';
import 'dart:collection';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/table_border.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/table.dart@TableCellParentData@#as': (m.Scope scope, target)=>()=>target as TableCellParentData,
'package:flutter/src/rendering/table.dart@TableCellParentData@#is': (m.Scope scope, target)=>()=>target is TableCellParentData,
'package:flutter/src/rendering/table.dart@TableCellParentData@verticalAlignment': (m.Scope scope, TableCellParentData target)=>target.verticalAlignment,
'package:flutter/src/rendering/table.dart@TableCellParentData@verticalAlignment:set': (m.Scope scope, TableCellParentData target)=>(other)=>target.verticalAlignment=other,
'package:flutter/src/rendering/table.dart@TableCellParentData@x': (m.Scope scope, TableCellParentData target)=>target.x,
'package:flutter/src/rendering/table.dart@TableCellParentData@x:set': (m.Scope scope, TableCellParentData target)=>(other)=>target.x=other,
'package:flutter/src/rendering/table.dart@TableCellParentData@y': (m.Scope scope, TableCellParentData target)=>target.y,
'package:flutter/src/rendering/table.dart@TableCellParentData@y:set': (m.Scope scope, TableCellParentData target)=>(other)=>target.y=other,
'package:flutter/src/rendering/table.dart@TableCellParentData@': (m.Scope scope)=>(){
return TableCellParentData();
},
'package:flutter/src/rendering/table.dart@TableCellParentData@toString': (m.Scope scope, TableCellParentData target)=>target.toString,
'package:flutter/src/rendering/table.dart@TableColumnWidth@#as': (m.Scope scope, target)=>()=>target as TableColumnWidth,
'package:flutter/src/rendering/table.dart@TableColumnWidth@#is': (m.Scope scope, target)=>()=>target is TableColumnWidth,
'package:flutter/src/rendering/table.dart@TableColumnWidth@minIntrinsicWidth': (m.Scope scope, TableColumnWidth target)=>target.minIntrinsicWidth,
'package:flutter/src/rendering/table.dart@TableColumnWidth@maxIntrinsicWidth': (m.Scope scope, TableColumnWidth target)=>target.maxIntrinsicWidth,
'package:flutter/src/rendering/table.dart@TableColumnWidth@flex': (m.Scope scope, TableColumnWidth target)=>target.flex,
'package:flutter/src/rendering/table.dart@TableColumnWidth@toString': (m.Scope scope, TableColumnWidth target)=>target.toString,
'package:flutter/src/rendering/table.dart@IntrinsicColumnWidth@#as': (m.Scope scope, target)=>()=>target as IntrinsicColumnWidth,
'package:flutter/src/rendering/table.dart@IntrinsicColumnWidth@#is': (m.Scope scope, target)=>()=>target is IntrinsicColumnWidth,
'package:flutter/src/rendering/table.dart@IntrinsicColumnWidth@': (m.Scope scope)=>({ flex}){
return IntrinsicColumnWidth(flex:flex);
},
'package:flutter/src/rendering/table.dart@IntrinsicColumnWidth@minIntrinsicWidth': (m.Scope scope, IntrinsicColumnWidth target)=>target.minIntrinsicWidth,
'package:flutter/src/rendering/table.dart@IntrinsicColumnWidth@maxIntrinsicWidth': (m.Scope scope, IntrinsicColumnWidth target)=>target.maxIntrinsicWidth,
'package:flutter/src/rendering/table.dart@IntrinsicColumnWidth@flex': (m.Scope scope, IntrinsicColumnWidth target)=>target.flex,
'package:flutter/src/rendering/table.dart@IntrinsicColumnWidth@toString': (m.Scope scope, IntrinsicColumnWidth target)=>target.toString,
'package:flutter/src/rendering/table.dart@FixedColumnWidth@#as': (m.Scope scope, target)=>()=>target as FixedColumnWidth,
'package:flutter/src/rendering/table.dart@FixedColumnWidth@#is': (m.Scope scope, target)=>()=>target is FixedColumnWidth,
'package:flutter/src/rendering/table.dart@FixedColumnWidth@value': (m.Scope scope, FixedColumnWidth target)=>target.value,
'package:flutter/src/rendering/table.dart@FixedColumnWidth@': (m.Scope scope)=>( value){
return FixedColumnWidth(value);
},
'package:flutter/src/rendering/table.dart@FixedColumnWidth@minIntrinsicWidth': (m.Scope scope, FixedColumnWidth target)=>target.minIntrinsicWidth,
'package:flutter/src/rendering/table.dart@FixedColumnWidth@maxIntrinsicWidth': (m.Scope scope, FixedColumnWidth target)=>target.maxIntrinsicWidth,
'package:flutter/src/rendering/table.dart@FixedColumnWidth@toString': (m.Scope scope, FixedColumnWidth target)=>target.toString,
'package:flutter/src/rendering/table.dart@FractionColumnWidth@#as': (m.Scope scope, target)=>()=>target as FractionColumnWidth,
'package:flutter/src/rendering/table.dart@FractionColumnWidth@#is': (m.Scope scope, target)=>()=>target is FractionColumnWidth,
'package:flutter/src/rendering/table.dart@FractionColumnWidth@value': (m.Scope scope, FractionColumnWidth target)=>target.value,
'package:flutter/src/rendering/table.dart@FractionColumnWidth@': (m.Scope scope)=>( value){
return FractionColumnWidth(value);
},
'package:flutter/src/rendering/table.dart@FractionColumnWidth@minIntrinsicWidth': (m.Scope scope, FractionColumnWidth target)=>target.minIntrinsicWidth,
'package:flutter/src/rendering/table.dart@FractionColumnWidth@maxIntrinsicWidth': (m.Scope scope, FractionColumnWidth target)=>target.maxIntrinsicWidth,
'package:flutter/src/rendering/table.dart@FractionColumnWidth@toString': (m.Scope scope, FractionColumnWidth target)=>target.toString,
'package:flutter/src/rendering/table.dart@FlexColumnWidth@#as': (m.Scope scope, target)=>()=>target as FlexColumnWidth,
'package:flutter/src/rendering/table.dart@FlexColumnWidth@#is': (m.Scope scope, target)=>()=>target is FlexColumnWidth,
'package:flutter/src/rendering/table.dart@FlexColumnWidth@value': (m.Scope scope, FlexColumnWidth target)=>target.value,
'package:flutter/src/rendering/table.dart@FlexColumnWidth@': (m.Scope scope)=>([double? value]){
if(value == null){
return FlexColumnWidth();
}
return FlexColumnWidth(value!);
},
'package:flutter/src/rendering/table.dart@FlexColumnWidth@minIntrinsicWidth': (m.Scope scope, FlexColumnWidth target)=>target.minIntrinsicWidth,
'package:flutter/src/rendering/table.dart@FlexColumnWidth@maxIntrinsicWidth': (m.Scope scope, FlexColumnWidth target)=>target.maxIntrinsicWidth,
'package:flutter/src/rendering/table.dart@FlexColumnWidth@flex': (m.Scope scope, FlexColumnWidth target)=>target.flex,
'package:flutter/src/rendering/table.dart@FlexColumnWidth@toString': (m.Scope scope, FlexColumnWidth target)=>target.toString,
'package:flutter/src/rendering/table.dart@MaxColumnWidth@#as': (m.Scope scope, target)=>()=>target as MaxColumnWidth,
'package:flutter/src/rendering/table.dart@MaxColumnWidth@#is': (m.Scope scope, target)=>()=>target is MaxColumnWidth,
'package:flutter/src/rendering/table.dart@MaxColumnWidth@a': (m.Scope scope, MaxColumnWidth target)=>target.a,
'package:flutter/src/rendering/table.dart@MaxColumnWidth@b': (m.Scope scope, MaxColumnWidth target)=>target.b,
'package:flutter/src/rendering/table.dart@MaxColumnWidth@': (m.Scope scope)=>( a,  b){
return MaxColumnWidth(a, b);
},
'package:flutter/src/rendering/table.dart@MaxColumnWidth@minIntrinsicWidth': (m.Scope scope, MaxColumnWidth target)=>target.minIntrinsicWidth,
'package:flutter/src/rendering/table.dart@MaxColumnWidth@maxIntrinsicWidth': (m.Scope scope, MaxColumnWidth target)=>target.maxIntrinsicWidth,
'package:flutter/src/rendering/table.dart@MaxColumnWidth@flex': (m.Scope scope, MaxColumnWidth target)=>target.flex,
'package:flutter/src/rendering/table.dart@MaxColumnWidth@toString': (m.Scope scope, MaxColumnWidth target)=>target.toString,
'package:flutter/src/rendering/table.dart@MinColumnWidth@#as': (m.Scope scope, target)=>()=>target as MinColumnWidth,
'package:flutter/src/rendering/table.dart@MinColumnWidth@#is': (m.Scope scope, target)=>()=>target is MinColumnWidth,
'package:flutter/src/rendering/table.dart@MinColumnWidth@a': (m.Scope scope, MinColumnWidth target)=>target.a,
'package:flutter/src/rendering/table.dart@MinColumnWidth@b': (m.Scope scope, MinColumnWidth target)=>target.b,
'package:flutter/src/rendering/table.dart@MinColumnWidth@': (m.Scope scope)=>( a,  b){
return MinColumnWidth(a, b);
},
'package:flutter/src/rendering/table.dart@MinColumnWidth@minIntrinsicWidth': (m.Scope scope, MinColumnWidth target)=>target.minIntrinsicWidth,
'package:flutter/src/rendering/table.dart@MinColumnWidth@maxIntrinsicWidth': (m.Scope scope, MinColumnWidth target)=>target.maxIntrinsicWidth,
'package:flutter/src/rendering/table.dart@MinColumnWidth@flex': (m.Scope scope, MinColumnWidth target)=>target.flex,
'package:flutter/src/rendering/table.dart@MinColumnWidth@toString': (m.Scope scope, MinColumnWidth target)=>target.toString,
'package:flutter/src/rendering/table.dart@RenderTable@#as': (m.Scope scope, target)=>()=>target as RenderTable,
'package:flutter/src/rendering/table.dart@RenderTable@#is': (m.Scope scope, target)=>()=>target is RenderTable,
'package:flutter/src/rendering/table.dart@RenderTable@columns': (m.Scope scope, RenderTable target)=>target.columns,
'package:flutter/src/rendering/table.dart@RenderTable@columns:set': (m.Scope scope, RenderTable target)=>(other)=>target.columns=other,
'package:flutter/src/rendering/table.dart@RenderTable@rows': (m.Scope scope, RenderTable target)=>target.rows,
'package:flutter/src/rendering/table.dart@RenderTable@rows:set': (m.Scope scope, RenderTable target)=>(other)=>target.rows=other,
'package:flutter/src/rendering/table.dart@RenderTable@columnWidths': (m.Scope scope, RenderTable target)=>target.columnWidths,
'package:flutter/src/rendering/table.dart@RenderTable@columnWidths:set': (m.Scope scope, RenderTable target)=>(other)=>target.columnWidths=other,
'package:flutter/src/rendering/table.dart@RenderTable@defaultColumnWidth': (m.Scope scope, RenderTable target)=>target.defaultColumnWidth,
'package:flutter/src/rendering/table.dart@RenderTable@defaultColumnWidth:set': (m.Scope scope, RenderTable target)=>(other)=>target.defaultColumnWidth=other,
'package:flutter/src/rendering/table.dart@RenderTable@textDirection': (m.Scope scope, RenderTable target)=>target.textDirection,
'package:flutter/src/rendering/table.dart@RenderTable@textDirection:set': (m.Scope scope, RenderTable target)=>(other)=>target.textDirection=other,
'package:flutter/src/rendering/table.dart@RenderTable@border': (m.Scope scope, RenderTable target)=>target.border,
'package:flutter/src/rendering/table.dart@RenderTable@border:set': (m.Scope scope, RenderTable target)=>(other)=>target.border=other,
'package:flutter/src/rendering/table.dart@RenderTable@rowDecorations': (m.Scope scope, RenderTable target)=>target.rowDecorations,
'package:flutter/src/rendering/table.dart@RenderTable@rowDecorations:set': (m.Scope scope, RenderTable target)=>(other)=>target.rowDecorations=other,
'package:flutter/src/rendering/table.dart@RenderTable@configuration': (m.Scope scope, RenderTable target)=>target.configuration,
'package:flutter/src/rendering/table.dart@RenderTable@configuration:set': (m.Scope scope, RenderTable target)=>(other)=>target.configuration=other,
'package:flutter/src/rendering/table.dart@RenderTable@defaultVerticalAlignment': (m.Scope scope, RenderTable target)=>target.defaultVerticalAlignment,
'package:flutter/src/rendering/table.dart@RenderTable@defaultVerticalAlignment:set': (m.Scope scope, RenderTable target)=>(other)=>target.defaultVerticalAlignment=other,
'package:flutter/src/rendering/table.dart@RenderTable@textBaseline': (m.Scope scope, RenderTable target)=>target.textBaseline,
'package:flutter/src/rendering/table.dart@RenderTable@textBaseline:set': (m.Scope scope, RenderTable target)=>(other)=>target.textBaseline=other,
'package:flutter/src/rendering/table.dart@RenderTable@': (m.Scope scope)=>({ border,  children,  columnWidths,  columns,  configuration,  defaultColumnWidth,  defaultVerticalAlignment,  rowDecorations,  rows,  textBaseline,  textDirection}){
return RenderTable(border:border, children:children, columnWidths:columnWidths, columns:columns, configuration:configuration ?? ImageConfiguration.empty, defaultColumnWidth:defaultColumnWidth ?? const FlexColumnWidth(), defaultVerticalAlignment:defaultVerticalAlignment ?? TableCellVerticalAlignment.top, rowDecorations:rowDecorations, rows:rows, textBaseline:textBaseline, textDirection:textDirection);
},
'package:flutter/src/rendering/table.dart@RenderTable@setColumnWidth': (m.Scope scope, RenderTable target)=>target.setColumnWidth,
'package:flutter/src/rendering/table.dart@RenderTable@setupParentData': (m.Scope scope, RenderTable target)=>target.setupParentData,
'package:flutter/src/rendering/table.dart@RenderTable@setFlatChildren': (m.Scope scope, RenderTable target)=>target.setFlatChildren,
'package:flutter/src/rendering/table.dart@RenderTable@setChildren': (m.Scope scope, RenderTable target)=>target.setChildren,
'package:flutter/src/rendering/table.dart@RenderTable@addRow': (m.Scope scope, RenderTable target)=>target.addRow,
'package:flutter/src/rendering/table.dart@RenderTable@setChild': (m.Scope scope, RenderTable target)=>target.setChild,
'package:flutter/src/rendering/table.dart@RenderTable@attach': (m.Scope scope, RenderTable target)=>target.attach,
'package:flutter/src/rendering/table.dart@RenderTable@detach': (m.Scope scope, RenderTable target)=>target.detach,
'package:flutter/src/rendering/table.dart@RenderTable@visitChildren': (m.Scope scope, RenderTable target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildren(visitorProxy);
},
'package:flutter/src/rendering/table.dart@RenderTable@computeMinIntrinsicWidth': (m.Scope scope, RenderTable target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/table.dart@RenderTable@computeMaxIntrinsicWidth': (m.Scope scope, RenderTable target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/table.dart@RenderTable@computeMinIntrinsicHeight': (m.Scope scope, RenderTable target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/table.dart@RenderTable@computeMaxIntrinsicHeight': (m.Scope scope, RenderTable target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/table.dart@RenderTable@computeDistanceToActualBaseline': (m.Scope scope, RenderTable target)=>target.computeDistanceToActualBaseline,
'package:flutter/src/rendering/table.dart@RenderTable@column': (m.Scope scope, RenderTable target)=>target.column,
'package:flutter/src/rendering/table.dart@RenderTable@row': (m.Scope scope, RenderTable target)=>target.row,
'package:flutter/src/rendering/table.dart@RenderTable@getRowBox': (m.Scope scope, RenderTable target)=>target.getRowBox,
'package:flutter/src/rendering/table.dart@RenderTable@computeDryLayout': (m.Scope scope, RenderTable target)=>target.computeDryLayout,
'package:flutter/src/rendering/table.dart@RenderTable@performLayout': (m.Scope scope, RenderTable target)=>target.performLayout,
'package:flutter/src/rendering/table.dart@RenderTable@hitTestChildren': (m.Scope scope, RenderTable target)=>target.hitTestChildren,
'package:flutter/src/rendering/table.dart@RenderTable@paint': (m.Scope scope, RenderTable target)=>target.paint,
'package:flutter/src/rendering/table.dart@RenderTable@debugFillProperties': (m.Scope scope, RenderTable target)=>target.debugFillProperties,
'package:flutter/src/rendering/table.dart@RenderTable@debugDescribeChildren': (m.Scope scope, RenderTable target)=>target.debugDescribeChildren,

};
}