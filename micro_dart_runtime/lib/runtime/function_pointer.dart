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
}
