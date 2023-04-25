import 'package:micro_dart_runtime/micro_dart_runtime.dart';

//运行时
class MicroRuntime {
  //解释器
  final MicroDartInterpreter interpreter;
  //全局作用域
  final Scope? _rootScope;

  MicroRuntime(this.interpreter, {Scope? rootScope}) : _rootScope = rootScope;

  /// 作用域集合
  final _scopes = <Scope>[];

  /// 操作数指针

  int opPointer = -1;

  final callStack = <int>[0];

  final catchStack = <List<int>>[];

  int get scopeIndex {
    return _scopes.length - 1;
  }

  Scope get scope {
    return _scopes.last;
  }

  Scope get parentScope {
    return _scopes[_scopes.length - 2];
  }

  bool get isScopeEmpty {
    return _scopes.isEmpty;
  }

  int addScope(String name) {
    int scopePosation = _scopes.length;
    _scopes.add(Scope(name));
    return scopePosation;
  }

  Scope removeScope() {
    return _scopes.removeLast();
  }

  /// 当前作用域帧指针
  int get framePointer {
    if (_scopes.isEmpty) {
      return -1;
    }
    return _scopes.last.framePointer;
  }

  /// 获取临时参数
  Object? getParam(String key) {
    int i = _scopes.length - 1;
    while (i >= 0) {
      var obj = _scopes[i].getParam(key);
      if (obj != null) {
        return obj;
      }
      i--;
    }
    return null;
  }

  Object? getGlobalParam(String key) {
    return _rootScope?.getParam(key);
  }

  void setGlobalParam(String key, Object? value) {
    _rootScope?.setParam(key, value);
  }

  bool hasGlobalParam(String key) {
    return _rootScope?.hasParam(key) ?? false;
  }

  Object? getParamFromScope(String key, {int location = -1}) {
    if (location == -1) {
      location = _scopes.length - 1;
    }
    return _scopes[location].getParam(key);
  }

  /// 设置临时参数
  void setParam(String key, Object? value) {
    int i = _scopes.length - 1;
    while (i >= 0) {
      if (_scopes[i].hasParam(key)) {
        _scopes[i].setParam(key, value);
        return;
      }
      i--;
    }
    scope.setParam(key, value);
  }

  //获取参数所在的作用域位置
  int getParamScopeLocation(String key) {
    int i = _scopes.length - 1;
    while (i >= 0) {
      if (_scopes[i].hasParam(key)) {
        return i;
      }
      i--;
    }
    return -1;
  }

  void setScopeParam(String key, Object? value, {int location = -1}) {
    if (location == -1) {
      location = _scopes.length - 1;
    }
    _scopes[location].setParam(key, value);
  }

  /// 获取临时参数
  Object? getScopeParam(String key, {int location = -1}) {
    if (location == -1) {
      location = _scopes.length - 1;
    }
    return _scopes[location].getParam(key);
  }

  //作用域中是否存在参数,-1表示当前作用域
  bool scopeHasParam(String key, {int location = -1}) {
    if (location == -1) {
      location = _scopes.length - 1;
    }

    return _scopes[location].hasParam(key);
  }

  dynamic callStaticFunction(String importUri, String functionName,
      List posational, Map<String, dynamic> named,
      {bool debug = false}) {
    try {
      //清理
      _scopes.clear();
      callStack.clear();
      catchStack.clear();

      //获取当前操作数指针
      opPointer = interpreter
          .declarations['$importUri@:procedure@$functionName:static']!;

      addScope("<execute>");

      //设置初始参数
      for (int i = posational.length - 1; i >= 0; i--) {
        scope.pushFrame(posational[i]);
      }
      named.forEach((key, value) {
        scope.setParam(key, value);
      });

      callStack.add(-1);
      catchStack.add([]);
      //执行方法
      while (true) {
        final oldPointer = opPointer;
        final op = interpreter.ops[opPointer++];
        op.run(this);
        if (debug) {
          print(
              "$oldPointer start run: ${op.toString()} scope:${scope.toString()}");
        }
      }
    } on ProgramExit catch (_) {
      if (scope.frames.isEmpty) {
        return null;
      }
      return scope.frames.last;
    } on RuntimeException catch (_) {
      rethrow;
    } on WrappedException catch (e) {
      throw e.exception;
    } catch (e, stk) {
      throw RuntimeException(this, e, stk);
    }
  }
}
