part of '../generated/__package_flutter_src_widgets_restoration_properties.dart';

const globalSetters = {
  'RestorableListenable.': _RestorableListenable__$,
};

Function _RestorableListenable__$(m.Scope scope$) => () {
      return $RestorableListenable();
    };

class $RestorableListenable extends RestorableListenable with m.InstanceBridge {
  @override
  m.CType bridgeType = const m.CType(
      m.ClassRef("package:flutter/src/widgets/restoration_properties.dart",
          "RestorableListenable"),
      isExternal: true);

  @override
  late Map<String, Function> superGetters = {};

  @override
  Listenable createDefaultValue() {
    return $child!.engine.callFunction(scope, this,
        type.getCallRef("createDefaultValue", false, false), [], {}, null);
  }

  @override
  Listenable fromPrimitives(Object? data) {
    return $child!.engine.callFunction(scope, this,
        type.getCallRef("fromPrimitives", false, false), [data], {}, null);
  }

  @override
  Object? toPrimitives() {
    return $child!.engine.callFunction(scope, this,
        type.getCallRef("toPrimitives", false, false), [], {}, null);
  }
}
