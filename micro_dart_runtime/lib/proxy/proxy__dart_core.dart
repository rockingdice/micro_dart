// ignore_for_file: non_constant_identifier_names

part of '../generated/__dart_core.dart';

class $Deprecated extends Deprecated with m.InstanceBridge {
  $Deprecated(super.message);

  @override
  m.CType get bridgeType =>
      m.CType(m.ClassRef("dart:core", "Deprecated"), isExternal: true);

  @override
  Map<String, Function> get superGetters => _superGetter;

  static const Map<String, Function> _superGetter = {
    '#as': Deprecated_as$,
    '#is': Deprecated_is$,
    'message': _Deprecated_message$,
    'toString': _Deprecated_toString$,
  };
}

Function __Enum__$(m.Scope scope$) => (int index, String value) {
      return $_Enum(index, value);
    };

class $_Enum with m.InstanceBridge {
  int index;
  String value;
  $_Enum(this.index, this.value);

  @override
  m.CType get bridgeType =>
      m.CType(m.ClassRef("dart:core", "_Enum"), isExternal: true);

  @override
  Map<String, Function> get superGetters => _superGetter;

  static const Map<String, Function> _superGetter = {
    '#as': Enum_as$,
    '#is': Enum_is$,
  };
}
