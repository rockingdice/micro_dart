import 'package:collection/collection.dart';

class ConstantPool {
  ConstantPool();

  final List<String> pool = [];
  final Map<int, int> _map = {};

  int addOrGet(String p) {
    final hash =
        const DeepCollectionEquality().hash(p) + p.runtimeType.hashCode;
    final existing = _map[hash];
    if (existing != null) return existing;
    pool.add(p);
    return _map[hash] = pool.length - 1;
  }
}
