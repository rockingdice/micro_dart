import 'package:dart_example_1/dart_example_1.dart' as dart_example_1;

void main(List<String> arguments) {
  var start = DateTime.now();
  dart_example_1.test1();
  var end = DateTime.now();
  var difference = end.difference(start).inMicroseconds;
  print("test1 use time: $difference ms");

  start = DateTime.now();
  dart_example_1.test2();
  end = DateTime.now();
  difference = end.difference(start).inMicroseconds;

  print("test2 use time: $difference ms");

  start = DateTime.now();
  dart_example_1.test3();
  end = DateTime.now();
  difference = end.difference(start).inMicroseconds;

  print("test3 use time: $difference ms");
}
