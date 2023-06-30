Function r() {
  return () {
    return 2;
  };
}

int main() {
  return r()();
}
