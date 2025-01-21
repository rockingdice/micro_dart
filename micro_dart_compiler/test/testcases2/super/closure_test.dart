class Super {
  var superX = "super";
  get x => superX;
}

class Sub extends Super {
  var subX = "sub";
  get x => subX;

  buildClosures() => [() => x, () => this.x, () => super.x];
}

main() {
  var closures = new Sub().buildClosures();
  assert(3 == closures.length);
  assert("sub" == closures[0]());
  assert("sub" == closures[1]());
  assert("super" == closures[2]());
}
