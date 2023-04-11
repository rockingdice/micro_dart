import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'context.dart';

class OffsetTracker {
  OffsetTracker(this.context);

  final Map<int, DeferredOrOffset> _deferredOffsets = {};
  MicroCompilerContext context;

  void setOffset(int location, DeferredOrOffset offset) {
    _deferredOffsets[location] = offset;
  }

  List<Op> apply(List<Op> source) {
    _deferredOffsets.forEach((pos, offset) {
      final op = source[pos];
      if (op is Call) {
        final resolvedOffset =
            context.rumtimetopLevelDeclarationOpIndex[offset.name];
        if (resolvedOffset == null) {
          return;
        }
        final newOp = Call.make(resolvedOffset);
        source[pos] = newOp;
      }
    });
    return source;
  }
}

enum DeferredOrOffsetKind {
  Class,
  Procedure,
  Field,
  Constructor,
  RedirectingFactory
}

class DeferredOrOffset {
  DeferredOrOffset(
      {required this.offset, required this.name, required this.kind});

  final int offset;
  final String name;
  final DeferredOrOffsetKind kind;

  factory DeferredOrOffset.create(MicroCompilerContext ctx, String name,
      {DeferredOrOffsetKind kind = DeferredOrOffsetKind.Procedure}) {
    return DeferredOrOffset(
        offset: ctx.rumtimetopLevelDeclarationOpIndex[name] ?? -1,
        name: name,
        kind: kind);
  }

  @override
  String toString() {
    return 'DeferredOrOffset{offset: $offset, name: $name, kind: $kind}';
  }
}
