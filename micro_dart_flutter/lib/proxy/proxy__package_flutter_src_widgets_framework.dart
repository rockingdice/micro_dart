part of '../generated/__package_flutter_src_widgets_framework.dart';

Function _InheritedWidget__$(m.Scope scope$) =>
    ({Key? key, required Widget child}) {
      return $InheritedWidget(
        key: key,
        child: child,
      );
    };

class $InheritedWidget extends InheritedWidget with m.InstanceBridge {
  $InheritedWidget({Key? key, required Widget child})
      : super(key: key, child: child);

  @override
  m.CType bridgeType = const m.CType(
      m.ClassRef(
          "package:flutter/src/widgets/framework.dart", "InheritedWidget"),
      isExternal: true);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return $child!.engine.callFunction(
        this,
        type.getCallRef("updateShouldNotify", false, false),
        [oldWidget],
        {}, () {
      return updateShouldNotify(oldWidget);
    });
  }

  @override
  late Map<String, Function> superGetters = {};
}

Function _StatelessWidget__$(m.Scope scope$) => ({Key? key}) {
      return $StatelessWidget(
        key: key,
      );
    };

class $StatelessWidget extends StatelessWidget with m.InstanceBridge {
  $StatelessWidget({Key? key}) : super(key: key);
  @override
  m.CType bridgeType = const m.CType(
      m.ClassRef(
          "package:flutter/src/widgets/framework.dart", "StatelessWidget"),
      isExternal: true);

  @override
  Widget build(BuildContext context) {
    return $child!.engine.callFunction(
        this, type.getCallRef("build", false, false), [context], {}, null);
  }

  @override
  late Map<String, Function> superGetters = {};
}

Function _StatefulWidget__$(m.Scope scope$) => ({Key? key}) {
      return $StatefulWidget(
        key: key,
      );
    };

class $StatefulWidget extends StatefulWidget with m.InstanceBridge {
  $StatefulWidget({Key? key}) : super(key: key);
  @override
  m.CType bridgeType = const m.CType(
      m.ClassRef(
          "package:flutter/src/widgets/framework.dart", "StatefulWidget"),
      isExternal: true);

  @override
  State<StatefulWidget> createState() {
    return $child!.engine.callFunction(
        this, type.getCallRef("createState", false, false), [], {}, null);
  }

  @override
  late Map<String, Function> superGetters = {};
}

Function _State__$(m.Scope scope$) => () {
      return $State();
    };

class $State extends State with m.InstanceBridge, TickerProviderStateMixin {
  @override
  m.CType bridgeType = const m.CType(
      m.ClassRef("package:flutter/src/widgets/framework.dart", "State"),
      isExternal: true);

  @override
  Widget build(BuildContext context) {
    return $child!.engine.callFunction(
        this, type.getCallRef("build", false, false), [context], {}, null);
  }

  @override
  void initState() {
    $child!.engine.callFunction(
        this, type.getCallRef("initState", false, false), [], {}, () {
      return super.initState();
    });
  }

  @override
  void dispose() {
    $child!.engine.callFunction(
        this, type.getCallRef("dispose", false, false), [], {}, () {
      return super.dispose();
    });
  }

  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    return $child!.engine.callFunction(
        this, type.getCallRef("didUpdateWidget", false, false), [oldWidget], {},
        () {
      super.didUpdateWidget(oldWidget);
    });
  }

  @override
  late Map<String, Function> superGetters = {
    "initState": (m.Scope scope, target) => super.initState,
    "dispose": (m.Scope scope, target) => super.dispose,
    "didUpdateWidget": (m.Scope scope, target) => super.didUpdateWidget,
  };
}
