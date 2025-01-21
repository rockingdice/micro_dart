import 'package:micro_dart_runtime/flags.dart';

void main() {
  int flags = Flags.generateFlags(isExternal: true);

  print(flags);
}
