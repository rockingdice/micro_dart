int main() {
  int j = 0;
  for (int i = 0; i < 5; i++) {
    s:
    switch (i) {
      case 0:
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
        break s;
    }
  }
  print(j);
  return j;
}
