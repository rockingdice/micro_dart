import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';

void main() {
  print(DartFormatter().format(cb.Method(
    (p0) {
      p0.name = "a";
      p0.optionalParameters.add(cb.Parameter(
        (p0) {
          p0.named = true;
          p0.name = "t1";
          p0.required = true;
          p0.type = cb.refer("String");
        },
      ));
      p0.body = cb.Code("");
    },
  ).accept(cb.DartEmitter()).toString()));
}

void flist(List<int> list) {
  print(list.join());
}

void a(A a) {
  a.test();
}

class A<T> {
  T t;
  A(this.t);

  void test() {
    print(t);
  }
}
