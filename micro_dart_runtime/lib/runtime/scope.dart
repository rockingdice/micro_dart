/// 作用域
class Scope {
  final String name;
  Scope(this.name);

  /// 帧集合
  List<Object?> frames = [];

  /// 参数集合
  final Map<String, Object?> _params = <String, Object?>{};

  /// 帧指针
  int framePointer = 0;

  @override
  String toString() {
    return "Scope($_params,$frames)";
  }

  /// 获取参数
  Object? getParam(String key) {
    return _params[key];
  }

  /// 设置参数
  void setParam(String key, Object? value) {
    _params[key] = value;
  }

  /// 判断是否有参数
  bool hasParam(String name) {
    return _params.containsKey(name);
  }

  Object? operator [](int index) {
    return frames[index];
  }

  void operator []=(int index, Object? value) {
    if (index == frames.length) {
      frames.add(value);
    } else {
      frames[index] = value;
    }
  }

  //插入帧
  void pushFrame(Object? object) {
    frames.add(object);
    framePointer++;
  }

  Object? popFrame() {
    framePointer--;
    return frames.removeLast();
  }

  Iterable<Object?> take(int count) {
    return frames.take(count);
  }

  void clean() {
    frames.clear();
    _params.clear();
  }
}
