part of '../generated/__package_flutter_src_widgets_transitions.dart';

Function _AnimatedWidget__$(m.Scope scope$) =>
    ({Key? key, required Listenable listenable}) {
      return $AnimatedWidget(
        key: key,
        listenable: listenable,
      );
    };

class $AnimatedWidget extends AnimatedWidget with m.InstanceBridge {
  $AnimatedWidget({Key? key, required Listenable listenable})
      : super(key: key, listenable: listenable);

  @override
  m.CType bridgeType = const m.CType.external(
    m.ClassRef(
        "package:flutter/src/widgets/transitions.dart", "AnimatedWidget"),
  );

  @override
  late Map<String, Function> superGetters = {};

  @override
  Widget build(BuildContext context) {
    return $child!.engine.callFunction(scope, this,
        type.getCallRef("build", false, false), [context], {}, null);
  }
}
