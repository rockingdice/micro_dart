part of 'ops.dart';

class PushScope implements Op {
  PushScope(MicroDartInterpreter interpreter)
      : libraryIndex = interpreter.readInt32(),
        sourceOffset = interpreter.readInt32(),
        frName = interpreter.readString();

  PushScope.make(this.libraryIndex, this.sourceOffset, this.frName);

  final int libraryIndex;
  final int sourceOffset;
  final String frName;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I32_LEN * 2 + Ops.istr_len(frName);

  @override
  List<int> get bytes => [
        Ops.OP_PUSHSCOPE,
        ...Ops.i32b(libraryIndex),
        ...Ops.i32b(sourceOffset),
        ...Ops.istr(frName)
      ];

  @override
  void run(MicroRuntime runtime) {
    runtime.addScope(frName);
  }

  @override
  String toString() =>
      "PushScope (L:$libraryIndex, S:$sourceOffset, '$frName')";
}

class PopScope implements Op {
  PopScope(MicroDartInterpreter interpreter);

  PopScope.make();

  @override
  int get opLen => Ops.BASE_OPLEN;

  @override
  List<int> get bytes => [Ops.OP_POPSCOPE];

  @override
  void run(MicroRuntime runtime) {
    var scope = runtime.removeScope();
    scope.clean();
  }

  @override
  String toString() => 'PopScope()';
}

class SetParam implements Op {
  SetParam(MicroDartInterpreter interpreter) : name = interpreter.readString();

  SetParam.make(this.name);

  final String name;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.istr_len(name);

  @override
  List<int> get bytes => [Ops.OP_SET_PARAM, ...Ops.istr(name)];

  @override
  void run(MicroRuntime runtime) {
    var value = runtime.scope.frames.removeLast();
    runtime.scope.framePointer--;
    runtime.setParam(name, value);
  }

  @override
  String toString() => "SetParam($name)";
}

class SetGlobalParam implements Op {
  SetGlobalParam(MicroDartInterpreter interpreter)
      : name = interpreter.readString();

  SetGlobalParam.make(this.name);

  final String name;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.istr_len(name);

  @override
  List<int> get bytes => [Ops.OP_SET_GLOBAL_PARAM, ...Ops.istr(name)];

  @override
  void run(MicroRuntime runtime) {
    var value = runtime.scope.frames.removeLast();
    runtime.scope.framePointer--;
    runtime.setGlobalParam(name, value);
  }

  @override
  String toString() => "SetGlobalParam($name)";
}

class SetPosationalParam implements Op {
  SetPosationalParam(MicroDartInterpreter interpreter)
      : name = interpreter.readString();

  SetPosationalParam.make(this.name);

  final String name;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN + Ops.istr_len(name);

  @override
  List<int> get bytes => [Ops.OP_SET_POSATIONAL_PARAM, ...Ops.istr(name)];

  @override
  void run(MicroRuntime runtime) {
    runtime.setParam(name, runtime.parentScope.frames.removeLast());
  }

  @override
  String toString() => "SetPosationalParam($name)";
}

class SetNamedParam implements Op {
  SetNamedParam(MicroDartInterpreter interpreter)
      : name = interpreter.readString();

  SetNamedParam.make(this.name);
  final String name;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.istr_len(name);

  @override
  List<int> get bytes => [Ops.OP_SET_NAMED_PARAM, ...Ops.istr(name)];

  @override
  void run(MicroRuntime runtime) {
    if (runtime.parentScope.hasParam(name)) {
      runtime.setParam(name, runtime.parentScope.getParam(name));
    }
  }

  @override
  String toString() => "SetNamedParam($name)";
}

class SetParamNull implements Op {
  SetParamNull(MicroDartInterpreter interpreter)
      : name = interpreter.readString();

  SetParamNull.make(this.name);

  final String name;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.istr_len(name);

  @override
  List<int> get bytes => [Ops.OP_SET_PARAM_NULL, ...Ops.istr(name)];

  @override
  void run(MicroRuntime runtime) {
    runtime.setParam(name, null);
  }

  @override
  String toString() => "SetParamNull($name)";
}

class GetParam implements Op {
  GetParam(MicroDartInterpreter interpreter) : name = interpreter.readString();

  GetParam.make(this.name);

  final String name;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.istr_len(name);

  @override
  List<int> get bytes => [Ops.OP_GET_PARAM, ...Ops.istr(name)];

  @override
  void run(MicroRuntime runtime) {
    runtime.scope.pushFrame(runtime.getParam(name));
  }

  @override
  String toString() => "GetParam($name)";
}

class GetGlobalParam implements Op {
  GetGlobalParam(MicroDartInterpreter interpreter)
      : _name = interpreter.readString(),
        _location = interpreter.readInt32();

  GetGlobalParam.make(this._name, this._location);

  final String _name;
  final int _location;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.istr_len(_name);

  @override
  List<int> get bytes =>
      [Ops.OP_GET_GLOBAL_PARAM, ...Ops.istr(_name), ...Ops.i32b(_location)];

  @override
  void run(MicroRuntime runtime) {
    //有可能出现属性没有初始化的情况,这个时候先执行初始化
    if (!runtime.hasGlobalParam(_name)) {
      runtime.callStack.add(runtime.opPointer);
      runtime.catchStack.add([]);
      runtime.opPointer = _location;
    } else {
      runtime.scope.pushFrame(runtime.getGlobalParam(_name));
    }
  }

  @override
  String toString() => "GetGlobalParam($_name,$_location)";
}

class Return implements Op {
  Return(MicroDartInterpreter interpreter)
      : _location = interpreter.readInt16();

  Return.make(this._location);

  final int _location;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN;

  @override
  void run(MicroRuntime runtime) {
    runtime.catchStack.removeLast();
    final prOffset = runtime.callStack.removeLast();

    var oldScope = runtime.removeScope();
    if (oldScope.frames.isNotEmpty) {
      runtime.scope.pushFrame(oldScope.frames.last);
    }
    oldScope.clean();
    if (prOffset == -1) {
      throw ProgramExit(0);
    }
    runtime.opPointer = prOffset;
  }

  @override
  String toString() => 'Return (L:$_location)';

  @override
  List<int> get bytes => [Ops.OP_RETURN, ...Ops.i16b(_location)];
}

class JumpConstant implements Op {
  JumpConstant(MicroDartInterpreter interpreter)
      : _offset = interpreter.readInt32();

  JumpConstant.make(this._offset);

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I32_LEN;

  @override
  List<int> get bytes => [Ops.OP_JMPC, ...Ops.i32b(_offset)];

  final int _offset;

  @override
  void run(MicroRuntime exec) {
    exec.opPointer = _offset;
  }

  @override
  String toString() => 'JumpConstant ($_offset)';
}

///调用方法
class Call implements Op {
  Call(MicroDartInterpreter interpreter) : _offset = interpreter.readInt32();

  Call.make(this._offset);

  final int _offset;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I32_LEN;

  @override
  List<int> get bytes => [Ops.OP_CALL, ...Ops.i32b(_offset)];

  @override
  void run(MicroRuntime runtime) {
    //缓存当前操作指向
    runtime.callStack.add(runtime.opPointer);
    //缓存抛出堆栈
    runtime.catchStack.add([]);
    runtime.opPointer = _offset;
  }

  @override
  String toString() => 'Call (@$_offset)';
}
