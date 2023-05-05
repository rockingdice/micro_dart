import 'package:kernel/ast.dart';
import 'package:micro_dart_compiler/compiler/ast/ast.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'context.dart';

//用于调用重定向,使调用重定向到到正确的位置
class OffsetTracker {
  OffsetTracker(this.context);

  final Map<int, DeferredOrOffset> _deferredOffsets = {};
  MicroCompilerContext context;

  void setOffset(int location, DeferredOrOffset offset) {
    _deferredOffsets[location] = offset;
  }

  List<Op> apply() {
    var source = this.context.ops;
    _deferredOffsets.forEach((pos, offset) {
      final op = source[pos];
      if (op is Call) {
        final resolvedOffset =
            context.rumtimeDeclarationOpIndexes[offset.node.getNamedName()];
        if (resolvedOffset == null) {
          //表示这是个外部的调用
          print("call external: ${offset.node.getNamedName()} ");

          final newOp = CallExternal.make(
              className: offset.node.stringClassName ?? "",
              isGetter: offset.node.isGetter,
              isSetter: offset.node.isSetter,
              isStatic: offset.node.isStatic,
              key: offset.node.getNamedName(),
              kind: offset.kind.index,
              libraryUri: offset.node.stringLibraryUri,
              name: offset.node.stringName,
              namedList: offset.namedList,
              posationalLengh: offset.posationalLengh);
          source[pos] = newOp;
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
  final DeferredOrOffsetKind kind;
  final int offset;
  final Member node;
  final int posationalLengh;
  List<String> namedList;

  DeferredOrOffset(
      {required this.kind,
      required this.offset,
      required this.node,
      required this.posationalLengh,
      required this.namedList});

  @override
  String toString() {
    return 'DeferredOrOffset{kind: $kind,offset: $offset, node:${node.getNamedName()}}';
  }
}
