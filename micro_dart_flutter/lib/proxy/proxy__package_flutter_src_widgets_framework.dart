import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Function _StatelessWidget__$(m.Scope scope$) => ({Key? key}) {
      return $StatelessWidget(key);
    };

class $StatelessWidget extends StatelessWidget with m.InstanceBridge {
  $StatelessWidget({super.key});

  @override
  m.CType get bridgeType => m.CType(
      m.ClassRef(
          "package:flutter/src/widgets/framework.dart", "StatelessWidget"),
      isExternal: true);

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Map<String, Function> get superGetters => throw UnimplementedError();
}
