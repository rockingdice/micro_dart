int main() {
  var r = testInt64List().join();

  print(r);
  print(r.hashCode);
  return r.hashCode;
}

List<dynamic> testInt64List() {
  var array = List<dynamic>.filled(10, null);
  testInt64ListImpl(array);
  return array;
}

testInt64ListImpl(array) {
  for (int i = 0; i < 10; ++i) {}
  int sum = 0;
  for (int i = 0; i < 10; ++i) {
    array[i] = -0x80000000000000 + i;
  }
}
