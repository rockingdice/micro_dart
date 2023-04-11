part of 'ops.dart';

/// Push a new frame onto the stack, populated with any current args
class PushScope implements Op {
  PushScope(MicroRuntime runtime)
      : libraryIndex = Ops.readInt32(runtime),
        sourceOffset = Ops.readInt32(runtime),
        frName = Ops.readString(runtime);

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
    var scope = Scope(frName);
    runtime.scopes.add(scope);
  }

  @override
  String toString() =>
      "PushScope (L:$libraryIndex, S:$sourceOffset, '$frName')";
}

class PopScope implements Op {
  PopScope(MicroRuntime runtime);

  PopScope.make();

  @override
  int get opLen => Ops.BASE_OPLEN;

  @override
  List<int> get bytes => [Ops.OP_POPSCOPE];

  @override
  void run(MicroRuntime runtime) {
    var scope = runtime.scopes.removeLast();
    scope.clean();
  }

  @override
  String toString() => 'PopScope()';
}

class SetParam implements Op {
  SetParam(MicroRuntime runtime) : name = Ops.readString(runtime);

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

class SetPosationalParam implements Op {
  SetPosationalParam(MicroRuntime runtime) : name = Ops.readString(runtime);

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
  SetNamedParam(MicroRuntime runtime) : name = Ops.readString(runtime);

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
  SetParamNull(MicroRuntime runtime) : name = Ops.readString(runtime);

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
  GetParam(MicroRuntime runtime) : name = Ops.readString(runtime);

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

class Return implements Op {
  Return(MicroRuntime exec) : _location = Ops.readInt16(exec);

  Return.make(this._location);

  final int _location;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN;

  @override
  void run(MicroRuntime runtime) {
    //runtime.removeScope();
    runtime.catchStack.removeLast();
    final prOffset = runtime.callStack.removeLast();
    //Object? returnValue;
    if (_location != -1) {
      //returnValue = ;
      runtime.scope.returnValue = runtime.scope[_location];
    }

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

// Jump to constant program offset
class JumpConstant implements Op {
  JumpConstant(MicroRuntime exec) : _offset = Ops.readInt32(exec);

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

class Call implements Op {
  Call(MicroRuntime exec) : _offset = Ops.readInt32(exec);

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
