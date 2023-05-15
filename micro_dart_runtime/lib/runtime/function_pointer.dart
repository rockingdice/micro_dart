class FunctionPointer {
  final Object? target;
  final bool isStatic;
  final int offset;

  const FunctionPointer(this.target, this.isStatic, this.offset);

  @override
  String toString() {
    return "FunctionPointer($target, $isStatic, $offset)";
  }
}
