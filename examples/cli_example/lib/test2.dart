import 'dart:math';

int calculate3() {
  return 10 * 11;
}

int calculate4() {
  return 10 * 11;
}

class Test {
  int calculate5() {
    return 10 * 11;
  }

  int calculate6() {
    return Random().nextInt(10);
  }

  static Test create() {
    return Test();
  }
}
