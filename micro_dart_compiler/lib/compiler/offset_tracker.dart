import 'package:kernel/ast.dart';
import 'package:micro_dart_compiler/compiler/ast/ast.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'context.dart';

//用于调用重定向,使调用重定向到到正确的位置
class OffsetTracker {
  OffsetTracker(this.context);

  final Map<int, DeferredOrOffset> _deferredOffsets = {};
  final Map<int, CallPointerOffset> _callPointerOffsets = {};
  final MicroCompilerContext context;

  void setOffset(int location, DeferredOrOffset offset) {
    _deferredOffsets[location] = offset;
  }

  void setCallPointerOffset(int location, String key, bool isStatic) {
    _callPointerOffsets[location] = CallPointerOffset(key, isStatic);
  }

  List<Op> apply() {
    var source = this.context.ops;
    _deferredOffsets.forEach((pos, offset) {
      final op = source[pos];
      if (op is Call) {
        final resolvedOffset = context.rumtimeDeclarationOpIndexes[offset.key];
        if (resolvedOffset == null) {
          //表示这是个外部的调用

          final newOp = CallExternal.make(
              className: offset.className,
              key: offset.key,
              isGetter: offset.isGetter,
              isSetter: offset.isSetter,
              isStatic: offset.isStatic,
              libraryUri: offset.libraryUri,
              name: offset.name,
              kind: offset.kind.index,
              namedList: offset.namedList,
              posationalLength: offset.posationalLengh);
          source[pos] = newOp;
          return;
        }
        final newOp = Call.make(resolvedOffset);
        source[pos] = newOp;
      }
    });

    _callPointerOffsets.forEach((index, value) {
      final offset = context.rumtimeDeclarationOpIndexes[value.key]!;
      final newOp = PushPointer.make(offset, value.isStatic);
      source[index] = newOp;
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

class CallPointerOffset {
  final String key;
  final bool isStatic;

  const CallPointerOffset(this.key, this.isStatic);
}

abstract class DeferredOrOffset {
  DeferredOrOffsetKind get kind;
  bool get isGetter;
  bool get isSetter;
  bool get isStatic;
  String get libraryUri;
  String get className;
  String get name;
  String get key;

  int get posationalLengh;
  List<String> get namedList;

  factory DeferredOrOffset.fromMember(Member node,
      {DeferredOrOffsetKind kind = DeferredOrOffsetKind.Procedure,
      int posationalLengh = 0,
      List<String> namedList = const []}) {
    return _DeferredOrOffsetImpl(
        kind,
        node.getNamedName(),
        posationalLengh,
        namedList,
        node.stringClassName ?? "",
        node.stringLibraryUri,
        node.name.text,
        node.isGetter,
        node.isSetter,
        node.isStatic);
  }

  factory DeferredOrOffset(String key,
      {DeferredOrOffsetKind kind = DeferredOrOffsetKind.Procedure,
      int posationalLengh = 0,
      List<String> namedList = const [],
      required String className,
      required String libraryUri,
      required String name,
      bool isGetter = false,
      bool isSetter = false,
      bool isStatic = false}) {
    return _DeferredOrOffsetImpl(kind, key, posationalLengh, namedList,
        className, libraryUri, name, isGetter, isSetter, isStatic);
  }

  @override
  String toString() {
    return 'DeferredOrOffset{kind: $kind, key:$key}';
  }
}

class _DeferredOrOffsetImpl implements DeferredOrOffset {
  final DeferredOrOffsetKind kind;
  final String className;
  final String key;
  final String libraryUri;
  final String name;
  final int posationalLengh;
  final List<String> namedList;

  final bool isGetter;
  final bool isSetter;
  final bool isStatic;

  _DeferredOrOffsetImpl(
      this.kind,
      this.key,
      this.posationalLengh,
      this.namedList,
      this.className,
      this.libraryUri,
      this.name,
      this.isGetter,
      this.isSetter,
      this.isStatic);
}
