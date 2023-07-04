import 'dart:collection';
import 'dart:math' show Random;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'dart:collection@UnmodifiableListView@#as': (m.Scope scope, target) =>
        () => target as UnmodifiableListView,
    'dart:collection@UnmodifiableListView@#is': (m.Scope scope, target) =>
        () => target is UnmodifiableListView,
    'dart:collection@UnmodifiableListView@length':
        (m.Scope scope, UnmodifiableListView target) => target.length,
    'dart:collection@UnmodifiableListView@': (m.Scope scope) => <E>(source) {
          return UnmodifiableListView(source);
        },
    'dart:collection@UnmodifiableListView@cast':
        (m.Scope scope, UnmodifiableListView target) => target.cast,
    'dart:collection@UnmodifiableListView@[]':
        (m.Scope scope, UnmodifiableListView target) =>
            (index) => target[index],
    'dart:collection@HashMap@#as': (m.Scope scope, target) =>
        () => target as HashMap,
    'dart:collection@HashMap@#is': (m.Scope scope, target) =>
        () => target is HashMap,
    'dart:collection@HashMap@': (m.Scope scope) =>
        ({equals, hashCode, isValidKey}) {
          bool equalsProxy<K>($p0, $p1) {
            return engine.callFunctionPointer(scope, equals!, [$p0, $p1], {});
          }

          int hashCodeProxy<K>($p0) {
            return engine.callFunctionPointer(scope, hashCode!, [$p0], {});
          }

          bool isValidKeyProxy($p0) {
            return engine.callFunctionPointer(scope, isValidKey!, [$p0], {});
          }

          return HashMap(
              equals: equals == null ? null : equalsProxy,
              hashCode: hashCode == null ? null : hashCodeProxy,
              isValidKey: isValidKey == null ? null : isValidKeyProxy);
        },
    'dart:collection@HashMap@identity': (m.Scope scope) => HashMap.identity,
    'dart:collection@HashMap@from': (m.Scope scope) => HashMap.from,
    'dart:collection@HashMap@of': (m.Scope scope) => HashMap.of,
    'dart:collection@HashMap@fromIterable': (m.Scope scope) =>
        (iterable, {key, value}) {
          K keyProxy<K>(element) {
            return engine.callFunctionPointer(scope, key!, [element], {});
          }

          V valueProxy<V>(element) {
            return engine.callFunctionPointer(scope, value!, [element], {});
          }

          return HashMap.fromIterable(iterable,
              key: key == null ? null : keyProxy,
              value: value == null ? null : valueProxy);
        },
    'dart:collection@HashMap@fromIterables': (m.Scope scope) =>
        HashMap.fromIterables,
    'dart:collection@HashMap@fromEntries': (m.Scope scope) =>
        HashMap.fromEntries,
    'dart:collection@HashSet@#as': (m.Scope scope, target) =>
        () => target as HashSet,
    'dart:collection@HashSet@#is': (m.Scope scope, target) =>
        () => target is HashSet,
    'dart:collection@HashSet@iterator': (m.Scope scope, HashSet target) =>
        target.iterator,
    'dart:collection@HashSet@': (m.Scope scope) =>
        ({equals, hashCode, isValidKey}) {
          bool equalsProxy<E>($p0, $p1) {
            return engine.callFunctionPointer(scope, equals!, [$p0, $p1], {});
          }

          int hashCodeProxy<E>($p0) {
            return engine.callFunctionPointer(scope, hashCode!, [$p0], {});
          }

          bool isValidKeyProxy($p0) {
            return engine.callFunctionPointer(scope, isValidKey!, [$p0], {});
          }

          return HashSet(
              equals: equals == null ? null : equalsProxy,
              hashCode: hashCode == null ? null : hashCodeProxy,
              isValidKey: isValidKey == null ? null : isValidKeyProxy);
        },
    'dart:collection@HashSet@identity': (m.Scope scope) => HashSet.identity,
    'dart:collection@HashSet@from': (m.Scope scope) => HashSet.from,
    'dart:collection@HashSet@of': (m.Scope scope) => HashSet.of,
    'dart:collection@HasNextIterator@#as': (m.Scope scope, target) =>
        () => target as HasNextIterator,
    'dart:collection@HasNextIterator@#is': (m.Scope scope, target) =>
        () => target is HasNextIterator,
    'dart:collection@HasNextIterator@hasNext':
        (m.Scope scope, HasNextIterator target) => target.hasNext,
    'dart:collection@HasNextIterator@': (m.Scope scope) => <E>(iterator) {
          return HasNextIterator(iterator);
        },
    'dart:collection@HasNextIterator@next':
        (m.Scope scope, HasNextIterator target) => target.next,
    'dart:collection@LinkedHashMap@#as': (m.Scope scope, target) =>
        () => target as LinkedHashMap,
    'dart:collection@LinkedHashMap@#is': (m.Scope scope, target) =>
        () => target is LinkedHashMap,
    'dart:collection@LinkedHashMap@': (m.Scope scope) =>
        ({equals, hashCode, isValidKey}) {
          bool equalsProxy<K>($p0, $p1) {
            return engine.callFunctionPointer(scope, equals!, [$p0, $p1], {});
          }

          int hashCodeProxy<K>($p0) {
            return engine.callFunctionPointer(scope, hashCode!, [$p0], {});
          }

          bool isValidKeyProxy($p0) {
            return engine.callFunctionPointer(scope, isValidKey!, [$p0], {});
          }

          return LinkedHashMap(
              equals: equals == null ? null : equalsProxy,
              hashCode: hashCode == null ? null : hashCodeProxy,
              isValidKey: isValidKey == null ? null : isValidKeyProxy);
        },
    'dart:collection@LinkedHashMap@identity': (m.Scope scope) =>
        LinkedHashMap.identity,
    'dart:collection@LinkedHashMap@from': (m.Scope scope) => LinkedHashMap.from,
    'dart:collection@LinkedHashMap@of': (m.Scope scope) => LinkedHashMap.of,
    'dart:collection@LinkedHashMap@fromIterable': (m.Scope scope) =>
        (iterable, {key, value}) {
          K keyProxy<K>(element) {
            return engine.callFunctionPointer(scope, key!, [element], {});
          }

          V valueProxy<V>(element) {
            return engine.callFunctionPointer(scope, value!, [element], {});
          }

          return LinkedHashMap.fromIterable(iterable,
              key: key == null ? null : keyProxy,
              value: value == null ? null : valueProxy);
        },
    'dart:collection@LinkedHashMap@fromIterables': (m.Scope scope) =>
        LinkedHashMap.fromIterables,
    'dart:collection@LinkedHashMap@fromEntries': (m.Scope scope) =>
        LinkedHashMap.fromEntries,
    'dart:collection@LinkedHashSet@#as': (m.Scope scope, target) =>
        () => target as LinkedHashSet,
    'dart:collection@LinkedHashSet@#is': (m.Scope scope, target) =>
        () => target is LinkedHashSet,
    'dart:collection@LinkedHashSet@iterator':
        (m.Scope scope, LinkedHashSet target) => target.iterator,
    'dart:collection@LinkedHashSet@': (m.Scope scope) =>
        ({equals, hashCode, isValidKey}) {
          bool equalsProxy<E>($p0, $p1) {
            return engine.callFunctionPointer(scope, equals!, [$p0, $p1], {});
          }

          int hashCodeProxy<E>($p0) {
            return engine.callFunctionPointer(scope, hashCode!, [$p0], {});
          }

          bool isValidKeyProxy($p0) {
            return engine.callFunctionPointer(scope, isValidKey!, [$p0], {});
          }

          return LinkedHashSet(
              equals: equals == null ? null : equalsProxy,
              hashCode: hashCode == null ? null : hashCodeProxy,
              isValidKey: isValidKey == null ? null : isValidKeyProxy);
        },
    'dart:collection@LinkedHashSet@identity': (m.Scope scope) =>
        LinkedHashSet.identity,
    'dart:collection@LinkedHashSet@from': (m.Scope scope) => LinkedHashSet.from,
    'dart:collection@LinkedHashSet@of': (m.Scope scope) => LinkedHashSet.of,
    'dart:collection@LinkedHashSet@forEach':
        (m.Scope scope, LinkedHashSet target) => (action) {
              void actionProxy<E>(element) {
                engine.callFunctionPointer(scope, action!, [element], {});
              }

              target.forEach(actionProxy);
            },
    'dart:collection@LinkedList@#as': (m.Scope scope, target) =>
        () => target as LinkedList,
    'dart:collection@LinkedList@#is': (m.Scope scope, target) =>
        () => target is LinkedList,
    'dart:collection@LinkedList@iterator': (m.Scope scope, LinkedList target) =>
        target.iterator,
    'dart:collection@LinkedList@length': (m.Scope scope, LinkedList target) =>
        target.length,
    'dart:collection@LinkedList@first': (m.Scope scope, LinkedList target) =>
        target.first,
    'dart:collection@LinkedList@last': (m.Scope scope, LinkedList target) =>
        target.last,
    'dart:collection@LinkedList@single': (m.Scope scope, LinkedList target) =>
        target.single,
    'dart:collection@LinkedList@isEmpty': (m.Scope scope, LinkedList target) =>
        target.isEmpty,
    'dart:collection@LinkedList@': (m.Scope scope) =>
        <E extends LinkedListEntry<E>>() {
          return LinkedList<E>();
        },
    'dart:collection@LinkedList@addFirst': (m.Scope scope, LinkedList target) =>
        target.addFirst,
    'dart:collection@LinkedList@add': (m.Scope scope, LinkedList target) =>
        target.add,
    'dart:collection@LinkedList@addAll': (m.Scope scope, LinkedList target) =>
        target.addAll,
    'dart:collection@LinkedList@remove': (m.Scope scope, LinkedList target) =>
        target.remove,
    'dart:collection@LinkedList@contains': (m.Scope scope, LinkedList target) =>
        target.contains,
    'dart:collection@LinkedList@clear': (m.Scope scope, LinkedList target) =>
        target.clear,
    'dart:collection@LinkedList@forEach': (m.Scope scope, LinkedList target) =>
        (action) {
          void actionProxy<E>(entry) {
            engine.callFunctionPointer(scope, action!, [entry], {});
          }

          target.forEach(actionProxy);
        },
    'dart:collection@LinkedListEntry@#as': (m.Scope scope, target) =>
        () => target as LinkedListEntry,
    'dart:collection@LinkedListEntry@#is': (m.Scope scope, target) =>
        () => target is LinkedListEntry,
    'dart:collection@LinkedListEntry@list':
        (m.Scope scope, LinkedListEntry target) => target.list,
    'dart:collection@LinkedListEntry@next':
        (m.Scope scope, LinkedListEntry target) => target.next,
    'dart:collection@LinkedListEntry@previous':
        (m.Scope scope, LinkedListEntry target) => target.previous,
    'dart:collection@LinkedListEntry@unlink':
        (m.Scope scope, LinkedListEntry target) => target.unlink,
    'dart:collection@LinkedListEntry@insertAfter':
        (m.Scope scope, LinkedListEntry target) => target.insertAfter,
    'dart:collection@LinkedListEntry@insertBefore':
        (m.Scope scope, LinkedListEntry target) => target.insertBefore,
    'dart:collection@ListBase@#as': (m.Scope scope, target) =>
        () => target as ListBase,
    'dart:collection@ListBase@#is': (m.Scope scope, target) =>
        () => target is ListBase,
    'dart:collection@ListBase@iterator': (m.Scope scope, ListBase target) =>
        target.iterator,
    'dart:collection@ListBase@isEmpty': (m.Scope scope, ListBase target) =>
        target.isEmpty,
    'dart:collection@ListBase@isNotEmpty': (m.Scope scope, ListBase target) =>
        target.isNotEmpty,
    'dart:collection@ListBase@first': (m.Scope scope, ListBase target) =>
        target.first,
    'dart:collection@ListBase@first:set': (m.Scope scope, ListBase target) =>
        (other) => target.first = other,
    'dart:collection@ListBase@last': (m.Scope scope, ListBase target) =>
        target.last,
    'dart:collection@ListBase@last:set': (m.Scope scope, ListBase target) =>
        (other) => target.last = other,
    'dart:collection@ListBase@single': (m.Scope scope, ListBase target) =>
        target.single,
    'dart:collection@ListBase@reversed': (m.Scope scope, ListBase target) =>
        target.reversed,
    'dart:collection@ListBase@elementAt': (m.Scope scope, ListBase target) =>
        target.elementAt,
    'dart:collection@ListBase@followedBy': (m.Scope scope, ListBase target) =>
        target.followedBy,
    'dart:collection@ListBase@forEach': (m.Scope scope, ListBase target) =>
        (action) {
          void actionProxy<E>(element) {
            engine.callFunctionPointer(scope, action!, [element], {});
          }

          target.forEach(actionProxy);
        },
    'dart:collection@ListBase@contains': (m.Scope scope, ListBase target) =>
        target.contains,
    'dart:collection@ListBase@every': (m.Scope scope, ListBase target) =>
        (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          return target.every(testProxy);
        },
    'dart:collection@ListBase@any': (m.Scope scope, ListBase target) => (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          return target.any(testProxy);
        },
    'dart:collection@ListBase@firstWhere': (m.Scope scope, ListBase target) =>
        (test, {orElse}) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          E orElseProxy<E>() {
            return engine.callFunctionPointer(scope, orElse!, [], {});
          }

          return target.firstWhere(testProxy,
              orElse: orElse == null ? null : orElseProxy);
        },
    'dart:collection@ListBase@lastWhere': (m.Scope scope, ListBase target) =>
        (test, {orElse}) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          E orElseProxy<E>() {
            return engine.callFunctionPointer(scope, orElse!, [], {});
          }

          return target.lastWhere(testProxy,
              orElse: orElse == null ? null : orElseProxy);
        },
    'dart:collection@ListBase@singleWhere': (m.Scope scope, ListBase target) =>
        (test, {orElse}) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          E orElseProxy<E>() {
            return engine.callFunctionPointer(scope, orElse!, [], {});
          }

          return target.singleWhere(testProxy,
              orElse: orElse == null ? null : orElseProxy);
        },
    'dart:collection@ListBase@join': (m.Scope scope, ListBase target) =>
        target.join,
    'dart:collection@ListBase@where': (m.Scope scope, ListBase target) =>
        (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          return target.where(testProxy);
        },
    'dart:collection@ListBase@whereType': (m.Scope scope, ListBase target) =>
        target.whereType,
    'dart:collection@ListBase@map': (m.Scope scope, ListBase target) => (f) {
          T fProxy<T, E>(element) {
            return engine.callFunctionPointer(scope, f!, [element], {});
          }

          return target.map(fProxy);
        },
    'dart:collection@ListBase@expand': (m.Scope scope, ListBase target) => (f) {
          Iterable<T> fProxy<T, E>(element) {
            return engine.callFunctionPointer(scope, f!, [element], {});
          }

          return target.expand(fProxy);
        },
    'dart:collection@ListBase@reduce': (m.Scope scope, ListBase target) =>
        (combine) {
          E combineProxy<E>(previousValue, element) {
            return engine.callFunctionPointer(
                scope, combine!, [previousValue, element], {});
          }

          return target.reduce(combineProxy);
        },
    'dart:collection@ListBase@fold': (m.Scope scope, ListBase target) =>
        (initialValue, combine) {
          T combineProxy<T, E>(previousValue, element) {
            return engine.callFunctionPointer(
                scope, combine!, [previousValue, element], {});
          }

          return target.fold(initialValue, combineProxy);
        },
    'dart:collection@ListBase@skip': (m.Scope scope, ListBase target) =>
        target.skip,
    'dart:collection@ListBase@skipWhile': (m.Scope scope, ListBase target) =>
        (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          return target.skipWhile(testProxy);
        },
    'dart:collection@ListBase@take': (m.Scope scope, ListBase target) =>
        target.take,
    'dart:collection@ListBase@takeWhile': (m.Scope scope, ListBase target) =>
        (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          return target.takeWhile(testProxy);
        },
    'dart:collection@ListBase@toList': (m.Scope scope, ListBase target) =>
        target.toList,
    'dart:collection@ListBase@toSet': (m.Scope scope, ListBase target) =>
        target.toSet,
    'dart:collection@ListBase@add': (m.Scope scope, ListBase target) =>
        target.add,
    'dart:collection@ListBase@addAll': (m.Scope scope, ListBase target) =>
        target.addAll,
    'dart:collection@ListBase@remove': (m.Scope scope, ListBase target) =>
        target.remove,
    'dart:collection@ListBase@removeWhere': (m.Scope scope, ListBase target) =>
        (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          target.removeWhere(testProxy);
        },
    'dart:collection@ListBase@retainWhere': (m.Scope scope, ListBase target) =>
        (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          target.retainWhere(testProxy);
        },
    'dart:collection@ListBase@clear': (m.Scope scope, ListBase target) =>
        target.clear,
    'dart:collection@ListBase@cast': (m.Scope scope, ListBase target) =>
        target.cast,
    'dart:collection@ListBase@removeLast': (m.Scope scope, ListBase target) =>
        target.removeLast,
    'dart:collection@ListBase@sort': (m.Scope scope, ListBase target) =>
        ([m.FunctionPointer? compare]) {
          if (compare == null) {
            target.sort();
            return;
          }
          int compareProxy<E>(a, b) {
            return engine.callFunctionPointer(scope, compare!, [a, b], {});
          }

          target.sort(compareProxy);
          return;
        },
    'dart:collection@ListBase@shuffle': (m.Scope scope, ListBase target) =>
        target.shuffle,
    'dart:collection@ListBase@asMap': (m.Scope scope, ListBase target) =>
        target.asMap,
    'dart:collection@ListBase@+': (m.Scope scope, ListBase target) =>
        (other) => target + other,
    'dart:collection@ListBase@sublist': (m.Scope scope, ListBase target) =>
        target.sublist,
    'dart:collection@ListBase@getRange': (m.Scope scope, ListBase target) =>
        target.getRange,
    'dart:collection@ListBase@removeRange': (m.Scope scope, ListBase target) =>
        target.removeRange,
    'dart:collection@ListBase@fillRange': (m.Scope scope, ListBase target) =>
        target.fillRange,
    'dart:collection@ListBase@setRange': (m.Scope scope, ListBase target) =>
        target.setRange,
    'dart:collection@ListBase@replaceRange': (m.Scope scope, ListBase target) =>
        target.replaceRange,
    'dart:collection@ListBase@indexOf': (m.Scope scope, ListBase target) =>
        target.indexOf,
    'dart:collection@ListBase@indexWhere': (m.Scope scope, ListBase target) =>
        (test, [int? start]) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          if (start == null) {
            return target.indexWhere(testProxy);
          }
          return target.indexWhere(testProxy, start!);
        },
    'dart:collection@ListBase@lastIndexOf': (m.Scope scope, ListBase target) =>
        target.lastIndexOf,
    'dart:collection@ListBase@lastIndexWhere':
        (m.Scope scope, ListBase target) => (test, [int? start]) {
              bool testProxy<E>(element) {
                return engine.callFunctionPointer(scope, test!, [element], {});
              }

              if (start == null) {
                return target.lastIndexWhere(testProxy);
              }
              return target.lastIndexWhere(testProxy, start!);
            },
    'dart:collection@ListBase@insert': (m.Scope scope, ListBase target) =>
        target.insert,
    'dart:collection@ListBase@removeAt': (m.Scope scope, ListBase target) =>
        target.removeAt,
    'dart:collection@ListBase@insertAll': (m.Scope scope, ListBase target) =>
        target.insertAll,
    'dart:collection@ListBase@setAll': (m.Scope scope, ListBase target) =>
        target.setAll,
    'dart:collection@ListBase@toString': (m.Scope scope, ListBase target) =>
        target.toString,
    'dart:collection@ListBase@listToString': (m.Scope scope) =>
        ListBase.listToString,
    'dart:collection@MapBase@#as': (m.Scope scope, target) =>
        () => target as MapBase,
    'dart:collection@MapBase@#is': (m.Scope scope, target) =>
        () => target is MapBase,
    'dart:collection@MapBase@keys': (m.Scope scope, MapBase target) =>
        target.keys,
    'dart:collection@MapBase@entries': (m.Scope scope, MapBase target) =>
        target.entries,
    'dart:collection@MapBase@length': (m.Scope scope, MapBase target) =>
        target.length,
    'dart:collection@MapBase@isEmpty': (m.Scope scope, MapBase target) =>
        target.isEmpty,
    'dart:collection@MapBase@isNotEmpty': (m.Scope scope, MapBase target) =>
        target.isNotEmpty,
    'dart:collection@MapBase@values': (m.Scope scope, MapBase target) =>
        target.values,
    'dart:collection@MapBase@[]': (m.Scope scope, MapBase target) =>
        (index) => target[index],
    'dart:collection@MapBase@[]=': (m.Scope scope, MapBase target) =>
        (index, other) => target[index] = other,
    'dart:collection@MapBase@remove': (m.Scope scope, MapBase target) =>
        target.remove,
    'dart:collection@MapBase@clear': (m.Scope scope, MapBase target) =>
        target.clear,
    'dart:collection@MapBase@cast': (m.Scope scope, MapBase target) =>
        target.cast,
    'dart:collection@MapBase@forEach': (m.Scope scope, MapBase target) =>
        (action) {
          void actionProxy<K, V>(key, value) {
            engine.callFunctionPointer(scope, action!, [key, value], {});
          }

          target.forEach(actionProxy);
        },
    'dart:collection@MapBase@addAll': (m.Scope scope, MapBase target) =>
        target.addAll,
    'dart:collection@MapBase@containsValue': (m.Scope scope, MapBase target) =>
        target.containsValue,
    'dart:collection@MapBase@putIfAbsent': (m.Scope scope, MapBase target) =>
        (key, ifAbsent) {
          V ifAbsentProxy<V>() {
            return engine.callFunctionPointer(scope, ifAbsent!, [], {});
          }

          return target.putIfAbsent(key, ifAbsentProxy);
        },
    'dart:collection@MapBase@update': (m.Scope scope, MapBase target) =>
        (key, update, {ifAbsent}) {
          V updateProxy<V>(value) {
            return engine.callFunctionPointer(scope, update!, [value], {});
          }

          V ifAbsentProxy<V>() {
            return engine.callFunctionPointer(scope, ifAbsent!, [], {});
          }

          return target.update(key, updateProxy,
              ifAbsent: ifAbsent == null ? null : ifAbsentProxy);
        },
    'dart:collection@MapBase@updateAll': (m.Scope scope, MapBase target) =>
        (update) {
          V updateProxy<V, K>(key, value) {
            return engine.callFunctionPointer(scope, update!, [key, value], {});
          }

          target.updateAll(updateProxy);
        },
    'dart:collection@MapBase@map': (m.Scope scope, MapBase target) =>
        (transform) {
          MapEntry<K2, V2> transformProxy<K2, V2, K, V>(key, value) {
            return engine
                .callFunctionPointer(scope, transform!, [key, value], {});
          }

          return target.map(transformProxy);
        },
    'dart:collection@MapBase@addEntries': (m.Scope scope, MapBase target) =>
        target.addEntries,
    'dart:collection@MapBase@removeWhere': (m.Scope scope, MapBase target) =>
        (test) {
          bool testProxy<K, V>(key, value) {
            return engine.callFunctionPointer(scope, test!, [key, value], {});
          }

          target.removeWhere(testProxy);
        },
    'dart:collection@MapBase@containsKey': (m.Scope scope, MapBase target) =>
        target.containsKey,
    'dart:collection@MapBase@toString': (m.Scope scope, MapBase target) =>
        target.toString,
    'dart:collection@MapBase@mapToString': (m.Scope scope) =>
        MapBase.mapToString,
    'dart:collection@UnmodifiableMapBase@#as': (m.Scope scope, target) =>
        () => target as UnmodifiableMapBase,
    'dart:collection@UnmodifiableMapBase@#is': (m.Scope scope, target) =>
        () => target is UnmodifiableMapBase,
    'dart:collection@MapView@#as': (m.Scope scope, target) =>
        () => target as MapView,
    'dart:collection@MapView@#is': (m.Scope scope, target) =>
        () => target is MapView,
    'dart:collection@MapView@isEmpty': (m.Scope scope, MapView target) =>
        target.isEmpty,
    'dart:collection@MapView@isNotEmpty': (m.Scope scope, MapView target) =>
        target.isNotEmpty,
    'dart:collection@MapView@length': (m.Scope scope, MapView target) =>
        target.length,
    'dart:collection@MapView@keys': (m.Scope scope, MapView target) =>
        target.keys,
    'dart:collection@MapView@values': (m.Scope scope, MapView target) =>
        target.values,
    'dart:collection@MapView@entries': (m.Scope scope, MapView target) =>
        target.entries,
    'dart:collection@MapView@': (m.Scope scope) => <K, V>(map) {
          return MapView(map);
        },
    'dart:collection@MapView@cast': (m.Scope scope, MapView target) =>
        target.cast,
    'dart:collection@MapView@[]': (m.Scope scope, MapView target) =>
        (index) => target[index],
    'dart:collection@MapView@[]=': (m.Scope scope, MapView target) =>
        (index, other) => target[index] = other,
    'dart:collection@MapView@addAll': (m.Scope scope, MapView target) =>
        target.addAll,
    'dart:collection@MapView@clear': (m.Scope scope, MapView target) =>
        target.clear,
    'dart:collection@MapView@putIfAbsent': (m.Scope scope, MapView target) =>
        (key, ifAbsent) {
          V ifAbsentProxy<V>() {
            return engine.callFunctionPointer(scope, ifAbsent!, [], {});
          }

          return target.putIfAbsent(key, ifAbsentProxy);
        },
    'dart:collection@MapView@containsKey': (m.Scope scope, MapView target) =>
        target.containsKey,
    'dart:collection@MapView@containsValue': (m.Scope scope, MapView target) =>
        target.containsValue,
    'dart:collection@MapView@forEach': (m.Scope scope, MapView target) =>
        (action) {
          void actionProxy<K, V>(key, value) {
            engine.callFunctionPointer(scope, action!, [key, value], {});
          }

          target.forEach(actionProxy);
        },
    'dart:collection@MapView@remove': (m.Scope scope, MapView target) =>
        target.remove,
    'dart:collection@MapView@toString': (m.Scope scope, MapView target) =>
        target.toString,
    'dart:collection@MapView@addEntries': (m.Scope scope, MapView target) =>
        target.addEntries,
    'dart:collection@MapView@map': (m.Scope scope, MapView target) =>
        (transform) {
          MapEntry<K2, V2> transformProxy<K2, V2, K, V>(key, value) {
            return engine
                .callFunctionPointer(scope, transform!, [key, value], {});
          }

          return target.map(transformProxy);
        },
    'dart:collection@MapView@update': (m.Scope scope, MapView target) =>
        (key, update, {ifAbsent}) {
          V updateProxy<V>(value) {
            return engine.callFunctionPointer(scope, update!, [value], {});
          }

          V ifAbsentProxy<V>() {
            return engine.callFunctionPointer(scope, ifAbsent!, [], {});
          }

          return target.update(key, updateProxy,
              ifAbsent: ifAbsent == null ? null : ifAbsentProxy);
        },
    'dart:collection@MapView@updateAll': (m.Scope scope, MapView target) =>
        (update) {
          V updateProxy<V, K>(key, value) {
            return engine.callFunctionPointer(scope, update!, [key, value], {});
          }

          target.updateAll(updateProxy);
        },
    'dart:collection@MapView@removeWhere': (m.Scope scope, MapView target) =>
        (test) {
          bool testProxy<K, V>(key, value) {
            return engine.callFunctionPointer(scope, test!, [key, value], {});
          }

          target.removeWhere(testProxy);
        },
    'dart:collection@UnmodifiableMapView@#as': (m.Scope scope, target) =>
        () => target as UnmodifiableMapView,
    'dart:collection@UnmodifiableMapView@#is': (m.Scope scope, target) =>
        () => target is UnmodifiableMapView,
    'dart:collection@UnmodifiableMapView@': (m.Scope scope) => <K, V>(map) {
          return UnmodifiableMapView(map);
        },
    'dart:collection@UnmodifiableMapView@cast':
        (m.Scope scope, UnmodifiableMapView target) => target.cast,
    'dart:collection@Queue@#as': (m.Scope scope, target) =>
        () => target as Queue,
    'dart:collection@Queue@#is': (m.Scope scope, target) =>
        () => target is Queue,
    'dart:collection@Queue@': (m.Scope scope) => <E>() {
          return Queue();
        },
    'dart:collection@Queue@from': (m.Scope scope) => Queue.from,
    'dart:collection@Queue@of': (m.Scope scope) => Queue.of,
    'dart:collection@Queue@castFrom': (m.Scope scope) => Queue.castFrom,
    'dart:collection@Queue@cast': (m.Scope scope, Queue target) => target.cast,
    'dart:collection@Queue@removeFirst': (m.Scope scope, Queue target) =>
        target.removeFirst,
    'dart:collection@Queue@removeLast': (m.Scope scope, Queue target) =>
        target.removeLast,
    'dart:collection@Queue@addFirst': (m.Scope scope, Queue target) =>
        target.addFirst,
    'dart:collection@Queue@addLast': (m.Scope scope, Queue target) =>
        target.addLast,
    'dart:collection@Queue@add': (m.Scope scope, Queue target) => target.add,
    'dart:collection@Queue@remove': (m.Scope scope, Queue target) =>
        target.remove,
    'dart:collection@Queue@addAll': (m.Scope scope, Queue target) =>
        target.addAll,
    'dart:collection@Queue@removeWhere': (m.Scope scope, Queue target) =>
        (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          target.removeWhere(testProxy);
        },
    'dart:collection@Queue@retainWhere': (m.Scope scope, Queue target) =>
        (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          target.retainWhere(testProxy);
        },
    'dart:collection@Queue@clear': (m.Scope scope, Queue target) =>
        target.clear,
    'dart:collection@DoubleLinkedQueue@#as': (m.Scope scope, target) =>
        () => target as DoubleLinkedQueue,
    'dart:collection@DoubleLinkedQueue@#is': (m.Scope scope, target) =>
        () => target is DoubleLinkedQueue,
    'dart:collection@DoubleLinkedQueue@length':
        (m.Scope scope, DoubleLinkedQueue target) => target.length,
    'dart:collection@DoubleLinkedQueue@first':
        (m.Scope scope, DoubleLinkedQueue target) => target.first,
    'dart:collection@DoubleLinkedQueue@last':
        (m.Scope scope, DoubleLinkedQueue target) => target.last,
    'dart:collection@DoubleLinkedQueue@single':
        (m.Scope scope, DoubleLinkedQueue target) => target.single,
    'dart:collection@DoubleLinkedQueue@isEmpty':
        (m.Scope scope, DoubleLinkedQueue target) => target.isEmpty,
    'dart:collection@DoubleLinkedQueue@iterator':
        (m.Scope scope, DoubleLinkedQueue target) => target.iterator,
    'dart:collection@DoubleLinkedQueue@': (m.Scope scope) => <E>() {
          return DoubleLinkedQueue();
        },
    'dart:collection@DoubleLinkedQueue@from': (m.Scope scope) =>
        DoubleLinkedQueue.from,
    'dart:collection@DoubleLinkedQueue@of': (m.Scope scope) =>
        DoubleLinkedQueue.of,
    'dart:collection@DoubleLinkedQueue@cast':
        (m.Scope scope, DoubleLinkedQueue target) => target.cast,
    'dart:collection@DoubleLinkedQueue@addLast':
        (m.Scope scope, DoubleLinkedQueue target) => target.addLast,
    'dart:collection@DoubleLinkedQueue@addFirst':
        (m.Scope scope, DoubleLinkedQueue target) => target.addFirst,
    'dart:collection@DoubleLinkedQueue@add':
        (m.Scope scope, DoubleLinkedQueue target) => target.add,
    'dart:collection@DoubleLinkedQueue@addAll':
        (m.Scope scope, DoubleLinkedQueue target) => target.addAll,
    'dart:collection@DoubleLinkedQueue@removeLast':
        (m.Scope scope, DoubleLinkedQueue target) => target.removeLast,
    'dart:collection@DoubleLinkedQueue@removeFirst':
        (m.Scope scope, DoubleLinkedQueue target) => target.removeFirst,
    'dart:collection@DoubleLinkedQueue@remove':
        (m.Scope scope, DoubleLinkedQueue target) => target.remove,
    'dart:collection@DoubleLinkedQueue@removeWhere':
        (m.Scope scope, DoubleLinkedQueue target) => (test) {
              bool testProxy<E>(element) {
                return engine.callFunctionPointer(scope, test!, [element], {});
              }

              target.removeWhere(testProxy);
            },
    'dart:collection@DoubleLinkedQueue@retainWhere':
        (m.Scope scope, DoubleLinkedQueue target) => (test) {
              bool testProxy<E>(element) {
                return engine.callFunctionPointer(scope, test!, [element], {});
              }

              target.retainWhere(testProxy);
            },
    'dart:collection@DoubleLinkedQueue@firstEntry':
        (m.Scope scope, DoubleLinkedQueue target) => target.firstEntry,
    'dart:collection@DoubleLinkedQueue@lastEntry':
        (m.Scope scope, DoubleLinkedQueue target) => target.lastEntry,
    'dart:collection@DoubleLinkedQueue@clear':
        (m.Scope scope, DoubleLinkedQueue target) => target.clear,
    'dart:collection@DoubleLinkedQueue@forEachEntry':
        (m.Scope scope, DoubleLinkedQueue target) => (action) {
              void actionProxy(element) {
                engine.callFunctionPointer(scope, action!, [element], {});
              }

              target.forEachEntry(actionProxy);
            },
    'dart:collection@DoubleLinkedQueue@toString':
        (m.Scope scope, DoubleLinkedQueue target) => target.toString,
    'dart:collection@ListQueue@#as': (m.Scope scope, target) =>
        () => target as ListQueue,
    'dart:collection@ListQueue@#is': (m.Scope scope, target) =>
        () => target is ListQueue,
    'dart:collection@ListQueue@iterator': (m.Scope scope, ListQueue target) =>
        target.iterator,
    'dart:collection@ListQueue@isEmpty': (m.Scope scope, ListQueue target) =>
        target.isEmpty,
    'dart:collection@ListQueue@length': (m.Scope scope, ListQueue target) =>
        target.length,
    'dart:collection@ListQueue@first': (m.Scope scope, ListQueue target) =>
        target.first,
    'dart:collection@ListQueue@last': (m.Scope scope, ListQueue target) =>
        target.last,
    'dart:collection@ListQueue@single': (m.Scope scope, ListQueue target) =>
        target.single,
    'dart:collection@ListQueue@': (m.Scope scope) =>
        <E>([int? initialCapacity]) {
          if (initialCapacity == null) {
            return ListQueue();
          }
          return ListQueue(initialCapacity!);
        },
    'dart:collection@ListQueue@from': (m.Scope scope) => ListQueue.from,
    'dart:collection@ListQueue@of': (m.Scope scope) => ListQueue.of,
    'dart:collection@ListQueue@cast': (m.Scope scope, ListQueue target) =>
        target.cast,
    'dart:collection@ListQueue@forEach': (m.Scope scope, ListQueue target) =>
        (f) {
          void fProxy<E>(element) {
            engine.callFunctionPointer(scope, f!, [element], {});
          }

          target.forEach(fProxy);
        },
    'dart:collection@ListQueue@elementAt': (m.Scope scope, ListQueue target) =>
        target.elementAt,
    'dart:collection@ListQueue@toList': (m.Scope scope, ListQueue target) =>
        target.toList,
    'dart:collection@ListQueue@add': (m.Scope scope, ListQueue target) =>
        target.add,
    'dart:collection@ListQueue@addAll': (m.Scope scope, ListQueue target) =>
        target.addAll,
    'dart:collection@ListQueue@remove': (m.Scope scope, ListQueue target) =>
        target.remove,
    'dart:collection@ListQueue@removeWhere':
        (m.Scope scope, ListQueue target) => (test) {
              bool testProxy<E>(element) {
                return engine.callFunctionPointer(scope, test!, [element], {});
              }

              target.removeWhere(testProxy);
            },
    'dart:collection@ListQueue@retainWhere':
        (m.Scope scope, ListQueue target) => (test) {
              bool testProxy<E>(element) {
                return engine.callFunctionPointer(scope, test!, [element], {});
              }

              target.retainWhere(testProxy);
            },
    'dart:collection@ListQueue@clear': (m.Scope scope, ListQueue target) =>
        target.clear,
    'dart:collection@ListQueue@toString': (m.Scope scope, ListQueue target) =>
        target.toString,
    'dart:collection@ListQueue@addLast': (m.Scope scope, ListQueue target) =>
        target.addLast,
    'dart:collection@ListQueue@addFirst': (m.Scope scope, ListQueue target) =>
        target.addFirst,
    'dart:collection@ListQueue@removeFirst':
        (m.Scope scope, ListQueue target) => target.removeFirst,
    'dart:collection@ListQueue@removeLast': (m.Scope scope, ListQueue target) =>
        target.removeLast,
    'dart:collection@SetBase@#as': (m.Scope scope, target) =>
        () => target as SetBase,
    'dart:collection@SetBase@#is': (m.Scope scope, target) =>
        () => target is SetBase,
    'dart:collection@SetBase@iterator': (m.Scope scope, SetBase target) =>
        target.iterator,
    'dart:collection@SetBase@length': (m.Scope scope, SetBase target) =>
        target.length,
    'dart:collection@SetBase@isEmpty': (m.Scope scope, SetBase target) =>
        target.isEmpty,
    'dart:collection@SetBase@isNotEmpty': (m.Scope scope, SetBase target) =>
        target.isNotEmpty,
    'dart:collection@SetBase@single': (m.Scope scope, SetBase target) =>
        target.single,
    'dart:collection@SetBase@first': (m.Scope scope, SetBase target) =>
        target.first,
    'dart:collection@SetBase@last': (m.Scope scope, SetBase target) =>
        target.last,
    'dart:collection@SetBase@add': (m.Scope scope, SetBase target) =>
        target.add,
    'dart:collection@SetBase@contains': (m.Scope scope, SetBase target) =>
        target.contains,
    'dart:collection@SetBase@lookup': (m.Scope scope, SetBase target) =>
        target.lookup,
    'dart:collection@SetBase@remove': (m.Scope scope, SetBase target) =>
        target.remove,
    'dart:collection@SetBase@toSet': (m.Scope scope, SetBase target) =>
        target.toSet,
    'dart:collection@SetBase@cast': (m.Scope scope, SetBase target) =>
        target.cast,
    'dart:collection@SetBase@followedBy': (m.Scope scope, SetBase target) =>
        target.followedBy,
    'dart:collection@SetBase@whereType': (m.Scope scope, SetBase target) =>
        target.whereType,
    'dart:collection@SetBase@clear': (m.Scope scope, SetBase target) =>
        target.clear,
    'dart:collection@SetBase@addAll': (m.Scope scope, SetBase target) =>
        target.addAll,
    'dart:collection@SetBase@removeAll': (m.Scope scope, SetBase target) =>
        target.removeAll,
    'dart:collection@SetBase@retainAll': (m.Scope scope, SetBase target) =>
        target.retainAll,
    'dart:collection@SetBase@removeWhere': (m.Scope scope, SetBase target) =>
        (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          target.removeWhere(testProxy);
        },
    'dart:collection@SetBase@retainWhere': (m.Scope scope, SetBase target) =>
        (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          target.retainWhere(testProxy);
        },
    'dart:collection@SetBase@containsAll': (m.Scope scope, SetBase target) =>
        target.containsAll,
    'dart:collection@SetBase@union': (m.Scope scope, SetBase target) =>
        target.union,
    'dart:collection@SetBase@intersection': (m.Scope scope, SetBase target) =>
        target.intersection,
    'dart:collection@SetBase@difference': (m.Scope scope, SetBase target) =>
        target.difference,
    'dart:collection@SetBase@toList': (m.Scope scope, SetBase target) =>
        target.toList,
    'dart:collection@SetBase@map': (m.Scope scope, SetBase target) => (f) {
          T fProxy<T, E>(element) {
            return engine.callFunctionPointer(scope, f!, [element], {});
          }

          return target.map(fProxy);
        },
    'dart:collection@SetBase@toString': (m.Scope scope, SetBase target) =>
        target.toString,
    'dart:collection@SetBase@where': (m.Scope scope, SetBase target) => (f) {
          bool fProxy<E>(element) {
            return engine.callFunctionPointer(scope, f!, [element], {});
          }

          return target.where(fProxy);
        },
    'dart:collection@SetBase@expand': (m.Scope scope, SetBase target) => (f) {
          Iterable<T> fProxy<T, E>(element) {
            return engine.callFunctionPointer(scope, f!, [element], {});
          }

          return target.expand(fProxy);
        },
    'dart:collection@SetBase@forEach': (m.Scope scope, SetBase target) => (f) {
          void fProxy<E>(element) {
            engine.callFunctionPointer(scope, f!, [element], {});
          }

          target.forEach(fProxy);
        },
    'dart:collection@SetBase@reduce': (m.Scope scope, SetBase target) =>
        (combine) {
          E combineProxy<E>(value, element) {
            return engine
                .callFunctionPointer(scope, combine!, [value, element], {});
          }

          return target.reduce(combineProxy);
        },
    'dart:collection@SetBase@fold': (m.Scope scope, SetBase target) =>
        (initialValue, combine) {
          T combineProxy<T, E>(previousValue, element) {
            return engine.callFunctionPointer(
                scope, combine!, [previousValue, element], {});
          }

          return target.fold(initialValue, combineProxy);
        },
    'dart:collection@SetBase@every': (m.Scope scope, SetBase target) => (f) {
          bool fProxy<E>(element) {
            return engine.callFunctionPointer(scope, f!, [element], {});
          }

          return target.every(fProxy);
        },
    'dart:collection@SetBase@join': (m.Scope scope, SetBase target) =>
        target.join,
    'dart:collection@SetBase@any': (m.Scope scope, SetBase target) => (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          return target.any(testProxy);
        },
    'dart:collection@SetBase@take': (m.Scope scope, SetBase target) =>
        target.take,
    'dart:collection@SetBase@takeWhile': (m.Scope scope, SetBase target) =>
        (test) {
          bool testProxy<E>(value) {
            return engine.callFunctionPointer(scope, test!, [value], {});
          }

          return target.takeWhile(testProxy);
        },
    'dart:collection@SetBase@skip': (m.Scope scope, SetBase target) =>
        target.skip,
    'dart:collection@SetBase@skipWhile': (m.Scope scope, SetBase target) =>
        (test) {
          bool testProxy<E>(value) {
            return engine.callFunctionPointer(scope, test!, [value], {});
          }

          return target.skipWhile(testProxy);
        },
    'dart:collection@SetBase@firstWhere': (m.Scope scope, SetBase target) =>
        (test, {orElse}) {
          bool testProxy<E>(value) {
            return engine.callFunctionPointer(scope, test!, [value], {});
          }

          E orElseProxy<E>() {
            return engine.callFunctionPointer(scope, orElse!, [], {});
          }

          return target.firstWhere(testProxy,
              orElse: orElse == null ? null : orElseProxy);
        },
    'dart:collection@SetBase@lastWhere': (m.Scope scope, SetBase target) =>
        (test, {orElse}) {
          bool testProxy<E>(value) {
            return engine.callFunctionPointer(scope, test!, [value], {});
          }

          E orElseProxy<E>() {
            return engine.callFunctionPointer(scope, orElse!, [], {});
          }

          return target.lastWhere(testProxy,
              orElse: orElse == null ? null : orElseProxy);
        },
    'dart:collection@SetBase@singleWhere': (m.Scope scope, SetBase target) =>
        (test, {orElse}) {
          bool testProxy<E>(value) {
            return engine.callFunctionPointer(scope, test!, [value], {});
          }

          E orElseProxy<E>() {
            return engine.callFunctionPointer(scope, orElse!, [], {});
          }

          return target.singleWhere(testProxy,
              orElse: orElse == null ? null : orElseProxy);
        },
    'dart:collection@SetBase@elementAt': (m.Scope scope, SetBase target) =>
        target.elementAt,
    'dart:collection@SetBase@setToString': (m.Scope scope) =>
        SetBase.setToString,
    'dart:collection@UnmodifiableSetView@#as': (m.Scope scope, target) =>
        () => target as UnmodifiableSetView,
    'dart:collection@UnmodifiableSetView@#is': (m.Scope scope, target) =>
        () => target is UnmodifiableSetView,
    'dart:collection@UnmodifiableSetView@length':
        (m.Scope scope, UnmodifiableSetView target) => target.length,
    'dart:collection@UnmodifiableSetView@iterator':
        (m.Scope scope, UnmodifiableSetView target) => target.iterator,
    'dart:collection@UnmodifiableSetView@': (m.Scope scope) => <E>(source) {
          return UnmodifiableSetView(source);
        },
    'dart:collection@UnmodifiableSetView@contains':
        (m.Scope scope, UnmodifiableSetView target) => target.contains,
    'dart:collection@UnmodifiableSetView@lookup':
        (m.Scope scope, UnmodifiableSetView target) => target.lookup,
    'dart:collection@UnmodifiableSetView@toSet':
        (m.Scope scope, UnmodifiableSetView target) => target.toSet,
    'dart:collection@SplayTreeMap@#as': (m.Scope scope, target) =>
        () => target as SplayTreeMap,
    'dart:collection@SplayTreeMap@#is': (m.Scope scope, target) =>
        () => target is SplayTreeMap,
    'dart:collection@SplayTreeMap@isEmpty':
        (m.Scope scope, SplayTreeMap target) => target.isEmpty,
    'dart:collection@SplayTreeMap@isNotEmpty':
        (m.Scope scope, SplayTreeMap target) => target.isNotEmpty,
    'dart:collection@SplayTreeMap@length':
        (m.Scope scope, SplayTreeMap target) => target.length,
    'dart:collection@SplayTreeMap@keys': (m.Scope scope, SplayTreeMap target) =>
        target.keys,
    'dart:collection@SplayTreeMap@values':
        (m.Scope scope, SplayTreeMap target) => target.values,
    'dart:collection@SplayTreeMap@entries':
        (m.Scope scope, SplayTreeMap target) => target.entries,
    'dart:collection@SplayTreeMap@': (m.Scope scope) =>
        ([m.FunctionPointer? compare, m.FunctionPointer? isValidKey]) {
          if (compare == null && isValidKey == null) {
            return SplayTreeMap();
          }
          int compareProxy<K>(key1, key2) {
            return engine
                .callFunctionPointer(scope, compare!, [key1, key2], {});
          }

          if (isValidKey == null) {
            return SplayTreeMap(compareProxy);
          }
          bool isValidKeyProxy(potentialKey) {
            return engine
                .callFunctionPointer(scope, isValidKey, [potentialKey], {});
          }

          return SplayTreeMap(compareProxy, isValidKeyProxy);
        },
    'dart:collection@SplayTreeMap@from': (m.Scope scope) =>
        (other, [m.FunctionPointer? compare, m.FunctionPointer? isValidKey]) {
          if (compare == null && isValidKey == null) {
            return SplayTreeMap.from(other);
          }
          int compareProxy<K>(key1, key2) {
            return engine
                .callFunctionPointer(scope, compare!, [key1, key2], {});
          }

          if (isValidKey == null) {
            return SplayTreeMap.from(other, compareProxy);
          }
          bool isValidKeyProxy(potentialKey) {
            return engine
                .callFunctionPointer(scope, isValidKey!, [potentialKey], {});
          }

          return SplayTreeMap.from(other, compareProxy, isValidKeyProxy);
        },
    'dart:collection@SplayTreeMap@of': (m.Scope scope) =>
        (other, [m.FunctionPointer? compare, m.FunctionPointer? isValidKey]) {
          if (compare == null && isValidKey == null) {
            return SplayTreeMap.of(other);
          }
          int compareProxy<K>(key1, key2) {
            return engine
                .callFunctionPointer(scope, compare!, [key1, key2], {});
          }

          if (isValidKey == null) {
            return SplayTreeMap.of(other, compareProxy);
          }
          bool isValidKeyProxy(potentialKey) {
            return engine
                .callFunctionPointer(scope, isValidKey!, [potentialKey], {});
          }

          return SplayTreeMap.of(other, compareProxy, isValidKeyProxy);
        },
    'dart:collection@SplayTreeMap@fromIterable': (m.Scope scope) =>
        (iterable, {compare, isValidKey, key, value}) {
          int compareProxy<K>(key1, key2) {
            return engine
                .callFunctionPointer(scope, compare!, [key1, key2], {});
          }

          bool isValidKeyProxy(potentialKey) {
            return engine
                .callFunctionPointer(scope, isValidKey!, [potentialKey], {});
          }

          K keyProxy<K>(element) {
            return engine.callFunctionPointer(scope, key!, [element], {});
          }

          V valueProxy<V>(element) {
            return engine.callFunctionPointer(scope, value!, [element], {});
          }

          return SplayTreeMap.fromIterable(iterable,
              compare: compare == null ? null : compareProxy,
              isValidKey: isValidKey == null ? null : isValidKeyProxy,
              key: key == null ? null : keyProxy,
              value: value == null ? null : valueProxy);
        },
    'dart:collection@SplayTreeMap@fromIterables': (m.Scope scope) =>
        (keys, values,
            [m.FunctionPointer? compare, m.FunctionPointer? isValidKey]) {
          if (compare == null && isValidKey == null) {
            return SplayTreeMap.fromIterables(keys, values);
          }
          int compareProxy<K>(key1, key2) {
            return engine
                .callFunctionPointer(scope, compare!, [key1, key2], {});
          }

          if (isValidKey == null) {
            return SplayTreeMap.fromIterables(keys, values, compareProxy);
          }
          bool isValidKeyProxy(potentialKey) {
            return engine
                .callFunctionPointer(scope, isValidKey!, [potentialKey], {});
          }

          return SplayTreeMap.fromIterables(
              keys, values, compareProxy, isValidKeyProxy);
        },
    'dart:collection@SplayTreeMap@[]': (m.Scope scope, SplayTreeMap target) =>
        (index) => target[index],
    'dart:collection@SplayTreeMap@remove':
        (m.Scope scope, SplayTreeMap target) => target.remove,
    'dart:collection@SplayTreeMap@[]=': (m.Scope scope, SplayTreeMap target) =>
        (index, other) => target[index] = other,
    'dart:collection@SplayTreeMap@putIfAbsent':
        (m.Scope scope, SplayTreeMap target) => (key, ifAbsent) {
              V ifAbsentProxy<V>() {
                return engine.callFunctionPointer(scope, ifAbsent!, [], {});
              }

              return target.putIfAbsent(key, ifAbsentProxy);
            },
    'dart:collection@SplayTreeMap@update':
        (m.Scope scope, SplayTreeMap target) => (key, update, {ifAbsent}) {
              V updateProxy<V>(value) {
                return engine.callFunctionPointer(scope, update!, [value], {});
              }

              V ifAbsentProxy<V>() {
                return engine.callFunctionPointer(scope, ifAbsent!, [], {});
              }

              return target.update(key, updateProxy,
                  ifAbsent: ifAbsent == null ? null : ifAbsentProxy);
            },
    'dart:collection@SplayTreeMap@updateAll': (m.Scope scope,
            SplayTreeMap target) =>
        (update) {
          V updateProxy<V, K>(key, value) {
            return engine.callFunctionPointer(scope, update!, [key, value], {});
          }

          target.updateAll(updateProxy);
        },
    'dart:collection@SplayTreeMap@addAll':
        (m.Scope scope, SplayTreeMap target) => target.addAll,
    'dart:collection@SplayTreeMap@forEach':
        (m.Scope scope, SplayTreeMap target) => (f) {
              void fProxy<K, V>(key, value) {
                engine.callFunctionPointer(scope, f!, [key, value], {});
              }

              target.forEach(fProxy);
            },
    'dart:collection@SplayTreeMap@clear':
        (m.Scope scope, SplayTreeMap target) => target.clear,
    'dart:collection@SplayTreeMap@containsKey':
        (m.Scope scope, SplayTreeMap target) => target.containsKey,
    'dart:collection@SplayTreeMap@containsValue':
        (m.Scope scope, SplayTreeMap target) => target.containsValue,
    'dart:collection@SplayTreeMap@firstKey':
        (m.Scope scope, SplayTreeMap target) => target.firstKey,
    'dart:collection@SplayTreeMap@lastKey':
        (m.Scope scope, SplayTreeMap target) => target.lastKey,
    'dart:collection@SplayTreeMap@lastKeyBefore':
        (m.Scope scope, SplayTreeMap target) => target.lastKeyBefore,
    'dart:collection@SplayTreeMap@firstKeyAfter':
        (m.Scope scope, SplayTreeMap target) => target.firstKeyAfter,
    'dart:collection@SplayTreeSet@#as': (m.Scope scope, target) =>
        () => target as SplayTreeSet,
    'dart:collection@SplayTreeSet@#is': (m.Scope scope, target) =>
        () => target is SplayTreeSet,
    'dart:collection@SplayTreeSet@iterator':
        (m.Scope scope, SplayTreeSet target) => target.iterator,
    'dart:collection@SplayTreeSet@length':
        (m.Scope scope, SplayTreeSet target) => target.length,
    'dart:collection@SplayTreeSet@isEmpty':
        (m.Scope scope, SplayTreeSet target) => target.isEmpty,
    'dart:collection@SplayTreeSet@isNotEmpty':
        (m.Scope scope, SplayTreeSet target) => target.isNotEmpty,
    'dart:collection@SplayTreeSet@first':
        (m.Scope scope, SplayTreeSet target) => target.first,
    'dart:collection@SplayTreeSet@last': (m.Scope scope, SplayTreeSet target) =>
        target.last,
    'dart:collection@SplayTreeSet@single':
        (m.Scope scope, SplayTreeSet target) => target.single,
    'dart:collection@SplayTreeSet@': (m.Scope scope) =>
        ([m.FunctionPointer? compare, m.FunctionPointer? isValidKey]) {
          if (compare == null && isValidKey == null) {
            return SplayTreeSet();
          }
          int compareProxy<E>(key1, key2) {
            return engine
                .callFunctionPointer(scope, compare!, [key1, key2], {});
          }

          if (isValidKey == null) {
            return SplayTreeSet(compareProxy);
          }
          bool isValidKeyProxy(potentialKey) {
            return engine
                .callFunctionPointer(scope, isValidKey!, [potentialKey], {});
          }

          return SplayTreeSet(compareProxy, isValidKeyProxy);
        },
    'dart:collection@SplayTreeSet@from': (m.Scope scope) => (elements,
            [m.FunctionPointer? compare, m.FunctionPointer? isValidKey]) {
          if (compare == null && isValidKey == null) {
            return SplayTreeSet.from(elements);
          }
          int compareProxy<E>(key1, key2) {
            return engine
                .callFunctionPointer(scope, compare!, [key1, key2], {});
          }

          if (isValidKey == null) {
            return SplayTreeSet.from(elements, compareProxy);
          }
          bool isValidKeyProxy(potentialKey) {
            return engine
                .callFunctionPointer(scope, isValidKey!, [potentialKey], {});
          }

          return SplayTreeSet.from(elements, compareProxy, isValidKeyProxy);
        },
    'dart:collection@SplayTreeSet@of': (m.Scope scope) => (elements,
            [m.FunctionPointer? compare, m.FunctionPointer? isValidKey]) {
          if (compare == null && isValidKey == null) {
            return SplayTreeSet.of(elements);
          }
          int compareProxy<E>(key1, key2) {
            return engine
                .callFunctionPointer(scope, compare!, [key1, key2], {});
          }

          if (isValidKey == null) {
            return SplayTreeSet.of(elements, compareProxy);
          }
          bool isValidKeyProxy(potentialKey) {
            return engine
                .callFunctionPointer(scope, isValidKey!, [potentialKey], {});
          }

          return SplayTreeSet.of(elements, compareProxy, isValidKeyProxy);
        },
    'dart:collection@SplayTreeSet@cast': (m.Scope scope, SplayTreeSet target) =>
        target.cast,
    'dart:collection@SplayTreeSet@contains':
        (m.Scope scope, SplayTreeSet target) => target.contains,
    'dart:collection@SplayTreeSet@add': (m.Scope scope, SplayTreeSet target) =>
        target.add,
    'dart:collection@SplayTreeSet@remove':
        (m.Scope scope, SplayTreeSet target) => target.remove,
    'dart:collection@SplayTreeSet@addAll':
        (m.Scope scope, SplayTreeSet target) => target.addAll,
    'dart:collection@SplayTreeSet@removeAll':
        (m.Scope scope, SplayTreeSet target) => target.removeAll,
    'dart:collection@SplayTreeSet@retainAll':
        (m.Scope scope, SplayTreeSet target) => target.retainAll,
    'dart:collection@SplayTreeSet@lookup':
        (m.Scope scope, SplayTreeSet target) => target.lookup,
    'dart:collection@SplayTreeSet@intersection':
        (m.Scope scope, SplayTreeSet target) => target.intersection,
    'dart:collection@SplayTreeSet@difference':
        (m.Scope scope, SplayTreeSet target) => target.difference,
    'dart:collection@SplayTreeSet@union':
        (m.Scope scope, SplayTreeSet target) => target.union,
    'dart:collection@SplayTreeSet@clear':
        (m.Scope scope, SplayTreeSet target) => target.clear,
    'dart:collection@SplayTreeSet@toSet':
        (m.Scope scope, SplayTreeSet target) => target.toSet,
    'dart:collection@SplayTreeSet@toString':
        (m.Scope scope, SplayTreeSet target) => target.toString,
  };
}
