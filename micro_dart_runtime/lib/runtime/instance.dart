class Instance {
  final Map<String, Object?> params = {};

  Instance? superInstance;

  @override
  String toString() {
    return "Instance($params)";
  }
}
