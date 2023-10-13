int main() {
  int i = 0;
  while (i < 10) {
    i++;
    if (i == 6) {
      break;
    }
  }
  print(i);
  return i;
}
