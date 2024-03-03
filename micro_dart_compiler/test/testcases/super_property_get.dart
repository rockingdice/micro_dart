abstract class Interface {
  int get getter {
    print("getter4");
    return 41;
  }
}

mixin Mixin on Interface {
  int get getter {
    print("getter1");
    return super.getter;
  }
}

mixin Mixin2 on Interface {
  int get getter {
    print("getter2");
    return super.getter;
  }
}

class Super extends Interface {
  int get getter {
    print("getter3");
    return 42;
  }
}

class Class extends Super with Mixin, Mixin2 {}

int main() {
  int a = Class().getter;
  print(a);
  return a;
}
