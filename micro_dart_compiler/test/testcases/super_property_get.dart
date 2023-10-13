abstract class Interface {
  int get getter => 41;
}

mixin Mixin on Interface {
  int get getter {
    print("getter");
    return super.getter;
  }
}

class Super extends Interface {
  int get getter => 42;
}

class Class extends Super with Mixin {}

int main() {
  int a = Class().getter;
  print(a);
  return a;
}
