Future<String> main() async {
  var t = () async {
    return "test";
  }();

  return await t;
}
