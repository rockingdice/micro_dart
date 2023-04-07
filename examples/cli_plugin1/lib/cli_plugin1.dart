library cli_plugin1;

import 'dart:math' as math;
import 'package:cli_example/cli_example.dart';

part 'src/plugin1_part1.dart';
part 'src/plugin1_part2.dart';

void enter() {
  calculate();
  Test().calculate5();
  var test = Test();
  int a = test.calculate6();
  var controller = BaseControllerImpl.testFactory(a, 1);
  controller.baseTest();
}
