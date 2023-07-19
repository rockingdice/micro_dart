import 'dart:async';

import 'engine.dart';
import 'exception.dart';

/// 作用域
class Scope {
  //名称
  final String name;
  //引擎
  final MicroDartEngine engine;
  //scope栈的深度
  final int deep;
  //是否有参数
  final bool hasArgs;
  final bool isAsync;
  //父节点
  Scope? parent;
  //是否有返回
  bool hasReturn = false;

  /// 帧集合
  final List<dynamic> frames = [];

  final List<Scope> childs = [];

  /// 参数集合
  final Map<String, dynamic> params = <String, dynamic>{};

  dynamic returnValue;

  Scope(this.engine, this.name, this.hasArgs, this.isAsync,
      {this.deep = 0, this.parent, int maxScopeDeep = -1}) {
    //这里设置栈的深度最深为20
    if (maxScopeDeep > 0 && deep > maxScopeDeep) {
      throw Exception("scope too deep > $maxScopeDeep");
    }
    parent?.childs.add(this);
  }

  Scope createFromParent(
      String name, bool hasArgs, bool isAsync, int maxScopeDeep) {
    return Scope(engine, name, hasArgs, isAsync,
        parent: this, deep: (deep + 1), maxScopeDeep: maxScopeDeep);
  }

  /// 获取参数
  dynamic getParam(String key) {
    if (params.containsKey(key)) {
      return params[key];
    }
    return parent?.getParam(key);
  }

  /// 设置参数
  void setScopeParam(String key, dynamic value) {
    params[key] = value;
  }

  dynamic getScopeParam(String key) {
    return params[key];
  }

  dynamic popScopeParam(String key) {
    return params.remove(key);
  }

  void setExistParam(String key, dynamic value) {
    if (params.containsKey(key)) {
      params[key] = value;
    }
    parent?.setExistParam(key, value);
  }

  /// 判断是否有参数
  bool hasParam(String name) {
    return params.containsKey(name);
  }

  //插入帧
  void pushFrame(dynamic object) {
    frames.add(object);
  }

  dynamic popFrame({int posation = -1}) {
    if (posation == -1) {
      return frames.removeLast();
    }
    return frames.removeAt(posation);
  }

  void insertFrame(int index, dynamic element) {
    frames.insert(index, element);
  }

  List<dynamic> popFrameList(int length) {
    int start = frames.length - length;
    int end = frames.length;

    var list = frames.sublist(start, end);
    frames.removeRange(start, end);

    return list;
  }

  void pushFrameList(List<dynamic> list) {
    frames.addAll(list);
  }

  dynamic getFrame({int posation = -1}) {
    if (posation == -1) {
      return frames.last;
    }
    return frames[posation];
  }

  Iterable<dynamic> take(int count) {
    return frames.take(count);
  }

  bool markNeedRelease = false;

  bool released = false;

//如果是异步,可能会阻止清理
  void tryRelease() {
    markNeedRelease = true;
    if (childs.isEmpty) {
      parent?.childs.remove(this);
      parent?.checkRelease();
      _clean();
      return;
    }
  }

  void checkRelease() {
    if (markNeedRelease && !released) {
      tryRelease();
    }
  }

  void _clean() {
    frames.clear();
    //params.clear();
    parent = null;
    released = true;
  }

  int opPointer = -1;
  int oldPointer = -1;

  Future callAsync(int pointer) async {
    opPointer = pointer;
    try {
      while (true) {
        oldPointer = opPointer;
        final op = engine.ops[opPointer++];
        if (engine.debug) {
          print(
              "$deep:$oldPointer <$name> start:${op.toString()}:${toString()}");
          print("----------------");
        }
        var r = op.run(this);
        if (r is Future) {
          await r;
        }
      }
    } on ProgramExit catch (_) {
      tryRelease();
    } catch (exception, _) {
      print(
          "$deep:$oldPointer <$name> start:${engine.ops[oldPointer].toString()}:${toString()}");
      print("----------------");
      rethrow;
    }
  }

  void call(int pointer) {
    opPointer = pointer;
    try {
      while (true) {
        oldPointer = opPointer;
        final op = engine.ops[opPointer++];
        if (engine.debug) {
          print(
              "$deep:$oldPointer <$name> start:${op.toString()}:${toString()}");
          print("----------------");
        }
        op.run(this);
      }
    } on ProgramExit catch (_) {
      tryRelease();
    } catch (exception, _) {
      print("--------error start--------");
      print(
          "$deep:$oldPointer <$name> start:${engine.ops[oldPointer].toString()}:${toString()}");
      print("--------error end  --------");
      rethrow;
    }
  }

  @override
  String toString() {
    return "Scope($name,$params,$frames)";
  }

  String dump() {
    return "Scope(released:$released,name:$name,params:$params,frames:$frames,parent:${parent?.dump()})";
  }
}
