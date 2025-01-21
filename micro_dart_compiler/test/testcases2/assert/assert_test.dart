// int testTrue() {
//   int i = 0;
//   try {
//     assert(true);
//   } on AssertionError {
//     i = 1;
//   }
//   return i;
// }

// int testFalse() {
//   int i = 0;
//   try {
//     assert(false);
//   } on AssertionError {
//     i = 1;
//   }
//   return i;
// }

// dynamic unknown(dynamic a) {
//   return a ? true : false;
// }

// int testBoolean(bool value) {
//   int i = 0;
//   try {
//     assert(value);
//   } on AssertionError {
//     i = 1;
//   }
//   return i;
// }

// int testDynamic(dynamic value) {
//   int i = 0;
//   try {
//     assert(value);
//   } on AssertionError {
//     i = 1;
//   }
//   return i;
// }

// int testImmediatelyInvokedFunctionExpression(bool value) {
//   int i = 0;
//   try {
//     assert((() => value)());
//   } on AssertionError {
//     i = 1;
//   }
//   return i;
// }

AssertionError? testMessage(value, message) {
  try {
    assert(value, message);
  } on AssertionError catch (error) {
    return error;
  }
  return null;
}

bool main() {
  // var r1 = 0 == testTrue();
  // print("r1: $r1");
  // var r2 = 0 == testBoolean(true);
  // print("r2: $r2");
  // var r3 = 0 == testDynamic(unknown(true));
  // print("r3: $r3");
  // var r4 = 0 == testImmediatelyInvokedFunctionExpression(true);
  // print("r4: $r4");
  // var r5 = 1 == testFalse();
  // print("r5: $r5");
  // var r6 = 1 == testBoolean(false);
  // print("r6: $r6");
  // var r7 = 1 == testDynamic(unknown(false));
  // print("r7: $r7");
  // var r8 = 1 == testImmediatelyInvokedFunctionExpression(false);
  // print("r8: $r8");
  var r9 = 1234 == testMessage(false, 1234)?.message;
  print("r9: $r9");
  // var r10 = 'hi' == testMessage(false, 'hi')?.message;
  // print("r10: $r10");
  // var r = r1 && r2 && r3 && r4 && r5 && r6 && r7 && r8 && r9 && r10;
  // print("r10: $r10");
  // return r;
  return false;
}
