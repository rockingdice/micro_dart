import '__dart_core.dart.g.dart' as l1;
import '__dart_typed_data.dart.g.dart' as l2;
import '__dart_async.dart.g.dart' as l3;
import '__dart_collection.dart.g.dart' as l4;
import '__dart_convert.dart.g.dart' as l5;
import '__dart_developer.dart.g.dart' as l6;
import '__dart_ffi.dart.g.dart' as l7;
import '__dart_isolate.dart.g.dart' as l8;
import '__dart_math.dart.g.dart' as l9;
import '__dart_io.dart.g.dart' as l10;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'dart:typed_data';
m.MicroDartEngine createMicroDartEngine(ByteData data) {
var engine = m.MicroDartEngine.fromData(data);
engine.addExternalFunctions(l1.getLibrary(engine));
engine.addExternalFunctions(l2.getLibrary(engine));
engine.addExternalFunctions(l3.getLibrary(engine));
engine.addExternalFunctions(l4.getLibrary(engine));
engine.addExternalFunctions(l5.getLibrary(engine));
engine.addExternalFunctions(l6.getLibrary(engine));
engine.addExternalFunctions(l7.getLibrary(engine));
engine.addExternalFunctions(l8.getLibrary(engine));
engine.addExternalFunctions(l9.getLibrary(engine));
engine.addExternalFunctions(l10.getLibrary(engine));

return engine;
}

