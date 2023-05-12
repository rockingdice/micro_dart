import 'dart:math';

import 'runtime.dart';

/// Format a dart_eval stack sample for printing.
String formatStackSample(List st, int size) {
  final sb = StringBuffer('[');
  final s = min(size, st.length);
  for (var i = 0; i < s; i++) {
    final s = st[i];
    sb.write('L$i: ');
    if (s is List) {
      sb.write(formatStackSample(s, 3));
    } else if (s is String) {
      sb.write('"$s"');
    } else {
      sb.write('$s');
    }
    if (i < s - 1) {
      sb.write(', ');
    }
  }
  sb.write(']');
  return sb.toString();
}

class EvalUnknownPropertyException implements Exception {
  const EvalUnknownPropertyException(this.name);

  final String name;

  @override
  String toString() => 'EvalUnknownPropertyException ($name)';
}

class ProgramExit implements Exception {
  final int exitCode;

  ProgramExit(this.exitCode);
}

/// An internal exception thrown while executing code in a [Runtime].
class RuntimeException implements Exception {
  const RuntimeException(this.runtime, this.caughtException, this.stackTrace);

  /// The runtime that threw the exception.
  final MicroRuntime runtime;

  /// The exception that was thrown.
  final Object caughtException;

  /// The stack trace of the exception.
  final StackTrace stackTrace;

  @override
  String toString() {
    var prStr = '';
    final maxIdx = min(runtime.engine.ops.length - 1, runtime.opPointer + 3);

    for (var i = max(0, runtime.opPointer - 7); i < maxIdx; i++) {
      prStr += '$i: ${runtime.engine.ops[i]}';
      if (i == runtime.opPointer - 1) {
        prStr += '  <<< EXCEPTION';
      }
      prStr += '\n';
    }

    return 'micro_dart runtime exception: $caughtException\n'
        '${stackTrace.toString().split("\n").take(3).join('\n')}\n\n'
        'RUNTIME STATE\n'
        '=============\n'
        'Program offset: ${runtime.opPointer - 1}\n'
        'Call stack: ${runtime.callStack}\n'
        'TRACE:\n$prStr';
  }
}

class WrappedException implements Exception {
  const WrappedException(this.exception);

  final Object exception;

  @override
  String toString() {
    return 'WrappedException: $exception';
  }
}
