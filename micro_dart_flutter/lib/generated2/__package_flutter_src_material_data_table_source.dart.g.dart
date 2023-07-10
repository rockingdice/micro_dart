import 'package:flutter/src/material/data_table_source.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/material/data_table.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/data_table_source.dart@DataTableSource@#as': (m.Scope scope, target)=>()=>target as DataTableSource,
'package:flutter/src/material/data_table_source.dart@DataTableSource@#is': (m.Scope scope, target)=>()=>target is DataTableSource,
'package:flutter/src/material/data_table_source.dart@DataTableSource@rowCount': (m.Scope scope, DataTableSource target)=>target.rowCount,
'package:flutter/src/material/data_table_source.dart@DataTableSource@isRowCountApproximate': (m.Scope scope, DataTableSource target)=>target.isRowCountApproximate,
'package:flutter/src/material/data_table_source.dart@DataTableSource@selectedRowCount': (m.Scope scope, DataTableSource target)=>target.selectedRowCount,
'package:flutter/src/material/data_table_source.dart@DataTableSource@getRow': (m.Scope scope, DataTableSource target)=>target.getRow,

};
}