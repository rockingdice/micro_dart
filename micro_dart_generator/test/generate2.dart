void main() {
  var s = "dart:core";

  var s2 = "package:flutter/src/painting/text_painter.dart";

  print(getLibraryNameFileName(s));
  print(getLibraryNameFileName(s2));
}

String getLibraryNameFileName(String identifier) {
  var s = identifier.split(":");
  var s2 = s[1].split("/");
  List<String> s3 = ["_"];

  s3.add(s[0]);
  s3.addAll(s2);

  var r = s3.join("_");
  if (!r.endsWith(".dart")) {
    r = "$r.dart";
  }
  return r;
}
