part of '../cli_plugin1.dart';

abstract class GetInterface {
  int run(List<int> list, int Function() preRun);
  double get pi;

  void getTest() {
    print("interface get test");
  }
}

class _GetImpl implements GetInterface {
  @override
  int run(List<int> list, int Function() preRun) {
    var mmax = math.max;
    var preRun2 = preRun;

    int x1, x2;
    x1 = 1;
    x2 = 3;
    list[0] = x1;
    list[1] = x2;
    return mmax(preRun2(), list[1]);
  }

  @override
  double get pi => math.pi;

  @override
  void getTest() {
    print("impl get test");
  }
}

final get = _GetImpl();

abstract class BaseController {}

extension ExtensionBaseController on BaseController {
  int testExtension() {
    print("testExtension");
    return 17;
  }
}

mixin MixinBaseController on BaseController {
  void testMixin() {
    var mrun = get.run;
    int result = mrun([6, 7], testExtension);
    print("testMixin: $result");
  }
}

class BaseControllerImpl extends BaseController with MixinBaseController {
  int a;
  int b;

  BaseControllerImpl(this.a, this.b);
  BaseControllerImpl.fromAB(this.a, this.b);

  factory BaseControllerImpl.testFactory(int a, int b) {
    return BaseControllerImpl(a, b);
  }

  void baseTest() {
    print("baseTest $a $b");
    testMixin();
  }

  void testFor() {
    for (int i = 0; i < 10; i++) {
      print("testFor: $i");
    }
  }
}
