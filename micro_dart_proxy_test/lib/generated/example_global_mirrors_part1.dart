import 'dart:async';

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

const Map<String, Function> globalGetterMirrors = {
  'print': _print$,
  'num.tryParse': _num_tryParse$,
  'String.fromCharCodes': _String_fromCharCodes_$,
  'String.fromCharCode': _String_fromCharCode_$,
  'String.fromEnvironment': _String_fromEnvironment_$,
  'int.fromEnvironment': _int_fromEnvironment_$,
  'int.parse': _int_parse$,
  'int.tryParse': _int_tryParse$,
  'List.filled': _List_filled_$,
  'List.empty': _List_empty_$,
  'List.from': _List_from_$,
  'List.of': _List_of_$,
  'List.generate': _List_generate_$,
  'List.unmodifiable': _List_unmodifiable_$,
  'List.castFrom': _List_castFrom$,
  'List.copyRange': _List_copyRange$,
  'List.writeIterable': _List_writeIterable$,
  'Future.': _Future__$,
  'Future.microtask': _Future_microtask_$,
  'Future.sync': _Future_sync_$,
  'Future.value': _Future_value_$,
  'Future.error': _Future_error_$,
  'Future.delayed': _Future_delayed_$,
  'Future.any': _Future_any$,
  'Duration.microsecondsPerMillisecond': _Duration_microsecondsPerMillisecond$,
  'Duration.millisecondsPerSecond': _Duration_millisecondsPerSecond$,
  'Duration.secondsPerMinute': _Duration_secondsPerMinute$,
  'Duration.minutesPerHour': _Duration_minutesPerHour$,
  'Duration.hoursPerDay': _Duration_hoursPerDay$,
  'Duration.microsecondsPerSecond': _Duration_microsecondsPerSecond$,
  'Duration.microsecondsPerMinute': _Duration_microsecondsPerMinute$,
  'Duration.microsecondsPerHour': _Duration_microsecondsPerHour$,
  'Duration.microsecondsPerDay': _Duration_microsecondsPerDay$,
  'Duration.millisecondsPerMinute': _Duration_millisecondsPerMinute$,
  'Duration.millisecondsPerHour': _Duration_millisecondsPerHour$,
  'Duration.millisecondsPerDay': _Duration_millisecondsPerDay$,
  'Duration.secondsPerHour': _Duration_secondsPerHour$,
  'Duration.secondsPerDay': _Duration_secondsPerDay$,
  'Duration.minutesPerDay': _Duration_minutesPerDay$,
  'Duration.zero': _Duration_zero$,
  'Duration.': _Duration__$,
  'Iterable.generate': _Iterable_generate_$,
  'Iterable.empty': _Iterable_empty_$,
  'Iterable.castFrom': _Iterable_castFrom$,
  'Iterable.iterableToShortString': _Iterable_iterableToShortString$,
  'Iterable.iterableToFullString': _Iterable_iterableToFullString$,
  '_Enum.': __Enum__$,
  'EnumName|get#name': _Enum_name$,
  'Enum.compareByIndex': _Enum_compareByIndex$,
  'Enum.compareByName': _Enum_compareByName$,
  'Map.': _Map__$,
  'Map.from': _Map_from_$,
  'Map.of': _Map_of_$,
  'Map.unmodifiable': _Map_unmodifiable_$,
  'Map.identity': _Map_identity_$,
  'Map.fromIterable': _Map_fromIterable_$,
  'Map.fromIterables': _Map_fromIterables_$,
  'Map.fromEntries': _Map_fromEntries_$,
  'Map.castFrom': _Map_castFrom$,
  'MapEntry.': _MapEntry__$,
  'Object.': _Object__$,
  'Object.hash': _Object_hash$,
  'Object.hashAll': _Object_hashAll$,
  'Object.hashAllUnordered': _Object_hashAllUnordered$,
  'Deprecated.': _Deprecated__$,
  'bool.fromEnvironment': _bool_fromEnvironment_$,
  'bool.hasEnvironment': _bool_hasEnvironment_$,
  'bool.parse': _bool_parse$,
  'bool.tryParse': _bool_tryParse$,
  'AssertionError.': _AssertionError__$,
};
const Map<String, Function> globalSetterMirrors = {};
const Map<String, m.ClassMirror> classMirrors = {
  'num': m.ClassMirror('num', {
    'hashCode': _num_hashCode$,
    'isNaN': _num_isNaN$,
    'isNegative': _num_isNegative$,
    'isInfinite': _num_isInfinite$,
    'isFinite': _num_isFinite$,
    'sign': _num_sign$,
    '#as': num_as$,
    '#is': num_is$,
    '==': _num_eq$$,
    'compareTo': _num_compareTo$,
    '+': _num_plus$$,
    '-': _num_minus$$,
    '*': _num_times$$,
    '%': _num_surplus$$,
    '/': _num_over$$,
    '~/': _num_division$$,
    'unary-': _num_unary_minus$$,
    'remainder': _num_remainder$,
    '<': _num_low$$,
    '<=': _num_low_eq$$,
    '>': _num_more$$,
    '>=': _num_more_eq$$,
    'abs': _num_abs$,
    'round': _num_round$,
    'floor': _num_floor$,
    'ceil': _num_ceil$,
    'truncate': _num_truncate$,
    'roundToDouble': _num_roundToDouble$,
    'floorToDouble': _num_floorToDouble$,
    'ceilToDouble': _num_ceilToDouble$,
    'truncateToDouble': _num_truncateToDouble$,
    'clamp': _num_clamp$,
    'toInt': _num_toInt$,
    'toDouble': _num_toDouble$,
    'toStringAsFixed': _num_toStringAsFixed$,
    'toStringAsExponential': _num_toStringAsExponential$,
    'toStringAsPrecision': _num_toStringAsPrecision$,
    'toString': _num_toString$,
    'parse': _num_parse$,
  }, {}),
  'String': m.ClassMirror('String', {
    'length': _String_length$,
    'hashCode': _String_hashCode$,
    'isEmpty': _String_isEmpty$,
    'isNotEmpty': _String_isNotEmpty$,
    'runes': _String_runes$,
    '#as': String_as$,
    '#is': String_is$,
    'codeUnits': _String_codeUnits$,
    '[]': _String_$index$$,
    'codeUnitAt': _String_codeUnitAt$,
    '==': _String_eq$$,
    'compareTo': _String_compareTo$,
    'endsWith': _String_endsWith$,
    'startsWith': _String_startsWith$,
    'indexOf': _String_indexOf$,
    'lastIndexOf': _String_lastIndexOf$,
    '+': _String_plus$$,
    'substring': _String_substring$,
    'trim': _String_trim$,
    'trimLeft': _String_trimLeft$,
    'trimRight': _String_trimRight$,
    '*': _String_times$$,
    'padLeft': _String_padLeft$,
    'padRight': _String_padRight$,
    'contains': _String_contains$,
    'replaceFirst': _String_replaceFirst$,
    'replaceFirstMapped': _String_replaceFirstMapped$,
    'replaceAll': _String_replaceAll$,
    'replaceAllMapped': _String_replaceAllMapped$,
    'replaceRange': _String_replaceRange$,
    'split': _String_split$,
    'splitMapJoin': _String_splitMapJoin$,
    'toLowerCase': _String_toLowerCase$,
    'toUpperCase': _String_toUpperCase$,
  }, {}),
  'int': m.ClassMirror('int', {
    'hashCode': _num_hashCode$,
    'isNaN': _num_isNaN$,
    'isNegative': _num_isNegative$,
    'isInfinite': _num_isInfinite$,
    'isFinite': _num_isFinite$,
    '==': _num_eq$$,
    'compareTo': _num_compareTo$,
    '+': _num_plus$$,
    '-': _num_minus$$,
    '*': _num_times$$,
    '%': _num_surplus$$,
    '/': _num_over$$,
    '~/': _num_division$$,
    'unary-': _num_unary_minus$$,
    'remainder': _num_remainder$,
    '<': _num_low$$,
    '<=': _num_low_eq$$,
    '>': _num_more$$,
    '>=': _num_more_eq$$,
    'abs': _num_abs$,
    'round': _num_round$,
    'floor': _num_floor$,
    'ceil': _num_ceil$,
    'truncate': _num_truncate$,
    'roundToDouble': _num_roundToDouble$,
    'floorToDouble': _num_floorToDouble$,
    'ceilToDouble': _num_ceilToDouble$,
    'truncateToDouble': _num_truncateToDouble$,
    'clamp': _num_clamp$,
    'toInt': _num_toInt$,
    'toDouble': _num_toDouble$,
    'toStringAsFixed': _num_toStringAsFixed$,
    'toStringAsExponential': _num_toStringAsExponential$,
    'toStringAsPrecision': _num_toStringAsPrecision$,
    'toString': _num_toString$,
    'parse': _num_parse$,
    '#as': int_as$,
    '#is': int_is$,
    'isEven': _int_isEven$,
    'isOdd': _int_isOdd$,
    'bitLength': _int_bitLength$,
    'sign': _int_sign$,
    '&': _int_bit_and$$,
    '|': _int_bit_or$$,
    '^': _int_bit_xor$$,
    '~': _int_bit_non$$,
    '<<': _int_left_move$$,
    '>>': _int_right_move$$,
    '>>>': _int_unsign_right_move$$,
    'modPow': _int_modPow$,
    'modInverse': _int_modInverse$,
    'gcd': _int_gcd$,
    'toUnsigned': _int_toUnsigned$,
    'toSigned': _int_toSigned$,
    'toRadixString': _int_toRadixString$,
  }, {}),
  'List': m.ClassMirror('List', {
    '#as': List_as$,
    '#is': List_is$,
    'length': _List_length$,
    'reversed': _List_reversed$,
    'cast': _List_cast$,
    '[]': _List_$index$$,
    '[]=': _List_$index_set$$,
    'add': _List_add$,
    'addAll': _List_addAll$,
    'sort': _List_sort$,
    'shuffle': _List_shuffle$,
    'indexOf': _List_indexOf$,
    'indexWhere': _List_indexWhere$,
    'lastIndexWhere': _List_lastIndexWhere$,
    'lastIndexOf': _List_lastIndexOf$,
    'clear': _List_clear$,
    'insert': _List_insert$,
    'insertAll': _List_insertAll$,
    'setAll': _List_setAll$,
    'remove': _List_remove$,
    'removeAt': _List_removeAt$,
    'removeLast': _List_removeLast$,
    'removeWhere': _List_removeWhere$,
    'retainWhere': _List_retainWhere$,
    '+': _List_plus$$,
    'sublist': _List_sublist$,
    'getRange': _List_getRange$,
    'setRange': _List_setRange$,
    'removeRange': _List_removeRange$,
    'fillRange': _List_fillRange$,
    'replaceRange': _List_replaceRange$,
    'asMap': _List_asMap$,
    '==': _List_eq$$,
    'iterator': _Iterable_iterator$,
    'isEmpty': _Iterable_isEmpty$,
    'isNotEmpty': _Iterable_isNotEmpty$,
    'first': _Iterable_first$,
    'last': _Iterable_last$,
    'single': _Iterable_single$,
    'followedBy': _Iterable_followedBy$,
    'map': _Iterable_map$,
    'where': _Iterable_where$,
    'whereType': _Iterable_whereType$,
    'expand': _Iterable_expand$,
    'contains': _Iterable_contains$,
    'forEach': _Iterable_forEach$,
    'reduce': _Iterable_reduce$,
    'fold': _Iterable_fold$,
    'every': _Iterable_every$,
    'join': _Iterable_join$,
    'any': _Iterable_any$,
    'toList': _Iterable_toList$,
    'toSet': _Iterable_toSet$,
    'take': _Iterable_take$,
    'takeWhile': _Iterable_takeWhile$,
    'skip': _Iterable_skip$,
    'skipWhile': _Iterable_skipWhile$,
    'firstWhere': _Iterable_firstWhere$,
    'lastWhere': _Iterable_lastWhere$,
    'singleWhere': _Iterable_singleWhere$,
    'elementAt': _Iterable_elementAt$,
    'toString': _Iterable_toString$,
  }, {
    'first': _List_first_set$,
    'last': _List_last_set$,
    'length': _List_length_set$,
  }),
  'Iterable': m.ClassMirror('Iterable', {
    '#as': Iterable_as$,
    '#is': Iterable_is$,
    'iterator': _Iterable_iterator$,
    'length': _Iterable_length$,
    'isEmpty': _Iterable_isEmpty$,
    'isNotEmpty': _Iterable_isNotEmpty$,
    'first': _Iterable_first$,
    'last': _Iterable_last$,
    'single': _Iterable_single$,
    'cast': _Iterable_cast$,
    'followedBy': _Iterable_followedBy$,
    'map': _Iterable_map$,
    'where': _Iterable_where$,
    'whereType': _Iterable_whereType$,
    'expand': _Iterable_expand$,
    'contains': _Iterable_contains$,
    'forEach': _Iterable_forEach$,
    'reduce': _Iterable_reduce$,
    'fold': _Iterable_fold$,
    'every': _Iterable_every$,
    'join': _Iterable_join$,
    'any': _Iterable_any$,
    'toList': _Iterable_toList$,
    'toSet': _Iterable_toSet$,
    'take': _Iterable_take$,
    'takeWhile': _Iterable_takeWhile$,
    'skip': _Iterable_skip$,
    'skipWhile': _Iterable_skipWhile$,
    'firstWhere': _Iterable_firstWhere$,
    'lastWhere': _Iterable_lastWhere$,
    'singleWhere': _Iterable_singleWhere$,
    'elementAt': _Iterable_elementAt$,
    'toString': _Iterable_toString$,
  }, {}),
  'Duration': m.ClassMirror('Duration', {
    '#as': Duration_as$,
    '#is': Duration_is$,
    'inDays': _Duration_inDays$,
    'inHours': _Duration_inHours$,
    'inMinutes': _Duration_inMinutes$,
    'inSeconds': _Duration_inSeconds$,
    'inMilliseconds': _Duration_inMilliseconds$,
    'inMicroseconds': _Duration_inMicroseconds$,
    'hashCode': _Duration_hashCode$,
    'isNegative': _Duration_isNegative$,
    '+': _Duration_plus$$,
    '-': _Duration_minus$$,
    '*': _Duration_times$$,
    '~/': _Duration_division$$,
    '<': _Duration_low$$,
    '>': _Duration_more$$,
    '<=': _Duration_low_eq$$,
    '>=': _Duration_more_eq$$,
    '==': _Duration_eq$$,
    'compareTo': _Duration_compareTo$,
    'toString': _Duration_toString$,
    'abs': _Duration_abs$,
    'unary-': _Duration_unary_minus$$,
  }, {}),
  'Future': m.ClassMirror('Future', {
    '#as': Future_as$,
    '#is': Future_is$,
    'wait': _Future_wait$,
    'forEach': _Future_forEach$,
    'doWhile': _Future_doWhile$,
    'then': _Future_then$,
    'catchError': _Future_catchError$,
    'whenComplete': _Future_whenComplete$,
    'asStream': _Future_asStream$,
    'timeout': _Future_timeout$,
  }, {}),
  'FutureOr': m.ClassMirror(
    'FutureOr',
    {
      '#as': FutureOr_as$,
      '#is': FutureOr_is$,
    },
    {},
  ),
  'Iterator': m.ClassMirror(
    'Iterator',
    {
      '#as': Iterator_as$,
      '#is': Iterator_is$,
      'current': _Iterator_current$,
      'moveNext': _Iterator_moveNext$,
    },
    {},
  ),
  '_Enum': m.ClassMirror(
    '_Enum',
    {
      '#as': Enum_as$,
      '#is': Enum_is$,
      'index': __Enum_index$,
    },
    {},
  ),
  'Enum': m.ClassMirror(
    'Enum',
    {
      '#as': Enum_as$,
      '#is': Enum_is$,
      'index': _Enum_index$,
    },
    {},
  ),
  'Map': m.ClassMirror(
    'Map',
    {
      '#as': Map_as$,
      '#is': Map_is$,
      'entries': _Map_entries$,
      'keys': _Map_keys$,
      'values': _Map_values$,
      'length': _Map_length$,
      'isEmpty': _Map_isEmpty$,
      'isNotEmpty': _Map_isNotEmpty$,
      'cast': _Map_cast$,
      'containsValue': _Map_containsValue$,
      'containsKey': _Map_containsKey$,
      '[]': _Map_$index$$,
      '[]=': _Map_$index_set$$,
      'map': _Map_map$,
      'addEntries': _Map_addEntries$,
      'update': _Map_update$,
      'updateAll': _Map_updateAll$,
      'removeWhere': _Map_removeWhere$,
      'putIfAbsent': _Map_putIfAbsent$,
      'addAll': _Map_addAll$,
      'remove': _Map_remove$,
      'clear': _Map_clear$,
      'forEach': _Map_forEach$,
    },
    {},
  ),
  'MapEntry': m.ClassMirror(
    'MapEntry',
    {
      '#as': MapEntry_as$,
      '#is': MapEntry_is$,
      'key': _MapEntry_key$,
      'value': _MapEntry_value$,
      'toString': _MapEntry_toString$,
    },
    {},
  ),
  'Object': m.ClassMirror(
    'Object',
    {
      'hashCode': _Object_hashCode$,
      'runtimeType': _Object_runtimeType$,
      '#as': Object_as$,
      '#is': Object_is$,
      '==': _Object_eq$$,
      'toString': _Object_toString$,
      'noSuchMethod': _Object_noSuchMethod$,
    },
    {},
  ),
  'Deprecated': m.ClassMirror(
    'Deprecated',
    {
      '#as': Deprecated_as$,
      '#is': Deprecated_is$,
      'message': _Deprecated_message$,
      'toString': _Deprecated_toString$,
    },
    {},
  ),
  'bool': m.ClassMirror(
    'bool',
    {
      '#as': bool_as$,
      '#is': bool_is$,
      'hashCode': _bool_hashCode$,
      '&': _bool_bit_and$$,
      '|': _bool_bit_or$$,
      '^': _bool_bit_xor$$,
      'toString': _bool_toString$,
    },
    {},
  ),
  'AssertionError': m.ClassMirror(
    'AssertionError',
    {
      '#as': AssertionError_as$,
      '#is': AssertionError_is$,
      'message': _AssertionError_message$,
      'toString': _AssertionError_toString$,
    },
    {},
  ),
};
const Map<Type, String> refTypeMirrors = {
  num: 'num',
  int: 'int',
  double: 'double',
  Iterable: 'Iterable',
  Iterator: 'Iterator',
  List: 'List',
  Duration: 'Duration',
  Future: 'Future',
  FutureOr: 'FutureOr',
  String: 'String',
  bool: 'bool',
};

Function num_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as num;
Function num_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is num;
Function _num_hashCode$(
  m.Scope scope$,
  num target$,
) =>
    () {
      return target$.hashCode;
    };
Function _num_isNaN$(
  m.Scope scope$,
  num target$,
) =>
    () {
      return target$.isNaN;
    };
Function _num_isNegative$(
  m.Scope scope$,
  num target$,
) =>
    () {
      return target$.isNegative;
    };
Function _num_isInfinite$(
  m.Scope scope$,
  num target$,
) =>
    () {
      return target$.isInfinite;
    };
Function _num_isFinite$(
  m.Scope scope$,
  num target$,
) =>
    () {
      return target$.isFinite;
    };
Function _num_sign$(
  m.Scope scope$,
  num target$,
) =>
    () {
      return target$.sign;
    };
Function _num_eq$$(
  m.Scope scope$,
  num target$,
) =>
    (Object other$) => target$ == other$;
Function _num_compareTo$(
  m.Scope scope$,
  num target$,
) =>
    target$.compareTo;
Function _num_plus$$(
  m.Scope scope$,
  num target$,
) =>
    (num other$) => target$ + other$;
Function _num_minus$$(
  m.Scope scope$,
  num target$,
) =>
    (num other$) => target$ - other$;
Function _num_times$$(
  m.Scope scope$,
  num target$,
) =>
    (num other$) => target$ * other$;
Function _num_surplus$$(
  m.Scope scope$,
  num target$,
) =>
    (num other$) => target$ % other$;
Function _num_over$$(
  m.Scope scope$,
  num target$,
) =>
    (num other$) => target$ / other$;
Function _num_division$$(
  m.Scope scope$,
  num target$,
) =>
    (num other$) => target$ ~/ other$;
Function _num_unary_minus$$(
  m.Scope scope$,
  num target$,
) =>
    () => -target$;
Function _num_remainder$(
  m.Scope scope$,
  num target$,
) =>
    target$.remainder;
Function _num_low$$(
  m.Scope scope$,
  num target$,
) =>
    (num other$) => target$ < other$;
Function _num_low_eq$$(
  m.Scope scope$,
  num target$,
) =>
    (num other$) => target$ <= other$;
Function _num_more$$(
  m.Scope scope$,
  num target$,
) =>
    (num other$) => target$ > other$;
Function _num_more_eq$$(
  m.Scope scope$,
  num target$,
) =>
    (num other$) => target$ >= other$;
Function _num_abs$(
  m.Scope scope$,
  num target$,
) =>
    target$.abs;
Function _num_round$(
  m.Scope scope$,
  num target$,
) =>
    target$.round;
Function _num_floor$(
  m.Scope scope$,
  num target$,
) =>
    target$.floor;
Function _num_ceil$(
  m.Scope scope$,
  num target$,
) =>
    target$.ceil;
Function _num_truncate$(
  m.Scope scope$,
  num target$,
) =>
    target$.truncate;
Function _num_roundToDouble$(
  m.Scope scope$,
  num target$,
) =>
    target$.roundToDouble;
Function _num_floorToDouble$(
  m.Scope scope$,
  num target$,
) =>
    target$.floorToDouble;
Function _num_ceilToDouble$(
  m.Scope scope$,
  num target$,
) =>
    target$.ceilToDouble;
Function _num_truncateToDouble$(
  m.Scope scope$,
  num target$,
) =>
    target$.truncateToDouble;
Function _num_clamp$(
  m.Scope scope$,
  num target$,
) =>
    target$.clamp;
Function _num_toInt$(
  m.Scope scope$,
  num target$,
) =>
    target$.toInt;
Function _num_toDouble$(
  m.Scope scope$,
  num target$,
) =>
    target$.toDouble;
Function _num_toStringAsFixed$(
  m.Scope scope$,
  num target$,
) =>
    target$.toStringAsFixed;
Function _num_toStringAsExponential$(
  m.Scope scope$,
  num target$,
) =>
    target$.toStringAsExponential;
Function _num_toStringAsPrecision$(
  m.Scope scope$,
  num target$,
) =>
    target$.toStringAsPrecision;
Function _num_toString$(
  m.Scope scope$,
  num target$,
) =>
    target$.toString;
Function _num_parse$(m.Scope scope$) => (
      String input, [
      m.FunctionPointer? onError,
    ]) {
      if (onError == null) {
        return num.parse(input);
      }
      num onErrorProxy(String onError_input$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            onError!,
            [onError_input$],
            {},
          );
      return num.parse(
        input,
        onError == null ? null : onErrorProxy,
      );
    };
Function _num_tryParse$(m.Scope scope$) => num.tryParse;

Function int_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as int;
Function int_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is int;
Function _int_isEven$(
  m.Scope scope$,
  int target$,
) =>
    () {
      return target$.isEven;
    };
Function _int_isOdd$(
  m.Scope scope$,
  int target$,
) =>
    () {
      return target$.isOdd;
    };
Function _int_bitLength$(
  m.Scope scope$,
  int target$,
) =>
    () {
      return target$.bitLength;
    };
Function _int_sign$(
  m.Scope scope$,
  int target$,
) =>
    () {
      return target$.sign;
    };
Function _int_fromEnvironment_$(m.Scope scope$) => int.fromEnvironment;
Function _int_bit_and$$(
  m.Scope scope$,
  int target$,
) =>
    (int other$) => target$ & other$;
Function _int_bit_or$$(
  m.Scope scope$,
  int target$,
) =>
    (int other$) => target$ | other$;
Function _int_bit_xor$$(
  m.Scope scope$,
  int target$,
) =>
    (int other$) => target$ ^ other$;
Function _int_bit_non$$(
  m.Scope scope$,
  int target$,
) =>
    () => ~target$;
Function _int_left_move$$(
  m.Scope scope$,
  int target$,
) =>
    (int other$) => target$ << other$;
Function _int_right_move$$(
  m.Scope scope$,
  int target$,
) =>
    (int other$) => target$ >> other$;
Function _int_unsign_right_move$$(
  m.Scope scope$,
  int target$,
) =>
    (int other$) => target$ >>> other$;
Function _int_modPow$(
  m.Scope scope$,
  int target$,
) =>
    target$.modPow;
Function _int_modInverse$(
  m.Scope scope$,
  int target$,
) =>
    target$.modInverse;
Function _int_gcd$(
  m.Scope scope$,
  int target$,
) =>
    target$.gcd;
Function _int_toUnsigned$(
  m.Scope scope$,
  int target$,
) =>
    target$.toUnsigned;
Function _int_toSigned$(
  m.Scope scope$,
  int target$,
) =>
    target$.toSigned;
Function _int_unary_minus$$(
  m.Scope scope$,
  int target$,
) =>
    () => -target$;
Function _int_abs$(
  m.Scope scope$,
  int target$,
) =>
    target$.abs;
Function _int_round$(
  m.Scope scope$,
  int target$,
) =>
    target$.round;
Function _int_floor$(
  m.Scope scope$,
  int target$,
) =>
    target$.floor;
Function _int_ceil$(
  m.Scope scope$,
  int target$,
) =>
    target$.ceil;
Function _int_truncate$(
  m.Scope scope$,
  int target$,
) =>
    target$.truncate;
Function _int_roundToDouble$(
  m.Scope scope$,
  int target$,
) =>
    target$.roundToDouble;
Function _int_floorToDouble$(
  m.Scope scope$,
  int target$,
) =>
    target$.floorToDouble;
Function _int_ceilToDouble$(
  m.Scope scope$,
  int target$,
) =>
    target$.ceilToDouble;
Function _int_truncateToDouble$(
  m.Scope scope$,
  int target$,
) =>
    target$.truncateToDouble;
Function _int_toString$(
  m.Scope scope$,
  int target$,
) =>
    target$.toString;
Function _int_toRadixString$(
  m.Scope scope$,
  int target$,
) =>
    target$.toRadixString;
Function _int_parse$(m.Scope scope$) => int.parse;
Function _int_tryParse$(m.Scope scope$) => int.tryParse;

Function String_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as String;
Function String_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is String;
Function _String_length$(
  m.Scope scope$,
  String target$,
) =>
    () {
      return target$.length;
    };
Function _String_hashCode$(
  m.Scope scope$,
  String target$,
) =>
    () {
      return target$.hashCode;
    };
Function _String_isEmpty$(
  m.Scope scope$,
  String target$,
) =>
    () {
      return target$.isEmpty;
    };
Function _String_isNotEmpty$(
  m.Scope scope$,
  String target$,
) =>
    () {
      return target$.isNotEmpty;
    };
Function _String_codeUnits$(
  m.Scope scope$,
  String target$,
) =>
    () {
      return target$.codeUnits;
    };
Function _String_runes$(
  m.Scope scope$,
  String target$,
) =>
    () {
      return target$.runes;
    };
Function _String_fromCharCodes_$(m.Scope scope$) => String.fromCharCodes;
Function _String_fromCharCode_$(m.Scope scope$) => String.fromCharCode;
Function _String_fromEnvironment_$(m.Scope scope$) => String.fromEnvironment;
Function _String_$index$$(
  m.Scope scope$,
  String target$,
) =>
    (int index) => target$[index];
Function _String_codeUnitAt$(
  m.Scope scope$,
  String target$,
) =>
    target$.codeUnitAt;
Function _String_eq$$(
  m.Scope scope$,
  String target$,
) =>
    (Object other$) => target$ == other$;
Function _String_compareTo$(
  m.Scope scope$,
  String target$,
) =>
    target$.compareTo;
Function _String_endsWith$(
  m.Scope scope$,
  String target$,
) =>
    target$.endsWith;
Function _String_startsWith$(
  m.Scope scope$,
  String target$,
) =>
    target$.startsWith;
Function _String_indexOf$(
  m.Scope scope$,
  String target$,
) =>
    target$.indexOf;
Function _String_lastIndexOf$(
  m.Scope scope$,
  String target$,
) =>
    target$.lastIndexOf;
Function _String_plus$$(
  m.Scope scope$,
  String target$,
) =>
    (String other$) => target$ + other$;
Function _String_substring$(
  m.Scope scope$,
  String target$,
) =>
    target$.substring;
Function _String_trim$(
  m.Scope scope$,
  String target$,
) =>
    target$.trim;
Function _String_trimLeft$(
  m.Scope scope$,
  String target$,
) =>
    target$.trimLeft;
Function _String_trimRight$(
  m.Scope scope$,
  String target$,
) =>
    target$.trimRight;
Function _String_times$$(
  m.Scope scope$,
  String target$,
) =>
    (int other$) => target$ * other$;
Function _String_padLeft$(
  m.Scope scope$,
  String target$,
) =>
    target$.padLeft;
Function _String_padRight$(
  m.Scope scope$,
  String target$,
) =>
    target$.padRight;
Function _String_contains$(
  m.Scope scope$,
  String target$,
) =>
    target$.contains;
Function _String_replaceFirst$(
  m.Scope scope$,
  String target$,
) =>
    target$.replaceFirst;
Function _String_replaceFirstMapped$(
  m.Scope scope$,
  String target$,
) =>
    (
      Pattern from,
      m.FunctionPointer replace, [
      int? startIndex,
    ]) {
      String replaceProxy(Match replace_match$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            replace,
            [replace_match$],
            {},
          );
      if (startIndex == null) {
        return target$.replaceFirstMapped(
          from,
          replaceProxy,
        );
      }
      return target$.replaceFirstMapped(
        from,
        replaceProxy,
        startIndex!,
      );
    };
Function _String_replaceAll$(
  m.Scope scope$,
  String target$,
) =>
    target$.replaceAll;
Function _String_replaceAllMapped$(
  m.Scope scope$,
  String target$,
) =>
    (
      Pattern from,
      m.FunctionPointer replace,
    ) {
      String replaceProxy(Match replace_match$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            replace,
            [replace_match$],
            {},
          );
      return target$.replaceAllMapped(
        from,
        replaceProxy,
      );
    };
Function _String_replaceRange$(
  m.Scope scope$,
  String target$,
) =>
    target$.replaceRange;
Function _String_split$(
  m.Scope scope$,
  String target$,
) =>
    target$.split;
Function _String_splitMapJoin$(
  m.Scope scope$,
  String target$,
) =>
    (
      Pattern pattern, {
      m.FunctionPointer? onMatch,
      m.FunctionPointer? onNonMatch,
    }) {
      String onMatchProxy(Match onMatch_$p0$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            onMatch!,
            [onMatch_$p0$],
            {},
          );
      String onNonMatchProxy(String onNonMatch_$p0$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            onNonMatch!,
            [onNonMatch_$p0$],
            {},
          );
      return target$.splitMapJoin(
        pattern,
        onMatch: onMatch == null ? null : onMatchProxy,
        onNonMatch: onNonMatch == null ? null : onNonMatchProxy,
      );
    };
Function _String_toLowerCase$(
  m.Scope scope$,
  String target$,
) =>
    target$.toLowerCase;
Function _String_toUpperCase$(
  m.Scope scope$,
  String target$,
) =>
    target$.toUpperCase;

Function _print$(m.Scope scope$) => print;

Function List_as$<E>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as List<E>;
Function List_is$<E>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is List<E>;
void _List_first_set$<E>(
  m.Scope scope$,
  List target$,
) =>
    (dynamic other$) {
      target$.first = other$;
    };
void _List_last_set$<E>(
  m.Scope scope$,
  List target$,
) =>
    (dynamic other$) {
      target$.last = other$;
    };
Function _List_length$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    () {
      return target$.length;
    };
void _List_length_set$<E>(
  m.Scope scope$,
  List target$,
) =>
    (dynamic other$) {
      target$.length = other$;
    };
Function _List_reversed$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    () {
      return target$.reversed;
    };
Function _List_filled_$(m.Scope scope$) => List.filled;
Function _List_empty_$(m.Scope scope$) => List.empty;
Function _List_from_$(m.Scope scope$) => List.from;
Function _List_of_$(m.Scope scope$) => List.of;
Function _List_generate_$(m.Scope scope$) => (
      int length,
      m.FunctionPointer generator, {
      bool? growable,
    }) {
      dynamic generatorProxy(int generator_index$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            generator,
            [generator_index$],
            {},
          );
      return List.generate(
        length,
        generatorProxy,
        growable: growable ?? true,
      );
    };
Function _List_unmodifiable_$(m.Scope scope$) => List.unmodifiable;
Function _List_castFrom$<S, T>(m.Scope scope$) => List.castFrom<S, T>;
Function _List_copyRange$<T>(m.Scope scope$) => List.copyRange<T>;
Function _List_writeIterable$<T>(m.Scope scope$) => List.writeIterable<T>;
Function _List_cast$<E, R>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.cast<R>;
Function _List_$index$$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    (int index) => target$[index];
Function _List_$index_set$$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    (
      int index,
      E other,
    ) =>
        target$[index] = other;
Function _List_add$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.add;
Function _List_addAll$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.addAll;
Function _List_sort$(
  m.Scope scope$,
  List target$,
) =>
    ([m.FunctionPointer? compare]) {
      if (compare == null) {
        target$.sort();
      }
      int compareProxy(
        dynamic compare_a$,
        dynamic compare_b$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            compare!,
            [
              compare_a$,
              compare_b$,
            ],
            {},
          );
      target$.sort(compare == null ? null : compareProxy);
      return;
    };
Function _List_shuffle$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.shuffle;
Function _List_indexOf$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.indexOf;
Function _List_indexWhere$(
  m.Scope scope$,
  List target$,
) =>
    (
      m.FunctionPointer test, [
      int? start,
    ]) {
      bool testProxy(dynamic test_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_element$],
            {},
          );
      if (start == null) {
        return target$.indexWhere(testProxy);
      }
      return target$.indexWhere(
        testProxy,
        start!,
      );
    };
Function _List_lastIndexWhere$(
  m.Scope scope$,
  List target$,
) =>
    (
      m.FunctionPointer test, [
      int? start,
    ]) {
      bool testProxy(dynamic test_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_element$],
            {},
          );
      if (start == null) {
        return target$.lastIndexWhere(testProxy);
      }
      return target$.lastIndexWhere(
        testProxy,
        start!,
      );
    };
Function _List_lastIndexOf$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.lastIndexOf;
Function _List_clear$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.clear;
Function _List_insert$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.insert;
Function _List_insertAll$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.insertAll;
Function _List_setAll$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.setAll;
Function _List_remove$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.remove;
Function _List_removeAt$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.removeAt;
Function _List_removeLast$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.removeLast;
Function _List_removeWhere$(
  m.Scope scope$,
  List target$,
) =>
    (m.FunctionPointer test) {
      bool testProxy(dynamic test_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_element$],
            {},
          );
      target$.removeWhere(testProxy);
    };
Function _List_retainWhere$(
  m.Scope scope$,
  List target$,
) =>
    (m.FunctionPointer test) {
      bool testProxy(dynamic test_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_element$],
            {},
          );
      target$.retainWhere(testProxy);
    };
Function _List_plus$$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    (List<E> other$) => target$ + other$;
Function _List_sublist$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.sublist;
Function _List_getRange$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.getRange;
Function _List_setRange$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.setRange;
Function _List_removeRange$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.removeRange;
Function _List_fillRange$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.fillRange;
Function _List_replaceRange$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.replaceRange;
Function _List_asMap$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    target$.asMap;
Function _List_eq$$<E>(
  m.Scope scope$,
  List<E> target$,
) =>
    (Object other$) => target$ == other$;

Function Iterable_as$<E>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Iterable<E>;
Function Iterable_is$<E>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Iterable<E>;
Function _Iterable_iterator$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    () {
      return target$.iterator;
    };
Function _Iterable_length$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    () {
      return target$.length;
    };
Function _Iterable_isEmpty$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    () {
      return target$.isEmpty;
    };
Function _Iterable_isNotEmpty$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    () {
      return target$.isNotEmpty;
    };
Function _Iterable_first$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    () {
      return target$.first;
    };
Function _Iterable_last$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    () {
      return target$.last;
    };
Function _Iterable_single$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    () {
      return target$.single;
    };
Function _Iterable_generate_$(m.Scope scope$) => (
      int count, [
      m.FunctionPointer? generator,
    ]) {
      if (generator == null) {
        return Iterable.generate(count);
      }
      dynamic generatorProxy(int generator_index$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            generator!,
            [generator_index$],
            {},
          );
      return Iterable.generate(
        count,
        generator == null ? null : generatorProxy,
      );
    };
Function _Iterable_empty_$(m.Scope scope$) => Iterable.empty;
Function _Iterable_castFrom$<S, T>(m.Scope scope$) => Iterable.castFrom<S, T>;
Function _Iterable_cast$<E, R>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    target$.cast<R>;
Function _Iterable_followedBy$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    target$.followedBy;
Function _Iterable_map$(
  m.Scope scope$,
  Iterable target$,
) =>
    (m.FunctionPointer toElement) {
      dynamic toElementProxy(dynamic toElement_e$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            toElement,
            [toElement_e$],
            {},
          );
      return target$.map(toElementProxy);
    };
Function _Iterable_where$(
  m.Scope scope$,
  Iterable target$,
) =>
    (m.FunctionPointer test) {
      bool testProxy(dynamic test_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_element$],
            {},
          );
      return target$.where(testProxy);
    };
Function _Iterable_whereType$<E, T>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    target$.whereType<T>;
Function _Iterable_expand$(
  m.Scope scope$,
  Iterable target$,
) =>
    (m.FunctionPointer toElements) {
      Iterable toElementsProxy(dynamic toElements_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            toElements,
            [toElements_element$],
            {},
          );
      return target$.expand(toElementsProxy);
    };
Function _Iterable_contains$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    target$.contains;
Function _Iterable_forEach$(
  m.Scope scope$,
  Iterable target$,
) =>
    (m.FunctionPointer action) {
      void actionProxy(dynamic action_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            action,
            [action_element$],
            {},
          );
      target$.forEach(actionProxy);
    };
Function _Iterable_reduce$(
  m.Scope scope$,
  Iterable target$,
) =>
    (m.FunctionPointer combine) {
      dynamic combineProxy(
        dynamic combine_value$,
        dynamic combine_element$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            combine,
            [
              combine_value$,
              combine_element$,
            ],
            {},
          );
      return target$.reduce(combineProxy);
    };
Function _Iterable_fold$(
  m.Scope scope$,
  Iterable target$,
) =>
    (
      dynamic initialValue,
      m.FunctionPointer combine,
    ) {
      dynamic combineProxy(
        dynamic combine_previousValue$,
        dynamic combine_element$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            combine,
            [
              combine_previousValue$,
              combine_element$,
            ],
            {},
          );
      return target$.fold(
        initialValue,
        combineProxy,
      );
    };
Function _Iterable_every$(
  m.Scope scope$,
  Iterable target$,
) =>
    (m.FunctionPointer test) {
      bool testProxy(dynamic test_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_element$],
            {},
          );
      return target$.every(testProxy);
    };
Function _Iterable_join$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    target$.join;
Function _Iterable_any$(
  m.Scope scope$,
  Iterable target$,
) =>
    (m.FunctionPointer test) {
      bool testProxy(dynamic test_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_element$],
            {},
          );
      return target$.any(testProxy);
    };
Function _Iterable_toList$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    target$.toList;
Function _Iterable_toSet$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    target$.toSet;
Function _Iterable_take$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    target$.take;
Function _Iterable_takeWhile$(
  m.Scope scope$,
  Iterable target$,
) =>
    (m.FunctionPointer test) {
      bool testProxy(dynamic test_value$) => scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_value$],
            {},
          );
      return target$.takeWhile(testProxy);
    };
Function _Iterable_skip$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    target$.skip;
Function _Iterable_skipWhile$(
  m.Scope scope$,
  Iterable target$,
) =>
    (m.FunctionPointer test) {
      bool testProxy(dynamic test_value$) => scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_value$],
            {},
          );
      return target$.skipWhile(testProxy);
    };
Function _Iterable_firstWhere$(
  m.Scope scope$,
  Iterable target$,
) =>
    (
      m.FunctionPointer test, {
      m.FunctionPointer? orElse,
    }) {
      bool testProxy(dynamic test_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_element$],
            {},
          );
      dynamic orElseProxy() => scope$.engine.callFunctionPointer(
            scope$,
            orElse!,
            [],
            {},
          );
      return target$.firstWhere(
        testProxy,
        orElse: orElse == null ? null : orElseProxy,
      );
    };
Function _Iterable_lastWhere$(
  m.Scope scope$,
  Iterable target$,
) =>
    (
      m.FunctionPointer test, {
      m.FunctionPointer? orElse,
    }) {
      bool testProxy(dynamic test_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_element$],
            {},
          );
      dynamic orElseProxy() => scope$.engine.callFunctionPointer(
            scope$,
            orElse!,
            [],
            {},
          );
      return target$.lastWhere(
        testProxy,
        orElse: orElse == null ? null : orElseProxy,
      );
    };
Function _Iterable_singleWhere$(
  m.Scope scope$,
  Iterable target$,
) =>
    (
      m.FunctionPointer test, {
      m.FunctionPointer? orElse,
    }) {
      bool testProxy(dynamic test_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            test,
            [test_element$],
            {},
          );
      dynamic orElseProxy() => scope$.engine.callFunctionPointer(
            scope$,
            orElse!,
            [],
            {},
          );
      return target$.singleWhere(
        testProxy,
        orElse: orElse == null ? null : orElseProxy,
      );
    };
Function _Iterable_elementAt$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    target$.elementAt;
Function _Iterable_toString$<E>(
  m.Scope scope$,
  Iterable<E> target$,
) =>
    target$.toString;
Function _Iterable_iterableToShortString$(m.Scope scope$) =>
    Iterable.iterableToShortString;
Function _Iterable_iterableToFullString$(m.Scope scope$) =>
    Iterable.iterableToFullString;
Function Iterator_as$<E>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Iterator<E>;
Function Iterator_is$<E>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Iterator<E>;
Function _Iterator_current$<E>(
  m.Scope scope$,
  Iterator<E> target$,
) =>
    () {
      return target$.current;
    };
Function _Iterator_moveNext$<E>(
  m.Scope scope$,
  Iterator<E> target$,
) =>
    target$.moveNext;

Function Duration_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Duration;
Function Duration_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Duration;
Function _Duration_microsecondsPerMillisecond$(m.Scope scope$) =>
    () => Duration.microsecondsPerMillisecond;
Function _Duration_millisecondsPerSecond$(m.Scope scope$) =>
    () => Duration.millisecondsPerSecond;
Function _Duration_secondsPerMinute$(m.Scope scope$) =>
    () => Duration.secondsPerMinute;
Function _Duration_minutesPerHour$(m.Scope scope$) =>
    () => Duration.minutesPerHour;
Function _Duration_hoursPerDay$(m.Scope scope$) => () => Duration.hoursPerDay;
Function _Duration_microsecondsPerSecond$(m.Scope scope$) =>
    () => Duration.microsecondsPerSecond;
Function _Duration_microsecondsPerMinute$(m.Scope scope$) =>
    () => Duration.microsecondsPerMinute;
Function _Duration_microsecondsPerHour$(m.Scope scope$) =>
    () => Duration.microsecondsPerHour;
Function _Duration_microsecondsPerDay$(m.Scope scope$) =>
    () => Duration.microsecondsPerDay;
Function _Duration_millisecondsPerMinute$(m.Scope scope$) =>
    () => Duration.millisecondsPerMinute;
Function _Duration_millisecondsPerHour$(m.Scope scope$) =>
    () => Duration.millisecondsPerHour;
Function _Duration_millisecondsPerDay$(m.Scope scope$) =>
    () => Duration.millisecondsPerDay;
Function _Duration_secondsPerHour$(m.Scope scope$) =>
    () => Duration.secondsPerHour;
Function _Duration_secondsPerDay$(m.Scope scope$) =>
    () => Duration.secondsPerDay;
Function _Duration_minutesPerDay$(m.Scope scope$) =>
    () => Duration.minutesPerDay;
Function _Duration_zero$(m.Scope scope$) => () => Duration.zero;
Function _Duration_inDays$(
  m.Scope scope$,
  Duration target$,
) =>
    () {
      return target$.inDays;
    };
Function _Duration_inHours$(
  m.Scope scope$,
  Duration target$,
) =>
    () {
      return target$.inHours;
    };
Function _Duration_inMinutes$(
  m.Scope scope$,
  Duration target$,
) =>
    () {
      return target$.inMinutes;
    };
Function _Duration_inSeconds$(
  m.Scope scope$,
  Duration target$,
) =>
    () {
      return target$.inSeconds;
    };
Function _Duration_inMilliseconds$(
  m.Scope scope$,
  Duration target$,
) =>
    () {
      return target$.inMilliseconds;
    };
Function _Duration_inMicroseconds$(
  m.Scope scope$,
  Duration target$,
) =>
    () {
      return target$.inMicroseconds;
    };
Function _Duration_hashCode$(
  m.Scope scope$,
  Duration target$,
) =>
    () {
      return target$.hashCode;
    };
Function _Duration_isNegative$(
  m.Scope scope$,
  Duration target$,
) =>
    () {
      return target$.isNegative;
    };
Function _Duration__$(m.Scope scope$) => ({
      int? days,
      int? hours,
      int? minutes,
      int? seconds,
      int? milliseconds,
      int? microseconds,
    }) {
      return Duration(
        days: days ?? 0,
        hours: hours ?? 0,
        microseconds: microseconds ?? 0,
        milliseconds: milliseconds ?? 0,
        minutes: minutes ?? 0,
        seconds: seconds ?? 0,
      );
    };
Function _Duration_plus$$(
  m.Scope scope$,
  Duration target$,
) =>
    (Duration other$) => target$ + other$;
Function _Duration_minus$$(
  m.Scope scope$,
  Duration target$,
) =>
    (Duration other$) => target$ - other$;
Function _Duration_times$$(
  m.Scope scope$,
  Duration target$,
) =>
    (num other$) => target$ * other$;
Function _Duration_division$$(
  m.Scope scope$,
  Duration target$,
) =>
    (int other$) => target$ ~/ other$;
Function _Duration_low$$(
  m.Scope scope$,
  Duration target$,
) =>
    (Duration other$) => target$ < other$;
Function _Duration_more$$(
  m.Scope scope$,
  Duration target$,
) =>
    (Duration other$) => target$ > other$;
Function _Duration_low_eq$$(
  m.Scope scope$,
  Duration target$,
) =>
    (Duration other$) => target$ <= other$;
Function _Duration_more_eq$$(
  m.Scope scope$,
  Duration target$,
) =>
    (Duration other$) => target$ >= other$;
Function _Duration_eq$$(
  m.Scope scope$,
  Duration target$,
) =>
    (Object other$) => target$ == other$;
Function _Duration_compareTo$(
  m.Scope scope$,
  Duration target$,
) =>
    target$.compareTo;
Function _Duration_toString$(
  m.Scope scope$,
  Duration target$,
) =>
    target$.toString;
Function _Duration_abs$(
  m.Scope scope$,
  Duration target$,
) =>
    target$.abs;
Function _Duration_unary_minus$$(
  m.Scope scope$,
  Duration target$,
) =>
    () => -target$;

Function _Future__$(m.Scope scope$) => (m.FunctionPointer computation) {
      FutureOr computationProxy() async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            computation,
            [],
            {},
          );
      return Future(computationProxy);
    };
Function _Future_microtask_$(m.Scope scope$) =>
    (m.FunctionPointer computation) {
      FutureOr computationProxy() async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            computation,
            [],
            {},
          );
      return Future.microtask(computationProxy);
    };
Function _Future_sync_$(m.Scope scope$) => (m.FunctionPointer computation) {
      FutureOr computationProxy() async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            computation,
            [],
            {},
          );
      return Future.sync(computationProxy);
    };
Function _Future_value_$(m.Scope scope$) => Future.value;
Function _Future_error_$(m.Scope scope$) => Future.error;
Function _Future_delayed_$(m.Scope scope$) => (
      Duration duration, [
      m.FunctionPointer? computation,
    ]) {
      if (computation == null) {
        return Future.delayed(duration);
      }
      FutureOr computationProxy() async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            computation!,
            [],
            {},
          );
      return Future.delayed(
        duration,
        computation == null ? null : computationProxy,
      );
    };

Function Future_as$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Future<T>;
Function Future_is$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Future<T>;
Function _Future_wait$(m.Scope scope$) => (
      Iterable futures, {
      bool? eagerError,
      m.FunctionPointer? cleanUp,
    }) {
      void cleanUpProxy(dynamic cleanUp_successValue$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            cleanUp!,
            [cleanUp_successValue$],
            {},
          );
      return Future.wait(
        Iterable.castFrom(futures),
        cleanUp: cleanUp == null ? null : cleanUpProxy,
        eagerError: eagerError ?? false,
      );
    };
Function _Future_any$<T>(m.Scope scope$) => Future.any<T>;
Function _Future_forEach$(m.Scope scope$) => (
      Iterable elements,
      m.FunctionPointer action,
    ) {
      FutureOr<dynamic> actionProxy(dynamic action_element$) async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            action,
            [action_element$],
            {},
          );
      return Future.forEach(
        Iterable.castFrom(elements),
        actionProxy,
      );
    };
Function _Future_doWhile$(m.Scope scope$) => (m.FunctionPointer action) {
      FutureOr<bool> actionProxy() async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            action,
            [],
            {},
          );
      return Future.doWhile(actionProxy);
    };
Function _Future_then$(
  m.Scope scope$,
  Future target$,
) =>
    (
      m.FunctionPointer onValue, {
      Function? onError,
    }) {
      FutureOr onValueProxy(dynamic onValue_value$) async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            onValue,
            [onValue_value$],
            {},
          );
      return target$.then(
        onValueProxy,
        onError: onError,
      );
    };
Function _Future_catchError$(
  m.Scope scope$,
  Future target$,
) =>
    (
      Function onError, {
      m.FunctionPointer? test,
    }) {
      bool testProxy(Object test_error$) => scope$.engine.callFunctionPointer(
            scope$,
            test!,
            [test_error$],
            {},
          );
      return target$.catchError(
        onError,
        test: test == null ? null : testProxy,
      );
    };
Function _Future_whenComplete$(
  m.Scope scope$,
  Future target$,
) =>
    (m.FunctionPointer action) {
      FutureOr<void> actionProxy() async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            action,
            [],
            {},
          );
      return target$.whenComplete(actionProxy);
    };
Function _Future_asStream$<T>(
  m.Scope scope$,
  Future<T> target$,
) =>
    target$.asStream;
Function _Future_timeout$(
  m.Scope scope$,
  Future target$,
) =>
    (
      Duration timeLimit, {
      m.FunctionPointer? onTimeout,
    }) {
      FutureOr onTimeoutProxy() async =>
          await scope$.engine.callFunctionPointerAsync(
            scope$,
            onTimeout!,
            [],
            {},
          );
      return target$.timeout(
        timeLimit,
        onTimeout: onTimeout == null ? null : onTimeoutProxy,
      );
    };

Function FutureOr_as$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as FutureOr<T>;
Function FutureOr_is$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is FutureOr<T>;

Function Enum_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Enum;
Function Enum_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Enum;
Function _Enum_index$(
  m.Scope scope$,
  dynamic target$,
) =>
    () {
      return target$.index;
    };

Function __Enum_index$(
  m.Scope scope$,
  $_Enum target$,
) =>
    () {
      return target$.index;
    };
Function _Enum_compareByIndex$<T extends Enum>(m.Scope scope$) =>
    Enum.compareByIndex<T>;
Function _Enum_compareByName$<T extends Enum>(m.Scope scope$) =>
    Enum.compareByName<T>;

//'EnumName|get#name':_Enum_name$,
Function _Enum_name$(m.Scope scope$) => ($_Enum target$) => target$.value;

//'_Enum.': __Enum__$,
Function __Enum__$(m.Scope scope$) => (int index, String value) {
      return $_Enum(index, value);
    };

class $_Enum with m.InstanceBridge {
  int index;
  String value;
  $_Enum(this.index, this.value);

  @override
  m.CType get bridgeType =>
      m.CType(m.ClassRef("dart:core", "_Enum"), isExternal: true);

  @override
  Map<String, Function> get superGetters => _superGetter;

  static const Map<String, Function> _superGetter = {
    '#as': Enum_as$,
    '#is': Enum_is$,
  };
}

class $Deprecated extends Deprecated with m.InstanceBridge {
  $Deprecated(super.message);

  @override
  m.CType get bridgeType =>
      m.CType(m.ClassRef("dart:core", "Deprecated"), isExternal: true);

  @override
  Map<String, Function> get superGetters => _superGetter;

  static const Map<String, Function> _superGetter = {
    '#as': Deprecated_as$,
    '#is': Deprecated_is$,
    'message': _Deprecated_message$,
    'toString': _Deprecated_toString$,
  };
}

Function Map_as$<K, V>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Map<K, V>;
Function Map_is$<K, V>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Map<K, V>;
Function _Map_entries$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    () {
      return target$.entries;
    };
Function _Map_keys$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    () {
      return target$.keys;
    };
Function _Map_values$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    () {
      return target$.values;
    };
Function _Map_length$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    () {
      return target$.length;
    };
Function _Map_isEmpty$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    () {
      return target$.isEmpty;
    };
Function _Map_isNotEmpty$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    () {
      return target$.isNotEmpty;
    };
Function _Map__$(m.Scope scope$) => () {
      return Map();
    };
Function _Map_from_$(m.Scope scope$) => Map.from;
Function _Map_of_$(m.Scope scope$) => Map.of;
Function _Map_unmodifiable_$(m.Scope scope$) => Map.unmodifiable;
Function _Map_identity_$(m.Scope scope$) => Map.identity;
Function _Map_fromIterable_$(m.Scope scope$) => (
      Iterable iterable, {
      m.FunctionPointer? key,
      m.FunctionPointer? value,
    }) {
      dynamic keyProxy(dynamic key_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            key!,
            [key_element$],
            {},
          );
      dynamic valueProxy(dynamic value_element$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            value!,
            [value_element$],
            {},
          );
      return Map.fromIterable(
        Iterable.castFrom(iterable),
        key: key == null ? null : keyProxy,
        value: value == null ? null : valueProxy,
      );
    };
Function _Map_fromIterables_$(m.Scope scope$) => Map.fromIterables;
Function _Map_fromEntries_$(m.Scope scope$) => Map.fromEntries;
Function _Map_castFrom$<K, V, K2, V2>(m.Scope scope$) =>
    Map.castFrom<K, V, K2, V2>;
Function _Map_cast$<K, V, RK, RV>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    target$.cast<RK, RV>;
Function _Map_containsValue$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    target$.containsValue;
Function _Map_containsKey$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    target$.containsKey;
Function _Map_$index$$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    (Object? index) => target$[index];
Function _Map_$index_set$$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    (
      K index,
      V other,
    ) =>
        target$[index] = other;
Function _Map_map$(
  m.Scope scope$,
  Map target$,
) =>
    (m.FunctionPointer convert) {
      MapEntry convertProxy(
        dynamic convert_key$,
        dynamic convert_value$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            convert,
            [
              convert_key$,
              convert_value$,
            ],
            {},
          );
      return target$.map(convertProxy);
    };
Function _Map_addEntries$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    target$.addEntries;
Function _Map_update$(
  m.Scope scope$,
  Map target$,
) =>
    (
      dynamic key,
      m.FunctionPointer update, {
      m.FunctionPointer? ifAbsent,
    }) {
      dynamic updateProxy(dynamic update_value$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            update,
            [update_value$],
            {},
          );
      dynamic ifAbsentProxy() => scope$.engine.callFunctionPointer(
            scope$,
            ifAbsent!,
            [],
            {},
          );
      return target$.update(
        key,
        updateProxy,
        ifAbsent: ifAbsent == null ? null : ifAbsentProxy,
      );
    };
Function _Map_updateAll$(
  m.Scope scope$,
  Map target$,
) =>
    (m.FunctionPointer update) {
      dynamic updateProxy(
        dynamic update_key$,
        dynamic update_value$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            update,
            [
              update_key$,
              update_value$,
            ],
            {},
          );
      target$.updateAll(updateProxy);
    };
Function _Map_removeWhere$(
  m.Scope scope$,
  Map target$,
) =>
    (m.FunctionPointer test) {
      bool testProxy(
        dynamic test_key$,
        dynamic test_value$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            test,
            [
              test_key$,
              test_value$,
            ],
            {},
          );
      target$.removeWhere(testProxy);
    };
Function _Map_putIfAbsent$(
  m.Scope scope$,
  Map target$,
) =>
    (
      dynamic key,
      m.FunctionPointer ifAbsent,
    ) {
      dynamic ifAbsentProxy() => scope$.engine.callFunctionPointer(
            scope$,
            ifAbsent,
            [],
            {},
          );
      return target$.putIfAbsent(
        key,
        ifAbsentProxy,
      );
    };
Function _Map_addAll$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    target$.addAll;
Function _Map_remove$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    target$.remove;
Function _Map_clear$<K, V>(
  m.Scope scope$,
  Map<K, V> target$,
) =>
    target$.clear;
Function _Map_forEach$(
  m.Scope scope$,
  Map target$,
) =>
    (m.FunctionPointer action) {
      void actionProxy(
        dynamic action_key$,
        dynamic action_value$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            action,
            [
              action_key$,
              action_value$,
            ],
            {},
          );
      target$.forEach(actionProxy);
    };
Function MapEntry_as$<K, V>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as MapEntry<K, V>;
Function MapEntry_is$<K, V>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is MapEntry<K, V>;
Function _MapEntry_key$<K, V>(
  m.Scope scope$,
  MapEntry<K, V> target$,
) =>
    () {
      return target$.key;
    };
Function _MapEntry_value$<K, V>(
  m.Scope scope$,
  MapEntry<K, V> target$,
) =>
    () {
      return target$.value;
    };
Function _MapEntry__$(m.Scope scope$) => (
      dynamic key,
      dynamic value,
    ) {
      return MapEntry(
        key,
        value,
      );
    };
Function _MapEntry_toString$<K, V>(
  m.Scope scope$,
  MapEntry<K, V> target$,
) =>
    target$.toString;

Function Object_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Object;
Function Object_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Object;
Function _Object_hashCode$(
  m.Scope scope$,
  Object target$,
) =>
    () {
      return target$.hashCode;
    };
Function _Object_runtimeType$(
  m.Scope scope$,
  Object target$,
) =>
    () {
      return target$.runtimeType;
    };
Function _Object__$(m.Scope scope$) => () {
      return Object();
    };
Function _Object_eq$$(
  m.Scope scope$,
  Object target$,
) =>
    (Object other$) => target$ == other$;
Function _Object_toString$(
  m.Scope scope$,
  Object target$,
) =>
    target$.toString;
Function _Object_noSuchMethod$(
  m.Scope scope$,
  Object target$,
) =>
    target$.noSuchMethod;
Function _Object_hash$(m.Scope scope$) => Object.hash;
Function _Object_hashAll$(m.Scope scope$) => Object.hashAll;
Function _Object_hashAllUnordered$(m.Scope scope$) => Object.hashAllUnordered;

Function Deprecated_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Deprecated;
Function Deprecated_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Deprecated;
Function _Deprecated_message$(
  m.Scope scope$,
  Deprecated target$,
) =>
    () {
      return target$.message;
    };
Function _Deprecated__$(m.Scope scope$) => (String message) {
      return $Deprecated(message);
    };
Function _Deprecated_toString$(
  m.Scope scope$,
  Deprecated target$,
) =>
    target$.toString;

Function bool_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as bool;
Function bool_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is bool;
Function _bool_hashCode$(
  m.Scope scope$,
  bool target$,
) =>
    () {
      return target$.hashCode;
    };
Function _bool_fromEnvironment_$(m.Scope scope$) => bool.fromEnvironment;
Function _bool_hasEnvironment_$(m.Scope scope$) => bool.hasEnvironment;
Function _bool_parse$(m.Scope scope$) => bool.parse;
Function _bool_tryParse$(m.Scope scope$) => bool.tryParse;
Function _bool_bit_and$$(
  m.Scope scope$,
  bool target$,
) =>
    (bool other$) => target$ & other$;
Function _bool_bit_or$$(
  m.Scope scope$,
  bool target$,
) =>
    (bool other$) => target$ | other$;
Function _bool_bit_xor$$(
  m.Scope scope$,
  bool target$,
) =>
    (bool other$) => target$ ^ other$;
Function _bool_toString$(
  m.Scope scope$,
  bool target$,
) =>
    target$.toString;

Function AssertionError_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as AssertionError;
Function AssertionError_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is AssertionError;
Function _AssertionError_message$(
  m.Scope scope$,
  AssertionError target$,
) =>
    () {
      return target$.message;
    };
Function _AssertionError__$(m.Scope scope$) => ([Object? message]) {
      if (message == null) {
        return AssertionError();
      }
      return AssertionError(message!);
    };
Function _AssertionError_toString$(
  m.Scope scope$,
  AssertionError target$,
) =>
    target$.toString;
