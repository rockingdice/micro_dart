import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import '../micro_dart_runtime.dart';

export 'op_push_argments.dart';
export 'op_set_param_from_parent.dart';
export 'op_try_catch_finally.dart';
export 'op_call_end.dart';
export 'op_pop_argments.dart';
export 'op_call_start.dart';
export 'op_await.dart';
export 'op_push_map.dart';
export 'op_push_set.dart';
export 'op_symbol.dart';
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
export 'op_push_box_int.dart';
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
  static const opSymbol = 45;
  static const opPushSet = 46;
  static const opPushMap = 47;
  static const opAwait = 48;

  static const opCallStart = 49;
  static const opReturnNull = 50;
  static const opPopArgments = 51;
  static const opCallEnd = 52;
  static const opTryCatchFinally = 53;
  static const opPushArgments = 54;

  static const opGetGlobalParamAsync = 55;
  static const opCallPointerAsync = 56;
  static const opGetObjectPropertyAsync = 57;
  static const opCallAsync = 58;
  static const opCallSuperAsync = 59;
  static const opCallEndAsync = 60;
  static const opCallDynamicAsync = 61;

  static const lenBegin = 1;
  static const lenI8 = 1;
  static const lenI16 = 2;
  static const lenI32 = 4;
  static const lenF32 = 4;
  static const lenI64 = 8;

  static int lenStr(String str) {
    return lenI32 + utf8.encode(str).length;
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

  static List<int> str(String str) {
    final u = utf8.encode(str);
    final x = ByteData(4);
    x.setInt32(0, u.length);
    return [...i32b(u.length), ...u];
  }

  static List<int> strlist(List<String> list) {
    List<int> result = [...i32b(list.length)];

    for (var element in list) {
      result.addAll(str(element));
    }
    return result;
  }

  static int lenStrlist(List<String> list) {
    int len = lenI32;
    for (var element in list) {
      len += lenStr(element);
    }
    return len;
  }

  static List<int> opcodeFrom(Op op) {
    return op.bytes;
  }
}

//操作
abstract class Op {
  //运行操作
  FutureOr run(Scope scope);
  //操作占用的字节长度
  int get opLen;
  //反序列化成字节
  List<int> get bytes;
}

typedef OpLoader = Op Function(MicroDartEngine);
final Map<int, OpLoader> opLoaders = {
  Ops.opReturn: (MicroDartEngine engine) => OpReturn(engine),
  Ops.opPushConstantInt: (MicroDartEngine engine) => OpPushConstantInt(engine),
  Ops.opCall: (MicroDartEngine engine) => OpCall(engine),
  Ops.opPushNull: (MicroDartEngine engine) => OpPushNull(engine),
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
      SetObjectProperty(engine),
  Ops.opGetObjectProperty: (MicroDartEngine engine) =>
      OpGetObjectProperty(engine),
  Ops.opSetThisProperty: (MicroDartEngine engine) => SetThisProperty(engine),
  Ops.opReturnField: (MicroDartEngine engine) => OpReturnField(engine),
  Ops.opPushList: (MicroDartEngine engine) => OpPushList(engine),
  Ops.opJump: (MicroDartEngine engine) => OpJump(engine),
  Ops.opCallPointer: (MicroDartEngine engine) => OpCallPointer(engine),
  Ops.opPushPointer: (MicroDartEngine engine) => OpPushPointer(engine),
  Ops.opPushBoxInt: (MicroDartEngine engine) => OpPushBoxInt(engine),
  Ops.opCallDynamic: (MicroDartEngine engine) => OpCallDynamic(engine),
  Ops.opStringConcat: (MicroDartEngine engine) => OpStringConcat(engine),
  Ops.opEquals: (MicroDartEngine engine) => OpEquals(engine),
  Ops.opAssert: (MicroDartEngine engine) => OpAssert(engine),
  Ops.opJumpIfFalse: (MicroDartEngine engine) => OpJumpIfFalse(engine),
  Ops.opJumpIfTrue: (MicroDartEngine engine) => OpJumpIfTrue(engine),
  Ops.opJumpIfEqual: (MicroDartEngine engine) => OpJumpIfEqual(engine),
  Ops.opThrow: (MicroDartEngine engine) => OpThrow(engine),
  Ops.opIs: (MicroDartEngine engine) => OpIs(engine),
  Ops.opCallSuper: (MicroDartEngine engine) => OpCallSuper(engine),
  Ops.opNot: (MicroDartEngine engine) => OpNot(engine),
  Ops.opLogical: (MicroDartEngine engine) => OpLogical(engine),
  Ops.opConditional: (MicroDartEngine engine) => OpConditional(engine),
  Ops.opListConcat: (MicroDartEngine engine) => OpListConcat(engine),
  Ops.opSetConcat: (MicroDartEngine engine) => OpSetConcat(engine),
  Ops.opMapConcat: (MicroDartEngine engine) => OpMapConcat(engine),
  Ops.opNullCheck: (MicroDartEngine engine) => OpNullCheck(engine),
  Ops.opSymbol: (MicroDartEngine engine) => OpSymbol(engine),
  Ops.opPushSet: (MicroDartEngine engine) => OpPushSet(engine),
  Ops.opPushMap: (MicroDartEngine engine) => OpPushMap(engine),
  Ops.opAwait: (MicroDartEngine engine) => OpAwait(engine),
  Ops.opCallStart: (MicroDartEngine engine) => OpCallStart(engine),
  Ops.opPopArgments: (MicroDartEngine engine) => OpPopArgments(engine),
  Ops.opCallEnd: (MicroDartEngine engine) => OpCallEnd(engine),
  Ops.opTryCatchFinally: (MicroDartEngine engine) => OpTryCatchFinally(engine),
  Ops.opSetParamFromParent: (MicroDartEngine engine) =>
      OpSetParamFromParent(engine),
  Ops.opPushArgments: (MicroDartEngine engine) => OpPushArgments(engine),
  Ops.opGetGlobalParamAsync: (MicroDartEngine engine) =>
      OpGetGlobalParamAsync(engine),
  Ops.opCallPointerAsync: (MicroDartEngine engine) =>
      OpCallPointerAsync(engine),
  Ops.opGetObjectPropertyAsync: (MicroDartEngine engine) =>
      OpGetObjectPropertyAsync(engine),
  Ops.opCallAsync: (MicroDartEngine engine) => OpCallAsync(engine),
  Ops.opCallSuperAsync: (MicroDartEngine engine) => OpCallSuperAsync(engine),
  Ops.opCallEndAsync: (MicroDartEngine engine) => OpCallEndAsync(engine),
  Ops.opCallDynamicAsync: (MicroDartEngine engine) =>
      OpCallDynamicAsync(engine),
};
