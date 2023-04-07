// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:convert';
import 'dart:typed_data';

import 'package:micro_dart_runtime/runtime/runtime.dart';

import '../runtime/exception.dart';

part 'flow.dart';
part 'primitives.dart';

class Ops {
  /// [JumpConstant] Jump to constant position
  static const OP_JMPC = 0;

  /// [Exit] Exit program with value exit code
  static const OP_EXIT = 1;

  /// [Unbox] Compare value with value -> return register
  static const OP_UNBOX = 2;

  /// [PushReturnValue] Set value to return register
  static const OP_SETVR = 3;

  /// [NumAdd] Add value to value -> return register
  static const OP_ADDVV = 4;

  /// [JumpIfNonNull] Jump to constant position if return register != 0
  static const OP_JNZ = 5;

  /// [PushConstantInt] Set value to constant
  static const OP_SETVC = 6;

  /// [BoxInt] Add constant to value and re-store
  static const OP_BOXINT = 7;

  /// [PushArg]
  static const OP_PUSH_ARG = 8;

  /// [JumpIfFalse]
  static const OP_JUMP_IF_FALSE = 9;

  /// [PushScope] Push stack frame
  static const OP_PUSHSCOPE = 10;

  /// [CopyValue] Set value to other value
  static const OP_SETVV = 11;

  /// [Pop] Push constant string
  static const OP_POP = 12;

  /// [SetObjectProperty] Set object property
  static const OP_SET_OBJECT_PROP = 13;

  /// [SetReturnValue]
  static const OP_SETRV = 14;

  /// [Return]
  static const OP_RETURN = 15;

  /// [PopScope]
  static const OP_POPSCOPE = 16;

  /// [Call]
  static const OP_CALL = 17;

  /// [PushObjectProperty]
  static const OP_PUSH_OBJECT_PROP = 18;

  /// [InvokeDynamic]
  static const OP_INVOKE_DYNAMIC = 19;

  /// [PushNull]
  static const OP_PUSH_NULL = 20;

  /// [CreateClass]
  static const OP_CREATE_CLASS = 21;

  /// [PushObjectPropertyImpl]
  static const OP_PUSH_OBJECT_PROP_IMPL = 22;

  /// [PushObjectPropertyImpl]
  static const OP_SET_OBJECT_PROP_IMPL = 23;

  /// [NumLt]
  static const OP_NUM_LT = 24;

  /// [NumLtEq]
  static const OP_NUM_LT_EQ = 25;

  /// [PushSuper]
  static const OP_PUSH_SUPER = 26;

  /// [BridgeInstantiate]
  static const OP_BRIDGE_INSTANTIATE = 27;

  /// [PushBridgeSuperShim]
  static const OP_PUSH_SUPER_SHIM = 28;

  /// [ParentBridgeSuperShim]
  static const OP_PARENT_SUPER_SHIM = 29;

  /// [NumSub]
  static const OP_NUM_SUB = 30;

  /// [PushList]
  static const OP_PUSH_LIST = 31;

  /// [ListAppend]
  static const OP_LIST_APPEND = 32;

  /// [IndexList]
  static const OP_INDEX_LIST = 33;

  /// [PushIterableLength]
  static const OP_ITER_LENGTH = 34;

  /// [ListSetIndexed]
  static const OP_LIST_SETINDEXED = 35;

  /// [BoxString]
  static const OP_BOXSTRING = 36;

  /// [BoxList]
  static const OP_BOXLIST = 37;

  /// [PushCaptureScope]
  static const OP_CAPTURE_SCOPE = 38;

  /// [PushConstant]
  static const OP_PUSH_CONST = 39;

  /// [PushFunctionPtr]
  static const OP_PUSH_FUNCTION_PTR = 40;

  /// [BoxNum]
  static const OP_BOXNUM = 41;

  /// [BoxDouble]
  static const OP_BOXDOUBLE = 42;

  /// [InvokeExternal]
  static const OP_INVOKE_EXTERNAL = 43;

  /// [Await]
  static const OP_AWAIT = 44;

  /// [PushMap]
  static const OP_PUSH_MAP = 45;

  /// [MapSet]
  static const OP_MAP_SET = 46;

  /// [IndexMap]
  static const OP_INDEX_MAP = 47;

  /// [PushConstantDouble]
  static const OP_PUSH_DOUBLE = 48;

  /// [SetGlobal]
  static const OP_SET_GLOBAL = 49;

  /// [LoadGlobal]
  static const OP_LOAD_GLOBAL = 50;

  /// [BoxMap]
  static const OP_BOXMAP = 51;

  /// [PushTrue]
  static const OP_PUSH_TRUE = 52;

  /// [LogicalNot]
  static const OP_LOGICAL_NOT = 53;

  /// [BoxBool]
  static const OP_BOXBOOL = 54;

  /// [Return]
  static const OP_RETURN_ASYNC = 55;

  /// [BoxNull]
  static const OP_BOX_NULL = 56;

  /// [CheckEq]
  static const OP_CHECK_EQ = 57;

  /// [Try]
  static const OP_TRY = 58;

  /// [Throw]
  static const OP_THROW = 59;

  /// [PopCatch]
  static const OP_POP_CATCH = 60;

  /// [IsType]
  static const OP_IS_TYPE = 61;

  static const OP_SET_PARAM = 62;

  static const OP_GET_PARAM = 63;

  static const BASE_OPLEN = 1;
  static const I8_LEN = 1;
  static const I16_LEN = 2;
  static const I32_LEN = 4;
  static const F32_LEN = 4;
  static const I64_LEN = 8;

  static int istr_len(String str) {
    return I32_LEN + utf8.encode(str).length;
  }

  @pragma('vm:always-inline')
  static int readUint8(MicroRuntime runtime) {
    final i = runtime.data.getUint8(runtime.fileOffset);
    runtime.fileOffset += 1;
    return i;
  }

  @pragma('vm:always-inline')
  static int readInt32(MicroRuntime runtime) {
    final i = runtime.data.getInt32(runtime.fileOffset);
    runtime.fileOffset += 4;
    return i;
  }

  @pragma('vm:always-inline')
  static double readFloat32(MicroRuntime runtime) {
    final i = runtime.data.getFloat32(runtime.fileOffset);
    runtime.fileOffset += 4;
    return i;
  }

  @pragma('vm:always-inline')
  static String readString(MicroRuntime runtime) {
    final len = runtime.data.getInt32(runtime.fileOffset);
    runtime.fileOffset += 4;
    final codeUnits = List.filled(len, 0);
    for (var i = 0; i < len; i++) {
      codeUnits[i] = runtime.data.getUint8(runtime.fileOffset + i);
    }
    runtime.fileOffset += len;
    return utf8.decode(codeUnits);
  }

  @pragma('vm:always-inline')
  static int readInt16(MicroRuntime runtime) {
    final i = runtime.data.getInt16(runtime.fileOffset);
    runtime.fileOffset += 2;
    return i;
  }

  static List<int> i16b(int i16) {
    final x = ByteData(2);
    x.setInt16(0, i16);
    return [x.getUint8(0), x.getUint8(1)];
  }

  static List<int> i32b(int i32) {
    final x = ByteData(4);
    x.setInt32(0, i32);
    return [x.getUint8(0), x.getUint8(1), x.getUint8(2), x.getUint8(3)];
  }

  static List<int> f32b(double f32) {
    final x = ByteData(4);
    x.setFloat32(0, f32);
    return [x.getUint8(0), x.getUint8(1), x.getUint8(2), x.getUint8(3)];
  }

  static List<int> istr(String str) {
    final u = utf8.encode(str);
    final x = ByteData(4);
    x.setInt32(0, u.length);
    return [...i32b(u.length), ...u];
  }

  static List<int> opcodeFrom(Op op) {
    return op.bytes;
  }
}

typedef OpLoader = Op Function(MicroRuntime);
final Map<int, OpLoader> opLoaders = {
  0: (MicroRuntime rt) => JumpConstant(rt), // 0
  4: (MicroRuntime rt) => NumAdd(rt), // 4
  6: (MicroRuntime rt) => PushConstantInt(rt), // 6
  10: (MicroRuntime rt) => PushScope(rt), // 10
  15: (MicroRuntime rt) => Return(rt), // 15
  16: (MicroRuntime rt) => PopScope(rt), // 16
  17: (MicroRuntime rt) => Call(rt), // 17
  20: (MicroRuntime rt) => PushNull(rt), // 20
  24: (MicroRuntime rt) => NumLt(rt), // 24
  25: (MicroRuntime rt) => NumLtEq(rt), // 25
  30: (MicroRuntime rt) => NumSub(rt), // 30
  31: (MicroRuntime rt) => PushList(rt), // 31
  32: (MicroRuntime rt) => ListAppend(rt), // 32
  33: (MicroRuntime rt) => IndexList(rt), // 33
  34: (MicroRuntime rt) => PushIterableLength(rt), // 34
  35: (MicroRuntime rt) => ListSetIndexed(rt), // 35
  45: (MicroRuntime rt) => PushMap(rt), // 45
  46: (MicroRuntime rt) => MapSet(rt), // 46
  47: (MicroRuntime rt) => IndexMap(rt), // 47
  48: (MicroRuntime rt) => PushConstantDouble(rt), // 48
  52: (MicroRuntime rt) => PushTrue(rt), // 52
  53: (MicroRuntime rt) => LogicalNot(rt), // 53
  62: (MicroRuntime rt) => SetParam(rt), // 62
  63: (MicroRuntime rt) => GetParam(rt), // 63
};
