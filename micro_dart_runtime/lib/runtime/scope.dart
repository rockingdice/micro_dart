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
  //父节点
  Scope? parent;
  //是否有返回
  bool hasReturn = false;

  /// 帧集合
  final List<Object?> frames = [];

  final List<int> catchStack = [];

  dynamic returnValue;

  Scope(this.engine, this.name,
      {this.deep = 0, this.parent, int maxScopeDeep = -1}) {
    //这里设置栈的深度最深为20
    if (maxScopeDeep > 0 && deep > maxScopeDeep) {
      throw Exception("scope too deep > $maxScopeDeep");
    }
  }

  Scope createFromParent(String name, int maxScopeDeep) {
    return Scope(engine, name,
        parent: this, deep: (deep + 1), maxScopeDeep: maxScopeDeep);
  }

  /// 参数集合
  final Map<String, Object?> params = <String, Object?>{};

  /// 获取参数
  Object? getParam(String key) {
    if (params.containsKey(key)) {
      return params[key];
    }
    return parent?.getParam(key);
  }

  /// 设置参数
  void setScopeParam(String key, Object? value) {
    params[key] = value;
  }

  Object? getScopeParam(String key) {
    return params[key];
  }

  Object? popScopeParam(String key) {
    return params.remove(key);
  }

  void setExistParam(String key, Object? value) {
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
  void pushFrame(Object? object) {
    frames.add(object);
  }

  Object? popFrame({int posation = -1}) {
    if (posation == -1) {
      return frames.removeLast();
    }
    return frames.removeAt(posation);
  }

  void insertFrame(int index, Object? element) {
    frames.insert(index, element);
  }

  List<Object?> popFrameList(int length) {
    int start = frames.length - length - 1;
    int end = frames.length - 1;
    var list = frames.sublist(start, end);
    frames.removeRange(start, end);
    return list;
  }

  void pushFrameList(List<Object> list) {
    frames.addAll(list);
  }

  Object? getFrame({int posation = -1}) {
    if (posation == -1) {
      return frames.last;
    }
    return frames[posation];
  }

  Iterable<Object?> take(int count) {
    return frames.take(count);
  }

  Scope? pop() {
    //parent?.removeChild(this);
    frames.clear();
    params.clear();
    var parentNode = parent;
    parent = null;
    return parentNode;
  }

  void popAll() {
    frames.clear();
    params.clear();
    //childs.clear();
    parent?.popAll();
    parent = null;
    opPointer = -1;
  }

  int opPointer = -1;
  int oldPointer = -1;

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
      pop();
    } catch (exception, _) {
      rethrow;
    }
  }

  @override
  String toString() {
    return "Scope($params,$frames)";
  }
}
