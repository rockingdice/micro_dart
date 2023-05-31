import 'dart:core';
import 'dart:typed_data';

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

import 'core.g.dart' as l0;
import 'async.g.dart' as l1;

m.MicroDartEngine createMicroDartEngine(ByteData data) {
  var engine = m.MicroDartEngine.fromData(data);
  engine.addExternalFunctions(l0.getLibrary(engine));
  engine.addExternalFunctions(l1.getLibrary(engine));
  return engine;
}
