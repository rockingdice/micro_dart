#!/bin/sh

rm test1
rm test2

dart compile exe bin/test1.dart -o test1
dart compile exe bin/test2.dart -o test2

chmod +x test1
chmod +x test2

rm test1.jit.snapshot
rm test2.jit.snapshot
rm test1.dart.snapshot
rm test2.dart.snapshot


dart --deterministic --snapshot=test1.jit.snapshot --snapshot-kind=app-jit bin/test1.dart
dart --deterministic --snapshot=test2.jit.snapshot --snapshot-kind=app-jit bin/test2.dart
dart --deterministic --snapshot=test1.dart.snapshot --snapshot-kind=kernel bin/test1.dart
dart --deterministic --snapshot=test2.dart.snapshot --snapshot-kind=kernel bin/test2.dart

echo ""
echo "test1 kernel start"
echo ""
dart test1.dart.snapshot
echo ""
echo "test1 jit start"
echo ""
dart test1.jit.snapshot
echo ""
echo "test1 aot start"
echo ""
./test1
echo ""
echo "test2 kernel start"
echo ""
dart test2.dart.snapshot
echo ""
echo "test2 jit start"
echo ""
dart test2.jit.snapshot
echo ""
echo "test2 aot start"
echo ""
./test2