// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:collection/src/algorithms.dart';
import 'dart:math' show Random;
import 'package:collection/src/utils.dart';

const libraryMirror = m.LibraryMirror(
  'package:collection/src/algorithms.dart',
  {
    'binarySearch': _binarySearch$,
    'binarySearchBy': _binarySearchBy$,
    'lowerBound': _lowerBound$,
    'lowerBoundBy': _lowerBoundBy$,
    'shuffle': _shuffle$,
    'reverse': _reverse$,
    'insertionSort': _insertionSort$,
    'insertionSortBy': _insertionSortBy$,
    'mergeSort': _mergeSort$,
    'mergeSortBy': _mergeSortBy$,
    'quickSort': _quickSort$,
    'quickSortBy': _quickSortBy$,
  },
  {},
  {},
);
Function _binarySearch$(m.Scope scope$) => (
      List sortedList,
      dynamic value, {
      m.FunctionPointer? compare,
    }) {
      int compareProxy(
        dynamic compare_$p0$,
        dynamic compare_$p1$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            compare!,
            [
              compare_$p0$,
              compare_$p1$,
            ],
            {},
          );
      return binarySearch(
        List.from(sortedList),
        value,
        compare: compare == null ? null : compareProxy,
      );
    };
Function _binarySearchBy$(m.Scope scope$) => (
      List sortedList,
      m.FunctionPointer keyOf,
      m.FunctionPointer compare,
      dynamic value, [
      int? start,
      int? end,
    ]) {
      dynamic keyOfProxy(dynamic keyOf_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            keyOf,
            [keyOf_element$],
            {},
          );
      int compareProxy(
        dynamic compare_$p0$,
        dynamic compare_$p1$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            compare,
            [
              compare_$p0$,
              compare_$p1$,
            ],
            {},
          );
      if (start == null && end == null) {
        return binarySearchBy(
          List.from(sortedList),
          keyOfProxy,
          compareProxy,
          value,
        );
      }
      if (end == null) {
        return binarySearchBy(
          List.from(sortedList),
          keyOfProxy,
          compareProxy,
          value,
          start!,
        );
      }
      return binarySearchBy(
        List.from(sortedList),
        keyOfProxy,
        compareProxy,
        value,
        start!,
        end!,
      );
    };
Function _lowerBound$(m.Scope scope$) => (
      List sortedList,
      dynamic value, {
      m.FunctionPointer? compare,
    }) {
      int compareProxy(
        dynamic compare_$p0$,
        dynamic compare_$p1$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            compare!,
            [
              compare_$p0$,
              compare_$p1$,
            ],
            {},
          );
      return lowerBound(
        List.from(sortedList),
        value,
        compare: compare == null ? null : compareProxy,
      );
    };
Function _lowerBoundBy$(m.Scope scope$) => (
      List sortedList,
      m.FunctionPointer keyOf,
      m.FunctionPointer compare,
      dynamic value, [
      int? start,
      int? end,
    ]) {
      dynamic keyOfProxy(dynamic keyOf_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            keyOf,
            [keyOf_element$],
            {},
          );
      int compareProxy(
        dynamic compare_$p0$,
        dynamic compare_$p1$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            compare,
            [
              compare_$p0$,
              compare_$p1$,
            ],
            {},
          );
      if (start == null && end == null) {
        return lowerBoundBy(
          List.from(sortedList),
          keyOfProxy,
          compareProxy,
          value,
        );
      }
      if (end == null) {
        return lowerBoundBy(
          List.from(sortedList),
          keyOfProxy,
          compareProxy,
          value,
          start!,
        );
      }
      return lowerBoundBy(
        List.from(sortedList),
        keyOfProxy,
        compareProxy,
        value,
        start!,
        end!,
      );
    };
Function _shuffle$(m.Scope scope$) => shuffle;
Function _reverse$<E>(m.Scope scope$) => reverse<E>;
Function _insertionSort$(m.Scope scope$) => (
      List elements, {
      m.FunctionPointer? compare,
      int? start,
      int? end,
    }) {
      int compareProxy(
        dynamic compare_$p0$,
        dynamic compare_$p1$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            compare!,
            [
              compare_$p0$,
              compare_$p1$,
            ],
            {},
          );
      insertionSort(
        List.from(elements),
        compare: compare == null ? null : compareProxy,
        end: end,
        start: start ?? 0,
      );
    };
Function _insertionSortBy$(m.Scope scope$) => (
      List elements,
      m.FunctionPointer keyOf,
      m.FunctionPointer compare, [
      int? start,
      int? end,
    ]) {
      dynamic keyOfProxy(dynamic keyOf_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            keyOf,
            [keyOf_element$],
            {},
          );
      int compareProxy(
        dynamic compare_a$,
        dynamic compare_b$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            compare,
            [
              compare_a$,
              compare_b$,
            ],
            {},
          );
      if (start == null && end == null) {
        insertionSortBy(
          List.from(elements),
          keyOfProxy,
          compareProxy,
        );
      }
      if (end == null) {
        insertionSortBy(
          List.from(elements),
          keyOfProxy,
          compareProxy,
          start!,
        );
      }
      return;
      insertionSortBy(
        List.from(elements),
        keyOfProxy,
        compareProxy,
        start!,
        end!,
      );
      return;
    };
Function _mergeSort$(m.Scope scope$) => (
      List elements, {
      int? start,
      int? end,
      m.FunctionPointer? compare,
    }) {
      int compareProxy(
        dynamic compare_$p0$,
        dynamic compare_$p1$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            compare!,
            [
              compare_$p0$,
              compare_$p1$,
            ],
            {},
          );
      mergeSort(
        List.from(elements),
        compare: compare == null ? null : compareProxy,
        end: end,
        start: start ?? 0,
      );
    };
Function _mergeSortBy$(m.Scope scope$) => (
      List elements,
      m.FunctionPointer keyOf,
      m.FunctionPointer compare, [
      int? start,
      int? end,
    ]) {
      dynamic keyOfProxy(dynamic keyOf_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            keyOf,
            [keyOf_element$],
            {},
          );
      int compareProxy(
        dynamic compare_a$,
        dynamic compare_b$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            compare,
            [
              compare_a$,
              compare_b$,
            ],
            {},
          );
      if (start == null && end == null) {
        mergeSortBy(
          List.from(elements),
          keyOfProxy,
          compareProxy,
        );
      }
      if (end == null) {
        mergeSortBy(
          List.from(elements),
          keyOfProxy,
          compareProxy,
          start!,
        );
      }
      return;
      mergeSortBy(
        List.from(elements),
        keyOfProxy,
        compareProxy,
        start!,
        end!,
      );
      return;
    };
Function _quickSort$(m.Scope scope$) => (
      List elements,
      m.FunctionPointer compare, [
      int? start,
      int? end,
    ]) {
      int compareProxy(
        dynamic compare_a$,
        dynamic compare_b$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            compare,
            [
              compare_a$,
              compare_b$,
            ],
            {},
          );
      if (start == null && end == null) {
        quickSort(
          List.from(elements),
          compareProxy,
        );
      }
      if (end == null) {
        quickSort(
          List.from(elements),
          compareProxy,
          start!,
        );
      }
      return;
      quickSort(
        List.from(elements),
        compareProxy,
        start!,
        end!,
      );
      return;
    };
Function _quickSortBy$(m.Scope scope$) => (
      List list,
      m.FunctionPointer keyOf,
      m.FunctionPointer compare, [
      int? start,
      int? end,
    ]) {
      dynamic keyOfProxy(dynamic keyOf_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            keyOf,
            [keyOf_element$],
            {},
          );
      int compareProxy(
        dynamic compare_a$,
        dynamic compare_b$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            compare,
            [
              compare_a$,
              compare_b$,
            ],
            {},
          );
      if (start == null && end == null) {
        quickSortBy(
          List.from(list),
          keyOfProxy,
          compareProxy,
        );
      }
      if (end == null) {
        quickSortBy(
          List.from(list),
          keyOfProxy,
          compareProxy,
          start!,
        );
      }
      return;
      quickSortBy(
        List.from(list),
        keyOfProxy,
        compareProxy,
        start!,
        end!,
      );
      return;
    };
