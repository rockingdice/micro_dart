import 'package:kernel/ast.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'context.dart';

//用于调用重定向,使调用重定向到到正确的位置
class OffsetTracker {
  OffsetTracker(this.context);

  //final Map<int, DeferredOrOffset> _deferredOffsets = {};
  final Map<int, CallPointerOffset> _callPointerOffsets = {};
  final Map<int, BreakOffset> _breakPointerOffsets = {};
  final Map<int, ParamOffset> _globalParamOffsets = {};
  final Map<int, ParamOffset> _objectParamOffsets = {};
  final MicroCompilerContext context;

  //void setOffset(int location, DeferredOrOffset offset) {
  //  _deferredOffsets[location] = offset;
  // }

  void setCallPointerOffset(
      int location, String key, bool isStatic, bool isAsync) {
    _callPointerOffsets[location] = CallPointerOffset(key, isStatic, isAsync);
  }

  void setBreakOffset(int location, BreakOffset key) {
    _breakPointerOffsets[location] = key;
  }

  void setGlobalParamOffset(int location, String name, String key) {
    _globalParamOffsets[location] = ParamOffset(key, name);
  }

  void setObjectParamOffset(int location, String name, String key) {
    _objectParamOffsets[location] = ParamOffset(key, name);
  }

  List<Op> apply() {
    var source = this.context.ops;

    _globalParamOffsets.forEach((index, value) {
      final offset = context.rumtimeDeclarationOpIndexes[value.key]!;
      final newOp = OpGetGlobalParam.make(value.name, offset);
      source[index] = newOp;
    });

    _objectParamOffsets.forEach((index, value) {
      final offset = context.rumtimeDeclarationOpIndexes[value.key]!;
      final newOp = OpGetObjectProperty.make(value.name, offset);
      source[index] = newOp;
    });

    _callPointerOffsets.forEach((index, value) {
      final offset = context.rumtimeDeclarationOpIndexes[value.key]!;
      final newOp = OpPushPointer.make(offset, value.isStatic, value.isAsync);
      source[index] = newOp;
    });

    _breakPointerOffsets.forEach((index, value) {
      int offset =
          context.labeledNamer.getParam(value.statement, "endOpOffset") as int;
      final newOp = OpJump.make(offset);
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
  final bool isAsync;

  const CallPointerOffset(this.key, this.isStatic, this.isAsync);
}

class BreakOffset {
  final LabeledStatement statement;
  const BreakOffset(this.statement);
}

class ParamOffset {
  final String name;
  final String key;

  const ParamOffset(this.name, this.key);
}
