micro_dart_compiler: 编译器
micro_dart_core:核心处理库
micro_dart_flutter:Flutter解释器
micro_dart_generator:代理生成器
micro_dart_runtime:Dart解释器


dart --deterministic --snapshot=test1.dart.snapshot --snapshot-kind=kernel bin/test1.dart
dart --deterministic --snapshot=test2.dart.snapshot --snapshot-kind=kernel bin/test2.dart



dart compile exe bin/test1.dart test1