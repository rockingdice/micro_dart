import 'package:flutter/src/material/paginated_data_table.dart';
import 'dart:math';
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/card.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/data_table.dart';
import 'package:flutter/src/material/data_table_source.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_decoration.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/progress_indicator.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@#as':
        (m.Scope scope, target) => () => target as PaginatedDataTable,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@#is':
        (m.Scope scope, target) => () => target is PaginatedDataTable,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@header':
        (m.Scope scope, PaginatedDataTable target) => target.header,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@actions':
        (m.Scope scope, PaginatedDataTable target) => target.actions,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@columns':
        (m.Scope scope, PaginatedDataTable target) => target.columns,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@sortColumnIndex':
        (m.Scope scope, PaginatedDataTable target) => target.sortColumnIndex,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@sortAscending':
        (m.Scope scope, PaginatedDataTable target) => target.sortAscending,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@onSelectAll':
        (m.Scope scope, PaginatedDataTable target) => target.onSelectAll,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@dataRowMinHeight':
        (m.Scope scope, PaginatedDataTable target) => target.dataRowMinHeight,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@dataRowMaxHeight':
        (m.Scope scope, PaginatedDataTable target) => target.dataRowMaxHeight,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@headingRowHeight':
        (m.Scope scope, PaginatedDataTable target) => target.headingRowHeight,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@horizontalMargin':
        (m.Scope scope, PaginatedDataTable target) => target.horizontalMargin,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@columnSpacing':
        (m.Scope scope, PaginatedDataTable target) => target.columnSpacing,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@showCheckboxColumn':
        (m.Scope scope, PaginatedDataTable target) => target.showCheckboxColumn,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@showFirstLastButtons':
        (m.Scope scope, PaginatedDataTable target) =>
            target.showFirstLastButtons,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@initialFirstRowIndex':
        (m.Scope scope, PaginatedDataTable target) =>
            target.initialFirstRowIndex,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@onPageChanged':
        (m.Scope scope, PaginatedDataTable target) => target.onPageChanged,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@rowsPerPage':
        (m.Scope scope, PaginatedDataTable target) => target.rowsPerPage,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@defaultRowsPerPage':
        (m.Scope scope) => PaginatedDataTable.defaultRowsPerPage,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@availableRowsPerPage':
        (m.Scope scope, PaginatedDataTable target) =>
            target.availableRowsPerPage,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@onRowsPerPageChanged':
        (m.Scope scope, PaginatedDataTable target) =>
            target.onRowsPerPageChanged,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@source':
        (m.Scope scope, PaginatedDataTable target) => target.source,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@dragStartBehavior':
        (m.Scope scope, PaginatedDataTable target) => target.dragStartBehavior,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@checkboxHorizontalMargin':
        (m.Scope scope, PaginatedDataTable target) =>
            target.checkboxHorizontalMargin,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@arrowHeadColor':
        (m.Scope scope, PaginatedDataTable target) => target.arrowHeadColor,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@controller':
        (m.Scope scope, PaginatedDataTable target) => target.controller,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@primary':
        (m.Scope scope, PaginatedDataTable target) => target.primary,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@':
        (m.Scope scope) => (
                {actions,
                arrowHeadColor,
                availableRowsPerPage,
                checkboxHorizontalMargin,
                columnSpacing,
                columns,
                controller,
                dataRowHeight,
                dataRowMaxHeight,
                dataRowMinHeight,
                dragStartBehavior,
                header,
                headingRowHeight,
                horizontalMargin,
                initialFirstRowIndex,
                key,
                onPageChanged,
                onRowsPerPageChanged,
                onSelectAll,
                primary,
                rowsPerPage,
                showCheckboxColumn,
                showFirstLastButtons,
                sortAscending,
                sortColumnIndex,
                source}) {
              void onPageChangedProxy(value) {
                engine.callFunctionPointer(scope, onPageChanged!, [value], {});
              }

              void onRowsPerPageChangedProxy(value) {
                engine.callFunctionPointer(
                    scope, onRowsPerPageChanged!, [value], {});
              }

              void onSelectAllProxy(value) {
                engine.callFunctionPointer(scope, onSelectAll!, [value], {});
              }

              return PaginatedDataTable(
                  actions: actions,
                  arrowHeadColor: arrowHeadColor,
                  availableRowsPerPage: availableRowsPerPage ??
                      const <int>[
                        PaginatedDataTable.defaultRowsPerPage,
                        PaginatedDataTable.defaultRowsPerPage * 2,
                        PaginatedDataTable.defaultRowsPerPage * 5,
                        PaginatedDataTable.defaultRowsPerPage * 10
                      ],
                  checkboxHorizontalMargin: checkboxHorizontalMargin,
                  columnSpacing: columnSpacing ?? 56.0,
                  columns: columns,
                  controller: controller,
                  dataRowHeight: dataRowHeight,
                  dataRowMaxHeight: dataRowMaxHeight,
                  dataRowMinHeight: dataRowMinHeight,
                  dragStartBehavior:
                      dragStartBehavior ?? DragStartBehavior.start,
                  header: header,
                  headingRowHeight: headingRowHeight ?? 56.0,
                  horizontalMargin: horizontalMargin ?? 24.0,
                  initialFirstRowIndex: initialFirstRowIndex ?? 0,
                  key: key,
                  onPageChanged:
                      onPageChanged == null ? null : onPageChangedProxy,
                  onRowsPerPageChanged: onRowsPerPageChanged == null
                      ? null
                      : onRowsPerPageChangedProxy,
                  onSelectAll: onSelectAll == null ? null : onSelectAllProxy,
                  primary: primary,
                  rowsPerPage:
                      rowsPerPage ?? PaginatedDataTable.defaultRowsPerPage,
                  showCheckboxColumn: showCheckboxColumn ?? true,
                  showFirstLastButtons: showFirstLastButtons ?? false,
                  sortAscending: sortAscending ?? true,
                  sortColumnIndex: sortColumnIndex,
                  source: source);
            },
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTable@createState':
        (m.Scope scope, PaginatedDataTable target) => target.createState,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTableState@#as':
        (m.Scope scope, target) => () => target as PaginatedDataTableState,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTableState@#is':
        (m.Scope scope, target) => () => target is PaginatedDataTableState,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTableState@':
        (m.Scope scope) => () {
              return PaginatedDataTableState();
            },
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTableState@initState':
        (m.Scope scope, PaginatedDataTableState target) => target.initState,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTableState@didUpdateWidget':
        (m.Scope scope, PaginatedDataTableState target) =>
            target.didUpdateWidget,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTableState@dispose':
        (m.Scope scope, PaginatedDataTableState target) => target.dispose,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTableState@pageTo':
        (m.Scope scope, PaginatedDataTableState target) => target.pageTo,
    'package:flutter/src/material/paginated_data_table.dart@PaginatedDataTableState@build':
        (m.Scope scope, PaginatedDataTableState target) => target.build,
  };
}
