int main() {
  int j = 0;
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
