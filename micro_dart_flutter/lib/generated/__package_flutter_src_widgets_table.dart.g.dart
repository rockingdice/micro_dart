import 'package:flutter/src/widgets/table.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/table.dart@TableRow@#as': (m.Scope scope, target)=>()=>target as TableRow,
'package:flutter/src/widgets/table.dart@TableRow@#is': (m.Scope scope, target)=>()=>target is TableRow,
'package:flutter/src/widgets/table.dart@TableRow@key': (m.Scope scope, TableRow target)=>target.key,
'package:flutter/src/widgets/table.dart@TableRow@decoration': (m.Scope scope, TableRow target)=>target.decoration,
'package:flutter/src/widgets/table.dart@TableRow@children': (m.Scope scope, TableRow target)=>target.children,
'package:flutter/src/widgets/table.dart@TableRow@': (m.Scope scope)=>({ children,  decoration,  key}){
return TableRow(children:children ?? const <Widget>[], decoration:decoration, key:key);
},
'package:flutter/src/widgets/table.dart@TableRow@toString': (m.Scope scope, TableRow target)=>target.toString,
'package:flutter/src/widgets/table.dart@Table@#as': (m.Scope scope, target)=>()=>target as Table,
'package:flutter/src/widgets/table.dart@Table@#is': (m.Scope scope, target)=>()=>target is Table,
'package:flutter/src/widgets/table.dart@Table@children': (m.Scope scope, Table target)=>target.children,
'package:flutter/src/widgets/table.dart@Table@columnWidths': (m.Scope scope, Table target)=>target.columnWidths,
'package:flutter/src/widgets/table.dart@Table@defaultColumnWidth': (m.Scope scope, Table target)=>target.defaultColumnWidth,
'package:flutter/src/widgets/table.dart@Table@textDirection': (m.Scope scope, Table target)=>target.textDirection,
'package:flutter/src/widgets/table.dart@Table@border': (m.Scope scope, Table target)=>target.border,
'package:flutter/src/widgets/table.dart@Table@defaultVerticalAlignment': (m.Scope scope, Table target)=>target.defaultVerticalAlignment,
'package:flutter/src/widgets/table.dart@Table@textBaseline': (m.Scope scope, Table target)=>target.textBaseline,
'package:flutter/src/widgets/table.dart@Table@': (m.Scope scope)=>({ border,  children,  columnWidths,  defaultColumnWidth,  defaultVerticalAlignment,  key,  textBaseline,  textDirection}){
return Table(border:border, children:children ?? const <TableRow>[], columnWidths:columnWidths, defaultColumnWidth:defaultColumnWidth ?? const FlexColumnWidth(), defaultVerticalAlignment:defaultVerticalAlignment ?? TableCellVerticalAlignment.top, key:key, textBaseline:textBaseline, textDirection:textDirection);
},
'package:flutter/src/widgets/table.dart@Table@createElement': (m.Scope scope, Table target)=>target.createElement,
'package:flutter/src/widgets/table.dart@Table@createRenderObject': (m.Scope scope, Table target)=>target.createRenderObject,
'package:flutter/src/widgets/table.dart@Table@updateRenderObject': (m.Scope scope, Table target)=>target.updateRenderObject,
'package:flutter/src/widgets/table.dart@TableCell@#as': (m.Scope scope, target)=>()=>target as TableCell,
'package:flutter/src/widgets/table.dart@TableCell@#is': (m.Scope scope, target)=>()=>target is TableCell,
'package:flutter/src/widgets/table.dart@TableCell@verticalAlignment': (m.Scope scope, TableCell target)=>target.verticalAlignment,
'package:flutter/src/widgets/table.dart@TableCell@debugTypicalAncestorWidgetClass': (m.Scope scope, TableCell target)=>target.debugTypicalAncestorWidgetClass,
'package:flutter/src/widgets/table.dart@TableCell@': (m.Scope scope)=>TableCell,
'package:flutter/src/widgets/table.dart@TableCell@applyParentData': (m.Scope scope, TableCell target)=>target.applyParentData,
'package:flutter/src/widgets/table.dart@TableCell@debugFillProperties': (m.Scope scope, TableCell target)=>target.debugFillProperties,

};
}