import 'dart:collection';
import 'dart:convert'
    show
        ascii,
        base64,
        Base64Codec,
        Encoding,
        latin1,
        StringConversionSink,
        utf8;
import 'dart:math' show Random;
import 'dart:typed_data' show Uint8List;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:micro_dart_runtime/runtime/bridge.dart';

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'dart:core@@deprecated': (m.Scope scope) => deprecated,
    'dart:core@@override': (m.Scope scope) => override,
    'dart:core@Deprecated@#as': (m.Scope scope, target) =>
        () => target as Deprecated,
    'dart:core@Deprecated@#is': (m.Scope scope, target) =>
        () => target is Deprecated,
    'dart:core@Deprecated@message': (m.Scope scope, Deprecated target) =>
        target.message,
    'dart:core@Deprecated@': (m.Scope scope) => (message) {
          return $Deprecated(message);
        },
    'dart:core@Deprecated@toString': (m.Scope scope, Deprecated target) =>
        target.toString,
    'dart:core@pragma@#as': (m.Scope scope, target) => () => target as pragma,
    'dart:core@pragma@#is': (m.Scope scope, target) => () => target is pragma,
    'dart:core@pragma@name': (m.Scope scope, pragma target) => target.name,
    'dart:core@pragma@options': (m.Scope scope, pragma target) =>
        target.options,
    'dart:core@pragma@': (m.Scope scope) => (name, [Object? options]) {
          if (options == null) {
            return pragma(name);
          }
          return pragma(name, options!);
        },
    'dart:core@BigInt@#as': (m.Scope scope, target) => () => target as BigInt,
    'dart:core@BigInt@#is': (m.Scope scope, target) => () => target is BigInt,
    'dart:core@BigInt@zero': (m.Scope scope) => BigInt.zero,
    'dart:core@BigInt@one': (m.Scope scope) => BigInt.one,
    'dart:core@BigInt@two': (m.Scope scope) => BigInt.two,
    'dart:core@BigInt@bitLength': (m.Scope scope, BigInt target) =>
        target.bitLength,
    'dart:core@BigInt@sign': (m.Scope scope, BigInt target) => target.sign,
    'dart:core@BigInt@isEven': (m.Scope scope, BigInt target) => target.isEven,
    'dart:core@BigInt@isOdd': (m.Scope scope, BigInt target) => target.isOdd,
    'dart:core@BigInt@isNegative': (m.Scope scope, BigInt target) =>
        target.isNegative,
    'dart:core@BigInt@isValidInt': (m.Scope scope, BigInt target) =>
        target.isValidInt,
    'dart:core@BigInt@from': (m.Scope scope) => BigInt.from,
    'dart:core@BigInt@parse': (m.Scope scope) => BigInt.parse,
    'dart:core@BigInt@tryParse': (m.Scope scope) => BigInt.tryParse,
    'dart:core@BigInt@abs': (m.Scope scope, BigInt target) => target.abs,
    'dart:core@BigInt@unary-': (m.Scope scope, BigInt target) => () => -target,
    'dart:core@BigInt@+': (m.Scope scope, BigInt target) =>
        (other) => target + other,
    'dart:core@BigInt@-': (m.Scope scope, BigInt target) =>
        (other) => target - other,
    'dart:core@BigInt@*': (m.Scope scope, BigInt target) =>
        (other) => target * other,
    'dart:core@BigInt@/': (m.Scope scope, BigInt target) =>
        (other) => target / other,
    'dart:core@BigInt@~/': (m.Scope scope, BigInt target) =>
        (other) => target ~/ other,
    'dart:core@BigInt@%': (m.Scope scope, BigInt target) =>
        (other) => target % other,
    'dart:core@BigInt@remainder': (m.Scope scope, BigInt target) =>
        target.remainder,
    'dart:core@BigInt@<<': (m.Scope scope, BigInt target) =>
        (other) => target << other,
    'dart:core@BigInt@>>': (m.Scope scope, BigInt target) =>
        (other) => target >> other,
    'dart:core@BigInt@&': (m.Scope scope, BigInt target) =>
        (other) => target & other,
    'dart:core@BigInt@|': (m.Scope scope, BigInt target) =>
        (other) => target | other,
    'dart:core@BigInt@^': (m.Scope scope, BigInt target) =>
        (other) => target ^ other,
    'dart:core@BigInt@~': (m.Scope scope, BigInt target) => () => ~target,
    'dart:core@BigInt@<': (m.Scope scope, BigInt target) =>
        (other) => target < other,
    'dart:core@BigInt@<=': (m.Scope scope, BigInt target) =>
        (other) => target <= other,
    'dart:core@BigInt@>': (m.Scope scope, BigInt target) =>
        (other) => target > other,
    'dart:core@BigInt@>=': (m.Scope scope, BigInt target) =>
        (other) => target >= other,
    'dart:core@BigInt@compareTo': (m.Scope scope, BigInt target) =>
        target.compareTo,
    'dart:core@BigInt@pow': (m.Scope scope, BigInt target) => target.pow,
    'dart:core@BigInt@modPow': (m.Scope scope, BigInt target) => target.modPow,
    'dart:core@BigInt@modInverse': (m.Scope scope, BigInt target) =>
        target.modInverse,
    'dart:core@BigInt@gcd': (m.Scope scope, BigInt target) => target.gcd,
    'dart:core@BigInt@toUnsigned': (m.Scope scope, BigInt target) =>
        target.toUnsigned,
    'dart:core@BigInt@toSigned': (m.Scope scope, BigInt target) =>
        target.toSigned,
    'dart:core@BigInt@toInt': (m.Scope scope, BigInt target) => target.toInt,
    'dart:core@BigInt@toDouble': (m.Scope scope, BigInt target) =>
        target.toDouble,
    'dart:core@BigInt@toString': (m.Scope scope, BigInt target) =>
        target.toString,
    'dart:core@BigInt@toRadixString': (m.Scope scope, BigInt target) =>
        target.toRadixString,
    'dart:core@bool@#as': (m.Scope scope, target) => () => target as bool,
    'dart:core@bool@#is': (m.Scope scope, target) => () => target is bool,
    'dart:core@bool@hashCode': (m.Scope scope, bool target) => target.hashCode,
    'dart:core@bool@fromEnvironment': (m.Scope scope) => bool.fromEnvironment,
    'dart:core@bool@hasEnvironment': (m.Scope scope) => bool.hasEnvironment,
    'dart:core@bool@parse': (m.Scope scope) => bool.parse,
    'dart:core@bool@tryParse': (m.Scope scope) => bool.tryParse,
    'dart:core@bool@&': (m.Scope scope, bool target) =>
        (other) => target & other,
    'dart:core@bool@|': (m.Scope scope, bool target) =>
        (other) => target | other,
    'dart:core@bool@^': (m.Scope scope, bool target) =>
        (other) => target ^ other,
    'dart:core@bool@toString': (m.Scope scope, bool target) => target.toString,
    'dart:core@Comparable@#as': (m.Scope scope, target) =>
        () => target as Comparable,
    'dart:core@Comparable@#is': (m.Scope scope, target) =>
        () => target is Comparable,
    'dart:core@Comparable@compareTo': (m.Scope scope, Comparable target) =>
        target.compareTo,
    'dart:core@Comparable@compare': (m.Scope scope) => Comparable.compare,
    'dart:core@DateTime@#as': (m.Scope scope, target) =>
        () => target as DateTime,
    'dart:core@DateTime@#is': (m.Scope scope, target) =>
        () => target is DateTime,
    'dart:core@DateTime@monday': (m.Scope scope) => DateTime.monday,
    'dart:core@DateTime@tuesday': (m.Scope scope) => DateTime.tuesday,
    'dart:core@DateTime@wednesday': (m.Scope scope) => DateTime.wednesday,
    'dart:core@DateTime@thursday': (m.Scope scope) => DateTime.thursday,
    'dart:core@DateTime@friday': (m.Scope scope) => DateTime.friday,
    'dart:core@DateTime@saturday': (m.Scope scope) => DateTime.saturday,
    'dart:core@DateTime@sunday': (m.Scope scope) => DateTime.sunday,
    'dart:core@DateTime@daysPerWeek': (m.Scope scope) => DateTime.daysPerWeek,
    'dart:core@DateTime@january': (m.Scope scope) => DateTime.january,
    'dart:core@DateTime@february': (m.Scope scope) => DateTime.february,
    'dart:core@DateTime@march': (m.Scope scope) => DateTime.march,
    'dart:core@DateTime@april': (m.Scope scope) => DateTime.april,
    'dart:core@DateTime@may': (m.Scope scope) => DateTime.may,
    'dart:core@DateTime@june': (m.Scope scope) => DateTime.june,
    'dart:core@DateTime@july': (m.Scope scope) => DateTime.july,
    'dart:core@DateTime@august': (m.Scope scope) => DateTime.august,
    'dart:core@DateTime@september': (m.Scope scope) => DateTime.september,
    'dart:core@DateTime@october': (m.Scope scope) => DateTime.october,
    'dart:core@DateTime@november': (m.Scope scope) => DateTime.november,
    'dart:core@DateTime@december': (m.Scope scope) => DateTime.december,
    'dart:core@DateTime@monthsPerYear': (m.Scope scope) =>
        DateTime.monthsPerYear,
    'dart:core@DateTime@isUtc': (m.Scope scope, DateTime target) =>
        target.isUtc,
    'dart:core@DateTime@hashCode': (m.Scope scope, DateTime target) =>
        target.hashCode,
    'dart:core@DateTime@millisecondsSinceEpoch':
        (m.Scope scope, DateTime target) => target.millisecondsSinceEpoch,
    'dart:core@DateTime@microsecondsSinceEpoch':
        (m.Scope scope, DateTime target) => target.microsecondsSinceEpoch,
    'dart:core@DateTime@timeZoneName': (m.Scope scope, DateTime target) =>
        target.timeZoneName,
    'dart:core@DateTime@timeZoneOffset': (m.Scope scope, DateTime target) =>
        target.timeZoneOffset,
    'dart:core@DateTime@year': (m.Scope scope, DateTime target) => target.year,
    'dart:core@DateTime@month': (m.Scope scope, DateTime target) =>
        target.month,
    'dart:core@DateTime@day': (m.Scope scope, DateTime target) => target.day,
    'dart:core@DateTime@hour': (m.Scope scope, DateTime target) => target.hour,
    'dart:core@DateTime@minute': (m.Scope scope, DateTime target) =>
        target.minute,
    'dart:core@DateTime@second': (m.Scope scope, DateTime target) =>
        target.second,
    'dart:core@DateTime@millisecond': (m.Scope scope, DateTime target) =>
        target.millisecond,
    'dart:core@DateTime@microsecond': (m.Scope scope, DateTime target) =>
        target.microsecond,
    'dart:core@DateTime@weekday': (m.Scope scope, DateTime target) =>
        target.weekday,
    'dart:core@DateTime@': (m.Scope scope) => (year,
            [int? month,
            int? day,
            int? hour,
            int? minute,
            int? second,
            int? millisecond,
            int? microsecond]) {
          if (month == null &&
              day == null &&
              hour == null &&
              minute == null &&
              second == null &&
              millisecond == null &&
              microsecond == null) {
            return DateTime(year);
          }
          if (day == null &&
              hour == null &&
              minute == null &&
              second == null &&
              millisecond == null &&
              microsecond == null) {
            return DateTime(year, month!);
          }
          if (hour == null &&
              minute == null &&
              second == null &&
              millisecond == null &&
              microsecond == null) {
            return DateTime(year, month!, day!);
          }
          if (minute == null &&
              second == null &&
              millisecond == null &&
              microsecond == null) {
            return DateTime(year, month!, day!, hour!);
          }
          if (second == null && millisecond == null && microsecond == null) {
            return DateTime(year, month!, day!, hour!, minute!);
          }
          if (millisecond == null && microsecond == null) {
            return DateTime(year, month!, day!, hour!, minute!, second!);
          }
          if (microsecond == null) {
            return DateTime(
                year, month!, day!, hour!, minute!, second!, millisecond!);
          }
          return DateTime(year, month!, day!, hour!, minute!, second!,
              millisecond!, microsecond!);
        },
    'dart:core@DateTime@utc': (m.Scope scope) => DateTime.utc,
    'dart:core@DateTime@now': (m.Scope scope) => DateTime.now,
    'dart:core@DateTime@timestamp': (m.Scope scope) => DateTime.timestamp,
    'dart:core@DateTime@fromMillisecondsSinceEpoch': (m.Scope scope) =>
        DateTime.fromMillisecondsSinceEpoch,
    'dart:core@DateTime@fromMicrosecondsSinceEpoch': (m.Scope scope) =>
        DateTime.fromMicrosecondsSinceEpoch,
    'dart:core@DateTime@parse': (m.Scope scope) => DateTime.parse,
    'dart:core@DateTime@tryParse': (m.Scope scope) => DateTime.tryParse,
    'dart:core@DateTime@==': (m.Scope scope, DateTime target) =>
        (other) => target == other,
    'dart:core@DateTime@isBefore': (m.Scope scope, DateTime target) =>
        target.isBefore,
    'dart:core@DateTime@isAfter': (m.Scope scope, DateTime target) =>
        target.isAfter,
    'dart:core@DateTime@isAtSameMomentAs': (m.Scope scope, DateTime target) =>
        target.isAtSameMomentAs,
    'dart:core@DateTime@compareTo': (m.Scope scope, DateTime target) =>
        target.compareTo,
    'dart:core@DateTime@toLocal': (m.Scope scope, DateTime target) =>
        target.toLocal,
    'dart:core@DateTime@toUtc': (m.Scope scope, DateTime target) =>
        target.toUtc,
    'dart:core@DateTime@toString': (m.Scope scope, DateTime target) =>
        target.toString,
    'dart:core@DateTime@toIso8601String': (m.Scope scope, DateTime target) =>
        target.toIso8601String,
    'dart:core@DateTime@add': (m.Scope scope, DateTime target) => target.add,
    'dart:core@DateTime@subtract': (m.Scope scope, DateTime target) =>
        target.subtract,
    'dart:core@DateTime@difference': (m.Scope scope, DateTime target) =>
        target.difference,
    'dart:core@double@#as': (m.Scope scope, target) => () => target as double,
    'dart:core@double@#is': (m.Scope scope, target) => () => target is double,
    'dart:core@double@nan': (m.Scope scope) => double.nan,
    'dart:core@double@infinity': (m.Scope scope) => double.infinity,
    'dart:core@double@negativeInfinity': (m.Scope scope) =>
        double.negativeInfinity,
    'dart:core@double@minPositive': (m.Scope scope) => double.minPositive,
    'dart:core@double@maxFinite': (m.Scope scope) => double.maxFinite,
    'dart:core@double@sign': (m.Scope scope, double target) => target.sign,
    'dart:core@double@remainder': (m.Scope scope, double target) =>
        target.remainder,
    'dart:core@double@+': (m.Scope scope, double target) =>
        (other) => target + other,
    'dart:core@double@-': (m.Scope scope, double target) =>
        (other) => target - other,
    'dart:core@double@*': (m.Scope scope, double target) =>
        (other) => target * other,
    'dart:core@double@%': (m.Scope scope, double target) =>
        (other) => target % other,
    'dart:core@double@/': (m.Scope scope, double target) =>
        (other) => target / other,
    'dart:core@double@~/': (m.Scope scope, double target) =>
        (other) => target ~/ other,
    'dart:core@double@unary-': (m.Scope scope, double target) => () => -target,
    'dart:core@double@abs': (m.Scope scope, double target) => target.abs,
    'dart:core@double@round': (m.Scope scope, double target) => target.round,
    'dart:core@double@floor': (m.Scope scope, double target) => target.floor,
    'dart:core@double@ceil': (m.Scope scope, double target) => target.ceil,
    'dart:core@double@truncate': (m.Scope scope, double target) =>
        target.truncate,
    'dart:core@double@roundToDouble': (m.Scope scope, double target) =>
        target.roundToDouble,
    'dart:core@double@floorToDouble': (m.Scope scope, double target) =>
        target.floorToDouble,
    'dart:core@double@ceilToDouble': (m.Scope scope, double target) =>
        target.ceilToDouble,
    'dart:core@double@truncateToDouble': (m.Scope scope, double target) =>
        target.truncateToDouble,
    'dart:core@double@toString': (m.Scope scope, double target) =>
        target.toString,
    'dart:core@double@parse': (m.Scope scope) => double.parse,
    'dart:core@double@tryParse': (m.Scope scope) => double.tryParse,
    'dart:core@Duration@#as': (m.Scope scope, target) =>
        () => target as Duration,
    'dart:core@Duration@#is': (m.Scope scope, target) =>
        () => target is Duration,
    'dart:core@Duration@microsecondsPerMillisecond': (m.Scope scope) =>
        Duration.microsecondsPerMillisecond,
    'dart:core@Duration@millisecondsPerSecond': (m.Scope scope) =>
        Duration.millisecondsPerSecond,
    'dart:core@Duration@secondsPerMinute': (m.Scope scope) =>
        Duration.secondsPerMinute,
    'dart:core@Duration@minutesPerHour': (m.Scope scope) =>
        Duration.minutesPerHour,
    'dart:core@Duration@hoursPerDay': (m.Scope scope) => Duration.hoursPerDay,
    'dart:core@Duration@microsecondsPerSecond': (m.Scope scope) =>
        Duration.microsecondsPerSecond,
    'dart:core@Duration@microsecondsPerMinute': (m.Scope scope) =>
        Duration.microsecondsPerMinute,
    'dart:core@Duration@microsecondsPerHour': (m.Scope scope) =>
        Duration.microsecondsPerHour,
    'dart:core@Duration@microsecondsPerDay': (m.Scope scope) =>
        Duration.microsecondsPerDay,
    'dart:core@Duration@millisecondsPerMinute': (m.Scope scope) =>
        Duration.millisecondsPerMinute,
    'dart:core@Duration@millisecondsPerHour': (m.Scope scope) =>
        Duration.millisecondsPerHour,
    'dart:core@Duration@millisecondsPerDay': (m.Scope scope) =>
        Duration.millisecondsPerDay,
    'dart:core@Duration@secondsPerHour': (m.Scope scope) =>
        Duration.secondsPerHour,
    'dart:core@Duration@secondsPerDay': (m.Scope scope) =>
        Duration.secondsPerDay,
    'dart:core@Duration@minutesPerDay': (m.Scope scope) =>
        Duration.minutesPerDay,
    'dart:core@Duration@zero': (m.Scope scope) => Duration.zero,
    'dart:core@Duration@inDays': (m.Scope scope, Duration target) =>
        target.inDays,
    'dart:core@Duration@inHours': (m.Scope scope, Duration target) =>
        target.inHours,
    'dart:core@Duration@inMinutes': (m.Scope scope, Duration target) =>
        target.inMinutes,
    'dart:core@Duration@inSeconds': (m.Scope scope, Duration target) =>
        target.inSeconds,
    'dart:core@Duration@inMilliseconds': (m.Scope scope, Duration target) =>
        target.inMilliseconds,
    'dart:core@Duration@inMicroseconds': (m.Scope scope, Duration target) =>
        target.inMicroseconds,
    'dart:core@Duration@hashCode': (m.Scope scope, Duration target) =>
        target.hashCode,
    'dart:core@Duration@isNegative': (m.Scope scope, Duration target) =>
        target.isNegative,
    'dart:core@Duration@': (m.Scope scope) =>
        ({days, hours, microseconds, milliseconds, minutes, seconds}) {
          return Duration(
              days: days ?? 0,
              hours: hours ?? 0,
              microseconds: microseconds ?? 0,
              milliseconds: milliseconds ?? 0,
              minutes: minutes ?? 0,
              seconds: seconds ?? 0);
        },
    'dart:core@Duration@+': (m.Scope scope, Duration target) =>
        (other) => target + other,
    'dart:core@Duration@-': (m.Scope scope, Duration target) =>
        (other) => target - other,
    'dart:core@Duration@*': (m.Scope scope, Duration target) =>
        (other) => target * other,
    'dart:core@Duration@~/': (m.Scope scope, Duration target) =>
        (other) => target ~/ other,
    'dart:core@Duration@<': (m.Scope scope, Duration target) =>
        (other) => target < other,
    'dart:core@Duration@>': (m.Scope scope, Duration target) =>
        (other) => target > other,
    'dart:core@Duration@<=': (m.Scope scope, Duration target) =>
        (other) => target <= other,
    'dart:core@Duration@>=': (m.Scope scope, Duration target) =>
        (other) => target >= other,
    'dart:core@Duration@==': (m.Scope scope, Duration target) =>
        (other) => target == other,
    'dart:core@Duration@compareTo': (m.Scope scope, Duration target) =>
        target.compareTo,
    'dart:core@Duration@toString': (m.Scope scope, Duration target) =>
        target.toString,
    'dart:core@Duration@abs': (m.Scope scope, Duration target) => target.abs,
    'dart:core@Duration@unary-': (m.Scope scope, Duration target) =>
        () => -target,
    'dart:core@Enum@#as': (m.Scope scope, target) => () => target as Enum,
    'dart:core@Enum@#is': (m.Scope scope, target) => () => target is Enum,
    'dart:core@Enum@index': (m.Scope scope, Enum target) => target.index,
    'dart:core@Enum@compareByIndex': (m.Scope scope) => Enum.compareByIndex,
    'dart:core@Enum@compareByName': (m.Scope scope) => Enum.compareByName,
    'dart:core@Error@#as': (m.Scope scope, target) => () => target as Error,
    'dart:core@Error@#is': (m.Scope scope, target) => () => target is Error,
    'dart:core@Error@stackTrace': (m.Scope scope, Error target) =>
        target.stackTrace,
    'dart:core@Error@': (m.Scope scope) => () {
          return Error();
        },
    'dart:core@Error@safeToString': (m.Scope scope) => Error.safeToString,
    'dart:core@Error@throwWithStackTrace': (m.Scope scope) =>
        Error.throwWithStackTrace,
    'dart:core@AssertionError@#as': (m.Scope scope, target) =>
        () => target as AssertionError,
    'dart:core@AssertionError@#is': (m.Scope scope, target) =>
        () => target is AssertionError,
    'dart:core@AssertionError@message':
        (m.Scope scope, AssertionError target) => target.message,
    'dart:core@AssertionError@': (m.Scope scope) => ([Object? message]) {
          if (message == null) {
            return AssertionError();
          }
          return AssertionError(message!);
        },
    'dart:core@AssertionError@toString':
        (m.Scope scope, AssertionError target) => target.toString,
    'dart:core@TypeError@#as': (m.Scope scope, target) =>
        () => target as TypeError,
    'dart:core@TypeError@#is': (m.Scope scope, target) =>
        () => target is TypeError,
    'dart:core@TypeError@': (m.Scope scope) => () {
          return TypeError();
        },
    'dart:core@ArgumentError@#as': (m.Scope scope, target) =>
        () => target as ArgumentError,
    'dart:core@ArgumentError@#is': (m.Scope scope, target) =>
        () => target is ArgumentError,
    'dart:core@ArgumentError@invalidValue':
        (m.Scope scope, ArgumentError target) => target.invalidValue,
    'dart:core@ArgumentError@name': (m.Scope scope, ArgumentError target) =>
        target.name,
    'dart:core@ArgumentError@message': (m.Scope scope, ArgumentError target) =>
        target.message,
    'dart:core@ArgumentError@': (m.Scope scope) =>
        ([dynamic message, String? name]) {
          if (message == null && name == null) {
            return ArgumentError();
          }
          if (name == null) {
            return ArgumentError(message);
          }
          return ArgumentError(message, name!);
        },
    'dart:core@ArgumentError@value': (m.Scope scope) => ArgumentError.value,
    'dart:core@ArgumentError@notNull': (m.Scope scope) => ArgumentError.notNull,
    'dart:core@ArgumentError@checkNotNull': (m.Scope scope) =>
        ArgumentError.checkNotNull,
    'dart:core@ArgumentError@toString': (m.Scope scope, ArgumentError target) =>
        target.toString,
    'dart:core@RangeError@#as': (m.Scope scope, target) =>
        () => target as RangeError,
    'dart:core@RangeError@#is': (m.Scope scope, target) =>
        () => target is RangeError,
    'dart:core@RangeError@start': (m.Scope scope, RangeError target) =>
        target.start,
    'dart:core@RangeError@end': (m.Scope scope, RangeError target) =>
        target.end,
    'dart:core@RangeError@invalidValue': (m.Scope scope, RangeError target) =>
        target.invalidValue,
    'dart:core@RangeError@': (m.Scope scope) => (message) {
          return RangeError(message);
        },
    'dart:core@RangeError@value': (m.Scope scope) => RangeError.value,
    'dart:core@RangeError@range': (m.Scope scope) => RangeError.range,
    'dart:core@RangeError@index': (m.Scope scope) => RangeError.index,
    'dart:core@RangeError@checkValueInInterval': (m.Scope scope) =>
        RangeError.checkValueInInterval,
    'dart:core@RangeError@checkValidIndex': (m.Scope scope) =>
        RangeError.checkValidIndex,
    'dart:core@RangeError@checkValidRange': (m.Scope scope) =>
        RangeError.checkValidRange,
    'dart:core@RangeError@checkNotNegative': (m.Scope scope) =>
        RangeError.checkNotNegative,
    'dart:core@IndexError@#as': (m.Scope scope, target) =>
        () => target as IndexError,
    'dart:core@IndexError@#is': (m.Scope scope, target) =>
        () => target is IndexError,
    'dart:core@IndexError@indexable': (m.Scope scope, IndexError target) =>
        target.indexable,
    'dart:core@IndexError@length': (m.Scope scope, IndexError target) =>
        target.length,
    'dart:core@IndexError@invalidValue': (m.Scope scope, IndexError target) =>
        target.invalidValue,
    'dart:core@IndexError@start': (m.Scope scope, IndexError target) =>
        target.start,
    'dart:core@IndexError@end': (m.Scope scope, IndexError target) =>
        target.end,
    'dart:core@IndexError@withLength': (m.Scope scope) => IndexError.withLength,
    'dart:core@IndexError@check': (m.Scope scope) => IndexError.check,
    'dart:core@NoSuchMethodError@#as': (m.Scope scope, target) =>
        () => target as NoSuchMethodError,
    'dart:core@NoSuchMethodError@#is': (m.Scope scope, target) =>
        () => target is NoSuchMethodError,
    'dart:core@NoSuchMethodError@withInvocation': (m.Scope scope) =>
        NoSuchMethodError.withInvocation,
    'dart:core@NoSuchMethodError@toString':
        (m.Scope scope, NoSuchMethodError target) => target.toString,
    'dart:core@UnsupportedError@#as': (m.Scope scope, target) =>
        () => target as UnsupportedError,
    'dart:core@UnsupportedError@#is': (m.Scope scope, target) =>
        () => target is UnsupportedError,
    'dart:core@UnsupportedError@message':
        (m.Scope scope, UnsupportedError target) => target.message,
    'dart:core@UnsupportedError@': (m.Scope scope) => (message) {
          return UnsupportedError(message);
        },
    'dart:core@UnsupportedError@toString':
        (m.Scope scope, UnsupportedError target) => target.toString,
    'dart:core@UnimplementedError@#as': (m.Scope scope, target) =>
        () => target as UnimplementedError,
    'dart:core@UnimplementedError@#is': (m.Scope scope, target) =>
        () => target is UnimplementedError,
    'dart:core@UnimplementedError@message':
        (m.Scope scope, UnimplementedError target) => target.message,
    'dart:core@UnimplementedError@': (m.Scope scope) => ([String? message]) {
          if (message == null) {
            return UnimplementedError();
          }
          return UnimplementedError(message!);
        },
    'dart:core@UnimplementedError@toString':
        (m.Scope scope, UnimplementedError target) => target.toString,
    'dart:core@StateError@#as': (m.Scope scope, target) =>
        () => target as StateError,
    'dart:core@StateError@#is': (m.Scope scope, target) =>
        () => target is StateError,
    'dart:core@StateError@message': (m.Scope scope, StateError target) =>
        target.message,
    'dart:core@StateError@': (m.Scope scope) => (message) {
          return StateError(message);
        },
    'dart:core@StateError@toString': (m.Scope scope, StateError target) =>
        target.toString,
    'dart:core@ConcurrentModificationError@#as': (m.Scope scope, target) =>
        () => target as ConcurrentModificationError,
    'dart:core@ConcurrentModificationError@#is': (m.Scope scope, target) =>
        () => target is ConcurrentModificationError,
    'dart:core@ConcurrentModificationError@modifiedObject':
        (m.Scope scope, ConcurrentModificationError target) =>
            target.modifiedObject,
    'dart:core@ConcurrentModificationError@': (m.Scope scope) =>
        ([Object? modifiedObject]) {
          if (modifiedObject == null) {
            return ConcurrentModificationError();
          }
          return ConcurrentModificationError(modifiedObject!);
        },
    'dart:core@ConcurrentModificationError@toString':
        (m.Scope scope, ConcurrentModificationError target) => target.toString,
    'dart:core@OutOfMemoryError@#as': (m.Scope scope, target) =>
        () => target as OutOfMemoryError,
    'dart:core@OutOfMemoryError@#is': (m.Scope scope, target) =>
        () => target is OutOfMemoryError,
    'dart:core@OutOfMemoryError@stackTrace':
        (m.Scope scope, OutOfMemoryError target) => target.stackTrace,
    'dart:core@OutOfMemoryError@': (m.Scope scope) => () {
          return OutOfMemoryError();
        },
    'dart:core@OutOfMemoryError@toString':
        (m.Scope scope, OutOfMemoryError target) => target.toString,
    'dart:core@StackOverflowError@#as': (m.Scope scope, target) =>
        () => target as StackOverflowError,
    'dart:core@StackOverflowError@#is': (m.Scope scope, target) =>
        () => target is StackOverflowError,
    'dart:core@StackOverflowError@stackTrace':
        (m.Scope scope, StackOverflowError target) => target.stackTrace,
    'dart:core@StackOverflowError@': (m.Scope scope) => () {
          return StackOverflowError();
        },
    'dart:core@StackOverflowError@toString':
        (m.Scope scope, StackOverflowError target) => target.toString,
    'dart:core@Exception@#as': (m.Scope scope, target) =>
        () => target as Exception,
    'dart:core@Exception@#is': (m.Scope scope, target) =>
        () => target is Exception,
    'dart:core@Exception@': (m.Scope scope) => ([dynamic message]) {
          if (message == null) {
            return Exception();
          }
          return Exception(message);
        },
    'dart:core@FormatException@#as': (m.Scope scope, target) =>
        () => target as FormatException,
    'dart:core@FormatException@#is': (m.Scope scope, target) =>
        () => target is FormatException,
    'dart:core@FormatException@message':
        (m.Scope scope, FormatException target) => target.message,
    'dart:core@FormatException@source':
        (m.Scope scope, FormatException target) => target.source,
    'dart:core@FormatException@offset':
        (m.Scope scope, FormatException target) => target.offset,
    'dart:core@FormatException@': (m.Scope scope) =>
        ([String? message, dynamic source, int? offset]) {
          if (message == null && source == null && offset == null) {
            return FormatException();
          }
          if (source == null && offset == null) {
            return FormatException(message!);
          }
          if (offset == null) {
            return FormatException(message!, source);
          }
          return FormatException(message!, source, offset!);
        },
    'dart:core@FormatException@toString':
        (m.Scope scope, FormatException target) => target.toString,
    'dart:core@IntegerDivisionByZeroException@#as': (m.Scope scope, target) =>
        () => target as IntegerDivisionByZeroException,
    'dart:core@IntegerDivisionByZeroException@#is': (m.Scope scope, target) =>
        () => target is IntegerDivisionByZeroException,
    'dart:core@IntegerDivisionByZeroException@message':
        (m.Scope scope, IntegerDivisionByZeroException target) =>
            target.message,
    'dart:core@IntegerDivisionByZeroException@stackTrace':
        (m.Scope scope, IntegerDivisionByZeroException target) =>
            target.stackTrace,
    'dart:core@IntegerDivisionByZeroException@': (m.Scope scope) => () {
          return IntegerDivisionByZeroException();
        },
    'dart:core@IntegerDivisionByZeroException@toString':
        (m.Scope scope, IntegerDivisionByZeroException target) =>
            target.toString,
    'dart:core@Function@#as': (m.Scope scope, target) =>
        () => target as Function,
    'dart:core@Function@#is': (m.Scope scope, target) =>
        () => target is Function,
    'dart:core@Function@hashCode': (m.Scope scope, Function target) =>
        target.hashCode,
    'dart:core@Function@apply': (m.Scope scope) => Function.apply,
    'dart:core@Function@==': (m.Scope scope, Function target) =>
        (other) => target == other,
    'dart:core@@identical': (m.Scope scope) => identical,
    'dart:core@@identityHashCode': (m.Scope scope) => identityHashCode,
    'dart:core@int@#as': (m.Scope scope, target) => () => target as int,
    'dart:core@int@#is': (m.Scope scope, target) => () => target is int,
    'dart:core@int@isEven': (m.Scope scope, int target) => target.isEven,
    'dart:core@int@isOdd': (m.Scope scope, int target) => target.isOdd,
    'dart:core@int@bitLength': (m.Scope scope, int target) => target.bitLength,
    'dart:core@int@sign': (m.Scope scope, int target) => target.sign,
    'dart:core@int@fromEnvironment': (m.Scope scope) => int.fromEnvironment,
    'dart:core@int@&': (m.Scope scope, int target) => (other) => target & other,
    'dart:core@int@|': (m.Scope scope, int target) => (other) => target | other,
    'dart:core@int@^': (m.Scope scope, int target) => (other) => target ^ other,
    'dart:core@int@~': (m.Scope scope, int target) => () => ~target,
    'dart:core@int@<<': (m.Scope scope, int target) =>
        (other) => target << other,
    'dart:core@int@>>': (m.Scope scope, int target) =>
        (other) => target >> other,
    'dart:core@int@>>>': (m.Scope scope, int target) =>
        (other) => target >>> other,
    'dart:core@int@modPow': (m.Scope scope, int target) => target.modPow,
    'dart:core@int@modInverse': (m.Scope scope, int target) =>
        target.modInverse,
    'dart:core@int@gcd': (m.Scope scope, int target) => target.gcd,
    'dart:core@int@toUnsigned': (m.Scope scope, int target) =>
        target.toUnsigned,
    'dart:core@int@toSigned': (m.Scope scope, int target) => target.toSigned,
    'dart:core@int@unary-': (m.Scope scope, int target) => () => -target,
    'dart:core@int@abs': (m.Scope scope, int target) => target.abs,
    'dart:core@int@round': (m.Scope scope, int target) => target.round,
    'dart:core@int@floor': (m.Scope scope, int target) => target.floor,
    'dart:core@int@ceil': (m.Scope scope, int target) => target.ceil,
    'dart:core@int@truncate': (m.Scope scope, int target) => target.truncate,
    'dart:core@int@roundToDouble': (m.Scope scope, int target) =>
        target.roundToDouble,
    'dart:core@int@floorToDouble': (m.Scope scope, int target) =>
        target.floorToDouble,
    'dart:core@int@ceilToDouble': (m.Scope scope, int target) =>
        target.ceilToDouble,
    'dart:core@int@truncateToDouble': (m.Scope scope, int target) =>
        target.truncateToDouble,
    'dart:core@int@toString': (m.Scope scope, int target) => target.toString,
    'dart:core@int@toRadixString': (m.Scope scope, int target) =>
        target.toRadixString,
    'dart:core@int@parse': (m.Scope scope) => int.parse,
    'dart:core@int@tryParse': (m.Scope scope) => int.tryParse,
    'dart:core@Invocation@#as': (m.Scope scope, target) =>
        () => target as Invocation,
    'dart:core@Invocation@#is': (m.Scope scope, target) =>
        () => target is Invocation,
    'dart:core@Invocation@memberName': (m.Scope scope, Invocation target) =>
        target.memberName,
    'dart:core@Invocation@typeArguments': (m.Scope scope, Invocation target) =>
        target.typeArguments,
    'dart:core@Invocation@positionalArguments':
        (m.Scope scope, Invocation target) => target.positionalArguments,
    'dart:core@Invocation@namedArguments': (m.Scope scope, Invocation target) =>
        target.namedArguments,
    'dart:core@Invocation@isMethod': (m.Scope scope, Invocation target) =>
        target.isMethod,
    'dart:core@Invocation@isGetter': (m.Scope scope, Invocation target) =>
        target.isGetter,
    'dart:core@Invocation@isSetter': (m.Scope scope, Invocation target) =>
        target.isSetter,
    'dart:core@Invocation@isAccessor': (m.Scope scope, Invocation target) =>
        target.isAccessor,
    'dart:core@Invocation@method': (m.Scope scope) => Invocation.method,
    'dart:core@Invocation@genericMethod': (m.Scope scope) =>
        Invocation.genericMethod,
    'dart:core@Invocation@getter': (m.Scope scope) => Invocation.getter,
    'dart:core@Invocation@setter': (m.Scope scope) => Invocation.setter,
    'dart:core@Iterable@#as': (m.Scope scope, target) =>
        () => target as Iterable,
    'dart:core@Iterable@#is': (m.Scope scope, target) =>
        () => target is Iterable,
    'dart:core@Iterable@iterator': (m.Scope scope, Iterable target) =>
        target.iterator,
    'dart:core@Iterable@length': (m.Scope scope, Iterable target) =>
        target.length,
    'dart:core@Iterable@isEmpty': (m.Scope scope, Iterable target) =>
        target.isEmpty,
    'dart:core@Iterable@isNotEmpty': (m.Scope scope, Iterable target) =>
        target.isNotEmpty,
    'dart:core@Iterable@first': (m.Scope scope, Iterable target) =>
        target.first,
    'dart:core@Iterable@last': (m.Scope scope, Iterable target) => target.last,
    'dart:core@Iterable@single': (m.Scope scope, Iterable target) =>
        target.single,
    'dart:core@Iterable@generate': (m.Scope scope) =>
        (count, [m.FunctionPointer? generator]) {
          if (generator == null) {
            return Iterable.generate(count);
          }
          E generatorProxy<E>(index) {
            return engine.callFunctionPointer(scope, generator!, [index], {});
          }

          return Iterable.generate(count, generatorProxy);
        },
    'dart:core@Iterable@empty': (m.Scope scope) => Iterable.empty,
    'dart:core@Iterable@castFrom': (m.Scope scope) => Iterable.castFrom,
    'dart:core@Iterable@cast': (m.Scope scope, Iterable target) => target.cast,
    'dart:core@Iterable@followedBy': (m.Scope scope, Iterable target) =>
        target.followedBy,
    'dart:core@Iterable@map': (m.Scope scope, Iterable target) => (toElement) {
          T toElementProxy<T, E>(e) {
            return engine.callFunctionPointer(scope, toElement!, [e], {});
          }

          return target.map(toElementProxy);
        },
    'dart:core@Iterable@where': (m.Scope scope, Iterable target) => (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          return target.where(testProxy);
        },
    'dart:core@Iterable@whereType': (m.Scope scope, Iterable target) =>
        target.whereType,
    'dart:core@Iterable@expand': (m.Scope scope, Iterable target) =>
        (toElements) {
          Iterable<T> toElementsProxy<T, E>(element) {
            return engine
                .callFunctionPointer(scope, toElements!, [element], {});
          }

          return target.expand(toElementsProxy);
        },
    'dart:core@Iterable@contains': (m.Scope scope, Iterable target) =>
        target.contains,
    'dart:core@Iterable@forEach': (m.Scope scope, Iterable target) => (action) {
          void actionProxy<E>(element) {
            engine.callFunctionPointer(scope, action!, [element], {});
          }

          target.forEach(actionProxy);
        },
    'dart:core@Iterable@reduce': (m.Scope scope, Iterable target) => (combine) {
          E combineProxy<E>(value, element) {
            return engine
                .callFunctionPointer(scope, combine!, [value, element], {});
          }

          return target.reduce(combineProxy);
        },
    'dart:core@Iterable@fold': (m.Scope scope, Iterable target) =>
        (initialValue, combine) {
          T combineProxy<T, E>(previousValue, element) {
            return engine.callFunctionPointer(
                scope, combine!, [previousValue, element], {});
          }

          return target.fold(initialValue, combineProxy);
        },
    'dart:core@Iterable@every': (m.Scope scope, Iterable target) => (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          return target.every(testProxy);
        },
    'dart:core@Iterable@join': (m.Scope scope, Iterable target) => target.join,
    'dart:core@Iterable@any': (m.Scope scope, Iterable target) => (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          return target.any(testProxy);
        },
    'dart:core@Iterable@toList': (m.Scope scope, Iterable target) =>
        target.toList,
    'dart:core@Iterable@toSet': (m.Scope scope, Iterable target) =>
        target.toSet,
    'dart:core@Iterable@take': (m.Scope scope, Iterable target) => target.take,
    'dart:core@Iterable@takeWhile': (m.Scope scope, Iterable target) => (test) {
          bool testProxy<E>(value) {
            return engine.callFunctionPointer(scope, test!, [value], {});
          }

          return target.takeWhile(testProxy);
        },
    'dart:core@Iterable@skip': (m.Scope scope, Iterable target) => target.skip,
    'dart:core@Iterable@skipWhile': (m.Scope scope, Iterable target) => (test) {
          bool testProxy<E>(value) {
            return engine.callFunctionPointer(scope, test!, [value], {});
          }

          return target.skipWhile(testProxy);
        },
    'dart:core@Iterable@firstWhere': (m.Scope scope, Iterable target) =>
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
    'dart:core@Iterable@lastWhere': (m.Scope scope, Iterable target) =>
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
    'dart:core@Iterable@singleWhere': (m.Scope scope, Iterable target) =>
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
    'dart:core@Iterable@elementAt': (m.Scope scope, Iterable target) =>
        target.elementAt,
    'dart:core@Iterable@toString': (m.Scope scope, Iterable target) =>
        target.toString,
    'dart:core@Iterable@iterableToShortString': (m.Scope scope) =>
        Iterable.iterableToShortString,
    'dart:core@Iterable@iterableToFullString': (m.Scope scope) =>
        Iterable.iterableToFullString,
    'dart:core@Iterator@#as': (m.Scope scope, target) =>
        () => target as Iterator,
    'dart:core@Iterator@#is': (m.Scope scope, target) =>
        () => target is Iterator,
    'dart:core@Iterator@current': (m.Scope scope, Iterator target) =>
        target.current,
    'dart:core@Iterator@moveNext': (m.Scope scope, Iterator target) =>
        target.moveNext,
    'dart:core@List@#as': (m.Scope scope, target) => () => target as List,
    'dart:core@List@#is': (m.Scope scope, target) => () => target is List,
    'dart:core@List@first:set': (m.Scope scope, List target) =>
        (other) => target.first = other,
    'dart:core@List@last:set': (m.Scope scope, List target) =>
        (other) => target.last = other,
    'dart:core@List@length': (m.Scope scope, List target) => target.length,
    'dart:core@List@length:set': (m.Scope scope, List target) =>
        (other) => target.length = other,
    'dart:core@List@reversed': (m.Scope scope, List target) => target.reversed,
    'dart:core@List@filled': (m.Scope scope) => List.filled,
    'dart:core@List@empty': (m.Scope scope) => List.empty,
    'dart:core@List@from': (m.Scope scope) => List.from,
    'dart:core@List@of': (m.Scope scope) => List.of,
    'dart:core@List@generate': (m.Scope scope) =>
        (length, generator, {growable}) {
          E generatorProxy<E>(index) {
            return engine.callFunctionPointer(scope, generator!, [index], {});
          }

          return List.generate(length, generatorProxy,
              growable: growable ?? true);
        },
    'dart:core@List@unmodifiable': (m.Scope scope) => List.unmodifiable,
    'dart:core@List@castFrom': (m.Scope scope) => List.castFrom,
    'dart:core@List@copyRange': (m.Scope scope) => List.copyRange,
    'dart:core@List@writeIterable': (m.Scope scope) => List.writeIterable,
    'dart:core@List@cast': (m.Scope scope, List target) => target.cast,
    'dart:core@List@[]': (m.Scope scope, List target) =>
        (index) => target[index],
    'dart:core@List@[]=': (m.Scope scope, List target) =>
        (index, other) => target[index] = other,
    'dart:core@List@add': (m.Scope scope, List target) => target.add,
    'dart:core@List@addAll': (m.Scope scope, List target) => target.addAll,
    'dart:core@List@sort': (m.Scope scope, List target) =>
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
    'dart:core@List@shuffle': (m.Scope scope, List target) => target.shuffle,
    'dart:core@List@indexOf': (m.Scope scope, List target) => target.indexOf,
    'dart:core@List@indexWhere': (m.Scope scope, List target) =>
        (test, [int? start]) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          if (start == null) {
            return target.indexWhere(testProxy);
          }
          return target.indexWhere(testProxy, start!);
        },
    'dart:core@List@lastIndexWhere': (m.Scope scope, List target) =>
        (test, [int? start]) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          if (start == null) {
            return target.lastIndexWhere(testProxy);
          }
          return target.lastIndexWhere(testProxy, start!);
        },
    'dart:core@List@lastIndexOf': (m.Scope scope, List target) =>
        target.lastIndexOf,
    'dart:core@List@clear': (m.Scope scope, List target) => target.clear,
    'dart:core@List@insert': (m.Scope scope, List target) => target.insert,
    'dart:core@List@insertAll': (m.Scope scope, List target) =>
        target.insertAll,
    'dart:core@List@setAll': (m.Scope scope, List target) => target.setAll,
    'dart:core@List@remove': (m.Scope scope, List target) => target.remove,
    'dart:core@List@removeAt': (m.Scope scope, List target) => target.removeAt,
    'dart:core@List@removeLast': (m.Scope scope, List target) =>
        target.removeLast,
    'dart:core@List@removeWhere': (m.Scope scope, List target) => (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          target.removeWhere(testProxy);
        },
    'dart:core@List@retainWhere': (m.Scope scope, List target) => (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          target.retainWhere(testProxy);
        },
    'dart:core@List@+': (m.Scope scope, List target) =>
        (other) => target + other,
    'dart:core@List@sublist': (m.Scope scope, List target) => target.sublist,
    'dart:core@List@getRange': (m.Scope scope, List target) => target.getRange,
    'dart:core@List@setRange': (m.Scope scope, List target) => target.setRange,
    'dart:core@List@removeRange': (m.Scope scope, List target) =>
        target.removeRange,
    'dart:core@List@fillRange': (m.Scope scope, List target) =>
        target.fillRange,
    'dart:core@List@replaceRange': (m.Scope scope, List target) =>
        target.replaceRange,
    'dart:core@List@asMap': (m.Scope scope, List target) => target.asMap,
    'dart:core@List@==': (m.Scope scope, List target) =>
        (other) => target == other,
    'dart:core@Map@#as': (m.Scope scope, target) => () => target as Map,
    'dart:core@Map@#is': (m.Scope scope, target) => () => target is Map,
    'dart:core@Map@entries': (m.Scope scope, Map target) => target.entries,
    'dart:core@Map@keys': (m.Scope scope, Map target) => target.keys,
    'dart:core@Map@values': (m.Scope scope, Map target) => target.values,
    'dart:core@Map@length': (m.Scope scope, Map target) => target.length,
    'dart:core@Map@isEmpty': (m.Scope scope, Map target) => target.isEmpty,
    'dart:core@Map@isNotEmpty': (m.Scope scope, Map target) =>
        target.isNotEmpty,
    'dart:core@Map@': (m.Scope scope) => <K, V>() {
          return Map();
        },
    'dart:core@Map@from': (m.Scope scope) => Map.from,
    'dart:core@Map@of': (m.Scope scope) => Map.of,
    'dart:core@Map@unmodifiable': (m.Scope scope) => Map.unmodifiable,
    'dart:core@Map@identity': (m.Scope scope) => Map.identity,
    'dart:core@Map@fromIterable': (m.Scope scope) => (iterable, {key, value}) {
          K keyProxy<K>(element) {
            return engine.callFunctionPointer(scope, key!, [element], {});
          }

          V valueProxy<V>(element) {
            return engine.callFunctionPointer(scope, value!, [element], {});
          }

          return Map.fromIterable(iterable,
              key: key == null ? null : keyProxy,
              value: value == null ? null : valueProxy);
        },
    'dart:core@Map@fromIterables': (m.Scope scope) => Map.fromIterables,
    'dart:core@Map@fromEntries': (m.Scope scope) => Map.fromEntries,
    'dart:core@Map@castFrom': (m.Scope scope) => Map.castFrom,
    'dart:core@Map@cast': (m.Scope scope, Map target) => target.cast,
    'dart:core@Map@containsValue': (m.Scope scope, Map target) =>
        target.containsValue,
    'dart:core@Map@containsKey': (m.Scope scope, Map target) =>
        target.containsKey,
    'dart:core@Map@[]': (m.Scope scope, Map target) => (index) => target[index],
    'dart:core@Map@[]=': (m.Scope scope, Map target) =>
        (index, other) => target[index] = other,
    'dart:core@Map@map': (m.Scope scope, Map target) => (convert) {
          MapEntry<K2, V2> convertProxy<K2, V2, K, V>(key, value) {
            return engine
                .callFunctionPointer(scope, convert!, [key, value], {});
          }

          return target.map(convertProxy);
        },
    'dart:core@Map@addEntries': (m.Scope scope, Map target) =>
        target.addEntries,
    'dart:core@Map@update': (m.Scope scope, Map target) =>
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
    'dart:core@Map@updateAll': (m.Scope scope, Map target) => (update) {
          V updateProxy<V, K>(key, value) {
            return engine.callFunctionPointer(scope, update!, [key, value], {});
          }

          target.updateAll(updateProxy);
        },
    'dart:core@Map@removeWhere': (m.Scope scope, Map target) => (test) {
          bool testProxy<K, V>(key, value) {
            return engine.callFunctionPointer(scope, test!, [key, value], {});
          }

          target.removeWhere(testProxy);
        },
    'dart:core@Map@putIfAbsent': (m.Scope scope, Map target) =>
        (key, ifAbsent) {
          V ifAbsentProxy<V>() {
            return engine.callFunctionPointer(scope, ifAbsent!, [], {});
          }

          return target.putIfAbsent(key, ifAbsentProxy);
        },
    'dart:core@Map@addAll': (m.Scope scope, Map target) => target.addAll,
    'dart:core@Map@remove': (m.Scope scope, Map target) => target.remove,
    'dart:core@Map@clear': (m.Scope scope, Map target) => target.clear,
    'dart:core@Map@forEach': (m.Scope scope, Map target) => (action) {
          void actionProxy<K, V>(key, value) {
            engine.callFunctionPointer(scope, action!, [key, value], {});
          }

          target.forEach(actionProxy);
        },
    'dart:core@MapEntry@#as': (m.Scope scope, target) =>
        () => target as MapEntry,
    'dart:core@MapEntry@#is': (m.Scope scope, target) =>
        () => target is MapEntry,
    'dart:core@MapEntry@key': (m.Scope scope, MapEntry target) => target.key,
    'dart:core@MapEntry@value': (m.Scope scope, MapEntry target) =>
        target.value,
    'dart:core@MapEntry@': (m.Scope scope) => <K, V>(key, value) {
          return MapEntry(key, value);
        },
    'dart:core@MapEntry@toString': (m.Scope scope, MapEntry target) =>
        target.toString,
    'dart:core@Null@#as': (m.Scope scope, target) => () => target as Null,
    'dart:core@Null@#is': (m.Scope scope, target) => () => target is Null,
    'dart:core@Null@hashCode': (m.Scope scope, Null target) => target.hashCode,
    'dart:core@Null@toString': (m.Scope scope, Null target) => target.toString,
    'dart:core@num@#as': (m.Scope scope, target) => () => target as num,
    'dart:core@num@#is': (m.Scope scope, target) => () => target is num,
    'dart:core@num@hashCode': (m.Scope scope, num target) => target.hashCode,
    'dart:core@num@isNaN': (m.Scope scope, num target) => target.isNaN,
    'dart:core@num@isNegative': (m.Scope scope, num target) =>
        target.isNegative,
    'dart:core@num@isInfinite': (m.Scope scope, num target) =>
        target.isInfinite,
    'dart:core@num@isFinite': (m.Scope scope, num target) => target.isFinite,
    'dart:core@num@sign': (m.Scope scope, num target) => target.sign,
    'dart:core@num@==': (m.Scope scope, num target) =>
        (other) => target == other,
    'dart:core@num@compareTo': (m.Scope scope, num target) => target.compareTo,
    'dart:core@num@+': (m.Scope scope, num target) => (other) => target + other,
    'dart:core@num@-': (m.Scope scope, num target) => (other) => target - other,
    'dart:core@num@*': (m.Scope scope, num target) => (other) => target * other,
    'dart:core@num@%': (m.Scope scope, num target) => (other) => target % other,
    'dart:core@num@/': (m.Scope scope, num target) => (other) => target / other,
    'dart:core@num@~/': (m.Scope scope, num target) =>
        (other) => target ~/ other,
    'dart:core@num@unary-': (m.Scope scope, num target) => () => -target,
    'dart:core@num@remainder': (m.Scope scope, num target) => target.remainder,
    'dart:core@num@<': (m.Scope scope, num target) => (other) => target < other,
    'dart:core@num@<=': (m.Scope scope, num target) =>
        (other) => target <= other,
    'dart:core@num@>': (m.Scope scope, num target) => (other) => target > other,
    'dart:core@num@>=': (m.Scope scope, num target) =>
        (other) => target >= other,
    'dart:core@num@abs': (m.Scope scope, num target) => target.abs,
    'dart:core@num@round': (m.Scope scope, num target) => target.round,
    'dart:core@num@floor': (m.Scope scope, num target) => target.floor,
    'dart:core@num@ceil': (m.Scope scope, num target) => target.ceil,
    'dart:core@num@truncate': (m.Scope scope, num target) => target.truncate,
    'dart:core@num@roundToDouble': (m.Scope scope, num target) =>
        target.roundToDouble,
    'dart:core@num@floorToDouble': (m.Scope scope, num target) =>
        target.floorToDouble,
    'dart:core@num@ceilToDouble': (m.Scope scope, num target) =>
        target.ceilToDouble,
    'dart:core@num@truncateToDouble': (m.Scope scope, num target) =>
        target.truncateToDouble,
    'dart:core@num@clamp': (m.Scope scope, num target) => target.clamp,
    'dart:core@num@toInt': (m.Scope scope, num target) => target.toInt,
    'dart:core@num@toDouble': (m.Scope scope, num target) => target.toDouble,
    'dart:core@num@toStringAsFixed': (m.Scope scope, num target) =>
        target.toStringAsFixed,
    'dart:core@num@toStringAsExponential': (m.Scope scope, num target) =>
        target.toStringAsExponential,
    'dart:core@num@toStringAsPrecision': (m.Scope scope, num target) =>
        target.toStringAsPrecision,
    'dart:core@num@toString': (m.Scope scope, num target) => target.toString,
    'dart:core@num@parse': (m.Scope scope) =>
        (input, [m.FunctionPointer? onError]) {
          if (onError == null) {
            return num.parse(input);
          }
          num onErrorProxy(input) {
            return engine.callFunctionPointer(scope, onError!, [input], {});
          }

          return num.parse(input, onErrorProxy);
        },
    'dart:core@num@tryParse': (m.Scope scope) => num.tryParse,
    'dart:core@Object@#as': (m.Scope scope, target) => () => target as Object,
    'dart:core@Object@#is': (m.Scope scope, target) => () => target is Object,
    'dart:core@Object@hashCode': (m.Scope scope, Object target) =>
        target.hashCode,
    'dart:core@Object@runtimeType': (m.Scope scope, Object target) =>
        target.runtimeType,
    'dart:core@Object@': (m.Scope scope) => () {
          return $Object();
        },
    'dart:core@Object@==': (m.Scope scope, Object target) =>
        (other) => target == other,
    'dart:core@Object@toString': (m.Scope scope, Object target) =>
        target.toString,
    'dart:core@Object@noSuchMethod': (m.Scope scope, Object target) =>
        target.noSuchMethod,
    'dart:core@Object@hash': (m.Scope scope) => Object.hash,
    'dart:core@Object@hashAll': (m.Scope scope) => Object.hashAll,
    'dart:core@Object@hashAllUnordered': (m.Scope scope) =>
        Object.hashAllUnordered,
    'dart:core@Pattern@#as': (m.Scope scope, target) => () => target as Pattern,
    'dart:core@Pattern@#is': (m.Scope scope, target) => () => target is Pattern,
    'dart:core@Pattern@allMatches': (m.Scope scope, Pattern target) =>
        target.allMatches,
    'dart:core@Pattern@matchAsPrefix': (m.Scope scope, Pattern target) =>
        target.matchAsPrefix,
    'dart:core@Match@#as': (m.Scope scope, target) => () => target as Match,
    'dart:core@Match@#is': (m.Scope scope, target) => () => target is Match,
    'dart:core@Match@start': (m.Scope scope, Match target) => target.start,
    'dart:core@Match@end': (m.Scope scope, Match target) => target.end,
    'dart:core@Match@groupCount': (m.Scope scope, Match target) =>
        target.groupCount,
    'dart:core@Match@input': (m.Scope scope, Match target) => target.input,
    'dart:core@Match@pattern': (m.Scope scope, Match target) => target.pattern,
    'dart:core@Match@group': (m.Scope scope, Match target) => target.group,
    'dart:core@Match@[]': (m.Scope scope, Match target) =>
        (index) => target[index],
    'dart:core@Match@groups': (m.Scope scope, Match target) => target.groups,
    'dart:core@@print': (m.Scope scope) => print,
    'dart:core@RegExp@#as': (m.Scope scope, target) => () => target as RegExp,
    'dart:core@RegExp@#is': (m.Scope scope, target) => () => target is RegExp,
    'dart:core@RegExp@pattern': (m.Scope scope, RegExp target) =>
        target.pattern,
    'dart:core@RegExp@isMultiLine': (m.Scope scope, RegExp target) =>
        target.isMultiLine,
    'dart:core@RegExp@isCaseSensitive': (m.Scope scope, RegExp target) =>
        target.isCaseSensitive,
    'dart:core@RegExp@isUnicode': (m.Scope scope, RegExp target) =>
        target.isUnicode,
    'dart:core@RegExp@isDotAll': (m.Scope scope, RegExp target) =>
        target.isDotAll,
    'dart:core@RegExp@': (m.Scope scope) =>
        (source, {caseSensitive, dotAll, multiLine, unicode}) {
          return RegExp(source,
              caseSensitive: caseSensitive ?? true,
              dotAll: dotAll ?? false,
              multiLine: multiLine ?? false,
              unicode: unicode ?? false);
        },
    'dart:core@RegExp@escape': (m.Scope scope) => RegExp.escape,
    'dart:core@RegExp@firstMatch': (m.Scope scope, RegExp target) =>
        target.firstMatch,
    'dart:core@RegExp@allMatches': (m.Scope scope, RegExp target) =>
        target.allMatches,
    'dart:core@RegExp@hasMatch': (m.Scope scope, RegExp target) =>
        target.hasMatch,
    'dart:core@RegExp@stringMatch': (m.Scope scope, RegExp target) =>
        target.stringMatch,
    'dart:core@RegExpMatch@#as': (m.Scope scope, target) =>
        () => target as RegExpMatch,
    'dart:core@RegExpMatch@#is': (m.Scope scope, target) =>
        () => target is RegExpMatch,
    'dart:core@RegExpMatch@groupNames': (m.Scope scope, RegExpMatch target) =>
        target.groupNames,
    'dart:core@RegExpMatch@pattern': (m.Scope scope, RegExpMatch target) =>
        target.pattern,
    'dart:core@RegExpMatch@namedGroup': (m.Scope scope, RegExpMatch target) =>
        target.namedGroup,
    'dart:core@Set@#as': (m.Scope scope, target) => () => target as Set,
    'dart:core@Set@#is': (m.Scope scope, target) => () => target is Set,
    'dart:core@Set@iterator': (m.Scope scope, Set target) => target.iterator,
    'dart:core@Set@': (m.Scope scope) => <E>() {
          return Set();
        },
    'dart:core@Set@identity': (m.Scope scope) => Set.identity,
    'dart:core@Set@from': (m.Scope scope) => Set.from,
    'dart:core@Set@of': (m.Scope scope) => Set.of,
    'dart:core@Set@unmodifiable': (m.Scope scope) => Set.unmodifiable,
    'dart:core@Set@castFrom': (m.Scope scope) => (source, {newSet}) {
          Set<R> newSetProxy<R>() {
            return engine.callFunctionPointer(scope, newSet!, [], {});
          }

          return Set.castFrom(source,
              newSet: newSet == null ? null : newSetProxy);
        },
    'dart:core@Set@cast': (m.Scope scope, Set target) => target.cast,
    'dart:core@Set@contains': (m.Scope scope, Set target) => target.contains,
    'dart:core@Set@add': (m.Scope scope, Set target) => target.add,
    'dart:core@Set@addAll': (m.Scope scope, Set target) => target.addAll,
    'dart:core@Set@remove': (m.Scope scope, Set target) => target.remove,
    'dart:core@Set@lookup': (m.Scope scope, Set target) => target.lookup,
    'dart:core@Set@removeAll': (m.Scope scope, Set target) => target.removeAll,
    'dart:core@Set@retainAll': (m.Scope scope, Set target) => target.retainAll,
    'dart:core@Set@removeWhere': (m.Scope scope, Set target) => (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          target.removeWhere(testProxy);
        },
    'dart:core@Set@retainWhere': (m.Scope scope, Set target) => (test) {
          bool testProxy<E>(element) {
            return engine.callFunctionPointer(scope, test!, [element], {});
          }

          target.retainWhere(testProxy);
        },
    'dart:core@Set@containsAll': (m.Scope scope, Set target) =>
        target.containsAll,
    'dart:core@Set@intersection': (m.Scope scope, Set target) =>
        target.intersection,
    'dart:core@Set@union': (m.Scope scope, Set target) => target.union,
    'dart:core@Set@difference': (m.Scope scope, Set target) =>
        target.difference,
    'dart:core@Set@clear': (m.Scope scope, Set target) => target.clear,
    'dart:core@Set@toSet': (m.Scope scope, Set target) => target.toSet,
    'dart:core@Sink@#as': (m.Scope scope, target) => () => target as Sink,
    'dart:core@Sink@#is': (m.Scope scope, target) => () => target is Sink,
    'dart:core@Sink@add': (m.Scope scope, Sink target) => target.add,
    'dart:core@Sink@close': (m.Scope scope, Sink target) => target.close,
    'dart:core@StackTrace@#as': (m.Scope scope, target) =>
        () => target as StackTrace,
    'dart:core@StackTrace@#is': (m.Scope scope, target) =>
        () => target is StackTrace,
    'dart:core@StackTrace@empty': (m.Scope scope) => StackTrace.empty,
    'dart:core@StackTrace@current': (m.Scope scope) => StackTrace.current,
    'dart:core@StackTrace@fromString': (m.Scope scope) => StackTrace.fromString,
    'dart:core@StackTrace@toString': (m.Scope scope, StackTrace target) =>
        target.toString,
    'dart:core@Stopwatch@#as': (m.Scope scope, target) =>
        () => target as Stopwatch,
    'dart:core@Stopwatch@#is': (m.Scope scope, target) =>
        () => target is Stopwatch,
    'dart:core@Stopwatch@frequency': (m.Scope scope, Stopwatch target) =>
        target.frequency,
    'dart:core@Stopwatch@elapsedTicks': (m.Scope scope, Stopwatch target) =>
        target.elapsedTicks,
    'dart:core@Stopwatch@elapsed': (m.Scope scope, Stopwatch target) =>
        target.elapsed,
    'dart:core@Stopwatch@elapsedMicroseconds':
        (m.Scope scope, Stopwatch target) => target.elapsedMicroseconds,
    'dart:core@Stopwatch@elapsedMilliseconds':
        (m.Scope scope, Stopwatch target) => target.elapsedMilliseconds,
    'dart:core@Stopwatch@isRunning': (m.Scope scope, Stopwatch target) =>
        target.isRunning,
    'dart:core@Stopwatch@': (m.Scope scope) => () {
          return Stopwatch();
        },
    'dart:core@Stopwatch@start': (m.Scope scope, Stopwatch target) =>
        target.start,
    'dart:core@Stopwatch@stop': (m.Scope scope, Stopwatch target) =>
        target.stop,
    'dart:core@Stopwatch@reset': (m.Scope scope, Stopwatch target) =>
        target.reset,
    'dart:core@String@#as': (m.Scope scope, target) => () => target as String,
    'dart:core@String@#is': (m.Scope scope, target) => () => target is String,
    'dart:core@String@length': (m.Scope scope, String target) => target.length,
    'dart:core@String@hashCode': (m.Scope scope, String target) =>
        target.hashCode,
    'dart:core@String@isEmpty': (m.Scope scope, String target) =>
        target.isEmpty,
    'dart:core@String@isNotEmpty': (m.Scope scope, String target) =>
        target.isNotEmpty,
    'dart:core@String@codeUnits': (m.Scope scope, String target) =>
        target.codeUnits,
    'dart:core@String@runes': (m.Scope scope, String target) => target.runes,
    'dart:core@String@fromCharCodes': (m.Scope scope) => String.fromCharCodes,
    'dart:core@String@fromCharCode': (m.Scope scope) => String.fromCharCode,
    'dart:core@String@fromEnvironment': (m.Scope scope) =>
        String.fromEnvironment,
    'dart:core@String@[]': (m.Scope scope, String target) =>
        (index) => target[index],
    'dart:core@String@codeUnitAt': (m.Scope scope, String target) =>
        target.codeUnitAt,
    'dart:core@String@==': (m.Scope scope, String target) =>
        (other) => target == other,
    'dart:core@String@compareTo': (m.Scope scope, String target) =>
        target.compareTo,
    'dart:core@String@endsWith': (m.Scope scope, String target) =>
        target.endsWith,
    'dart:core@String@startsWith': (m.Scope scope, String target) =>
        target.startsWith,
    'dart:core@String@indexOf': (m.Scope scope, String target) =>
        target.indexOf,
    'dart:core@String@lastIndexOf': (m.Scope scope, String target) =>
        target.lastIndexOf,
    'dart:core@String@+': (m.Scope scope, String target) =>
        (other) => target + other,
    'dart:core@String@substring': (m.Scope scope, String target) =>
        target.substring,
    'dart:core@String@trim': (m.Scope scope, String target) => target.trim,
    'dart:core@String@trimLeft': (m.Scope scope, String target) =>
        target.trimLeft,
    'dart:core@String@trimRight': (m.Scope scope, String target) =>
        target.trimRight,
    'dart:core@String@*': (m.Scope scope, String target) =>
        (other) => target * other,
    'dart:core@String@padLeft': (m.Scope scope, String target) =>
        target.padLeft,
    'dart:core@String@padRight': (m.Scope scope, String target) =>
        target.padRight,
    'dart:core@String@contains': (m.Scope scope, String target) =>
        target.contains,
    'dart:core@String@replaceFirst': (m.Scope scope, String target) =>
        target.replaceFirst,
    'dart:core@String@replaceFirstMapped': (m.Scope scope, String target) =>
        (from, replace, [int? startIndex]) {
          String replaceProxy(match) {
            return engine.callFunctionPointer(scope, replace!, [match], {});
          }

          if (startIndex == null) {
            return target.replaceFirstMapped(from, replaceProxy);
          }
          return target.replaceFirstMapped(from, replaceProxy, startIndex!);
        },
    'dart:core@String@replaceAll': (m.Scope scope, String target) =>
        target.replaceAll,
    'dart:core@String@replaceAllMapped': (m.Scope scope, String target) =>
        (from, replace) {
          String replaceProxy(match) {
            return engine.callFunctionPointer(scope, replace!, [match], {});
          }

          return target.replaceAllMapped(from, replaceProxy);
        },
    'dart:core@String@replaceRange': (m.Scope scope, String target) =>
        target.replaceRange,
    'dart:core@String@split': (m.Scope scope, String target) => target.split,
    'dart:core@String@splitMapJoin': (m.Scope scope, String target) =>
        (pattern, {onMatch, onNonMatch}) {
          String onMatchProxy($p0) {
            return engine.callFunctionPointer(scope, onMatch!, [$p0], {});
          }

          String onNonMatchProxy($p0) {
            return engine.callFunctionPointer(scope, onNonMatch!, [$p0], {});
          }

          return target.splitMapJoin(pattern,
              onMatch: onMatch == null ? null : onMatchProxy,
              onNonMatch: onNonMatch == null ? null : onNonMatchProxy);
        },
    'dart:core@String@toLowerCase': (m.Scope scope, String target) =>
        target.toLowerCase,
    'dart:core@String@toUpperCase': (m.Scope scope, String target) =>
        target.toUpperCase,
    'dart:core@Runes@#as': (m.Scope scope, target) => () => target as Runes,
    'dart:core@Runes@#is': (m.Scope scope, target) => () => target is Runes,
    'dart:core@Runes@string': (m.Scope scope, Runes target) => target.string,
    'dart:core@Runes@iterator': (m.Scope scope, Runes target) =>
        target.iterator,
    'dart:core@Runes@last': (m.Scope scope, Runes target) => target.last,
    'dart:core@Runes@': (m.Scope scope) => (string) {
          return Runes(string);
        },
    'dart:core@RuneIterator@#as': (m.Scope scope, target) =>
        () => target as RuneIterator,
    'dart:core@RuneIterator@#is': (m.Scope scope, target) =>
        () => target is RuneIterator,
    'dart:core@RuneIterator@string': (m.Scope scope, RuneIterator target) =>
        target.string,
    'dart:core@RuneIterator@rawIndex': (m.Scope scope, RuneIterator target) =>
        target.rawIndex,
    'dart:core@RuneIterator@rawIndex:set':
        (m.Scope scope, RuneIterator target) =>
            (other) => target.rawIndex = other,
    'dart:core@RuneIterator@current': (m.Scope scope, RuneIterator target) =>
        target.current,
    'dart:core@RuneIterator@currentSize':
        (m.Scope scope, RuneIterator target) => target.currentSize,
    'dart:core@RuneIterator@currentAsString':
        (m.Scope scope, RuneIterator target) => target.currentAsString,
    'dart:core@RuneIterator@': (m.Scope scope) => (string) {
          return RuneIterator(string);
        },
    'dart:core@RuneIterator@at': (m.Scope scope) => RuneIterator.at,
    'dart:core@RuneIterator@reset': (m.Scope scope, RuneIterator target) =>
        target.reset,
    'dart:core@RuneIterator@moveNext': (m.Scope scope, RuneIterator target) =>
        target.moveNext,
    'dart:core@RuneIterator@movePrevious':
        (m.Scope scope, RuneIterator target) => target.movePrevious,
    'dart:core@StringBuffer@#as': (m.Scope scope, target) =>
        () => target as StringBuffer,
    'dart:core@StringBuffer@#is': (m.Scope scope, target) =>
        () => target is StringBuffer,
    'dart:core@StringBuffer@length': (m.Scope scope, StringBuffer target) =>
        target.length,
    'dart:core@StringBuffer@isEmpty': (m.Scope scope, StringBuffer target) =>
        target.isEmpty,
    'dart:core@StringBuffer@isNotEmpty': (m.Scope scope, StringBuffer target) =>
        target.isNotEmpty,
    'dart:core@StringBuffer@': (m.Scope scope) => ([Object? content]) {
          if (content == null) {
            return StringBuffer();
          }
          return StringBuffer(content!);
        },
    'dart:core@StringBuffer@write': (m.Scope scope, StringBuffer target) =>
        target.write,
    'dart:core@StringBuffer@writeCharCode':
        (m.Scope scope, StringBuffer target) => target.writeCharCode,
    'dart:core@StringBuffer@writeAll': (m.Scope scope, StringBuffer target) =>
        target.writeAll,
    'dart:core@StringBuffer@writeln': (m.Scope scope, StringBuffer target) =>
        target.writeln,
    'dart:core@StringBuffer@clear': (m.Scope scope, StringBuffer target) =>
        target.clear,
    'dart:core@StringBuffer@toString': (m.Scope scope, StringBuffer target) =>
        target.toString,
    'dart:core@StringSink@#as': (m.Scope scope, target) =>
        () => target as StringSink,
    'dart:core@StringSink@#is': (m.Scope scope, target) =>
        () => target is StringSink,
    'dart:core@StringSink@write': (m.Scope scope, StringSink target) =>
        target.write,
    'dart:core@StringSink@writeAll': (m.Scope scope, StringSink target) =>
        target.writeAll,
    'dart:core@StringSink@writeln': (m.Scope scope, StringSink target) =>
        target.writeln,
    'dart:core@StringSink@writeCharCode': (m.Scope scope, StringSink target) =>
        target.writeCharCode,
    'dart:core@Symbol@#as': (m.Scope scope, target) => () => target as Symbol,
    'dart:core@Symbol@#is': (m.Scope scope, target) => () => target is Symbol,
    'dart:core@Symbol@unaryMinus': (m.Scope scope) => Symbol.unaryMinus,
    'dart:core@Symbol@empty': (m.Scope scope) => Symbol.empty,
    'dart:core@Symbol@hashCode': (m.Scope scope, Symbol target) =>
        target.hashCode,
    'dart:core@Symbol@': (m.Scope scope) => (name) {
          return Symbol(name);
        },
    'dart:core@Symbol@==': (m.Scope scope, Symbol target) =>
        (other) => target == other,
    'dart:core@Type@#as': (m.Scope scope, target) => () => target as Type,
    'dart:core@Type@#is': (m.Scope scope, target) => () => target is Type,
    'dart:core@Type@hashCode': (m.Scope scope, Type target) => target.hashCode,
    'dart:core@Type@==': (m.Scope scope, Type target) =>
        (other) => target == other,
    'dart:core@Type@toString': (m.Scope scope, Type target) => target.toString,
    'dart:core@Uri@#as': (m.Scope scope, target) => () => target as Uri,
    'dart:core@Uri@#is': (m.Scope scope, target) => () => target is Uri,
    'dart:core@Uri@base': (m.Scope scope) => Uri.base,
    'dart:core@Uri@scheme': (m.Scope scope, Uri target) => target.scheme,
    'dart:core@Uri@authority': (m.Scope scope, Uri target) => target.authority,
    'dart:core@Uri@userInfo': (m.Scope scope, Uri target) => target.userInfo,
    'dart:core@Uri@host': (m.Scope scope, Uri target) => target.host,
    'dart:core@Uri@port': (m.Scope scope, Uri target) => target.port,
    'dart:core@Uri@path': (m.Scope scope, Uri target) => target.path,
    'dart:core@Uri@query': (m.Scope scope, Uri target) => target.query,
    'dart:core@Uri@fragment': (m.Scope scope, Uri target) => target.fragment,
    'dart:core@Uri@pathSegments': (m.Scope scope, Uri target) =>
        target.pathSegments,
    'dart:core@Uri@queryParameters': (m.Scope scope, Uri target) =>
        target.queryParameters,
    'dart:core@Uri@queryParametersAll': (m.Scope scope, Uri target) =>
        target.queryParametersAll,
    'dart:core@Uri@isAbsolute': (m.Scope scope, Uri target) =>
        target.isAbsolute,
    'dart:core@Uri@hasScheme': (m.Scope scope, Uri target) => target.hasScheme,
    'dart:core@Uri@hasAuthority': (m.Scope scope, Uri target) =>
        target.hasAuthority,
    'dart:core@Uri@hasPort': (m.Scope scope, Uri target) => target.hasPort,
    'dart:core@Uri@hasQuery': (m.Scope scope, Uri target) => target.hasQuery,
    'dart:core@Uri@hasFragment': (m.Scope scope, Uri target) =>
        target.hasFragment,
    'dart:core@Uri@hasEmptyPath': (m.Scope scope, Uri target) =>
        target.hasEmptyPath,
    'dart:core@Uri@hasAbsolutePath': (m.Scope scope, Uri target) =>
        target.hasAbsolutePath,
    'dart:core@Uri@origin': (m.Scope scope, Uri target) => target.origin,
    'dart:core@Uri@data': (m.Scope scope, Uri target) => target.data,
    'dart:core@Uri@hashCode': (m.Scope scope, Uri target) => target.hashCode,
    'dart:core@Uri@': (m.Scope scope) => (
            {fragment,
            host,
            path,
            pathSegments,
            port,
            query,
            queryParameters,
            scheme,
            userInfo}) {
          return Uri(
              fragment: fragment,
              host: host,
              path: path,
              pathSegments: pathSegments,
              port: port,
              query: query,
              queryParameters: queryParameters,
              scheme: scheme,
              userInfo: userInfo);
        },
    'dart:core@Uri@http': (m.Scope scope) => Uri.http,
    'dart:core@Uri@https': (m.Scope scope) => Uri.https,
    'dart:core@Uri@file': (m.Scope scope) => Uri.file,
    'dart:core@Uri@directory': (m.Scope scope) => Uri.directory,
    'dart:core@Uri@dataFromString': (m.Scope scope) => Uri.dataFromString,
    'dart:core@Uri@dataFromBytes': (m.Scope scope) => Uri.dataFromBytes,
    'dart:core@Uri@isScheme': (m.Scope scope, Uri target) => target.isScheme,
    'dart:core@Uri@toFilePath': (m.Scope scope, Uri target) =>
        target.toFilePath,
    'dart:core@Uri@==': (m.Scope scope, Uri target) =>
        (other) => target == other,
    'dart:core@Uri@toString': (m.Scope scope, Uri target) => target.toString,
    'dart:core@Uri@replace': (m.Scope scope, Uri target) => target.replace,
    'dart:core@Uri@removeFragment': (m.Scope scope, Uri target) =>
        target.removeFragment,
    'dart:core@Uri@resolve': (m.Scope scope, Uri target) => target.resolve,
    'dart:core@Uri@resolveUri': (m.Scope scope, Uri target) =>
        target.resolveUri,
    'dart:core@Uri@normalizePath': (m.Scope scope, Uri target) =>
        target.normalizePath,
    'dart:core@Uri@parse': (m.Scope scope) => Uri.parse,
    'dart:core@Uri@tryParse': (m.Scope scope) => Uri.tryParse,
    'dart:core@Uri@encodeComponent': (m.Scope scope) => Uri.encodeComponent,
    'dart:core@Uri@encodeQueryComponent': (m.Scope scope) =>
        Uri.encodeQueryComponent,
    'dart:core@Uri@decodeComponent': (m.Scope scope) => Uri.decodeComponent,
    'dart:core@Uri@decodeQueryComponent': (m.Scope scope) =>
        Uri.decodeQueryComponent,
    'dart:core@Uri@encodeFull': (m.Scope scope) => Uri.encodeFull,
    'dart:core@Uri@decodeFull': (m.Scope scope) => Uri.decodeFull,
    'dart:core@Uri@splitQueryString': (m.Scope scope) => Uri.splitQueryString,
    'dart:core@Uri@parseIPv4Address': (m.Scope scope) => Uri.parseIPv4Address,
    'dart:core@Uri@parseIPv6Address': (m.Scope scope) => Uri.parseIPv6Address,
    'dart:core@UriData@#as': (m.Scope scope, target) => () => target as UriData,
    'dart:core@UriData@#is': (m.Scope scope, target) => () => target is UriData,
    'dart:core@UriData@uri': (m.Scope scope, UriData target) => target.uri,
    'dart:core@UriData@mimeType': (m.Scope scope, UriData target) =>
        target.mimeType,
    'dart:core@UriData@charset': (m.Scope scope, UriData target) =>
        target.charset,
    'dart:core@UriData@isBase64': (m.Scope scope, UriData target) =>
        target.isBase64,
    'dart:core@UriData@contentText': (m.Scope scope, UriData target) =>
        target.contentText,
    'dart:core@UriData@parameters': (m.Scope scope, UriData target) =>
        target.parameters,
    'dart:core@UriData@fromString': (m.Scope scope) => UriData.fromString,
    'dart:core@UriData@fromBytes': (m.Scope scope) => UriData.fromBytes,
    'dart:core@UriData@fromUri': (m.Scope scope) => UriData.fromUri,
    'dart:core@UriData@parse': (m.Scope scope) => UriData.parse,
    'dart:core@UriData@isMimeType': (m.Scope scope, UriData target) =>
        target.isMimeType,
    'dart:core@UriData@isCharset': (m.Scope scope, UriData target) =>
        target.isCharset,
    'dart:core@UriData@isEncoding': (m.Scope scope, UriData target) =>
        target.isEncoding,
    'dart:core@UriData@contentAsBytes': (m.Scope scope, UriData target) =>
        target.contentAsBytes,
    'dart:core@UriData@contentAsString': (m.Scope scope, UriData target) =>
        target.contentAsString,
    'dart:core@UriData@toString': (m.Scope scope, UriData target) =>
        target.toString,
    'dart:core@Expando@#as': (m.Scope scope, target) => () => target as Expando,
    'dart:core@Expando@#is': (m.Scope scope, target) => () => target is Expando,
    'dart:core@Expando@name': (m.Scope scope, Expando target) => target.name,
    'dart:core@Expando@': (m.Scope scope) => <T>([String? name]) {
          if (name == null) {
            return Expando();
          }
          return Expando(name!);
        },
    'dart:core@Expando@toString': (m.Scope scope, Expando target) =>
        target.toString,
    'dart:core@Expando@[]': (m.Scope scope, Expando target) =>
        (index) => target[index],
    'dart:core@Expando@[]=': (m.Scope scope, Expando target) =>
        (index, other) => target[index] = other,
    'dart:core@WeakReference@#as': (m.Scope scope, target) =>
        () => target as WeakReference,
    'dart:core@WeakReference@#is': (m.Scope scope, target) =>
        () => target is WeakReference,
    'dart:core@WeakReference@target': (m.Scope scope, WeakReference target) =>
        target.target,
    'dart:core@WeakReference@': (m.Scope scope) => <T extends Object>(target) {
          return WeakReference<T>(target);
        },
    'dart:core@Finalizer@#as': (m.Scope scope, target) =>
        () => target as Finalizer,
    'dart:core@Finalizer@#is': (m.Scope scope, target) =>
        () => target is Finalizer,
    'dart:core@Finalizer@': (m.Scope scope) => (callback) {
          void callbackProxy<T>($p0) {
            engine.callFunctionPointer(scope, callback!, [$p0], {});
          }

          return Finalizer(callbackProxy);
        },
    'dart:core@Finalizer@attach': (m.Scope scope, Finalizer target) =>
        target.attach,
    'dart:core@Finalizer@detach': (m.Scope scope, Finalizer target) =>
        target.detach,
    'dart:core@_Enum@': (m.Scope scope) => (index, name) {
          return $_Enum(index, name);
        },
    'dart:core@@EnumName|get#name': (m.Scope scope) => ($_Enum target) {
          return target.name;
        },
  };
}

class $Object extends Object with InstanceBridge {
  $Object();

  @override
  final m.TypeRef bridgeType = const m.TypeRef("dart:core", "Object", true);

  @override
  late Map<String, Function> superGetters = {};
}

class $Deprecated extends Deprecated with InstanceBridge {
  $Deprecated(String message) : super(message);

  @override
  final m.TypeRef bridgeType = const m.TypeRef("dart:core", "Deprecated", true,
      superTypeKey: "dart:core@Object");

  @override
  late Map<String, Function> superGetters = {};
}

class $_Enum with InstanceBridge {
  final int index;
  final String name;

  @override
  final m.TypeRef bridgeType = const m.TypeRef("dart:core", "_Enum", true,
      superTypeKey: "dart:core@Object");

  $_Enum(this.index, this.name);

  @override
  late Map<String, Function> superGetters = {};
}
