import 'package:micro_dart_runtime/flags.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class OpCallSuperAsync extends OpCallSuper {
  OpCallSuperAsync(MicroDartEngine engine) : super(engine);

  OpCallSuperAsync.make(
    ClassRef s,
    String name,
    bool isGetter,
    bool isSetter,
    bool isAsync,
    bool isMixinDeclaration,
    int positionalLength,
    List<String> namedList,
  ) : super.make(s, name, isGetter, isSetter, isAsync, isMixinDeclaration,
            positionalLength, namedList);

  @override
  int get opIndex => Ops.opCallSuperAsync;

  @override
  Future run(Scope scope) async {
    var args = scope.getFrame() as List<dynamic>;
    var instance = args.first as Instance;
    var ref = scope.engine.getCallRefBySuperType(
        instance.type, _super, _name, _isSetter, _isMixinDeclaration);

    if (scope.engine.declarations.containsKey(ref)) {
      //表示这是一个内部引用
      int pointer = scope.engine.declarations[ref]!;
      return scope.engine
          .callPointerAsync(scope, _name, true, _isAsync, pointer);
    } else {
      _callExternal(scope, ref!);
    }
  }

  @override
  String toString() =>
      'OpCallSuperAsync($_super,$_name,$_isGetter,$_isSetter,$_isMixinDeclaration,$_positionalLength,$_namedList)';
}

class OpCallSuper implements Op {
  OpCallSuper(MicroDartEngine engine)
      : _super = ClassRef.fromEngine(engine),
        _name = engine.readString(),
        _flags = engine.readInt32(),
        _positionalLength = engine.readInt32(),
        _namedList = engine.readStringList();

  final ClassRef _super;
  final String _name;
  final int _positionalLength;
  final List<String> _namedList;
  final int _flags;
  bool get _isGetter => Flags.isGetter(_flags);
  bool get _isSetter => Flags.isSetter(_flags);
  bool get _isAsync => Flags.isAsync(_flags);
  bool get _isMixinDeclaration => Flags.isMixinDeclaration(_flags);

  OpCallSuper.make(
    this._super,
    this._name,
    bool _isGetter,
    bool _isSetter,
    bool _isAsync,
    bool _isMixinDeclaration,
    this._positionalLength,
    this._namedList,
  ) : _flags = Flags.generateFlags(
            isGetter: _isGetter,
            isSetter: _isSetter,
            isAsync: _isAsync,
            isMixinDeclaration: _isMixinDeclaration);

  @override
  int get opLen =>
      Ops.lenBegin +
      ClassRef.byteLen +
      Ops.lenStr(_name) +
      Ops.lenI8 * 4 +
      Ops.lenI32 +
      Ops.lenStrlist(_namedList);

  int get opIndex => Ops.opCallSuper;

  @override
  List<int> bytes(ConstantPool pool) => [
        opIndex,
        ..._super.bytes(pool),
        ...Ops.str(_name, pool),
        ...Ops.i32b(_flags),
        ...Ops.i32b(_positionalLength),
        ...Ops.strlist(_namedList, pool)
      ];

  @override
  void run(Scope scope) {
    var args = scope.getFrame() as List<dynamic>;
    var instance = args.first as Instance;
    var ref = scope.engine.getCallRefBySuperType(
        instance.type, _super, _name, _isSetter, _isMixinDeclaration);

    if (ref == null) {
      throw Exception(
          "super type not found ${instance.type} $_super $_name $_isSetter");
    }

    if (scope.engine.declarations.containsKey(ref)) {
      //表示这是一个内部引用
      int pointer = scope.engine.declarations[ref]!;
      scope.engine.callPointer(scope, _name, true, pointer);
    } else {
      //表示这是一个外部调用
      _callExternal(scope, ref);
    }
  }

  void _callExternal(Scope scope, CallRef ref) {
    print("_callExternal $ref");
    //表示这是一个外部调用
    final List<dynamic> positionalArguments =
        List.filled(_positionalLength, null);
    for (int i = 0; i < _positionalLength; i++) {
      positionalArguments[i] = scope.popFrame();
    }
    final Map<Symbol, dynamic> namedArguments = {};
    for (var element in _namedList) {
      namedArguments[Symbol(element)] = scope.getParam(element);
    }

    dynamic target = scope.popFrame();

    late Function function;
    if (target is InstanceBridge) {
      function = target.superGetters[ref.name]!;
    } else {
      assert(false, "Not Implemented Yet!");
      // function = scope.engine.getExternalFunction(ref, [], [])!;
    }

    if (_isGetter) {
      scope.pushFrame(function(scope, target)());
      return;
    } else if (_isSetter) {
      function(scope, target)(positionalArguments.first);
      return;
    }

    if (operator1.contains(_name)) {
      scope.pushFrame(function(scope, target)());
      return;
    } else if (operator2.contains(_name)) {
      var other = positionalArguments.first;
      scope.pushFrame(function(scope, target)(other));
      return;
    } else if (operator3.contains(_name)) {
      var first = positionalArguments.first;
      var second = positionalArguments[1];
      scope.pushFrame(function(scope, target)(first, second));
      return;
    }

    scope.pushFrame(Function.apply(
        function(scope, target), positionalArguments, namedArguments));
  }

  @override
  String toString() =>
      'OpCallSuper($_super,$_name,$_isGetter,$_isSetter,$_isMixinDeclaration,$_positionalLength,$_namedList)';
}
