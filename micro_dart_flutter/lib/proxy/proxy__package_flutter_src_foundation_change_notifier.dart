part of '../generated/__package_flutter_src_foundation_change_notifier.dart';

const globalSetters = {
  'ValueNotifier.<bool>': _ValueNotifier__bool$,
  'Listenable.': _Listenable__$,
};

Function _ValueNotifier__bool$(m.Scope scope$) => (bool _value) {
      return ValueNotifier<bool>(_value);
    };
Function _Listenable__$(m.Scope scope$) => (bool _value) {
      return $Listenable();
    };

class $Listenable extends Listenable with m.InstanceBridge {
  @override
  m.CType bridgeType = const m.CType(
      m.ClassRef(
          "package:flutter/src/foundation/change_notifier.dart", "Listenable"),
      isExternal: true);

  @override
  late Map<String, Function> superGetters = {};

  @override
  void addListener(VoidCallback listener) {
    $child!.engine.callFunction(scope, this,
        type.getCallRef("addListener", false, false), [listener], {}, () {});
  }

  @override
  void removeListener(VoidCallback listener) {
    $child!.engine.callFunction(scope, this,
        type.getCallRef("removeListener", false, false), [listener], {}, () {});
  }
}
