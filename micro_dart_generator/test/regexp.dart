void main() {
  var regexp = RegExp(r'dart:+|package:flutter/+');

  print(regexp.hasMatch("dart:core"));
  print(regexp.hasMatch("dart:typed_data"));
  print(regexp.hasMatch("dart:collection"));
  print(regexp.hasMatch("package:flutter/animation.dart"));
  print(regexp.hasMatch(
      "package:flutter_staggered_grid_view/src/rendering/uniform_track.dart"));
}
