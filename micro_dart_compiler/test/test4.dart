import 'package:micro_dart_runtime/micro_dart_runtime.dart';

void main() async {
  var ref1 = ClassRef("a", "b");
  var ref2 = ClassRef("a", "b");
  Map<ClassRef, int> m = {ref1: 2};

  print(ref1 == ref2);
  print(ref1.hashCode == ref2.hashCode);
  print(m[ref2]);
}
