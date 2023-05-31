import 'dart:convert';
import 'dart:typed_data';

import '../micro_dart_runtime.dart';
export 'op_set_posational_param.dart';

export 'op_try_catch_finally.dart';
export 'op_call_end.dart';
export 'op_fill_argments.dart';
export 'op_call_start.dart';
export 'op_async_box.dart';
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
export 'op_pop_catch.dart';
export 'op_try.dart';
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
export 'op_pop_scope.dart';
export 'op_push_null.dart';
export 'op_push_scope.dart';
export 'op_return.dart';
export 'op_push_constant_int.dart';
export 'op_set_global_param.dart';
//export 'op_set_named_param.dart';
export 'op_set_param.dart';
export 'op_set_param_null.dart';
//export 'op_set_posational_param.dart';
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
  //static const opJumpConstant = 0;
  static const opPushConstantInt = 1;
  static const opPushScope = 2;
  static const opReturn = 3;
  static const opPopScope = 4;
  static const opCall = 5;
  static const opPushNull = 6;
  static const opPushConstant = 7;
  static const opSetParam = 8;
  static const opSetParamNull = 9;
  static const opGetParam = 10;
  static const opSetPosationalParam = 11;
  static const opSetNamedParam = 12;
  static const opSetGlobalParam = 13;
  static const opGetGlobalParam = 14;
  static const opCallExternal = 15;
  static const opSetScopeParam = 16;
  static const opSetScopeParamNull = 17;
  static const opCreateInstance = 18;
  static const opSetThisProperty = 19;
  static const opGetObjectProperty = 20;
  static const opSetObjectProperty = 21;
  static const opReturnField = 22;
  static const opPushList = 23;
  static const opJump = 24;
  static const opCallPointer = 25;
  static const opPushPointer = 26;
  static const opPushBoxInt = 27;
  static const opCallDynamic = 28;
  static const opStringConcat = 29;
  static const opEquals = 30;
  static const opAssert = 31;
  static const opJumpIfFalse = 32;
  static const opJumpIfTrue = 33;
  static const opJumpIfEqual = 34;
  static const opTry = 35;
  static const opPopCatch = 36;
  static const opThrow = 37;
  static const opIs = 38;
  static const opCallSuper = 39;
  static const opNot = 40;
  static const opLogical = 41;
  static const opConditional = 42;
  static const opListConcat = 43;
  static const opSetConcat = 44;
  static const opMapConcat = 45;
  static const opNullCheck = 46;
  static const opSymbol = 47;
  static const opPushSet = 48;
  static const opPushMap = 49;
  static const opAwait = 50;
  static const opAsyncBox = 51;

  static const opCallStart = 52;
  static const opReturnNull = 53;
  static const opFillArgments = 54;
  static const opCallEnd = 55;
  static const OpTryCatchFinally = 56;

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
  void run(Scope scope);
  //操作占用的字节长度
  int get opLen;
  //反序列化成字节
  List<int> get bytes;
}

typedef OpLoader = Op Function(MicroDartEngine);
final Map<int, OpLoader> opLoaders = {
  Ops.opPushScope: (MicroDartEngine engine) => OpPushScope(engine),
  Ops.opPopScope: (MicroDartEngine engine) => OpPopScope(engine),
  Ops.opReturn: (MicroDartEngine engine) => OpReturn(engine),
  Ops.opPushConstantInt: (MicroDartEngine engine) => OpPushConstantInt(engine),
  Ops.opCall: (MicroDartEngine engine) => OpCall(engine),
  Ops.opPushNull: (MicroDartEngine engine) => OpPushNull(engine),
  Ops.opPushConstant: (MicroDartEngine engine) => OpPushConstant(engine),
  Ops.opSetParam: (MicroDartEngine engine) => SetParam(engine),
  Ops.opGetParam: (MicroDartEngine engine) => OpGetParam(engine),
  Ops.opSetParamNull: (MicroDartEngine engine) => SetParamNull(engine),
  //Ops.opSetPosationalParam: (MicroDartEngine engine) =>
  //    SetPosationalParam(engine),
  //Ops.opSetNamedParam: (MicroDartEngine engine) => SetNamedParam(engine),
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
  Ops.opTry: (MicroDartEngine engine) => OpTry(engine),
  Ops.opPopCatch: (MicroDartEngine engine) => OpPopCatch(engine),
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
  Ops.opAsyncBox: (MicroDartEngine engine) => OpAsyncBox(engine),
  Ops.opCallStart: (MicroDartEngine engine) => OpCallStart(engine),
  Ops.opFillArgments: (MicroDartEngine engine) => OpFillArgments(engine),
  Ops.opCallEnd: (MicroDartEngine engine) => OpCallEnd(engine),
  Ops.OpTryCatchFinally: (MicroDartEngine engine) => OpTryCatchFinally(engine),
  Ops.opSetPosationalParam: (MicroDartEngine engine) =>
      OpSetPosationalParam(engine),
};
