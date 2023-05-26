import 'dart:core';
import 'dart:typed_data';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'dart:async' as l0;

late m.MicroDartEngine _engine;

m.MicroDartEngine initMicroDartRumtime(ByteData data) {
  _engine = m.MicroDartEngine.fromData(data);
  _engine.addExternalFunctions(_coreLibrary);
  return _engine;
}

var _coreLibrary = {
  'dart:core@@deprecated:static': () => deprecated,
  'dart:core@@override:static': () => override,
  'dart:core@@provisional:static': () => provisional,
  'dart:core@@proxy:static': () => proxy,
  'dart:core@Deprecated@message': (Deprecated target) => target.message,
  'dart:core@Deprecated@expires': (Deprecated target) => target.expires,
  'dart:core@Deprecated@': (List p, Map<String, dynamic> n) => Deprecated(p[0]),
  'dart:core@Exception@:static': (List p, Map<String, dynamic> n) =>
      Exception(p[0]),
  'dart:core@Deprecated@toString': (Deprecated target) => target.toString,
  'dart:core@Provisional@message': (Provisional target) => target.message,
  'dart:core@Provisional@': (List p, Map<String, dynamic> n) =>
      Provisional(message: n['message']),
  'dart:core@pragma@name': (pragma target) => target.name,
  'dart:core@pragma@options': (pragma target) => target.options,
  'dart:core@pragma@': (List p, Map<String, dynamic> n) => pragma(p[0], p[1]),
  'dart:core@BigInt@zero:static': () => BigInt.zero,
  'dart:core@BigInt@one:static': () => BigInt.one,
  'dart:core@BigInt@two:static': () => BigInt.two,
  'dart:core@BigInt@bitLength': (BigInt target) => target.bitLength,
  'dart:core@BigInt@sign': (BigInt target) => target.sign,
  'dart:core@BigInt@isEven': (BigInt target) => target.isEven,
  'dart:core@BigInt@isOdd': (BigInt target) => target.isOdd,
  'dart:core@BigInt@isNegative': (BigInt target) => target.isNegative,
  'dart:core@BigInt@isValidInt': (BigInt target) => target.isValidInt,
  'dart:core@BigInt@parse:static': () => BigInt.parse,
  'dart:core@BigInt@tryParse:static': () => BigInt.tryParse,
  'dart:core@BigInt@abs': (BigInt target) => target.abs,
  'dart:core@BigInt@unary-': (BigInt target) => -target,
  'dart:core@BigInt@+': (BigInt target, other) => target + other,
  'dart:core@BigInt@-': (BigInt target, other) => target - other,
  'dart:core@BigInt@*': (BigInt target, other) => target * other,
  'dart:core@BigInt@/': (BigInt target, other) => target / other,
  'dart:core@BigInt@~/': (BigInt target, other) => target ~/ other,
  'dart:core@BigInt@%': (BigInt target, other) => target % other,
  'dart:core@BigInt@remainder': (BigInt target) => target.remainder,
  'dart:core@BigInt@<<': (BigInt target, other) => target << other,
  'dart:core@BigInt@>>': (BigInt target, other) => target >> other,
  'dart:core@BigInt@&': (BigInt target, other) => target & other,
  'dart:core@BigInt@|': (BigInt target, other) => target | other,
  'dart:core@BigInt@^': (BigInt target, other) => target ^ other,
  'dart:core@BigInt@~': (BigInt target) => ~target,
  'dart:core@BigInt@<': (BigInt target, other) => target < other,
  'dart:core@BigInt@<=': (BigInt target, other) => target <= other,
  'dart:core@BigInt@>': (BigInt target, other) => target > other,
  'dart:core@BigInt@>=': (BigInt target, other) => target >= other,
  'dart:core@BigInt@compareTo': (BigInt target) => target.compareTo,
  'dart:core@BigInt@pow': (BigInt target) => target.pow,
  'dart:core@BigInt@modPow': (BigInt target) => target.modPow,
  'dart:core@BigInt@modInverse': (BigInt target) => target.modInverse,
  'dart:core@BigInt@gcd': (BigInt target) => target.gcd,
  'dart:core@BigInt@toUnsigned': (BigInt target) => target.toUnsigned,
  'dart:core@BigInt@toSigned': (BigInt target) => target.toSigned,
  'dart:core@BigInt@toInt': (BigInt target) => target.toInt,
  'dart:core@BigInt@toDouble': (BigInt target) => target.toDouble,
  'dart:core@BigInt@toString': (BigInt target) => target.toString,
  'dart:core@BigInt@toRadixString': (BigInt target) => target.toRadixString,
  'dart:core@bool@hashCode': (bool target) => target.hashCode,
  'dart:core@bool@fromEnvironment': (List p, Map<String, dynamic> n) =>
      bool.fromEnvironment(p[0], defaultValue: n['defaultValue']),
  'dart:core@bool@hasEnvironment': (List p, Map<String, dynamic> n) =>
      bool.hasEnvironment(p[0]),
  'dart:core@bool@&': (bool target, other) => target & other,
  'dart:core@bool@|': (bool target, other) => target | other,
  'dart:core@bool@^': (bool target, other) => target ^ other,
  'dart:core@bool@toString': (bool target) => target.toString,
  'dart:core@Comparable@compareTo': (Comparable target) => target.compareTo,
  'dart:core@Comparable@compare:static': () => Comparable.compare,
  'dart:core@DateTime@monday:static': () => DateTime.monday,
  'dart:core@DateTime@tuesday:static': () => DateTime.tuesday,
  'dart:core@DateTime@wednesday:static': () => DateTime.wednesday,
  'dart:core@DateTime@thursday:static': () => DateTime.thursday,
  'dart:core@DateTime@friday:static': () => DateTime.friday,
  'dart:core@DateTime@saturday:static': () => DateTime.saturday,
  'dart:core@DateTime@sunday:static': () => DateTime.sunday,
  'dart:core@DateTime@daysPerWeek:static': () => DateTime.daysPerWeek,
  'dart:core@DateTime@january:static': () => DateTime.january,
  'dart:core@DateTime@february:static': () => DateTime.february,
  'dart:core@DateTime@march:static': () => DateTime.march,
  'dart:core@DateTime@april:static': () => DateTime.april,
  'dart:core@DateTime@may:static': () => DateTime.may,
  'dart:core@DateTime@june:static': () => DateTime.june,
  'dart:core@DateTime@july:static': () => DateTime.july,
  'dart:core@DateTime@august:static': () => DateTime.august,
  'dart:core@DateTime@september:static': () => DateTime.september,
  'dart:core@DateTime@october:static': () => DateTime.october,
  'dart:core@DateTime@november:static': () => DateTime.november,
  'dart:core@DateTime@december:static': () => DateTime.december,
  'dart:core@DateTime@monthsPerYear:static': () => DateTime.monthsPerYear,
  'dart:core@DateTime@isUtc': (DateTime target) => target.isUtc,
  'dart:core@DateTime@hashCode': (DateTime target) => target.hashCode,
  'dart:core@DateTime@millisecondsSinceEpoch': (DateTime target) =>
      target.millisecondsSinceEpoch,
  'dart:core@DateTime@microsecondsSinceEpoch': (DateTime target) =>
      target.microsecondsSinceEpoch,
  'dart:core@DateTime@timeZoneName': (DateTime target) => target.timeZoneName,
  'dart:core@DateTime@timeZoneOffset': (DateTime target) =>
      target.timeZoneOffset,
  'dart:core@DateTime@year': (DateTime target) => target.year,
  'dart:core@DateTime@month': (DateTime target) => target.month,
  'dart:core@DateTime@day': (DateTime target) => target.day,
  'dart:core@DateTime@hour': (DateTime target) => target.hour,
  'dart:core@DateTime@minute': (DateTime target) => target.minute,
  'dart:core@DateTime@second': (DateTime target) => target.second,
  'dart:core@DateTime@millisecond': (DateTime target) => target.millisecond,
  'dart:core@DateTime@microsecond': (DateTime target) => target.microsecond,
  'dart:core@DateTime@weekday': (DateTime target) => target.weekday,
  'dart:core@DateTime@': (List p, Map<String, dynamic> n) =>
      DateTime(p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7]),
  'dart:core@DateTime@utc': (List p, Map<String, dynamic> n) =>
      DateTime.utc(p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7]),
  'dart:core@DateTime@now': (List p, Map<String, dynamic> n) => DateTime.now(),
  'dart:core@DateTime@fromMillisecondsSinceEpoch':
      (List p, Map<String, dynamic> n) =>
          DateTime.fromMillisecondsSinceEpoch(p[0], isUtc: n['isUtc']),
  'dart:core@DateTime@fromMicrosecondsSinceEpoch':
      (List p, Map<String, dynamic> n) =>
          DateTime.fromMicrosecondsSinceEpoch(p[0], isUtc: n['isUtc']),
  'dart:core@DateTime@parse:static': () => DateTime.parse,
  'dart:core@DateTime@tryParse:static': () => DateTime.tryParse,
  'dart:core@DateTime@==': (DateTime target, other) => target == other,
  'dart:core@DateTime@isBefore': (DateTime target) => target.isBefore,
  'dart:core@DateTime@isAfter': (DateTime target) => target.isAfter,
  'dart:core@DateTime@isAtSameMomentAs': (DateTime target) =>
      target.isAtSameMomentAs,
  'dart:core@DateTime@compareTo': (DateTime target) => target.compareTo,
  'dart:core@DateTime@toLocal': (DateTime target) => target.toLocal,
  'dart:core@DateTime@toUtc': (DateTime target) => target.toUtc,
  'dart:core@DateTime@toString': (DateTime target) => target.toString,
  'dart:core@DateTime@toIso8601String': (DateTime target) =>
      target.toIso8601String,
  'dart:core@DateTime@add': (DateTime target) => target.add,
  'dart:core@DateTime@subtract': (DateTime target) => target.subtract,
  'dart:core@DateTime@difference': (DateTime target) => target.difference,
  'dart:core@double@nan:static': () => double.nan,
  'dart:core@double@infinity:static': () => double.infinity,
  'dart:core@double@negativeInfinity:static': () => double.negativeInfinity,
  'dart:core@double@minPositive:static': () => double.minPositive,
  'dart:core@double@maxFinite:static': () => double.maxFinite,
  'dart:core@double@sign': (double target) => target.sign,
  'dart:core@double@remainder': (double target) => target.remainder,
  'dart:core@double@+': (double target, other) => target + other,
  'dart:core@double@-': (double target, other) => target - other,
  'dart:core@double@*': (double target, other) => target * other,
  'dart:core@double@%': (double target, other) => target % other,
  'dart:core@double@/': (double target, other) => target / other,
  'dart:core@double@~/': (double target, other) => target ~/ other,
  'dart:core@double@unary-': (double target) => -target,
  'dart:core@double@abs': (double target) => target.abs,
  'dart:core@double@round': (double target) => target.round,
  'dart:core@double@floor': (double target) => target.floor,
  'dart:core@double@ceil': (double target) => target.ceil,
  'dart:core@double@truncate': (double target) => target.truncate,
  'dart:core@double@roundToDouble': (double target) => target.roundToDouble,
  'dart:core@double@floorToDouble': (double target) => target.floorToDouble,
  'dart:core@double@ceilToDouble': (double target) => target.ceilToDouble,
  'dart:core@double@truncateToDouble': (double target) =>
      target.truncateToDouble,
  'dart:core@double@toString': (double target) => target.toString,
  'dart:core@double@parse:static': () => double.parse,
  'dart:core@double@tryParse:static': () => double.tryParse,
  'dart:core@Duration@microsecondsPerMillisecond:static': () =>
      Duration.microsecondsPerMillisecond,
  'dart:core@Duration@millisecondsPerSecond:static': () =>
      Duration.millisecondsPerSecond,
  'dart:core@Duration@secondsPerMinute:static': () => Duration.secondsPerMinute,
  'dart:core@Duration@minutesPerHour:static': () => Duration.minutesPerHour,
  'dart:core@Duration@hoursPerDay:static': () => Duration.hoursPerDay,
  'dart:core@Duration@microsecondsPerSecond:static': () =>
      Duration.microsecondsPerSecond,
  'dart:core@Duration@microsecondsPerMinute:static': () =>
      Duration.microsecondsPerMinute,
  'dart:core@Duration@microsecondsPerHour:static': () =>
      Duration.microsecondsPerHour,
  'dart:core@Duration@microsecondsPerDay:static': () =>
      Duration.microsecondsPerDay,
  'dart:core@Duration@millisecondsPerMinute:static': () =>
      Duration.millisecondsPerMinute,
  'dart:core@Duration@millisecondsPerHour:static': () =>
      Duration.millisecondsPerHour,
  'dart:core@Duration@millisecondsPerDay:static': () =>
      Duration.millisecondsPerDay,
  'dart:core@Duration@secondsPerHour:static': () => Duration.secondsPerHour,
  'dart:core@Duration@secondsPerDay:static': () => Duration.secondsPerDay,
  'dart:core@Duration@minutesPerDay:static': () => Duration.minutesPerDay,
  'dart:core@Duration@zero:static': () => Duration.zero,
  'dart:core@Duration@inDays': (Duration target) => target.inDays,
  'dart:core@Duration@inHours': (Duration target) => target.inHours,
  'dart:core@Duration@inMinutes': (Duration target) => target.inMinutes,
  'dart:core@Duration@inSeconds': (Duration target) => target.inSeconds,
  'dart:core@Duration@inMilliseconds': (Duration target) =>
      target.inMilliseconds,
  'dart:core@Duration@inMicroseconds': (Duration target) =>
      target.inMicroseconds,
  'dart:core@Duration@hashCode': (Duration target) => target.hashCode,
  'dart:core@Duration@isNegative': (Duration target) => target.isNegative,
  'dart:core@Duration@': (List p, Map<String, dynamic> n) => Duration(
      days: n['days'],
      hours: n['hours'],
      minutes: n['minutes'],
      seconds: n['seconds'],
      milliseconds: n['milliseconds'],
      microseconds: n['microseconds']),
  'dart:core@Duration@+': (Duration target, other) => target + other,
  'dart:core@Duration@-': (Duration target, other) => target - other,
  'dart:core@Duration@*': (Duration target, other) => target * other,
  'dart:core@Duration@~/': (Duration target, other) => target ~/ other,
  'dart:core@Duration@<': (Duration target, other) => target < other,
  'dart:core@Duration@>': (Duration target, other) => target > other,
  'dart:core@Duration@<=': (Duration target, other) => target <= other,
  'dart:core@Duration@>=': (Duration target, other) => target >= other,
  'dart:core@Duration@==': (Duration target, other) => target == other,
  'dart:core@Duration@compareTo': (Duration target) => target.compareTo,
  'dart:core@Duration@toString': (Duration target) => target.toString,
  'dart:core@Duration@abs': (Duration target) => target.abs,
  'dart:core@Duration@unary-': (Duration target) => -target,
  'dart:core@Enum@index': (Enum target) => target.index,
  'dart:core@Enum@compareByIndex:static': () => Enum.compareByIndex,
  'dart:core@Enum@compareByName:static': () => Enum.compareByName,
  'dart:core@Error@stackTrace': (Error target) => target.stackTrace,
  'dart:core@Error@': (List p, Map<String, dynamic> n) => Error(),
  'dart:core@Error@safeToString:static': () => Error.safeToString,
  'dart:core@Error@throwWithStackTrace:static': () => Error.throwWithStackTrace,
  'dart:core@AssertionError@message': (AssertionError target) => target.message,
  'dart:core@AssertionError@': (List p, Map<String, dynamic> n) =>
      AssertionError(p[0]),
  'dart:core@AssertionError@toString': (AssertionError target) =>
      target.toString,
  'dart:core@TypeError@': (List p, Map<String, dynamic> n) => TypeError(),
  'dart:core@CastError@': (List p, Map<String, dynamic> n) => CastError(),
  'dart:core@NullThrownError@': (List p, Map<String, dynamic> n) =>
      NullThrownError(),
  'dart:core@NullThrownError@toString': (NullThrownError target) =>
      target.toString,
  'dart:core@ArgumentError@invalidValue': (ArgumentError target) =>
      target.invalidValue,
  'dart:core@ArgumentError@name': (ArgumentError target) => target.name,
  'dart:core@ArgumentError@message': (ArgumentError target) => target.message,
  'dart:core@ArgumentError@': (List p, Map<String, dynamic> n) =>
      ArgumentError(p[0], p[1]),
  'dart:core@ArgumentError@value': (List p, Map<String, dynamic> n) =>
      ArgumentError.value(p[0], p[1], p[2]),
  'dart:core@ArgumentError@notNull': (List p, Map<String, dynamic> n) =>
      ArgumentError.notNull(p[0]),
  'dart:core@ArgumentError@checkNotNull:static': () =>
      ArgumentError.checkNotNull,
  'dart:core@ArgumentError@toString': (ArgumentError target) => target.toString,
  'dart:core@RangeError@start': (RangeError target) => target.start,
  'dart:core@RangeError@end': (RangeError target) => target.end,
  'dart:core@RangeError@': (List p, Map<String, dynamic> n) => RangeError(p[0]),
  'dart:core@RangeError@value': (List p, Map<String, dynamic> n) =>
      RangeError.value(p[0], p[1], p[2]),
  'dart:core@RangeError@range': (List p, Map<String, dynamic> n) =>
      RangeError.range(p[0], p[1], p[2], p[3], p[4]),
  'dart:core@RangeError@index': (List p, Map<String, dynamic> n) =>
      RangeError.index(p[0], p[1], p[2], p[3], p[4]),
  'dart:core@RangeError@checkValueInInterval:static': () =>
      RangeError.checkValueInInterval,
  'dart:core@RangeError@checkValidIndex:static': () =>
      RangeError.checkValidIndex,
  'dart:core@RangeError@checkValidRange:static': () =>
      RangeError.checkValidRange,
  'dart:core@RangeError@checkNotNegative:static': () =>
      RangeError.checkNotNegative,
  'dart:core@IndexError@indexable': (IndexError target) => target.indexable,
  'dart:core@IndexError@length': (IndexError target) => target.length,
  'dart:core@IndexError@start': (IndexError target) => target.start,
  'dart:core@IndexError@end': (IndexError target) => target.end,
  'dart:core@IndexError@': (List p, Map<String, dynamic> n) =>
      IndexError(p[0], p[1], p[2], p[3], p[4]),
  'dart:core@FallThroughError@': (List p, Map<String, dynamic> n) =>
      FallThroughError(),
  'dart:core@FallThroughError@toString': (FallThroughError target) =>
      target.toString,
  'dart:core@AbstractClassInstantiationError@':
      (List p, Map<String, dynamic> n) => AbstractClassInstantiationError(p[0]),
  'dart:core@AbstractClassInstantiationError@toString':
      (AbstractClassInstantiationError target) => target.toString,
  'dart:core@NoSuchMethodError@withInvocation':
      (List p, Map<String, dynamic> n) =>
          NoSuchMethodError.withInvocation(p[0], p[1]),
  'dart:core@NoSuchMethodError@': (List p, Map<String, dynamic> n) =>
      NoSuchMethodError(p[0], p[1], p[2], p[3]),
  'dart:core@NoSuchMethodError@toString': (NoSuchMethodError target) =>
      target.toString,
  'dart:core@UnsupportedError@message': (UnsupportedError target) =>
      target.message,
  'dart:core@UnsupportedError@': (List p, Map<String, dynamic> n) =>
      UnsupportedError(p[0]),
  'dart:core@UnsupportedError@toString': (UnsupportedError target) =>
      target.toString,
  'dart:core@UnimplementedError@message': (UnimplementedError target) =>
      target.message,
  'dart:core@UnimplementedError@': (List p, Map<String, dynamic> n) =>
      UnimplementedError(p[0]),
  'dart:core@UnimplementedError@toString': (UnimplementedError target) =>
      target.toString,
  'dart:core@StateError@message': (StateError target) => target.message,
  'dart:core@StateError@': (List p, Map<String, dynamic> n) => StateError(p[0]),
  'dart:core@StateError@toString': (StateError target) => target.toString,
  'dart:core@ConcurrentModificationError@modifiedObject':
      (ConcurrentModificationError target) => target.modifiedObject,
  'dart:core@ConcurrentModificationError@': (List p, Map<String, dynamic> n) =>
      ConcurrentModificationError(p[0]),
  'dart:core@ConcurrentModificationError@toString':
      (ConcurrentModificationError target) => target.toString,
  'dart:core@OutOfMemoryError@stackTrace': (OutOfMemoryError target) =>
      target.stackTrace,
  'dart:core@OutOfMemoryError@': (List p, Map<String, dynamic> n) =>
      OutOfMemoryError(),
  'dart:core@OutOfMemoryError@toString': (OutOfMemoryError target) =>
      target.toString,
  'dart:core@StackOverflowError@stackTrace': (StackOverflowError target) =>
      target.stackTrace,
  'dart:core@StackOverflowError@': (List p, Map<String, dynamic> n) =>
      StackOverflowError(),
  'dart:core@StackOverflowError@toString': (StackOverflowError target) =>
      target.toString,
  'dart:core@CyclicInitializationError@variableName':
      (CyclicInitializationError target) => target.variableName,
  'dart:core@CyclicInitializationError@': (List p, Map<String, dynamic> n) =>
      CyclicInitializationError(p[0]),
  'dart:core@CyclicInitializationError@toString':
      (CyclicInitializationError target) => target.toString,
  'dart:core@FormatException@message': (FormatException target) =>
      target.message,
  'dart:core@FormatException@source': (FormatException target) => target.source,
  'dart:core@FormatException@offset': (FormatException target) => target.offset,
  'dart:core@FormatException@': (List p, Map<String, dynamic> n) =>
      FormatException(p[0], p[1], p[2]),
  'dart:core@FormatException@toString': (FormatException target) =>
      target.toString,
  'dart:core@IntegerDivisionByZeroException@message':
      (IntegerDivisionByZeroException target) => target.message,
  'dart:core@IntegerDivisionByZeroException@stackTrace':
      (IntegerDivisionByZeroException target) => target.stackTrace,
  'dart:core@IntegerDivisionByZeroException@':
      (List p, Map<String, dynamic> n) => IntegerDivisionByZeroException(),
  'dart:core@IntegerDivisionByZeroException@toString':
      (IntegerDivisionByZeroException target) => target.toString,
  'dart:core@Function@hashCode': (Function target) => target.hashCode,
  'dart:core@Function@apply:static': () => Function.apply,
  'dart:core@Function@==': (Function target, other) => target == other,
  'dart:core@@identical:static': () => identical,
  'dart:core@@identityHashCode:static': () => identityHashCode,
  'dart:core@int@#super': () => "dart:core@num",
  'dart:core@int@#as': (dynamic target) => target as int,
  'dart:core@int@#is': (dynamic target) =>
      target is int || (target is m.InstanceBridge && target.target is int),
  'dart:core@int@isEven': (int target) => target.isEven,
  'dart:core@int@isOdd': (int target) => target.isOdd,
  'dart:core@int@bitLength': (int target) => target.bitLength,
  'dart:core@int@sign': (int target) => target.sign,
  'dart:core@int@&': (int target, other) => target & other,
  'dart:core@int@|': (int target, other) => target | other,
  'dart:core@int@^': (int target, other) => target ^ other,
  'dart:core@int@~': (int target) => ~target,
  'dart:core@int@<<': (int target, other) => target << other,
  'dart:core@int@>>': (int target, other) => target >> other,
  'dart:core@int@>>>': (int target, other) => target >>> other,
  'dart:core@int@modPow': (int target) => target.modPow,
  'dart:core@int@modInverse': (int target) => target.modInverse,
  'dart:core@int@gcd': (int target) => target.gcd,
  'dart:core@int@toUnsigned': (int target) => target.toUnsigned,
  'dart:core@int@toSigned': (int target) => target.toSigned,
  'dart:core@int@unary-': (int target) => -target,
  'dart:core@int@abs': (int target) => target.abs,
  'dart:core@int@round': (int target) => target.round,
  'dart:core@int@floor': (int target) => target.floor,
  'dart:core@int@ceil': (int target) => target.ceil,
  'dart:core@int@truncate': (int target) => target.truncate,
  'dart:core@int@roundToDouble': (int target) => target.roundToDouble,
  'dart:core@int@floorToDouble': (int target) => target.floorToDouble,
  'dart:core@int@ceilToDouble': (int target) => target.ceilToDouble,
  'dart:core@int@truncateToDouble': (int target) => target.truncateToDouble,
  'dart:core@int@toString': (int target) => target.toString,
  'dart:core@int@toRadixString': (int target) => target.toRadixString,
  'dart:core@int@parse:static': () => int.parse,
  'dart:core@int@tryParse:static': () => int.tryParse,
  'dart:core@Invocation@memberName': (Invocation target) => target.memberName,
  'dart:core@Invocation@typeArguments': (Invocation target) =>
      target.typeArguments,
  'dart:core@Invocation@positionalArguments': (Invocation target) =>
      target.positionalArguments,
  'dart:core@Invocation@namedArguments': (Invocation target) =>
      target.namedArguments,
  'dart:core@Invocation@isMethod': (Invocation target) => target.isMethod,
  'dart:core@Invocation@isGetter': (Invocation target) => target.isGetter,
  'dart:core@Invocation@isSetter': (Invocation target) => target.isSetter,
  'dart:core@Invocation@isAccessor': (Invocation target) => target.isAccessor,
  'dart:core@Iterable@iterator': (Iterable target) => target.iterator,
  'dart:core@Iterable@length': (Iterable target) => target.length,
  'dart:core@Iterable@isEmpty': (Iterable target) => target.isEmpty,
  'dart:core@Iterable@isNotEmpty': (Iterable target) => target.isNotEmpty,
  'dart:core@Iterable@first': (Iterable target) => target.first,
  'dart:core@Iterable@last': (Iterable target) => target.last,
  'dart:core@Iterable@single': (Iterable target) => target.single,
  'dart:core@Iterable@castFrom:static': () => Iterable.castFrom,
  'dart:core@Iterable@cast': (Iterable target) => target.cast,
  'dart:core@Iterable@followedBy': (Iterable target) => target.followedBy,
  'dart:core@Iterable@map': (Iterable target) => target.map,
  'dart:core@Iterable@where': (Iterable target) => target.where,
  'dart:core@Iterable@whereType': (Iterable target) => target.whereType,
  'dart:core@Iterable@expand': (Iterable target) => target.expand,
  'dart:core@Iterable@contains': (Iterable target) => target.contains,
  'dart:core@Iterable@forEach': (Iterable target) => target.forEach,
  'dart:core@Iterable@reduce': (Iterable target) => target.reduce,
  'dart:core@Iterable@fold': (Iterable target) => target.fold,
  'dart:core@Iterable@every': (Iterable target) => target.every,
  'dart:core@Iterable@join': (Iterable target) => target.join,
  'dart:core@Iterable@any': (Iterable target) => target.any,
  'dart:core@Iterable@toList': (Iterable target) => target.toList,
  'dart:core@Iterable@toSet': (Iterable target) => target.toSet,
  'dart:core@Iterable@take': (Iterable target) => target.take,
  'dart:core@Iterable@takeWhile': (Iterable target) => target.takeWhile,
  'dart:core@Iterable@skip': (Iterable target) => target.skip,
  'dart:core@Iterable@skipWhile': (Iterable target) => target.skipWhile,
  'dart:core@Iterable@firstWhere': (Iterable target) => target.firstWhere,
  'dart:core@Iterable@lastWhere': (Iterable target) => target.lastWhere,
  'dart:core@Iterable@singleWhere': (Iterable target) => target.singleWhere,
  'dart:core@Iterable@elementAt': (Iterable target) => target.elementAt,
  'dart:core@Iterable@toString': (Iterable target) => target.toString,
  'dart:core@BidirectionalIterator@movePrevious':
      (BidirectionalIterator target) => target.movePrevious,
  'dart:core@Iterator@current': (Iterator target) => target.current,
  'dart:core@Iterator@moveNext': (Iterator target) => target.moveNext,
  'dart:core@List@first:set': (List target, other) => target.first = other,
  'dart:core@List@last:set': (List target, other) => target.last = other,
  'dart:core@List@length': (List target) => target.length,
  'dart:core@List@length:set': (List target, other) => target.length = other,
  'dart:core@List@reversed': (List target) => target.reversed,
  'dart:core@List@castFrom:static': () => List.castFrom,
  'dart:core@List@copyRange:static': () => List.copyRange,
  'dart:core@List@writeIterable:static': () => List.writeIterable,
  'dart:core@List@cast': (List target) => target.cast,
  'dart:core@List@[]': (List target, index) => target[index],
  'dart:core@List@[]=': (List target, index, other) => target[index] = other,
  'dart:core@List@add': (List target) => target.add,
  'dart:core@List@addAll': (List target) => target.addAll,
  'dart:core@List@sort': (List target) => target.sort,
  'dart:core@List@shuffle': (List target) => target.shuffle,
  'dart:core@List@indexOf': (List target) => target.indexOf,
  'dart:core@List@indexWhere': (List target) => target.indexWhere,
  'dart:core@List@lastIndexWhere': (List target) => target.lastIndexWhere,
  'dart:core@List@lastIndexOf': (List target) => target.lastIndexOf,
  'dart:core@List@clear': (List target) => target.clear,
  'dart:core@List@insert': (List target) => target.insert,
  'dart:core@List@insertAll': (List target) => target.insertAll,
  'dart:core@List@setAll': (List target) => target.setAll,
  'dart:core@List@remove': (List target) => target.remove,
  'dart:core@List@removeAt': (List target) => target.removeAt,
  'dart:core@List@removeLast': (List target) => target.removeLast,
  'dart:core@List@removeWhere': (List target) => target.removeWhere,
  'dart:core@List@retainWhere': (List target) => target.retainWhere,
  'dart:core@List@+': (List target, other) => target + other,
  'dart:core@List@sublist': (List target) => target.sublist,
  'dart:core@List@getRange': (List target) => target.getRange,
  'dart:core@List@setRange': (List target) => target.setRange,
  'dart:core@List@removeRange': (List target) => target.removeRange,
  'dart:core@List@fillRange': (List target) => target.fillRange,
  'dart:core@List@replaceRange': (List target) => target.replaceRange,
  'dart:core@List@asMap': (List target) => target.asMap,
  'dart:core@List@==': (List target, other) => target == other,
  'dart:core@List@generate:static': () => List.generate,
  'dart:core@Map@entries': (Map target) => target.entries,
  'dart:core@Map@keys': (Map target) => target.keys,
  'dart:core@Map@values': (Map target) => target.values,
  'dart:core@Map@length': (Map target) => target.length,
  'dart:core@Map@isEmpty': (Map target) => target.isEmpty,
  'dart:core@Map@isNotEmpty': (Map target) => target.isNotEmpty,
  'dart:core@Map@castFrom:static': () => Map.castFrom,
  'dart:core@Map@cast': (Map target) => target.cast,
  'dart:core@Map@containsValue': (Map target) => target.containsValue,
  'dart:core@Map@containsKey': (Map target) => target.containsKey,
  'dart:core@Map@[]': (Map target, index) => target[index],
  'dart:core@Map@[]=': (Map target, index, other) => target[index] = other,
  'dart:core@Map@map': (Map target) => target.map,
  'dart:core@Map@addEntries': (Map target) => target.addEntries,
  'dart:core@Map@update': (Map target) => target.update,
  'dart:core@Map@updateAll': (Map target) => target.updateAll,
  'dart:core@Map@removeWhere': (Map target) => target.removeWhere,
  'dart:core@Map@putIfAbsent': (Map target) => target.putIfAbsent,
  'dart:core@Map@addAll': (Map target) => target.addAll,
  'dart:core@Map@remove': (Map target) => target.remove,
  'dart:core@Map@clear': (Map target) => target.clear,
  'dart:core@Map@forEach': (Map target) => target.forEach,
  'dart:core@MapEntry@key': (MapEntry target) => target.key,
  'dart:core@MapEntry@value': (MapEntry target) => target.value,
  'dart:core@MapEntry@': (List p, Map<String, dynamic> n) =>
      MapEntry(p[0], p[1]),
  'dart:core@MapEntry@toString': (MapEntry target) => target.toString,
  'dart:core@Null@hashCode': (Null target) => target.hashCode,
  'dart:core@Null@toString': (Null target) => target.toString,
  'dart:core@num@hashCode': (num target) => target.hashCode,
  'dart:core@num@isNaN': (num target) => target.isNaN,
  'dart:core@num@isNegative': (num target) => target.isNegative,
  'dart:core@num@isInfinite': (num target) => target.isInfinite,
  'dart:core@num@isFinite': (num target) => target.isFinite,
  'dart:core@num@sign': (num target) => target.sign,
  'dart:core@num@==': (num target, other) => target == other,
  'dart:core@num@compareTo': (num target) => target.compareTo,
  'dart:core@num@+': (num target, other) => target + other,
  'dart:core@num@-': (num target, other) => target - other,
  'dart:core@num@*': (num target, other) => target * other,
  'dart:core@num@%': (num target, other) => target % other,
  'dart:core@num@/': (num target, other) => target / other,
  'dart:core@num@~/': (num target, other) => target ~/ other,
  'dart:core@num@unary-': (num target) => -target,
  'dart:core@num@remainder': (num target) => target.remainder,
  'dart:core@num@<': (num target, other) => target < other,
  'dart:core@num@<=': (num target, other) => target <= other,
  'dart:core@num@>': (num target, other) => target > other,
  'dart:core@num@>=': (num target, other) => target >= other,
  'dart:core@num@abs': (num target) => target.abs,
  'dart:core@num@round': (num target) => target.round,
  'dart:core@num@floor': (num target) => target.floor,
  'dart:core@num@ceil': (num target) => target.ceil,
  'dart:core@num@truncate': (num target) => target.truncate,
  'dart:core@num@roundToDouble': (num target) => target.roundToDouble,
  'dart:core@num@floorToDouble': (num target) => target.floorToDouble,
  'dart:core@num@ceilToDouble': (num target) => target.ceilToDouble,
  'dart:core@num@truncateToDouble': (num target) => target.truncateToDouble,
  'dart:core@num@clamp': (num target) => target.clamp,
  'dart:core@num@toInt': (num target) => target.toInt,
  'dart:core@num@toDouble': (num target) => target.toDouble,
  'dart:core@num@toStringAsFixed': (num target) => target.toStringAsFixed,
  'dart:core@num@toStringAsExponential': (num target) =>
      target.toStringAsExponential,
  'dart:core@num@toStringAsPrecision': (num target) =>
      target.toStringAsPrecision,
  'dart:core@num@toString': (num target) => target.toString,
  'dart:core@num@parse:static': () => num.parse,
  'dart:core@num@tryParse:static': () => num.tryParse,
  'dart:core@Object@#is': (dynamic target) =>
      target is Object ||
      (target is m.InstanceBridge && target.target is Object),
  'dart:core@Object@hashCode': (Object target) => target.hashCode,
  'dart:core@Object@runtimeType': (Object target) => target.runtimeType,
  'dart:core@Object@': (List p, Map<String, dynamic> n) => Object(),
  'dart:core@Object@==': (Object target, other) => target == other,
  'dart:core@Object@toString': (Object target) => target.toString,
  'dart:core@Object@noSuchMethod': (Object target) => target.noSuchMethod,
  'dart:core@Object@hash:static': () => Object.hash,
  'dart:core@Object@hashAll:static': () => Object.hashAll,
  'dart:core@Object@hashAllUnordered:static': () => Object.hashAllUnordered,
  'dart:core@Pattern@allMatches': (Pattern target) => target.allMatches,
  'dart:core@Pattern@matchAsPrefix': (Pattern target) => target.matchAsPrefix,
  'dart:core@Match@start': (Match target) => target.start,
  'dart:core@Match@end': (Match target) => target.end,
  'dart:core@Match@groupCount': (Match target) => target.groupCount,
  'dart:core@Match@input': (Match target) => target.input,
  'dart:core@Match@pattern': (Match target) => target.pattern,
  'dart:core@Match@group': (Match target) => target.group,
  'dart:core@Match@[]': (Match target, index) => target[index],
  'dart:core@Match@groups': (Match target) => target.groups,
  'dart:core@@print:static': () => print,
  'dart:core@RegExp@pattern': (RegExp target) => target.pattern,
  'dart:core@RegExp@isMultiLine': (RegExp target) => target.isMultiLine,
  'dart:core@RegExp@isCaseSensitive': (RegExp target) => target.isCaseSensitive,
  'dart:core@RegExp@isUnicode': (RegExp target) => target.isUnicode,
  'dart:core@RegExp@isDotAll': (RegExp target) => target.isDotAll,
  'dart:core@RegExp@escape:static': () => RegExp.escape,
  'dart:core@RegExp@firstMatch': (RegExp target) => target.firstMatch,
  'dart:core@RegExp@allMatches': (RegExp target) => target.allMatches,
  'dart:core@RegExp@hasMatch': (RegExp target) => target.hasMatch,
  'dart:core@RegExp@stringMatch': (RegExp target) => target.stringMatch,
  'dart:core@RegExpMatch@groupNames': (RegExpMatch target) => target.groupNames,
  'dart:core@RegExpMatch@namedGroup': (RegExpMatch target) => target.namedGroup,
  'dart:core@Set@iterator': (Set target) => target.iterator,
  'dart:core@Set@castFrom:static': () => Set.castFrom,
  'dart:core@Set@cast': (Set target) => target.cast,
  'dart:core@Set@contains': (Set target) => target.contains,
  'dart:core@Set@add': (Set target) => target.add,
  'dart:core@Set@addAll': (Set target) => target.addAll,
  'dart:core@Set@remove': (Set target) => target.remove,
  'dart:core@Set@lookup': (Set target) => target.lookup,
  'dart:core@Set@removeAll': (Set target) => target.removeAll,
  'dart:core@Set@retainAll': (Set target) => target.retainAll,
  'dart:core@Set@removeWhere': (Set target) => target.removeWhere,
  'dart:core@Set@retainWhere': (Set target) => target.retainWhere,
  'dart:core@Set@containsAll': (Set target) => target.containsAll,
  'dart:core@Set@intersection': (Set target) => target.intersection,
  'dart:core@Set@union': (Set target) => target.union,
  'dart:core@Set@difference': (Set target) => target.difference,
  'dart:core@Set@clear': (Set target) => target.clear,
  'dart:core@Set@toSet': (Set target) => target.toSet,
  'dart:core@Sink@add': (Sink target) => target.add,
  'dart:core@Sink@close': (Sink target) => target.close,
  'dart:core@StackTrace@empty:static': () => StackTrace.empty,
  'dart:core@StackTrace@current:static': () => StackTrace.current,
  'dart:core@StackTrace@toString': (StackTrace target) => target.toString,
  'dart:core@Stopwatch@frequency': (Stopwatch target) => target.frequency,
  'dart:core@Stopwatch@elapsedTicks': (Stopwatch target) => target.elapsedTicks,
  'dart:core@Stopwatch@elapsed': (Stopwatch target) => target.elapsed,
  'dart:core@Stopwatch@elapsedMicroseconds': (Stopwatch target) =>
      target.elapsedMicroseconds,
  'dart:core@Stopwatch@elapsedMilliseconds': (Stopwatch target) =>
      target.elapsedMilliseconds,
  'dart:core@Stopwatch@isRunning': (Stopwatch target) => target.isRunning,
  'dart:core@Stopwatch@': (List p, Map<String, dynamic> n) => Stopwatch(),
  'dart:core@Stopwatch@start': (Stopwatch target) => target.start,
  'dart:core@Stopwatch@stop': (Stopwatch target) => target.stop,
  'dart:core@Stopwatch@reset': (Stopwatch target) => target.reset,
  'dart:core@String@#is': (dynamic target) =>
      target is String ||
      (target is m.InstanceBridge && target.target is String),
  'dart:core@String@length': (String target) => target.length,
  'dart:core@String@hashCode': (String target) => target.hashCode,
  'dart:core@String@isEmpty': (String target) => target.isEmpty,
  'dart:core@String@isNotEmpty': (String target) => target.isNotEmpty,
  'dart:core@String@codeUnits': (String target) => target.codeUnits,
  'dart:core@String@runes': (String target) => target.runes,
  'dart:core@String@[]': (String target, index) => target[index],
  'dart:core@String@codeUnitAt': (String target) => target.codeUnitAt,
  'dart:core@String@==': (String target, other) => target == other,
  'dart:core@String@compareTo': (String target) => target.compareTo,
  'dart:core@String@endsWith': (String target) => target.endsWith,
  'dart:core@String@startsWith': (String target) => target.startsWith,
  'dart:core@String@indexOf': (String target) => target.indexOf,
  'dart:core@String@lastIndexOf': (String target) => target.lastIndexOf,
  'dart:core@String@+': (String target, other) => target + other,
  'dart:core@String@substring': (String target) => target.substring,
  'dart:core@String@trim': (String target) => target.trim,
  'dart:core@String@trimLeft': (String target) => target.trimLeft,
  'dart:core@String@trimRight': (String target) => target.trimRight,
  'dart:core@String@*': (String target, other) => target * other,
  'dart:core@String@padLeft': (String target) => target.padLeft,
  'dart:core@String@padRight': (String target) => target.padRight,
  'dart:core@String@contains': (String target) => target.contains,
  'dart:core@String@replaceFirst': (String target) => target.replaceFirst,
  'dart:core@String@replaceFirstMapped': (String target) =>
      target.replaceFirstMapped,
  'dart:core@String@replaceAll': (String target) => target.replaceAll,
  'dart:core@String@replaceAllMapped': (String target) =>
      target.replaceAllMapped,
  'dart:core@String@replaceRange': (String target) => target.replaceRange,
  'dart:core@String@split': (String target) => target.split,
  'dart:core@String@splitMapJoin': (String target) => target.splitMapJoin,
  'dart:core@String@toLowerCase': (String target) => target.toLowerCase,
  'dart:core@String@toUpperCase': (String target) => target.toUpperCase,
  'dart:core@Runes@string': (Runes target) => target.string,
  'dart:core@Runes@iterator': (Runes target) => target.iterator,
  'dart:core@Runes@last': (Runes target) => target.last,
  'dart:core@Runes@': (List p, Map<String, dynamic> n) => Runes(p[0]),
  'dart:core@RuneIterator@string': (RuneIterator target) => target.string,
  'dart:core@RuneIterator@rawIndex': (RuneIterator target) => target.rawIndex,
  'dart:core@RuneIterator@rawIndex:set': (RuneIterator target, other) =>
      target.rawIndex = other,
  'dart:core@RuneIterator@current': (RuneIterator target) => target.current,
  'dart:core@RuneIterator@currentSize': (RuneIterator target) =>
      target.currentSize,
  'dart:core@RuneIterator@currentAsString': (RuneIterator target) =>
      target.currentAsString,
  'dart:core@RuneIterator@': (List p, Map<String, dynamic> n) =>
      RuneIterator(p[0]),
  'dart:core@RuneIterator@at': (List p, Map<String, dynamic> n) =>
      RuneIterator.at(p[0], p[1]),
  'dart:core@RuneIterator@reset': (RuneIterator target) => target.reset,
  'dart:core@RuneIterator@moveNext': (RuneIterator target) => target.moveNext,
  'dart:core@RuneIterator@movePrevious': (RuneIterator target) =>
      target.movePrevious,
  'dart:core@StringBuffer@length': (StringBuffer target) => target.length,
  'dart:core@StringBuffer@isEmpty': (StringBuffer target) => target.isEmpty,
  'dart:core@StringBuffer@isNotEmpty': (StringBuffer target) =>
      target.isNotEmpty,
  'dart:core@StringBuffer@': (List p, Map<String, dynamic> n) =>
      StringBuffer(p[0]),
  'dart:core@StringBuffer@write': (StringBuffer target) => target.write,
  'dart:core@StringBuffer@writeCharCode': (StringBuffer target) =>
      target.writeCharCode,
  'dart:core@StringBuffer@writeAll': (StringBuffer target) => target.writeAll,
  'dart:core@StringBuffer@writeln': (StringBuffer target) => target.writeln,
  'dart:core@StringBuffer@clear': (StringBuffer target) => target.clear,
  'dart:core@StringBuffer@toString': (StringBuffer target) => target.toString,
  'dart:core@StringSink@write': (StringSink target) => target.write,
  'dart:core@StringSink@writeAll': (StringSink target) => target.writeAll,
  'dart:core@StringSink@writeln': (StringSink target) => target.writeln,
  'dart:core@StringSink@writeCharCode': (StringSink target) =>
      target.writeCharCode,
  'dart:core@Symbol@unaryMinus:static': () => Symbol.unaryMinus,
  'dart:core@Symbol@empty:static': () => Symbol.empty,
  'dart:core@Symbol@hashCode': (Symbol target) => target.hashCode,
  'dart:core@Symbol@==': (Symbol target, other) => target == other,
  'dart:core@Type@hashCode': (Type target) => target.hashCode,
  'dart:core@Type@==': (Type target, other) => target == other,
  'dart:core@Type@toString': (Type target) => target.toString,
  'dart:core@Uri@base:static': () => Uri.base,
  'dart:core@Uri@scheme': (Uri target) => target.scheme,
  'dart:core@Uri@authority': (Uri target) => target.authority,
  'dart:core@Uri@userInfo': (Uri target) => target.userInfo,
  'dart:core@Uri@host': (Uri target) => target.host,
  'dart:core@Uri@port': (Uri target) => target.port,
  'dart:core@Uri@path': (Uri target) => target.path,
  'dart:core@Uri@query': (Uri target) => target.query,
  'dart:core@Uri@fragment': (Uri target) => target.fragment,
  'dart:core@Uri@pathSegments': (Uri target) => target.pathSegments,
  'dart:core@Uri@queryParameters': (Uri target) => target.queryParameters,
  'dart:core@Uri@queryParametersAll': (Uri target) => target.queryParametersAll,
  'dart:core@Uri@isAbsolute': (Uri target) => target.isAbsolute,
  'dart:core@Uri@hasScheme': (Uri target) => target.hasScheme,
  'dart:core@Uri@hasAuthority': (Uri target) => target.hasAuthority,
  'dart:core@Uri@hasPort': (Uri target) => target.hasPort,
  'dart:core@Uri@hasQuery': (Uri target) => target.hasQuery,
  'dart:core@Uri@hasFragment': (Uri target) => target.hasFragment,
  'dart:core@Uri@hasEmptyPath': (Uri target) => target.hasEmptyPath,
  'dart:core@Uri@hasAbsolutePath': (Uri target) => target.hasAbsolutePath,
  'dart:core@Uri@origin': (Uri target) => target.origin,
  'dart:core@Uri@data': (Uri target) => target.data,
  'dart:core@Uri@hashCode': (Uri target) => target.hashCode,
  'dart:core@Uri@isScheme': (Uri target) => target.isScheme,
  'dart:core@Uri@toFilePath': (Uri target) => target.toFilePath,
  'dart:core@Uri@==': (Uri target, other) => target == other,
  'dart:core@Uri@toString': (Uri target) => target.toString,
  'dart:core@Uri@replace': (Uri target) => target.replace,
  'dart:core@Uri@removeFragment': (Uri target) => target.removeFragment,
  'dart:core@Uri@resolve': (Uri target) => target.resolve,
  'dart:core@Uri@resolveUri': (Uri target) => target.resolveUri,
  'dart:core@Uri@normalizePath': (Uri target) => target.normalizePath,
  'dart:core@Uri@parse:static': () => Uri.parse,
  'dart:core@Uri@tryParse:static': () => Uri.tryParse,
  'dart:core@Uri@encodeComponent:static': () => Uri.encodeComponent,
  'dart:core@Uri@encodeQueryComponent:static': () => Uri.encodeQueryComponent,
  'dart:core@Uri@decodeComponent:static': () => Uri.decodeComponent,
  'dart:core@Uri@decodeQueryComponent:static': () => Uri.decodeQueryComponent,
  'dart:core@Uri@encodeFull:static': () => Uri.encodeFull,
  'dart:core@Uri@decodeFull:static': () => Uri.decodeFull,
  'dart:core@Uri@splitQueryString:static': () => Uri.splitQueryString,
  'dart:core@Uri@parseIPv4Address:static': () => Uri.parseIPv4Address,
  'dart:core@Uri@parseIPv6Address:static': () => Uri.parseIPv6Address,
  'dart:core@UriData@uri': (UriData target) => target.uri,
  'dart:core@UriData@mimeType': (UriData target) => target.mimeType,
  'dart:core@UriData@charset': (UriData target) => target.charset,
  'dart:core@UriData@isBase64': (UriData target) => target.isBase64,
  'dart:core@UriData@contentText': (UriData target) => target.contentText,
  'dart:core@UriData@parameters': (UriData target) => target.parameters,
  'dart:core@UriData@fromString': (List p, Map<String, dynamic> n) =>
      UriData.fromString(p[0],
          mimeType: n['mimeType'],
          encoding: n['encoding'],
          parameters: n['parameters'],
          base64: n['base64']),
  'dart:core@UriData@fromBytes': (List p, Map<String, dynamic> n) =>
      UriData.fromBytes(p[0],
          mimeType: n['mimeType'],
          parameters: n['parameters'],
          percentEncoded: n['percentEncoded']),
  'dart:core@UriData@fromUri': (List p, Map<String, dynamic> n) =>
      UriData.fromUri(p[0]),
  'dart:core@UriData@parse:static': () => UriData.parse,
  'dart:core@UriData@isMimeType': (UriData target) => target.isMimeType,
  'dart:core@UriData@isCharset': (UriData target) => target.isCharset,
  'dart:core@UriData@isEncoding': (UriData target) => target.isEncoding,
  'dart:core@UriData@contentAsBytes': (UriData target) => target.contentAsBytes,
  'dart:core@UriData@contentAsString': (UriData target) =>
      target.contentAsString,
  'dart:core@UriData@toString': (UriData target) => target.toString,
  'dart:core@Expando@name': (Expando target) => target.name,
  'dart:core@Expando@': (List p, Map<String, dynamic> n) => Expando(p[0]),
  'dart:core@Expando@toString': (Expando target) => target.toString,
  'dart:core@Expando@[]': (Expando target, index) => target[index],
  'dart:core@Expando@[]=': (Expando target, index, other) =>
      target[index] = other,
  'dart:core@WeakReference@target': (WeakReference target) => target.target,
  'dart:core@Finalizer@attach': (Finalizer target) => target.attach,
  'dart:core@Finalizer@detach': (Finalizer target) => target.detach,
  'dart:async@AsyncError@error': (l0.AsyncError target) => target.error,
  'dart:async@AsyncError@stackTrace': (l0.AsyncError target) =>
      target.stackTrace,
  'dart:async@AsyncError@': (List p, Map<String, dynamic> n) =>
      l0.AsyncError(p[0], p[1]),
  'dart:async@AsyncError@defaultStackTrace:static': () =>
      l0.AsyncError.defaultStackTrace,
  'dart:async@AsyncError@toString': (l0.AsyncError target) => target.toString,
  'dart:async@DeferredLibrary@libraryName': (l0.DeferredLibrary target) =>
      target.libraryName,
  'dart:async@DeferredLibrary@uri': (l0.DeferredLibrary target) => target.uri,
  'dart:async@DeferredLibrary@': (List p, Map<String, dynamic> n) =>
      l0.DeferredLibrary(p[0], uri: n['uri']),
  'dart:async@DeferredLibrary@load': (l0.DeferredLibrary target) => target.load,
  'dart:async@DeferredLoadException@': (List p, Map<String, dynamic> n) =>
      l0.DeferredLoadException(p[0]),
  'dart:async@DeferredLoadException@toString':
      (l0.DeferredLoadException target) => target.toString,
  'dart:async@Future@value:static': () => l0.Future.value,
  'dart:async@Future@wait:static': () => l0.Future.wait,
  'dart:async@Future@any:static': () => l0.Future.any,
  'dart:async@Future@forEach:static': () => l0.Future.forEach,
  'dart:async@Future@doWhile:static': () => l0.Future.doWhile,
  'dart:async@Future@then': (Future target) => target.then,
  'dart:async@Future@catchError': (Future target) => target.catchError,
  'dart:async@Future@whenComplete': (Future target) => target.whenComplete,
  'dart:async@Future@asStream': (Future target) => target.asStream,
  'dart:async@Future@timeout': (Future target) => target.timeout,
  'dart:async@TimeoutException@message': (l0.TimeoutException target) =>
      target.message,
  'dart:async@TimeoutException@duration': (l0.TimeoutException target) =>
      target.duration,
  'dart:async@TimeoutException@': (List p, Map<String, dynamic> n) =>
      l0.TimeoutException(p[0], p[1]),
  'dart:async@TimeoutException@toString': (l0.TimeoutException target) =>
      target.toString,
  'dart:async@Completer@': () => l0.Completer(),
  'dart:async@Completer@future': (l0.Completer target) => target.future,
  'dart:async@Completer@isCompleted': (l0.Completer target) =>
      target.isCompleted,
  'dart:async@Completer@complete': (l0.Completer target) => target.complete,
  'dart:async@Completer@completeError': (l0.Completer target) =>
      target.completeError,
  'dart:async@@unawaited:static': () => l0.unawaited,
  'dart:async@@scheduleMicrotask:static': () => l0.scheduleMicrotask,
  'dart:async@Stream@isBroadcast': (Stream target) => target.isBroadcast,
  'dart:async@Stream@length': (Stream target) => target.length,
  'dart:async@Stream@isEmpty': (Stream target) => target.isEmpty,
  'dart:async@Stream@first': (Stream target) => target.first,
  'dart:async@Stream@last': (Stream target) => target.last,
  'dart:async@Stream@single': (Stream target) => target.single,
  'dart:async@Stream@castFrom:static': () => l0.Stream.castFrom,
  'dart:async@Stream@asBroadcastStream': (Stream target) =>
      target.asBroadcastStream,
  'dart:async@Stream@listen': (Stream target) => target.listen,
  'dart:async@Stream@where': (Stream target) => target.where,
  'dart:async@Stream@map': (Stream target) => target.map,
  'dart:async@Stream@asyncMap': (Stream target) => target.asyncMap,
  'dart:async@Stream@asyncExpand': (Stream target) => target.asyncExpand,
  'dart:async@Stream@handleError': (Stream target) => target.handleError,
  'dart:async@Stream@expand': (Stream target) => target.expand,
  'dart:async@Stream@pipe': (Stream target) => target.pipe,
  'dart:async@Stream@transform': (Stream target) => target.transform,
  'dart:async@Stream@reduce': (Stream target) => target.reduce,
  'dart:async@Stream@fold': (Stream target) => target.fold,
  'dart:async@Stream@join': (Stream target) => target.join,
  'dart:async@Stream@contains': (Stream target) => target.contains,
  'dart:async@Stream@forEach': (Stream target) => target.forEach,
  'dart:async@Stream@every': (Stream target) => target.every,
  'dart:async@Stream@any': (Stream target) => target.any,
  'dart:async@Stream@cast': (Stream target) => target.cast,
  'dart:async@Stream@toList': (Stream target) => target.toList,
  'dart:async@Stream@toSet': (Stream target) => target.toSet,
  'dart:async@Stream@drain': (Stream target) => target.drain,
  'dart:async@Stream@take': (Stream target) => target.take,
  'dart:async@Stream@takeWhile': (Stream target) => target.takeWhile,
  'dart:async@Stream@skip': (Stream target) => target.skip,
  'dart:async@Stream@skipWhile': (Stream target) => target.skipWhile,
  'dart:async@Stream@distinct': (Stream target) => target.distinct,
  'dart:async@Stream@firstWhere': (Stream target) => target.firstWhere,
  'dart:async@Stream@lastWhere': (Stream target) => target.lastWhere,
  'dart:async@Stream@singleWhere': (Stream target) => target.singleWhere,
  'dart:async@Stream@elementAt': (Stream target) => target.elementAt,
  'dart:async@Stream@timeout': (Stream target) => target.timeout,
  'dart:async@StreamSubscription@isPaused': (l0.StreamSubscription target) =>
      target.isPaused,
  'dart:async@StreamSubscription@cancel': (l0.StreamSubscription target) =>
      target.cancel,
  'dart:async@StreamSubscription@onData': (l0.StreamSubscription target) =>
      target.onData,
  'dart:async@StreamSubscription@onError': (l0.StreamSubscription target) =>
      target.onError,
  'dart:async@StreamSubscription@onDone': (l0.StreamSubscription target) =>
      target.onDone,
  'dart:async@StreamSubscription@pause': (l0.StreamSubscription target) =>
      target.pause,
  'dart:async@StreamSubscription@resume': (l0.StreamSubscription target) =>
      target.resume,
  'dart:async@StreamSubscription@asFuture': (l0.StreamSubscription target) =>
      target.asFuture,
  'dart:async@EventSink@add': (l0.EventSink target) => target.add,
  'dart:async@EventSink@addError': (l0.EventSink target) => target.addError,
  'dart:async@EventSink@close': (l0.EventSink target) => target.close,
  'dart:async@StreamView@isBroadcast': (l0.StreamView target) =>
      target.isBroadcast,
  'dart:async@StreamView@': (List p, Map<String, dynamic> n) =>
      l0.StreamView(p[0]),
  'dart:async@StreamView@asBroadcastStream': (l0.StreamView target) =>
      target.asBroadcastStream,
  'dart:async@StreamView@listen': (l0.StreamView target) => target.listen,
  'dart:async@StreamConsumer@addStream': (l0.StreamConsumer target) =>
      target.addStream,
  'dart:async@StreamConsumer@close': (l0.StreamConsumer target) => target.close,
  'dart:async@StreamSink@done': (l0.StreamSink target) => target.done,
  'dart:async@StreamSink@close': (l0.StreamSink target) => target.close,
  'dart:async@StreamTransformer@castFrom:static': () =>
      l0.StreamTransformer.castFrom,
  'dart:async@StreamTransformer@bind': (l0.StreamTransformer target) =>
      target.bind,
  'dart:async@StreamTransformer@cast': (l0.StreamTransformer target) =>
      target.cast,
  'dart:async@StreamTransformerBase@cast': (l0.StreamTransformerBase target) =>
      target.cast,
  'dart:async@StreamIterator@current': (l0.StreamIterator target) =>
      target.current,
  'dart:async@StreamIterator@moveNext': (l0.StreamIterator target) =>
      target.moveNext,
  'dart:async@StreamIterator@cancel': (l0.StreamIterator target) =>
      target.cancel,
  'dart:async@MultiStreamController@addSync':
      (l0.MultiStreamController target) => target.addSync,
  'dart:async@MultiStreamController@addErrorSync':
      (l0.MultiStreamController target) => target.addErrorSync,
  'dart:async@MultiStreamController@closeSync':
      (l0.MultiStreamController target) => target.closeSync,
  'dart:async@StreamController@onListen': (l0.StreamController target) =>
      target.onListen,
  'dart:async@StreamController@onListen:set':
      (l0.StreamController target, other) => target.onListen = other,
  'dart:async@StreamController@onPause': (l0.StreamController target) =>
      target.onPause,
  'dart:async@StreamController@onPause:set':
      (l0.StreamController target, other) => target.onPause = other,
  'dart:async@StreamController@onResume': (l0.StreamController target) =>
      target.onResume,
  'dart:async@StreamController@onResume:set':
      (l0.StreamController target, other) => target.onResume = other,
  'dart:async@StreamController@onCancel': (l0.StreamController target) =>
      target.onCancel,
  'dart:async@StreamController@onCancel:set':
      (l0.StreamController target, other) => target.onCancel = other,
  'dart:async@StreamController@stream': (l0.StreamController target) =>
      target.stream,
  'dart:async@StreamController@sink': (l0.StreamController target) =>
      target.sink,
  'dart:async@StreamController@isClosed': (l0.StreamController target) =>
      target.isClosed,
  'dart:async@StreamController@isPaused': (l0.StreamController target) =>
      target.isPaused,
  'dart:async@StreamController@hasListener': (l0.StreamController target) =>
      target.hasListener,
  'dart:async@StreamController@done': (l0.StreamController target) =>
      target.done,
  'dart:async@StreamController@add': (l0.StreamController target) => target.add,
  'dart:async@StreamController@addError': (l0.StreamController target) =>
      target.addError,
  'dart:async@StreamController@close': (l0.StreamController target) =>
      target.close,
  'dart:async@StreamController@addStream': (l0.StreamController target) =>
      target.addStream,
  'dart:async@SynchronousStreamController@add':
      (l0.SynchronousStreamController target) => target.add,
  'dart:async@SynchronousStreamController@addError':
      (l0.SynchronousStreamController target) => target.addError,
  'dart:async@SynchronousStreamController@close':
      (l0.SynchronousStreamController target) => target.close,
  'dart:async@Timer@tick': (l0.Timer target) => target.tick,
  'dart:async@Timer@isActive': (l0.Timer target) => target.isActive,
  'dart:async@Timer@run:static': () => l0.Timer.run,
  'dart:async@Timer@cancel': (l0.Timer target) => target.cancel,
  'dart:async@ZoneSpecification@handleUncaughtError':
      (l0.ZoneSpecification target) => target.handleUncaughtError,
  'dart:async@ZoneSpecification@run': (l0.ZoneSpecification target) =>
      target.run,
  'dart:async@ZoneSpecification@runUnary': (l0.ZoneSpecification target) =>
      target.runUnary,
  'dart:async@ZoneSpecification@runBinary': (l0.ZoneSpecification target) =>
      target.runBinary,
  'dart:async@ZoneSpecification@registerCallback':
      (l0.ZoneSpecification target) => target.registerCallback,
  'dart:async@ZoneSpecification@registerUnaryCallback':
      (l0.ZoneSpecification target) => target.registerUnaryCallback,
  'dart:async@ZoneSpecification@registerBinaryCallback':
      (l0.ZoneSpecification target) => target.registerBinaryCallback,
  'dart:async@ZoneSpecification@errorCallback': (l0.ZoneSpecification target) =>
      target.errorCallback,
  'dart:async@ZoneSpecification@scheduleMicrotask':
      (l0.ZoneSpecification target) => target.scheduleMicrotask,
  'dart:async@ZoneSpecification@createTimer': (l0.ZoneSpecification target) =>
      target.createTimer,
  'dart:async@ZoneSpecification@createPeriodicTimer':
      (l0.ZoneSpecification target) => target.createPeriodicTimer,
  'dart:async@ZoneSpecification@print': (l0.ZoneSpecification target) =>
      target.print,
  'dart:async@ZoneSpecification@fork': (l0.ZoneSpecification target) =>
      target.fork,
  'dart:async@ZoneDelegate@handleUncaughtError': (l0.ZoneDelegate target) =>
      target.handleUncaughtError,
  'dart:async@ZoneDelegate@run': (l0.ZoneDelegate target) => target.run,
  'dart:async@ZoneDelegate@runUnary': (l0.ZoneDelegate target) =>
      target.runUnary,
  'dart:async@ZoneDelegate@runBinary': (l0.ZoneDelegate target) =>
      target.runBinary,
  'dart:async@ZoneDelegate@registerCallback': (l0.ZoneDelegate target) =>
      target.registerCallback,
  'dart:async@ZoneDelegate@registerUnaryCallback': (l0.ZoneDelegate target) =>
      target.registerUnaryCallback,
  'dart:async@ZoneDelegate@registerBinaryCallback': (l0.ZoneDelegate target) =>
      target.registerBinaryCallback,
  'dart:async@ZoneDelegate@errorCallback': (l0.ZoneDelegate target) =>
      target.errorCallback,
  'dart:async@ZoneDelegate@scheduleMicrotask': (l0.ZoneDelegate target) =>
      target.scheduleMicrotask,
  'dart:async@ZoneDelegate@createTimer': (l0.ZoneDelegate target) =>
      target.createTimer,
  'dart:async@ZoneDelegate@createPeriodicTimer': (l0.ZoneDelegate target) =>
      target.createPeriodicTimer,
  'dart:async@ZoneDelegate@print': (l0.ZoneDelegate target) => target.print,
  'dart:async@ZoneDelegate@fork': (l0.ZoneDelegate target) => target.fork,
  'dart:async@Zone@root:static': () => l0.Zone.root,
  'dart:async@Zone@current:static': () => l0.Zone.current,
  'dart:async@Zone@parent': (l0.Zone target) => target.parent,
  'dart:async@Zone@errorZone': (l0.Zone target) => target.errorZone,
  'dart:async@Zone@handleUncaughtError': (l0.Zone target) =>
      target.handleUncaughtError,
  'dart:async@Zone@inSameErrorZone': (l0.Zone target) => target.inSameErrorZone,
  'dart:async@Zone@fork': (l0.Zone target) => target.fork,
  'dart:async@Zone@run': (l0.Zone target) => target.run,
  'dart:async@Zone@runUnary': (l0.Zone target) => target.runUnary,
  'dart:async@Zone@runBinary': (l0.Zone target) => target.runBinary,
  'dart:async@Zone@runGuarded': (l0.Zone target) => target.runGuarded,
  'dart:async@Zone@runUnaryGuarded': (l0.Zone target) => target.runUnaryGuarded,
  'dart:async@Zone@runBinaryGuarded': (l0.Zone target) =>
      target.runBinaryGuarded,
  'dart:async@Zone@registerCallback': (l0.Zone target) =>
      target.registerCallback,
  'dart:async@Zone@registerUnaryCallback': (l0.Zone target) =>
      target.registerUnaryCallback,
  'dart:async@Zone@registerBinaryCallback': (l0.Zone target) =>
      target.registerBinaryCallback,
  'dart:async@Zone@bindCallback': (l0.Zone target) => target.bindCallback,
  'dart:async@Zone@bindUnaryCallback': (l0.Zone target) =>
      target.bindUnaryCallback,
  'dart:async@Zone@bindBinaryCallback': (l0.Zone target) =>
      target.bindBinaryCallback,
  'dart:async@Zone@bindCallbackGuarded': (l0.Zone target) =>
      target.bindCallbackGuarded,
  'dart:async@Zone@bindUnaryCallbackGuarded': (l0.Zone target) =>
      target.bindUnaryCallbackGuarded,
  'dart:async@Zone@bindBinaryCallbackGuarded': (l0.Zone target) =>
      target.bindBinaryCallbackGuarded,
  'dart:async@Zone@errorCallback': (l0.Zone target) => target.errorCallback,
  'dart:async@Zone@scheduleMicrotask': (l0.Zone target) =>
      target.scheduleMicrotask,
  'dart:async@Zone@createTimer': (l0.Zone target) => target.createTimer,
  'dart:async@Zone@createPeriodicTimer': (l0.Zone target) =>
      target.createPeriodicTimer,
  'dart:async@Zone@print': (l0.Zone target) => target.print,
  'dart:async@Zone@[]': (l0.Zone target, index) => target[index],
  'dart:async@@runZoned:static': () => l0.runZoned,
  'dart:async@@runZonedGuarded:static': () => l0.runZonedGuarded,
};
