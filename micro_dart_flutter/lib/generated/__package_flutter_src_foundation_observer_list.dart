// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/foundation/observer_list.dart';
import 'dart:collection';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/foundation/observer_list.dart',
  {
    'ObserverList.': _ObserverList__$,
    'HashedObserverList.': _HashedObserverList__$,
  },
  {},
  {
    'ObserverList': m.ClassMirror(
      'ObserverList',
      {
        '#as': ObserverList_as$,
        '#is': ObserverList_is$,
        'iterator': _ObserverList_iterator$,
        'isEmpty': _ObserverList_isEmpty$,
        'isNotEmpty': _ObserverList_isNotEmpty$,
        'add': _ObserverList_add$,
        'remove': _ObserverList_remove$,
        'clear': _ObserverList_clear$,
        'contains': _ObserverList_contains$,
        'toList': _ObserverList_toList$,
      },
      {},
    ),
    'HashedObserverList': m.ClassMirror(
      'HashedObserverList',
      {
        '#as': HashedObserverList_as$,
        '#is': HashedObserverList_is$,
        'iterator': _HashedObserverList_iterator$,
        'isEmpty': _HashedObserverList_isEmpty$,
        'isNotEmpty': _HashedObserverList_isNotEmpty$,
        'add': _HashedObserverList_add$,
        'remove': _HashedObserverList_remove$,
        'contains': _HashedObserverList_contains$,
      },
      {},
    ),
  },
);
Function ObserverList_as$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ObserverList<T>;
Function ObserverList_is$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ObserverList<T>;
Function _ObserverList_iterator$<T>(
  m.Scope scope$,
  ObserverList<T> target$,
) =>
    () {
      return target$.iterator;
    };
Function _ObserverList_isEmpty$<T>(
  m.Scope scope$,
  ObserverList<T> target$,
) =>
    () {
      return target$.isEmpty;
    };
Function _ObserverList_isNotEmpty$<T>(
  m.Scope scope$,
  ObserverList<T> target$,
) =>
    () {
      return target$.isNotEmpty;
    };
Function _ObserverList__$(m.Scope scope$) => () {
      return ObserverList();
    };
Function _ObserverList_add$<T>(
  m.Scope scope$,
  ObserverList<T> target$,
) =>
    target$.add;
Function _ObserverList_remove$<T>(
  m.Scope scope$,
  ObserverList<T> target$,
) =>
    target$.remove;
Function _ObserverList_clear$<T>(
  m.Scope scope$,
  ObserverList<T> target$,
) =>
    target$.clear;
Function _ObserverList_contains$<T>(
  m.Scope scope$,
  ObserverList<T> target$,
) =>
    target$.contains;
Function _ObserverList_toList$<T>(
  m.Scope scope$,
  ObserverList<T> target$,
) =>
    target$.toList;
Function HashedObserverList_as$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as HashedObserverList<T>;
Function HashedObserverList_is$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is HashedObserverList<T>;
Function _HashedObserverList_iterator$<T>(
  m.Scope scope$,
  HashedObserverList<T> target$,
) =>
    () {
      return target$.iterator;
    };
Function _HashedObserverList_isEmpty$<T>(
  m.Scope scope$,
  HashedObserverList<T> target$,
) =>
    () {
      return target$.isEmpty;
    };
Function _HashedObserverList_isNotEmpty$<T>(
  m.Scope scope$,
  HashedObserverList<T> target$,
) =>
    () {
      return target$.isNotEmpty;
    };
Function _HashedObserverList__$(m.Scope scope$) => () {
      return HashedObserverList();
    };
Function _HashedObserverList_add$<T>(
  m.Scope scope$,
  HashedObserverList<T> target$,
) =>
    target$.add;
Function _HashedObserverList_remove$<T>(
  m.Scope scope$,
  HashedObserverList<T> target$,
) =>
    target$.remove;
Function _HashedObserverList_contains$<T>(
  m.Scope scope$,
  HashedObserverList<T> target$,
) =>
    target$.contains;
