int main() {
  var t = T.a;
  int j = 0;
  switch (t) {
    case T.a:
    case T.b:
      print("continue");
      break;
    case T.c:
      // TODO: Handle this case.
      break;
    case T.d:
      // TODO: Handle this case.
      break;
  }

  for (int i = 0; i < 5; i++) {
    switch (i) {
      case 0:
        print("continue");
        continue;
      case 1:
      case 2:
        j += i;
        break;
      case 3:
        j += i;
        break;
      default:
        j++;
        print(j);
        return j;
    }
  }
  print(j);
  return j;
}

enum T { a, b, c, d }
