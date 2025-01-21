part of '../generated/__package_flutter_src_widgets_framework.dart';

const globalSetters = {
  'InheritedWidget.': _InheritedWidget__$,
  'StatelessWidget.': _StatelessWidget__$,
  'StatefulWidget.': _StatefulWidget__$,
  'State.': _State__$,
};

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
  m.CType bridgeType = const m.CType.external(
    m.ClassRef("package:flutter/src/widgets/framework.dart", "InheritedWidget"),
  );

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return $child!.engine.callFunction(
        scope,
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

class $StatelessWidget extends StatelessWidget
    with m.InstanceBridge
    implements PreferredSizeWidget {
  $StatelessWidget({Key? key}) : super(key: key);
  @override
  m.CType bridgeType = const m.CType.external(
    m.ClassRef("package:flutter/src/widgets/framework.dart", "StatelessWidget"),
  );

  @override
  Widget build(BuildContext context) {
    return $child!.engine.callFunction(scope, this,
        type.getCallRef("build", false, false), [context], {}, null);
  }

  @override
  late Map<String, Function> superGetters = {};

  @override
  Size get preferredSize => $child!.engine.callFunction(scope, this,
      type.getCallRef("preferredSize", false, false), [], {}, null);
}

Function _StatefulWidget__$(m.Scope scope$) => ({Key? key}) {
      return $StatefulWidget(
        key: key,
      );
    };

class $StatefulWidget extends StatefulWidget with m.InstanceBridge {
  $StatefulWidget({Key? key}) : super(key: key);
  @override
  m.CType bridgeType = const m.CType.external(
    m.ClassRef("package:flutter/src/widgets/framework.dart", "StatefulWidget"),
  );

  @override
  State<StatefulWidget> createState() {
    return $child!.engine.callFunction(scope, this,
        type.getCallRef("createState", false, false), [], {}, null);
  }

  @override
  late Map<String, Function> superGetters = {};
}

Function _State__$(m.Scope scope$) => () {
      return $State();
    };

class $State extends State
    with m.InstanceBridge, TickerProviderStateMixin, RestorationMixin {
  @override
  m.CType bridgeType = const m.CType.external(
    m.ClassRef("package:flutter/src/widgets/framework.dart", "State"),
  );

  @override
  Widget build(BuildContext context) {
    return $child!.engine.callFunction(scope, this,
        type.getCallRef("build", false, false), [context], {}, null);
  }

  @override
  void initState() {
    $child!.engine.callFunction(
        scope, this, type.getCallRef("initState", false, false), [], {}, () {
      return super.initState();
    });
  }

  @override
  void dispose() {
    $child!.engine.callFunction(
        scope, this, type.getCallRef("dispose", false, false), [], {}, () {
      return super.dispose();
    });
  }

  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    return $child!.engine.callFunction(scope, this,
        type.getCallRef("didUpdateWidget", false, false), [oldWidget], {}, () {
      super.didUpdateWidget(oldWidget);
    });
  }

  @override
  late Map<String, Function> superGetters = {
    "initState": (m.Scope scope, target) => super.initState,
    "dispose": (m.Scope scope, target) => super.dispose,
    "didUpdateWidget": (m.Scope scope, target) => super.didUpdateWidget,
  };

  @override
  String? get restorationId {
    return $child!.engine.callFunction(scope, this,
        type.getCallRef("restorationId", false, false), [], {}, () {});
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    return $child!.engine.callFunction(
        scope,
        this,
        type.getCallRef("restoreState", false, false),
        [oldBucket, initialRestore],
        {},
        () {});
  }
}
