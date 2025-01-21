main() {
  assert(test(5) == 'a');
  assert(test(10) == 'a through b');
  assert(test(7) == 'b');
}

String test(int i) {
  switch (i) {
    a:
    case 5:
      {
        if (i == 10) {
          return 'a through b';
        }
        if (i == 0) {
          return 'a';
        }
        i -= 1;
        continue a; // backward jump to non-default self
      }

    b:
    default:
      {
        if (i == 10) {
          continue a; // backward jump to non-default
        }
        if (i == 0) {
          return 'b';
        }
        i -= 1;
        continue b; // backward jump to default
      }
  }
}
