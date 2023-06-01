import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpTryCatchFinally implements Op {
  OpTryCatchFinally(MicroDartEngine engine)
      : _tryOffset = engine.readInt32(),
        _catchOffset = engine.readInt32(),
        _finallyOffset = engine.readInt32();

  OpTryCatchFinally.make(
      this._tryOffset, this._catchOffset, this._finallyOffset);
  final int _tryOffset;
  final int _catchOffset;
  final int _finallyOffset;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 * 3;

  @override
  List<int> get bytes => [
        Ops.opTryCatchFinally,
        ...Ops.i32b(_tryOffset),
        ...Ops.i32b(_catchOffset),
        ...Ops.i32b(_finallyOffset)
      ];

  @override
  Future run(Scope scope) async {
    try {
      await scope.engine
          .callPointerAsync(scope, "_try_", false, false, _tryOffset);
    } catch (exception, stackTrace) {
      if (_catchOffset == -1) {
        return;
      }
      scope.pushFrame(exception);
      //这里的stackTrace需要重新定义
      scope.pushFrame(stackTrace);
      await scope.engine
          .callPointerAsync(scope, "_catch_", false, false, _catchOffset);
    } finally {
      if (_finallyOffset != -1) {
        await scope.engine
            .callPointerAsync(scope, "_finally_", false, false, _finallyOffset);
      }
    }
  }

  @override
  String toString() =>
      'OpTryCatchFinally($_tryOffset,$_catchOffset,$_finallyOffset)';
}
