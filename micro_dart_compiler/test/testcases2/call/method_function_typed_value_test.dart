int f(int i) => 2 * i;

typedef int IntToInt(int x);

main() {
  assert(f.call(1) == 2);
  assert(f.call == f);
  IntToInt f2 = f;
  assert(f2.call(1) == 2);
  assert(f2.call == f);

  Function f3 = f;
  assert(f3.call(1) == 2);
  assert(f3.call == f);
  dynamic d = f;
  assert(d.call(1) == 2);
  assert(d.call == f);
}
