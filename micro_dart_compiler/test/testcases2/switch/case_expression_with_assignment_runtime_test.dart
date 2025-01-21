const ERROR_A = 0;
const ERROR_B = 1;

errorToString(error) {
  switch (error) {
    case ERROR_A:
      return "ERROR_A";

    case ERROR_B:
      return "ERROR_B";
    default:
      return "Unknown error";
  }
}

main() {
  assert(errorToString(ERROR_A), "ERROR_A");
  assert(errorToString(ERROR_B), "ERROR_B");
  assert(errorToString(55), "Unknown error");
}
