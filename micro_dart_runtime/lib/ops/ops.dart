import 'dart:convert';
import 'dart:typed_data';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';

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
export 'op_set_named_param.dart';
export 'op_set_param.dart';
export 'op_set_param_null.dart';
export 'op_set_posational_param.dart';
export 'op_set_scope_param.dart';
export 'op_set_scope_param_null.dart';

class Ops {
  static const opJumpConstant = 0;
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
  void run(MicroRuntime runtime);
  //操作占用的字节长度
  int get opLen;
  //反序列化成字节
  List<int> get bytes;
}

typedef OpLoader = Op Function(MicroDartEngine);
final Map<int, OpLoader> opLoaders = {
  Ops.opPushScope: (MicroDartEngine rt) => PushScope(rt),
  Ops.opPopScope: (MicroDartEngine rt) => PopScope(rt),
  Ops.opReturn: (MicroDartEngine rt) => Return(rt),
  Ops.opPushConstantInt: (MicroDartEngine rt) => PushConstantInt(rt),
  Ops.opCall: (MicroDartEngine rt) => Call(rt),
  Ops.opPushNull: (MicroDartEngine rt) => PushNull(rt),
  Ops.opPushConstant: (MicroDartEngine rt) => PushConstant(rt),
  Ops.opSetParam: (MicroDartEngine rt) => SetParam(rt),
  Ops.opGetParam: (MicroDartEngine rt) => GetParam(rt),
  Ops.opSetParamNull: (MicroDartEngine rt) => SetParamNull(rt),
  Ops.opSetPosationalParam: (MicroDartEngine rt) => SetPosationalParam(rt),
  Ops.opSetNamedParam: (MicroDartEngine rt) => SetNamedParam(rt),
  Ops.opSetGlobalParam: (MicroDartEngine rt) => SetGlobalParam(rt),
  Ops.opGetGlobalParam: (MicroDartEngine rt) => GetGlobalParam(rt),
  Ops.opCallExternal: (MicroDartEngine rt) => CallExternal(rt),
  Ops.opSetScopeParam: (MicroDartEngine rt) => SetScopeParam(rt),
  Ops.opSetScopeParamNull: (MicroDartEngine rt) => SetScopeParamNull(rt),
  Ops.opCreateInstance: (MicroDartEngine rt) => CreateInstance(rt),
  Ops.opSetObjectProperty: (MicroDartEngine rt) => SetObjectProperty(rt),
  Ops.opGetObjectProperty: (MicroDartEngine rt) => GetObjectProperty(rt),
  Ops.opSetThisProperty: (MicroDartEngine rt) => SetThisProperty(rt),
  Ops.opReturnField: (MicroDartEngine rt) => ReturnField(rt),
  Ops.opPushList: (MicroDartEngine rt) => PushList(rt),
  Ops.opJump: (MicroDartEngine rt) => Jump(rt),
};
