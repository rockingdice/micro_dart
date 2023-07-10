import 'package:flutter/src/services/undo_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/undo_manager.dart@UndoManager@#as': (m.Scope scope, target)=>()=>target as UndoManager,
'package:flutter/src/services/undo_manager.dart@UndoManager@#is': (m.Scope scope, target)=>()=>target is UndoManager,
'package:flutter/src/services/undo_manager.dart@UndoManager@client:set': (m.Scope scope)=>(other)=>UndoManager.client=other,
'package:flutter/src/services/undo_manager.dart@UndoManager@client': (m.Scope scope)=>UndoManager.client,
'package:flutter/src/services/undo_manager.dart@UndoManager@setChannel': (m.Scope scope)=>UndoManager.setChannel,
'package:flutter/src/services/undo_manager.dart@UndoManager@setUndoState': (m.Scope scope)=>UndoManager.setUndoState,

};
}