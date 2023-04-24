import 'dart:io';

const String sdkLibrary =
    "/Users/lixin/Documents/flutter_macos_stable/bin/cache/dart-sdk/lib/";

void main() {
  var root = Directory(sdkLibrary);
  List<Uri> fileList = [];
  scanDartFile(root, fileList);

  print(fileList);
}

void scanDartFile(Directory root, List<Uri> fileList) {
  final files = root.listSync();

  files.forEach((element) {
    if (element is File && element.path.endsWith('.dart')) {
      fileList.add(Uri.parse(element.path));
    } else if (element is Directory) {
      scanDartFile(element, fileList);
    }
  });
}
