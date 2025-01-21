import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'example_global_mirrors_part1.dart' as l1;
import 'example_global_mirrors_part2.dart' as l2;

const Map<String, Function> globalGetterMirrors = {
  ...l1.globalGetterMirrors,
  ...l2.globalGetterMirrors,
};

const Map<String, Function> globalSetterMirrors = {
  ...l1.globalSetterMirrors,
  ...l2.globalSetterMirrors,
};

const Map<String, ClassMirror> classMirrors = {
  ...l1.classMirrors,
  ...l2.classMirrors,
};
const Map<Type, String> refTypeMirrors = {
  ...l1.refTypeMirrors,
  ...l2.refTypeMirrors,
};