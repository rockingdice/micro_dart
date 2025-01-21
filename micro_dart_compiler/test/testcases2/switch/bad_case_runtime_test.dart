void main() {
  assert("IV" == caesarSays(4));
  assert(null == caesarSays(2));
  assert(null == archimedesSays(3.14));
}

caesarSays(n) {
  switch (n) {
    case 1:
      return "I";
    case 4:
      return "IV";
  }
  return null;
}

archimedesSays(n) {
  return null;
}
