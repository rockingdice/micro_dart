// Copyright (c) 2015, the Dart Team. All rights reserved. Use of this
// source code is governed by a BSD-style license that can be found in
// the LICENSE file.

// File used to test reflectable code generation.
// Uses `staticMembers` to access a static const variable.

library test_reflectable.test.static_members_test;

import 'package:micro_dart_generator2/reflectable.dart';
import 'package:test/test.dart';

class MyReflectable extends Reflectable {
  const MyReflectable() : super(staticInvokeCapability, declarationsCapability);
}

const myReflectable = MyReflectable();

@myReflectable
class A {
  static const List<String> foo = ['apple'];
}

void main() {
  var classMirror = myReflectable.reflectType(A) as ClassMirror;
  test('Static members', () {
    expect(classMirror.staticMembers.length, 1);
    expect(classMirror.staticMembers['foo'], isNotNull);
  });
}
