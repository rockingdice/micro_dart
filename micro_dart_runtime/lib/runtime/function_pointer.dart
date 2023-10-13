class FunctionPointer {
  final dynamic target;
  final bool isStatic;
  final bool isAsync;
  final int offset;

  const FunctionPointer(this.target, this.isStatic, this.isAsync, this.offset);

  @override
  String toString() {
    return "FunctionPointer($target, $isStatic,$isAsync, $offset)";
  }

  @override
  int get hashCode => Object.hash(target, isStatic, isAsync, offset);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is FunctionPointer) {
      return hashCode == other.hashCode;
    }
    return false;
  }
}
