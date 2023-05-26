import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class CallSuper implements Op {
  CallSuper(MicroDartEngine interpreter)
      : _key = interpreter.readString(),
        _name = interpreter.readString(),
        _isGetter = interpreter.readUint8() == 1 ? true : false,
        _isSetter = interpreter.readUint8() == 1 ? true : false,
        _posationalLength = interpreter.readInt32(),
        _namedList = interpreter.readStringList();

  final String _key;
  final String _name;
  final int _posationalLength;
  final List<String> _namedList;
  final bool _isGetter;
  final bool _isSetter;

  CallSuper.make(
    this._key,
    this._name,
    this._isGetter,
    this._isSetter,
    this._posationalLength,
    this._namedList,
  );

  @override
  int get opLen =>
      Ops.lenBegin +
      Ops.lenStr(_key) +
      Ops.lenStr(_name) +
      Ops.lenI8 * 2 +
      Ops.lenI32 +
      Ops.lenStrlist(_namedList);

  @override
  List<int> get bytes => [
        Ops.opCallSuper,
        ...Ops.str(_key),
        ...Ops.str(_name),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i32b(_posationalLength),
        ...Ops.strlist(_namedList)
      ];

  @override
  void run(MicroRuntime runtime) {
    var instance = runtime.scope.getFrame(
            posation: runtime.scope.frames.length - _posationalLength - 1)
        as Instance;
    var key = runtime.engine
        .getKeyBySuperType(instance.type, _key, _name, isSetter: _isSetter);
    print("callSuper key is: $key");
    if (runtime.engine.declarations.containsKey(key)) {
      //表示这是个内部方法
      //缓存当前操作指向
      runtime.callStack.add(runtime.opPointer);
      //缓存抛出堆栈
      runtime.catchStack.add([]);
      runtime.opPointer = runtime.engine.declarations[key]!;
    } else {
      //表示这是一个外部调用
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
      'CallSuper($_key,$_name,$_isGetter,$_isSetter,$_posationalLength,$_namedList)';
}
