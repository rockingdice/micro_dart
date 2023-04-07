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
        final resolvedOffset = context.topLevelDeclarationPositions[
            context.libraryIndexes[offset.libraryUri]]![offset.name!]!;
        final newOp = Call.make(resolvedOffset);
        source[pos] = newOp;
      }
    });
    return source;
  }
}

/// An structure pointing to a function that may or may not have been generated already. If it hasn't, the exact program
/// offset will be resolved later by the [OffsetTracker]
class DeferredOrOffset {
  DeferredOrOffset(
      {this.offset,
      this.libraryUri,
      this.name,
      this.className,
      this.methodType,
      this.targetScopeFrameOffset})
      : assert(offset != null || name != null);

  final int? offset;
  final String? libraryUri;
  final String? className;
  final int? methodType;
  final String? name;
  final int? targetScopeFrameOffset;

  factory DeferredOrOffset.lookupStatic(
      MicroCompilerContext ctx, String libraryUri, String name) {
    return DeferredOrOffset(
        libraryUri: libraryUri,
        offset: ctx.topLevelDeclarationPositions[ctx.fieldIndexes[libraryUri]]
            ?[name],
        name: name);
  }

  @override
  String toString() {
    return 'DeferredOrOffset{offset: $offset, libraryUri: $libraryUri, name: $name}';
  }
}
