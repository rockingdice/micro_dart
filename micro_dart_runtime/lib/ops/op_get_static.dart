import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpGetStatic implements Op {
  OpGetStatic(MicroDartEngine engine) : _ref = CallRef.fromEngine(engine);

  OpGetStatic.make(this._ref);

  final CallRef _ref;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opGetStatic, ..._ref.bytes(pool)];

  @override
  void run(Scope scope) {
    //有可能出现属性没有初始化的情况,这个时候先执行初始化
    if (scope.engine.declarations.containsKey(_ref)) {
      //根据：https://groups.google.com/a/dartlang.org/g/misc/c/dKurFjODRXQ
      /*
        Static variable declarations are initialized lazily. The first time a static variable v is read, it is set to the result of evaluating its initializer. The precise rules are given in sections 7.7 and 10.28. 

        The lazy semantics are given because we do not want a language where one tends to define expensive initialization computations, causing long application startup times. This is especially crucial for Dart, which is designed for coding client applications.
       */
      //内部getter 
      if (!scope.engine.hasGlobalParam(_ref)) {
        var offset = scope.engine.declarations[_ref]!;
        scope.engine.callPointer(scope, _ref.callName, false, offset);
      } else {
        scope.pushFrame(scope.engine.getGlobalParam(_ref));
      }
    } else {
      //外部getter
      var function = ExternalMirror.findStaticGetter(_ref.name);
      if (function == null) {
        throw Exception(
            "not found external function: ${_ref.className} ${_ref.name}");
      }
      final instance = Function.apply(function(scope), [], <Symbol, dynamic>{});
      scope.pushFrame(instance);
    }
  }

  @override
  String toString() => "GetStatic(${_ref.name})";
}
