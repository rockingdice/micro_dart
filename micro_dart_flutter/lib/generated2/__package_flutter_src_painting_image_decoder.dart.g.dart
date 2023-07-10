import 'package:flutter/src/painting/image_decoder.dart';
import 'dart:typed_data';
import 'dart:ui' show Codec,FrameInfo,Image;
import 'package:flutter/src/painting/binding.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/image_decoder.dart@@decodeImageFromList': (m.Scope scope)=>decodeImageFromList,

};
}