part of '../generated/__package_flutter_src_widgets_value_listenable_builder.dart';

const globalSetters = {
  'ValueListenableBuilder.<bool>': _ValueListenableBuilder__bool$
};

Function _ValueListenableBuilder__bool$(m.Scope scope$) => ({
      Key? key,
      required ValueListenable<bool> valueListenable,
      required m.FunctionPointer builder,
      Widget? child,
    }) {
      Widget builderProxy(
        BuildContext builder_context$,
        dynamic builder_value$,
        Widget? builder_child$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            builder,
            [
              builder_context$,
              builder_value$,
              builder_child$,
            ],
            {},
          );
      return ValueListenableBuilder<bool>(
        builder: builderProxy,
        child: child,
        key: key,
        valueListenable: valueListenable,
      );
    };
