part of 'ops.dart';

class PushConstantInt implements Op {
  PushConstantInt(MicroDartInterpreter runtime) : _value = runtime.readInt32();

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
  PushConstantDouble(MicroDartInterpreter runtime)
      : _value = runtime.readFloat32();

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
  PushNull(MicroDartInterpreter exec);

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
  NumAdd(MicroDartInterpreter runtime)
      : _location1 = runtime.readInt16(),
        _location2 = runtime.readInt16();

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
  NumSub(MicroDartInterpreter runtime)
      : _location1 = runtime.readInt16(),
        _location2 = runtime.readInt16();

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
  NumLt(MicroDartInterpreter runtime)
      : _location1 = runtime.readInt16(),
        _location2 = runtime.readInt16();

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
  NumLtEq(MicroDartInterpreter runtime)
      : _location1 = runtime.readInt16(),
        _location2 = runtime.readInt16();

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
  PushList(MicroDartInterpreter runtime);

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
  ListAppend(MicroDartInterpreter runtime)
      : _reg = runtime.readInt16(),
        _value = runtime.readInt16();

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
  IndexList(MicroDartInterpreter runtime)
      : _position = runtime.readInt16(),
        _index = runtime.readInt32();

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
  ListSetIndexed(MicroDartInterpreter runtime)
      : _position = runtime.readInt16(),
        _index = runtime.readInt32(),
        _value = runtime.readInt16();

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
  PushIterableLength(MicroDartInterpreter runtime)
      : _position = runtime.readInt16();

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
  PushMap(MicroDartInterpreter runtime);

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
  MapSet(MicroDartInterpreter runtime)
      : _map = runtime.readInt16(),
        _index = runtime.readInt16(),
        _value = runtime.readInt16();

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
  IndexMap(MicroDartInterpreter runtime)
      : _map = runtime.readInt16(),
        _index = runtime.readInt16();

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
  PushTrue(MicroDartInterpreter runtime);

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
  LogicalNot(MicroDartInterpreter runtime) : _index = runtime.readInt16();

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
