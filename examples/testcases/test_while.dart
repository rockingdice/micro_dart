int main() {
  int i = 0;
  while (i < 10) {
    i++;
    if (i == 6) {
      continue;
    }
  }
  print(i);
  return i;
}
