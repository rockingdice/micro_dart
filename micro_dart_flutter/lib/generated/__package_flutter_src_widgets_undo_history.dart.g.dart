import 'package:flutter/src/widgets/undo_history.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/text_editing_intents.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/undo_history.dart@UndoHistory@#as': (m.Scope scope, target)=>()=>target as UndoHistory,
'package:flutter/src/widgets/undo_history.dart@UndoHistory@#is': (m.Scope scope, target)=>()=>target is UndoHistory,
'package:flutter/src/widgets/undo_history.dart@UndoHistory@value': (m.Scope scope, UndoHistory target)=>target.value,
'package:flutter/src/widgets/undo_history.dart@UndoHistory@shouldChangeUndoStack': (m.Scope scope, UndoHistory target)=>target.shouldChangeUndoStack,
'package:flutter/src/widgets/undo_history.dart@UndoHistory@onTriggered': (m.Scope scope, UndoHistory target)=>target.onTriggered,
'package:flutter/src/widgets/undo_history.dart@UndoHistory@focusNode': (m.Scope scope, UndoHistory target)=>target.focusNode,
'package:flutter/src/widgets/undo_history.dart@UndoHistory@controller': (m.Scope scope, UndoHistory target)=>target.controller,
'package:flutter/src/widgets/undo_history.dart@UndoHistory@child': (m.Scope scope, UndoHistory target)=>target.child,
'package:flutter/src/widgets/undo_history.dart@UndoHistory@': (m.Scope scope)=>({ child,  controller,  focusNode,  key,  onTriggered,  shouldChangeUndoStack,  value}){
void onTriggeredProxy<T>( value) {
 engine.callFunctionPointer(scope, onTriggered!,[value], {});
}

bool shouldChangeUndoStackProxy<T>( oldValue,  newValue) {
return  engine.callFunctionPointer(scope, shouldChangeUndoStack!,[oldValue, newValue], {});
}

return UndoHistory(child:child, controller:controller, focusNode:focusNode, key:key, onTriggered:onTriggeredProxy, shouldChangeUndoStack:shouldChangeUndoStack == null ? null :shouldChangeUndoStackProxy, value:value);
},
'package:flutter/src/widgets/undo_history.dart@UndoHistory@createState': (m.Scope scope, UndoHistory target)=>target.createState,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@#as': (m.Scope scope, target)=>()=>target as UndoHistoryState,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@#is': (m.Scope scope, target)=>()=>target is UndoHistoryState,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@canUndo': (m.Scope scope, UndoHistoryState target)=>target.canUndo,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@canRedo': (m.Scope scope, UndoHistoryState target)=>target.canRedo,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@': (m.Scope scope)=><T>(){
return UndoHistoryState();
},
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@undo': (m.Scope scope, UndoHistoryState target)=>target.undo,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@redo': (m.Scope scope, UndoHistoryState target)=>target.redo,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@handlePlatformUndo': (m.Scope scope, UndoHistoryState target)=>target.handlePlatformUndo,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@initState': (m.Scope scope, UndoHistoryState target)=>target.initState,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@didUpdateWidget': (m.Scope scope, UndoHistoryState target)=>target.didUpdateWidget,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@dispose': (m.Scope scope, UndoHistoryState target)=>target.dispose,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryState@build': (m.Scope scope, UndoHistoryState target)=>target.build,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryValue@#as': (m.Scope scope, target)=>()=>target as UndoHistoryValue,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryValue@#is': (m.Scope scope, target)=>()=>target is UndoHistoryValue,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryValue@empty': (m.Scope scope)=>UndoHistoryValue.empty,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryValue@canUndo': (m.Scope scope, UndoHistoryValue target)=>target.canUndo,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryValue@canRedo': (m.Scope scope, UndoHistoryValue target)=>target.canRedo,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryValue@hashCode': (m.Scope scope, UndoHistoryValue target)=>target.hashCode,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryValue@': (m.Scope scope)=>({ canRedo,  canUndo}){
return UndoHistoryValue(canRedo:canRedo ?? false, canUndo:canUndo ?? false);
},
'package:flutter/src/widgets/undo_history.dart@UndoHistoryValue@toString': (m.Scope scope, UndoHistoryValue target)=>target.toString,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryValue@==': (m.Scope scope, UndoHistoryValue target)=>(other)=> target == other,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryController@#as': (m.Scope scope, target)=>()=>target as UndoHistoryController,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryController@#is': (m.Scope scope, target)=>()=>target is UndoHistoryController,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryController@onUndo': (m.Scope scope, UndoHistoryController target)=>target.onUndo,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryController@onRedo': (m.Scope scope, UndoHistoryController target)=>target.onRedo,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryController@': (m.Scope scope)=>({ value}){
return UndoHistoryController(value:value);
},
'package:flutter/src/widgets/undo_history.dart@UndoHistoryController@undo': (m.Scope scope, UndoHistoryController target)=>target.undo,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryController@redo': (m.Scope scope, UndoHistoryController target)=>target.redo,
'package:flutter/src/widgets/undo_history.dart@UndoHistoryController@dispose': (m.Scope scope, UndoHistoryController target)=>target.dispose,

};
}