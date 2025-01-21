class Mixin {
  get getter => 42;
}

class Superclass {}

class Subclass extends Superclass with Mixin {
  method() => super.getter;
}

void main() {
  assert(42 == new Subclass().method());
}
