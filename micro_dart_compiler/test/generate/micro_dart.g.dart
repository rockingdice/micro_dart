import 'l1.g.dart' as l1;
import 'l2.g.dart' as l2;
import 'l3.g.dart' as l3;
import 'l4.g.dart' as l4;
import 'l5.g.dart' as l5;
import 'l6.g.dart' as l6;
import 'l7.g.dart' as l7;
import 'l8.g.dart' as l8;
import 'l9.g.dart' as l9;
import 'l10.g.dart' as l10;
import 'l11.g.dart' as l11;
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
engine.addExternalFunctions(l11.getLibrary(engine));

return engine;
}

