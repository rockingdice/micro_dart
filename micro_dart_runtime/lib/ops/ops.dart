import 'dart:convert';
import 'dart:typed_data';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';

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

typedef OpLoader = Op Function(MicroDartInterpreter);
final Map<int, OpLoader> opLoaders = {
  Ops.opPushScope: (MicroDartInterpreter rt) => PushScope(rt),
  Ops.opPopScope: (MicroDartInterpreter rt) => PopScope(rt),
  Ops.opReturn: (MicroDartInterpreter rt) => Return(rt),
  Ops.opPushConstantInt: (MicroDartInterpreter rt) => PushConstantInt(rt),
  Ops.opCall: (MicroDartInterpreter rt) => Call(rt),
  Ops.opPushNull: (MicroDartInterpreter rt) => PushNull(rt),
  Ops.opPushConstant: (MicroDartInterpreter rt) => PushConstant(rt),
  Ops.opSetParam: (MicroDartInterpreter rt) => SetParam(rt),
  Ops.opGetParam: (MicroDartInterpreter rt) => GetParam(rt),
  Ops.opSetParamNull: (MicroDartInterpreter rt) => SetParamNull(rt),
  Ops.opSetPosationalParam: (MicroDartInterpreter rt) => SetPosationalParam(rt),
  Ops.opSetNamedParam: (MicroDartInterpreter rt) => SetNamedParam(rt),
  Ops.opSetGlobalParam: (MicroDartInterpreter rt) => SetGlobalParam(rt),
  Ops.opGetGlobalParam: (MicroDartInterpreter rt) => GetGlobalParam(rt),
  Ops.opCallExternal: (MicroDartInterpreter rt) => CallExternal(rt),
  Ops.opSetScopeParam: (MicroDartInterpreter rt) => SetScopeParam(rt),
  Ops.opSetScopeParamNull: (MicroDartInterpreter rt) => SetScopeParamNull(rt),
  Ops.opCreateInstance: (MicroDartInterpreter rt) => CreateInstance(rt),
  Ops.opSetObjectProperty: (MicroDartInterpreter rt) => SetObjectProperty(rt),
  Ops.opGetObjectProperty: (MicroDartInterpreter rt) => GetObjectProperty(rt),
  Ops.opSetThisProperty: (MicroDartInterpreter rt) => SetThisProperty(rt),
  Ops.opReturnField: (MicroDartInterpreter rt) => ReturnField(rt),
};
