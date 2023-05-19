int main() {
  int i = 0;
  for (int j = 0; i < 5; i++) {
    if (j > 3) {
      i++;
    } else {
      i += 2;
    }
  }
  return i;
}
