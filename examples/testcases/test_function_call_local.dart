int g1 = 1;

int main() {
  int a = 2;
  int add(int i, int j) {
    return i + j + a + g1;
  }

  return add(3, 4);
}
