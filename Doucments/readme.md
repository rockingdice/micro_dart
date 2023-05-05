micro_dart_compiler: 编译器
micro_dart_core:核心处理库
micro_dart_flutter:Flutter解释器
micro_dart_generator:代理生成器
micro_dart_runtime:Dart解释器


编译逻辑

1.首先通过front_end解析代码成AST
2.将AST编译成字节码




编译细节：


声明列表


参数 libraryUri@className:field@fieldName

静态参数


函数 libraryUri@className:procedure@procedureName@get
静态函数
本类函数
扩展函数

InstanceImpl(
    
    test:///main.dart,C,InstanceImpl(test:///main.dart,B,InstanceImpl(test:///main.dart,A,InstanceBridge(dart:core,Object),{a: 1}),{c: 2}),{e: 3, b: 1, d: 2, f: 3})

