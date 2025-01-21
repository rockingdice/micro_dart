part of '../generated/__package_flutter_src_rendering_custom_paint.dart';

Function _CustomPainter__$(m.Scope scope$) => ({Listenable? repaint}) {
      return $CustomPainter(
        repaint: repaint,
      );
    };

class $CustomPainter extends CustomPainter with m.InstanceBridge {
  $CustomPainter({Listenable? repaint}) : super(repaint: repaint);

  @override
  m.CType bridgeType = const m.CType.external(
    m.ClassRef(
        "package:flutter/src/rendering/custom_paint.dart", "CustomPainter"),
  );

  @override
  late Map<String, Function> superGetters = {
    "shouldRebuildSemantics": (m.Scope scope, target) =>
        super.shouldRebuildSemantics,
    "semanticsBuilder": (m.Scope scope, target) => super.semanticsBuilder,
  };

  @override
  void paint(Canvas canvas, Size size) {
    return $child!.engine.callFunction(scope, this,
        type.getCallRef("paint", false, false), [canvas, size], {}, null);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return $child!.engine.callFunction(
        scope,
        this,
        type.getCallRef("shouldRepaint", false, false),
        [oldDelegate],
        {},
        null);
  }

  SemanticsBuilderCallback? get semanticsBuilder {
    return $child!.engine.callFunction(
        scope, this, type.getCallRef("semanticsBuilder", false, false), [], {},
        () {
      return super.semanticsBuilder;
    });
  }

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) {
    return $child!.engine.callFunction(
        scope,
        this,
        type.getCallRef("shouldRebuildSemantics", false, false),
        [oldDelegate],
        {}, () {
      return super.shouldRebuildSemantics(oldDelegate);
    });
  }
}
