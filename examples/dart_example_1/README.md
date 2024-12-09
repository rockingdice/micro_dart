dart --deterministic --snapshot=test1.jit.snapshot --snapshot-kind=app-jit bin/test1.dart
dart --deterministic --snapshot=test2.jit.snapshot --snapshot-kind=app-jit bin/test2.dart
dart --deterministic --snapshot=test1.dart.snapshot --snapshot-kind=kernel bin/test1.dart
dart --deterministic --snapshot=test2.dart.snapshot --snapshot-kind=kernel bin/test2.dart
dart compile exe bin/test1.dart -o test1
dart compile exe bin/test2.dart -o test2