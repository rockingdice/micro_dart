import 'dart:async';
import 'dart:typed_data';

import '../micro_dart_runtime.dart';

export 'op_push_type.dart';
export 'op_as.dart';
export 'op_push_constant_double.dart';
export 'op_push_constant_bool.dart';
export 'op_push_symbol.dart';
export 'op_set_this_super.dart';

export 'op_push_arguments.dart';
export 'op_set_param_from_parent.dart';
export 'op_try_catch_finally.dart';
export 'op_call_end.dart';
export 'op_pop_arguments.dart';
export 'op_call_start.dart';
export 'op_await.dart';
export 'op_push_map.dart';
export 'op_push_set.dart';
export 'op_null_check.dart';
export 'op_map_concat.dart';
export 'op_set_concat.dart';
export 'op_list_concat.dart';
export 'op_conditional.dart';
export 'op_logical.dart';
export 'op_not.dart';
export 'op_call_super.dart';
export 'op_is.dart';
export 'op_throw.dart';
export 'op_jump_if_equal.dart';
export 'op_jump_if_true.dart';
export 'op_jump_if_false.dart';
export 'op_assert.dart';
export 'op_equals.dart';
export 'op_string_concat.dart';
export 'op_call_dynamic.dart';
export 'op_push_pointer.dart';
export 'op_call_pointer.dart';
export 'op_jump.dart';
export 'op_push_list.dart';
export 'op_set_object_property.dart';
export 'op_return_field.dart';
export 'op_set_this_property.dart';
export 'op_get_object_property.dart';
export 'op_create_instance.dart';
export 'op_push_constant.dart';
export 'op_call.dart';
export 'op_call_external.dart';
export 'op_get_global_param.dart';
export 'op_get_param.dart';
export 'op_push_null.dart';
export 'op_return.dart';
export 'op_push_constant_int.dart';
export 'op_set_global_param.dart';
export 'op_set_param.dart';
export 'op_set_param_null.dart';
export 'op_set_scope_param.dart';
export 'op_set_scope_param_null.dart';
export 'op_get_dynamic.dart';
export 'op_set_dynamic.dart';
export 'op_invocation_dynamic.dart';
export 'op_invocation_instance.dart';
export 'op_invocation_static.dart';
export 'op_get_instance.dart';
export 'op_get_static.dart';
export 'op_set_instance.dart';
export 'op_set_static.dart';

const List<String> operator1 = ["unary-", "unary+", "~", "#as", "#is"];
const List<String> operator2 = [
  "&",
  "|",
  "^",
  "==",
  "+",
  "-",
  "*",
  "~/",
  "<",
  ">",
  "<=",
  ">=",
  "/",
  "%",
  "<<",
  ">>",
  ">>>",
  "[]"
];
const List<String> operator3 = ["[]="];

class Ops {
  static const opPushConstantInt = 1;
  static const opReturn = 2;
  static const opCall = 3;
  static const opPushNull = 4;
  static const opPushConstant = 5;
  static const opSetParam = 6;
  static const opSetParamNull = 7;
  static const opGetParam = 8;
  static const opSetParamFromParent = 9;
  static const opSetNamedParam = 10;
  static const opSetGlobalParam = 11;
  static const opGetGlobalParam = 12;
  static const opCallExternal = 13;
  static const opSetScopeParam = 14;
  static const opSetScopeParamNull = 15;
  static const opCreateInstance = 16;
  static const opSetThisProperty = 17;
  static const opGetObjectProperty = 18;
  static const opSetObjectProperty = 19;
  static const opReturnField = 20;
  static const opPushList = 21;
  static const opJump = 22;
  static const opCallPointer = 23;
  static const opPushPointer = 24;
  static const opPushBoxInt = 25;
  static const opCallDynamic = 26;
  static const opStringConcat = 27;
  static const opEquals = 28;
  static const opAssert = 29;
  static const opJumpIfFalse = 30;
  static const opJumpIfTrue = 31;
  static const opJumpIfEqual = 32;
  static const opTry = 33;
  static const opPopCatch = 34;
  static const opThrow = 35;
  static const opIs = 36;
  static const opCallSuper = 37;
  static const opNot = 38;
  static const opLogical = 39;
  static const opConditional = 40;
  static const opListConcat = 41;
  static const opSetConcat = 42;
  static const opMapConcat = 43;
  static const opNullCheck = 44;
  static const opPushSymbol = 45;
  static const opPushSet = 46;
  static const opPushMap = 47;
  static const opAwait = 48;

  static const opCallStart = 49;
  static const opReturnNull = 50;
  static const opPopArguments = 51;
  static const opCallEnd = 52;
  static const opTryCatchFinally = 53;
  static const opPushArguments = 54;

  static const opGetGlobalParamAsync = 55;
  static const opCallPointerAsync = 56;
  static const opGetObjectPropertyAsync = 57;
  static const opCallAsync = 58;
  static const opCallSuperAsync = 59;
  static const opCallEndAsync = 60;
  static const opCallDynamicAsync = 61;
  static const opSetThisSuper = 62;

  static const opPushConstantBool = 64;
  static const opPushConstantDouble = 65;
  static const opAs = 66;
  static const opPushType = 67;

  static const opGetDynamic = 68;
  static const opSetDynamic = 69;
  static const opCallDynamicInvocation = 70;
  static const opCallDynamicInvocationAsync = 71;
  static const opCallInstanceInvocation = 72;
  static const opCallInstanceInvocationAsync = 73;
  static const opCallStaticInvocation = 74;
  static const opCallStaticInvocationAsync = 75;
  static const opGetInstance = 76;
  static const opGetStatic = 77;
  static const opSetInstance = 78;
  static const opSetStatic = 79;

  static const lenBegin = 1;
  static const lenI8 = 1;
  static const lenI16 = 2;
  static const lenI32 = 4;
  static const lenF32 = 4;
  static const lenI64 = 8;
  static const lenF64 = 8;

  static int lenStr(String str) {
    return lenI32;
  }

  static List<int> u8b(int i8) {
    final x = ByteData(1);
    x.setUint8(0, i8);
    return [x.getUint8(0)];
  }

  static List<int> u16b(int u16) {
    final x = ByteData(2);
    x.setUint16(0, u16);
    return [x.getUint8(0), x.getUint8(1)];
  }

  static List<int> u32b(int u32) {
    final x = ByteData(2);
    x.setUint32(0, u32);
    return [x.getUint8(0), x.getUint8(1), x.getUint8(2), x.getUint8(3)];
  }

  static List<int> i8b(int i8) {
    final x = ByteData(1);
    x.setInt8(0, i8);
    return [x.getUint8(0)];
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

  static List<int> f64b(double f64) {
    final x = ByteData(8);
    x.setFloat64(0, f64);
    return [
      x.getUint8(0),
      x.getUint8(1),
      x.getUint8(2),
      x.getUint8(3),
      x.getUint8(4),
      x.getUint8(5),
      x.getUint8(6),
      x.getUint8(7)
    ];
  }

  static List<int> str(String str, ConstantPool pool) {
    return i32b(pool.addOrGet(str));
  }

  static List<int> strlist(List<String> list, ConstantPool pool) {
    List<int> result = [...i32b(list.length)];

    for (var element in list) {
      result.addAll(i32b(pool.addOrGet(element)));
    }
    return result;
  }

  static int lenStrlist(List<String> list) {
    int len = lenI32;
    len += lenI32 * list.length;
    return len;
  }

  static List<int> opcodeFrom(Op op, ConstantPool pool) {
    return op.bytes(pool);
  }
}

//操作
abstract class Op {
  //运行操作
  FutureOr run(Scope scope);
  //操作占用的字节长度
  int get opLen;
  //反序列化成字节
  List<int> bytes(ConstantPool pool);
}

typedef OpLoader = Op Function(MicroDartEngine);
final Map<int, OpLoader> opLoaders = {
  Ops.opReturn: (MicroDartEngine engine) => OpReturn(),
  Ops.opPushConstantInt: (MicroDartEngine engine) => OpPushConstantInt(engine),
  Ops.opCall: (MicroDartEngine engine) => OpCall(engine),
  Ops.opPushNull: (MicroDartEngine engine) => OpPushNull(),
  Ops.opPushConstant: (MicroDartEngine engine) => OpPushConstant(engine),
  Ops.opSetParam: (MicroDartEngine engine) => SetParam(engine),
  Ops.opGetParam: (MicroDartEngine engine) => OpGetParam(engine),
  Ops.opSetParamNull: (MicroDartEngine engine) => SetParamNull(engine),
  Ops.opSetGlobalParam: (MicroDartEngine engine) => OpSetGlobalParam(engine),
  Ops.opGetGlobalParam: (MicroDartEngine engine) => OpGetGlobalParam(engine),
  Ops.opCallExternal: (MicroDartEngine engine) => OpCallExternal(engine),
  Ops.opSetScopeParam: (MicroDartEngine engine) => OpSetScopeParam(engine),
  Ops.opSetScopeParamNull: (MicroDartEngine engine) =>
      SetScopeParamNull(engine),
  Ops.opCreateInstance: (MicroDartEngine engine) => OpCreateInstance(engine),
  Ops.opSetObjectProperty: (MicroDartEngine engine) =>
      OpSetObjectProperty(engine),
  Ops.opGetObjectProperty: (MicroDartEngine engine) =>
      OpGetObjectProperty(engine),
  Ops.opSetThisProperty: (MicroDartEngine engine) => OpSetThisProperty(engine),
  Ops.opReturnField: (MicroDartEngine engine) => OpReturnField(engine),
  Ops.opPushList: (MicroDartEngine engine) => OpPushList(engine),
  Ops.opJump: (MicroDartEngine engine) => OpJump(engine),
  Ops.opCallPointer: (MicroDartEngine engine) => OpCallPointer(engine),
  Ops.opPushPointer: (MicroDartEngine engine) => OpPushPointer(engine),
  Ops.opCallDynamic: (MicroDartEngine engine) => OpCallDynamic(engine),
  Ops.opStringConcat: (MicroDartEngine engine) => OpStringConcat(engine),
  Ops.opEquals: (MicroDartEngine engine) => OpEquals(),
  Ops.opAssert: (MicroDartEngine engine) => OpAssert(),
  Ops.opJumpIfFalse: (MicroDartEngine engine) => OpJumpIfFalse(engine),
  Ops.opJumpIfTrue: (MicroDartEngine engine) => OpJumpIfTrue(engine),
  Ops.opJumpIfEqual: (MicroDartEngine engine) => OpJumpIfEqual(engine),
  Ops.opThrow: (MicroDartEngine engine) => OpThrow(),
  Ops.opIs: (MicroDartEngine engine) => OpIs(engine),
  Ops.opCallSuper: (MicroDartEngine engine) => OpCallSuper(engine),
  Ops.opNot: (MicroDartEngine engine) => OpNot(),
  Ops.opLogical: (MicroDartEngine engine) => OpLogical(engine),
  Ops.opConditional: (MicroDartEngine engine) => OpConditional(),
  Ops.opListConcat: (MicroDartEngine engine) => OpListConcat(engine),
  Ops.opSetConcat: (MicroDartEngine engine) => OpSetConcat(engine),
  Ops.opMapConcat: (MicroDartEngine engine) => OpMapConcat(engine),
  Ops.opNullCheck: (MicroDartEngine engine) => OpNullCheck(),
  Ops.opPushSet: (MicroDartEngine engine) => OpPushSet(engine),
  Ops.opPushMap: (MicroDartEngine engine) => OpPushMap(engine),
  Ops.opAwait: (MicroDartEngine engine) => OpAwait(),
  Ops.opCallStart: (MicroDartEngine engine) => OpCallStart(engine),
  Ops.opPopArguments: (MicroDartEngine engine) => OpPopArguments(engine),
  Ops.opCallEnd: (MicroDartEngine engine) => OpCallEnd(),
  Ops.opTryCatchFinally: (MicroDartEngine engine) => OpTryCatchFinally(engine),
  Ops.opSetParamFromParent: (MicroDartEngine engine) =>
      OpSetParamFromParent(engine),
  Ops.opPushArguments: (MicroDartEngine engine) => OpPushArguments(engine),
  Ops.opCallPointerAsync: (MicroDartEngine engine) =>
      OpCallPointerAsync(engine),
  Ops.opGetObjectPropertyAsync: (MicroDartEngine engine) =>
      OpGetObjectPropertyAsync(engine),
  Ops.opCallAsync: (MicroDartEngine engine) => OpCallAsync(engine),
  Ops.opCallSuperAsync: (MicroDartEngine engine) => OpCallSuperAsync(engine),
  Ops.opCallEndAsync: (MicroDartEngine engine) => OpCallEndAsync(),
  Ops.opCallDynamicAsync: (MicroDartEngine engine) =>
      OpCallDynamicAsync(engine),
  Ops.opSetThisSuper: (MicroDartEngine engine) => OpSetThisSuper(),
  Ops.opPushSymbol: (MicroDartEngine engine) => OpPushSymbol(engine),
  Ops.opPushConstantBool: (MicroDartEngine engine) =>
      OpPushConstantBool(engine),
  Ops.opPushConstantDouble: (MicroDartEngine engine) =>
      OpPushConstantDouble(engine),
  Ops.opAs: (MicroDartEngine engine) => OpAs(engine),
  Ops.opPushType: (MicroDartEngine engine) => OpPushType(engine),
  Ops.opGetDynamic: (MicroDartEngine engine) => OpGetDynamic(engine),
  Ops.opSetDynamic: (MicroDartEngine engine) => OpSetDynamic(engine),
  Ops.opCallDynamicInvocation: (MicroDartEngine engine) =>
      OpCallDynamicInvocation(engine),
  Ops.opCallDynamicInvocationAsync: (MicroDartEngine engine) =>
      OpCallDynamicInvocationAsync(engine),
  Ops.opCallInstanceInvocation: (MicroDartEngine engine) =>
      OpCallInstanceInvocation(engine),
  Ops.opCallInstanceInvocationAsync: (MicroDartEngine engine) =>
      OpCallInstanceInvocationAsync(engine),
  Ops.opCallStaticInvocation: (MicroDartEngine engine) =>
      OpCallStaticInvocation(engine),
  Ops.opCallStaticInvocationAsync: (MicroDartEngine engine) =>
      OpCallStaticInvocationAsync(engine),
  Ops.opGetInstance: (MicroDartEngine engine) =>
      OpGetInstance(engine),
  Ops.opGetStatic: (MicroDartEngine engine) =>
      OpGetStatic(engine),
  Ops.opSetInstance: (MicroDartEngine engine) =>
      OpSetInstance(engine),
  Ops.opSetStatic: (MicroDartEngine engine) =>
      OpSetStatic(engine),
};
