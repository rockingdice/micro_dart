String main() {
  bool isOk1 = isOk();
  bool isOK2 = isOk1 ? false : true;
  final a = [
    if (isOk1) ...[0, 1, 2, 3],
    if (isOK2) ...[3, 2, 1, 0]
  ];
  var b = a.join();
  print(b);
  return b;
}

bool isOk() {
  return true;
}
