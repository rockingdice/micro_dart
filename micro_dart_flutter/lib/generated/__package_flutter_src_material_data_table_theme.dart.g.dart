import 'package:flutter/src/material/data_table_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@#as': (m.Scope scope, target)=>()=>target as DataTableThemeData,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@#is': (m.Scope scope, target)=>()=>target is DataTableThemeData,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@decoration': (m.Scope scope, DataTableThemeData target)=>target.decoration,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@dataRowColor': (m.Scope scope, DataTableThemeData target)=>target.dataRowColor,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@dataRowMinHeight': (m.Scope scope, DataTableThemeData target)=>target.dataRowMinHeight,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@dataRowMaxHeight': (m.Scope scope, DataTableThemeData target)=>target.dataRowMaxHeight,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@dataTextStyle': (m.Scope scope, DataTableThemeData target)=>target.dataTextStyle,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@headingRowColor': (m.Scope scope, DataTableThemeData target)=>target.headingRowColor,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@headingRowHeight': (m.Scope scope, DataTableThemeData target)=>target.headingRowHeight,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@headingTextStyle': (m.Scope scope, DataTableThemeData target)=>target.headingTextStyle,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@horizontalMargin': (m.Scope scope, DataTableThemeData target)=>target.horizontalMargin,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@columnSpacing': (m.Scope scope, DataTableThemeData target)=>target.columnSpacing,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@dividerThickness': (m.Scope scope, DataTableThemeData target)=>target.dividerThickness,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@checkboxHorizontalMargin': (m.Scope scope, DataTableThemeData target)=>target.checkboxHorizontalMargin,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@headingCellCursor': (m.Scope scope, DataTableThemeData target)=>target.headingCellCursor,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@dataRowCursor': (m.Scope scope, DataTableThemeData target)=>target.dataRowCursor,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@hashCode': (m.Scope scope, DataTableThemeData target)=>target.hashCode,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@': (m.Scope scope)=>({ checkboxHorizontalMargin,  columnSpacing,  dataRowColor,  dataRowCursor,  dataRowHeight,  dataRowMaxHeight,  dataRowMinHeight,  dataTextStyle,  decoration,  dividerThickness,  headingCellCursor,  headingRowColor,  headingRowHeight,  headingTextStyle,  horizontalMargin}){
return DataTableThemeData(checkboxHorizontalMargin:checkboxHorizontalMargin, columnSpacing:columnSpacing, dataRowColor:dataRowColor, dataRowCursor:dataRowCursor, dataRowHeight:dataRowHeight, dataRowMaxHeight:dataRowMaxHeight, dataRowMinHeight:dataRowMinHeight, dataTextStyle:dataTextStyle, decoration:decoration, dividerThickness:dividerThickness, headingCellCursor:headingCellCursor, headingRowColor:headingRowColor, headingRowHeight:headingRowHeight, headingTextStyle:headingTextStyle, horizontalMargin:horizontalMargin);
},
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@copyWith': (m.Scope scope, DataTableThemeData target)=>target.copyWith,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@lerp': (m.Scope scope)=>DataTableThemeData.lerp,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@==': (m.Scope scope, DataTableThemeData target)=>(other)=> target == other,
'package:flutter/src/material/data_table_theme.dart@DataTableThemeData@debugFillProperties': (m.Scope scope, DataTableThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/data_table_theme.dart@DataTableTheme@#as': (m.Scope scope, target)=>()=>target as DataTableTheme,
'package:flutter/src/material/data_table_theme.dart@DataTableTheme@#is': (m.Scope scope, target)=>()=>target is DataTableTheme,
'package:flutter/src/material/data_table_theme.dart@DataTableTheme@data': (m.Scope scope, DataTableTheme target)=>target.data,
'package:flutter/src/material/data_table_theme.dart@DataTableTheme@': (m.Scope scope)=>DataTableTheme,
'package:flutter/src/material/data_table_theme.dart@DataTableTheme@of': (m.Scope scope)=>DataTableTheme.of,
'package:flutter/src/material/data_table_theme.dart@DataTableTheme@updateShouldNotify': (m.Scope scope, DataTableTheme target)=>target.updateShouldNotify,

};
}