void main() {
  doSwitch(0, [0, 2]);
  doSwitch(1, [1]);
  doSwitch(2, [2]);
  doSwitch(3, [3, 1]);
}

void doSwitch(int target, List expect) {
  List list = [];
  switch (target) {
    case 0:
      list.add(0);
      continue case2;
    case1:
    case 1:
      list.add(1);
      break;
    case2:
    case 2:
      list.add(2);
      break;
    case 3:
      list.add(3);
      continue case1;
  }
  listEquals(expect, list);
}

void listEquals(List a, List b) {
  assert(a.length == b.length);
  for (int i = 0; i < a.length; i++) {
    assert(a[i] == b[i]);
  }
}
