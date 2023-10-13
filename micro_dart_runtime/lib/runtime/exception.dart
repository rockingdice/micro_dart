import 'scope.dart';

class RuntimeException implements Exception {
  const RuntimeException(this.scope, this.caughtException, this.stackTrace);

  /// The runtime that threw the exception.
  final Scope scope;

  /// The exception that was thrown.
  final Object caughtException;

  /// The stack trace of the exception.
  final StackTrace stackTrace;

  void writeStack(Scope scope, StringBuffer buffer, int n) {
    if (scope.oldPointer == -1) {
      return;
    }
    buffer.write("$n:call: ${scope.engine.ops[scope.oldPointer]} \n");
    if (scope.parent != null && n <= 10) {
      writeStack(scope.parent!, buffer, ++n);
    }
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    writeStack(scope, buffer, 0);
    return 'micro_dart runtime exception: $caughtException\n'
        '${stackTrace.toString().split("\n").take(3).join('\n')}\n\n'
        'RUNTIME STATE\n'
        '=============\n'
        'Excpeiton on $scope\n'
        'TRACE:\n$buffer';
  }
}

class ProgramExit implements Exception {
  final int exitCode;

  ProgramExit(this.exitCode);
}
