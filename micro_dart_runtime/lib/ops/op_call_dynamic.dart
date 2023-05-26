import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class CallDynamic implements Op {
  CallDynamic(MicroDartEngine interpreter)
      : _name = interpreter.readString(),
        _isStatic = interpreter.readUint8() == 1 ? true : false,
        _isGetter = interpreter.readUint8() == 1 ? true : false,
        _isSetter = interpreter.readUint8() == 1 ? true : false,
        _posationalLength = interpreter.readInt32(),
        _namedList = interpreter.readStringList();

  final String _name;
  final int _posationalLength;
  final List<String> _namedList;
  final bool _isGetter;
  final bool _isSetter;
  final bool _isStatic;

  CallDynamic.make(
    this._name,
    this._isStatic,
    this._isGetter,
    this._isSetter,
    this._posationalLength,
    this._namedList,
  );

  @override
  int get opLen =>
      Ops.lenBegin +
      Ops.lenStr(_name) +
      Ops.lenI8 * 3 +
      Ops.lenI32 +
      Ops.lenStrlist(_namedList);

  @override
  List<int> get bytes => [
        Ops.opCallDynamic,
        ...Ops.str(_name),
        ...Ops.i8b(_isStatic ? 1 : 0),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i32b(_posationalLength),
        ...Ops.strlist(_namedList)
      ];

  @override
  void run(MicroRuntime runtime) {
    String? key = _name;
    if (!_isStatic) {
      var instance = runtime.scope.getFrame(
              posation: runtime.scope.frames.length - _posationalLength - 1)
          as Instance;
      key = runtime.engine
          .getKeyByType(instance.type, _name, isSetter: _isSetter);
    }
    //表示这是个内部方法
    if (runtime.engine.declarations.containsKey(key)) {
      //缓存当前操作指向
      runtime.callStack.add(runtime.opPointer);
      //缓存抛出堆栈
      runtime.catchStack.add([]);
      runtime.opPointer = runtime.engine.declarations[key]!;
    }
    //表示这是一个外部调用
    else {
      final List<Object?> positionalArguments =
          List.filled(_posationalLength, null);
      for (int i = 0; i < _posationalLength; i++) {
        positionalArguments[i] = runtime.scope.popFrame();
      }
      final Map<Symbol, dynamic> namedArguments = {};
      for (var element in _namedList) {
        namedArguments[Symbol(element)] = runtime.getParam(element);
      }

      dynamic target = runtime.scope.popFrame();
      if (target is InstanceBridge) {
        target = target.target;
      }

      if (_isGetter) {
        runtime.scope.pushFrame(runtime.engine.externalFunctions[key]!(target));
        return;
      } else if (_isSetter) {
        runtime.engine.externalFunctions[key]!(
            target, positionalArguments.first);
        return;
      }

      if (operator1.contains(_name)) {
        runtime.scope.pushFrame(runtime.engine.externalFunctions[key]!(target));
        return;
      } else if (operator2.contains(_name)) {
        var function = runtime.engine.externalFunctions[key];
        dynamic other = positionalArguments.first;
        if (other is InstanceBridge) {
          other = other.target;
        }
        runtime.scope.pushFrame(function!(target, other));
        return;
      } else if (operator3.contains(_name)) {
        dynamic first = positionalArguments.first;
        if (first is InstanceBridge) {
          first = first.target;
        }
        dynamic second = positionalArguments[1];
        if (second is InstanceBridge) {
          second = first.target;
        }
        runtime.scope.pushFrame(
            runtime.engine.externalFunctions[key]!(target, first, second));
        return;
      }

      runtime.scope.pushFrame(Function.apply(
          runtime.engine.externalFunctions[key]!(target),
          positionalArguments,
          namedArguments));
    }
  }

  @override
  String toString() =>
      'CallDynamic($_name,$_isStatic,$_isGetter,$_isSetter,$_posationalLength,$_namedList)';
}
