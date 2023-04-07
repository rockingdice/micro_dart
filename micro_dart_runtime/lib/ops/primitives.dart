part of 'ops.dart';

class PushConstant implements Op {
  PushConstant(MicroRuntime runtime) : _const = Ops.readInt32(runtime);

  PushConstant.make(this._const);

  final int _const;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I32_LEN;

  // Set value at position to constant
  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] = runtime.constants[_const];
  }

  @override
  String toString() => 'PushConstant (C$_const)';

  @override
  List<int> get bytes => [Ops.OP_PUSH_CONST, ...Ops.i32b(_const)];
}

class PushConstantInt implements Op {
  PushConstantInt(MicroRuntime runtime) : _value = Ops.readInt32(runtime);

  PushConstantInt.make(this._value);

  final int _value;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I32_LEN;

  @override
  List<int> get bytes => [Ops.OP_SETVC, ...Ops.i32b(_value)];

  // Set value at position to constant
  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] = _value;
  }

  @override
  String toString() => 'PushConstantInt ($_value)';
}

class PushConstantDouble implements Op {
  PushConstantDouble(MicroRuntime runtime) : _value = Ops.readFloat32(runtime);

  PushConstantDouble.make(this._value);

  final double _value;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.F32_LEN;

  @override
  List<int> get bytes => [Ops.OP_PUSH_DOUBLE, ...Ops.f32b(_value)];

  // Set value at position to constant
  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] = _value;
  }

  @override
  String toString() => 'PushConstantDouble ($_value)';
}

class PushNull implements Op {
  PushNull(MicroRuntime exec);

  PushNull.make();

  @override
  int get opLen => Ops.BASE_OPLEN;

  @override
  List<int> get bytes => [Ops.OP_PUSH_NULL];

  // Set value at position to constant
  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] = null;
  }

  @override
  String toString() => 'PushNull ()';
}

class NumAdd implements Op {
  NumAdd(MicroRuntime runtime)
      : _location1 = Ops.readInt16(runtime),
        _location2 = Ops.readInt16(runtime);

  NumAdd.make(this._location1, this._location2);

  final int _location1;
  final int _location2;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN * 2;

  @override
  List<int> get bytes =>
      [Ops.OP_ADDVV, ...Ops.i16b(_location1), ...Ops.i16b(_location2)];

  // Add value A + B
  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] =
        (runtime.scope[_location1] as num) + (runtime.scope[_location2] as num);
  }

  @override
  String toString() => 'NumAdd (L$_location1 + L$_location2)';
}

class NumSub implements Op {
  NumSub(MicroRuntime runtime)
      : _location1 = Ops.readInt16(runtime),
        _location2 = Ops.readInt16(runtime);

  NumSub.make(this._location1, this._location2);

  final int _location1;
  final int _location2;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN * 2;

  @override
  List<int> get bytes =>
      [Ops.OP_NUM_SUB, ...Ops.i16b(_location1), ...Ops.i16b(_location2)];

  // Sub value A - B
  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] =
        (runtime.scope[_location1] as num) - (runtime.scope[_location2] as num);
  }

  @override
  String toString() => 'NumSub (L$_location1 - L$_location2)';
}

class NumLt implements Op {
  NumLt(MicroRuntime runtime)
      : _location1 = Ops.readInt16(runtime),
        _location2 = Ops.readInt16(runtime);

  NumLt.make(this._location1, this._location2);

  final int _location1;
  final int _location2;

  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN * 2;

  @override
  List<int> get bytes =>
      [Ops.OP_NUM_LT, ...Ops.i16b(_location1), ...Ops.i16b(_location2)];

  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] =
        (runtime.scope[_location1] as num) < (runtime.scope[_location2] as num);
  }

  @override
  String toString() => 'NumLt (L$_location1 < L$_location2)';
}

class NumLtEq implements Op {
  NumLtEq(MicroRuntime runtime)
      : _location1 = Ops.readInt16(runtime),
        _location2 = Ops.readInt16(runtime);

  NumLtEq.make(this._location1, this._location2);

  final int _location1;
  final int _location2;
  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN * 2;

  @override
  List<int> get bytes =>
      [Ops.OP_NUM_LT_EQ, ...Ops.i16b(_location1), ...Ops.i16b(_location2)];

  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] =
        (runtime.scope[_location1] as num) <=
            (runtime.scope[_location2] as num);
  }

  @override
  String toString() => 'NumLtEq (L$_location1 <= L$_location2)';
}

class PushList implements Op {
  PushList(MicroRuntime runtime);

  PushList.make();
  @override
  int get opLen => Ops.BASE_OPLEN;

  @override
  List<int> get bytes => [Ops.OP_PUSH_LIST];

  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] = [];
  }

  @override
  String toString() => 'PushList ()';
}

class ListAppend implements Op {
  ListAppend(MicroRuntime runtime)
      : _reg = Ops.readInt16(runtime),
        _value = Ops.readInt16(runtime);

  ListAppend.make(this._reg, this._value);

  final int _reg;
  final int _value;
  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN * 2;

  @override
  List<int> get bytes =>
      [Ops.OP_LIST_APPEND, ...Ops.i16b(_reg), ...Ops.i16b(_value)];

  @override
  void run(MicroRuntime runtime) {
    (runtime.scope[_reg] as List).add(runtime.scope[_value]);
  }

  @override
  String toString() => 'ListAppend (L$_reg[] = L$_value)';
}

class IndexList implements Op {
  IndexList(MicroRuntime runtime)
      : _position = Ops.readInt16(runtime),
        _index = Ops.readInt32(runtime);

  IndexList.make(this._position, this._index);

  final int _position;
  final int _index;
  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN + Ops.I32_LEN;

  @override
  List<int> get bytes =>
      [Ops.OP_INDEX_LIST, ...Ops.i16b(_position), ...Ops.i32b(_index)];

  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] =
        (runtime.scope[_position] as List)[runtime.scope[_index] as int];
  }

  @override
  String toString() => 'IndexList (L$_position[L$_index])';
}

class ListSetIndexed implements Op {
  ListSetIndexed(MicroRuntime runtime)
      : _position = Ops.readInt16(runtime),
        _index = Ops.readInt32(runtime),
        _value = Ops.readInt16(runtime);

  ListSetIndexed.make(this._position, this._index, this._value);

  final int _position;
  final int _index;
  final int _value;
  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN * 2 + Ops.I32_LEN;

  @override
  List<int> get bytes => [
        Ops.OP_LIST_SETINDEXED,
        ...Ops.i16b(_position),
        ...Ops.i32b(_index),
        ...Ops.i16b(_value)
      ];

  @override
  void run(MicroRuntime runtime) {
    final frame = runtime.scope;
    (frame[_position] as List)[frame[_index] as int] = frame[_value];
  }

  @override
  String toString() => 'ListSetIndexed (L$_position[L$_index] = L$_value)';
}

class PushIterableLength implements Op {
  PushIterableLength(MicroRuntime runtime) : _position = Ops.readInt16(runtime);

  PushIterableLength.make(this._position);

  final int _position;
  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN;

  @override
  List<int> get bytes => [Ops.OP_ITER_LENGTH, ...Ops.i16b(_position)];

  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] =
        (runtime.scope[_position] as Iterable).length;
  }

  @override
  String toString() => 'PushIterableLength (L$_position)';
}

class PushMap implements Op {
  PushMap(MicroRuntime runtime);

  PushMap.make();
  @override
  int get opLen => Ops.BASE_OPLEN;

  @override
  List<int> get bytes => [Ops.OP_PUSH_MAP];

  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] = <Object?, Object?>{};
  }

  @override
  String toString() => 'PushMap ()';
}

class MapSet implements Op {
  MapSet(MicroRuntime runtime)
      : _map = Ops.readInt16(runtime),
        _index = Ops.readInt16(runtime),
        _value = Ops.readInt16(runtime);

  MapSet.make(this._map, this._index, this._value);

  final int _map;
  final int _index;
  final int _value;
  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN * 3;

  @override
  List<int> get bytes => [
        Ops.OP_MAP_SET,
        ...Ops.i16b(_map),
        ...Ops.i16b(_index),
        ...Ops.i16b(_value)
      ];

  @override
  void run(MicroRuntime runtime) {
    final scope = runtime.scope;
    (scope[_map] as Map)[scope[_index]] = scope[_value];
  }

  @override
  String toString() => 'MapSet (L$_map[L$_index] = L$_value)';
}

class IndexMap implements Op {
  IndexMap(MicroRuntime runtime)
      : _map = Ops.readInt16(runtime),
        _index = Ops.readInt16(runtime);

  IndexMap.make(this._map, this._index);

  final int _map;
  final int _index;
  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN * 2;

  @override
  List<int> get bytes =>
      [Ops.OP_INDEX_MAP, ...Ops.i16b(_map), ...Ops.i16b(_index)];

  @override
  void run(MicroRuntime runtime) {
    final scope = runtime.scope;
    scope[runtime.scope.framePointer++] = (scope[_map] as Map)[scope[_index]];
  }

  @override
  String toString() => 'IndexMap (L$_map[L$_index])';
}

class PushTrue implements Op {
  PushTrue(MicroRuntime runtime);

  PushTrue.make();
  @override
  int get opLen => Ops.BASE_OPLEN;

  @override
  List<int> get bytes => [Ops.OP_PUSH_TRUE];

  @override
  void run(MicroRuntime runtime) {
    final scope = runtime.scope;
    scope[runtime.scope.framePointer++] = true;
  }

  @override
  String toString() => 'PushTrue ()';
}

class LogicalNot implements Op {
  LogicalNot(MicroRuntime runtime) : _index = Ops.readInt16(runtime);

  LogicalNot.make(this._index);

  final int _index;
  @override
  int get opLen => Ops.BASE_OPLEN + Ops.I16_LEN;

  @override
  List<int> get bytes => [Ops.OP_LOGICAL_NOT, ...Ops.i16b(_index)];

  @override
  void run(MicroRuntime runtime) {
    final scope = runtime.scope;
    scope[runtime.scope.framePointer++] = !(scope[_index] as bool);
  }

  @override
  String toString() => 'LogicalNot (L$_index)';
}
