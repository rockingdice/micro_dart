import 'package:flutter/src/widgets/focus_manager.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/focus_manager.dart@@debugFocusChanges': (m.Scope scope)=>debugFocusChanges,
'package:flutter/src/widgets/focus_manager.dart@@debugFocusChanges:set': (m.Scope scope)=>(other)=>debugFocusChanges=other,
'package:flutter/src/widgets/focus_manager.dart@@primaryFocus': (m.Scope scope)=>primaryFocus,
'package:flutter/src/widgets/focus_manager.dart@FocusAttachment@#as': (m.Scope scope, target)=>()=>target as FocusAttachment,
'package:flutter/src/widgets/focus_manager.dart@FocusAttachment@#is': (m.Scope scope, target)=>()=>target is FocusAttachment,
'package:flutter/src/widgets/focus_manager.dart@FocusAttachment@isAttached': (m.Scope scope, FocusAttachment target)=>target.isAttached,
'package:flutter/src/widgets/focus_manager.dart@FocusAttachment@detach': (m.Scope scope, FocusAttachment target)=>target.detach,
'package:flutter/src/widgets/focus_manager.dart@FocusAttachment@reparent': (m.Scope scope, FocusAttachment target)=>target.reparent,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@#as': (m.Scope scope, target)=>()=>target as FocusNode,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@#is': (m.Scope scope, target)=>()=>target is FocusNode,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@onKey': (m.Scope scope, FocusNode target)=>target.onKey,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@onKey:set': (m.Scope scope, FocusNode target)=>(other)=>target.onKey=other,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@onKeyEvent': (m.Scope scope, FocusNode target)=>target.onKeyEvent,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@onKeyEvent:set': (m.Scope scope, FocusNode target)=>(other)=>target.onKeyEvent=other,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@skipTraversal': (m.Scope scope, FocusNode target)=>target.skipTraversal,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@skipTraversal:set': (m.Scope scope, FocusNode target)=>(other)=>target.skipTraversal=other,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@canRequestFocus': (m.Scope scope, FocusNode target)=>target.canRequestFocus,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@canRequestFocus:set': (m.Scope scope, FocusNode target)=>(other)=>target.canRequestFocus=other,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@descendantsAreFocusable': (m.Scope scope, FocusNode target)=>target.descendantsAreFocusable,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@descendantsAreFocusable:set': (m.Scope scope, FocusNode target)=>(other)=>target.descendantsAreFocusable=other,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@descendantsAreTraversable': (m.Scope scope, FocusNode target)=>target.descendantsAreTraversable,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@descendantsAreTraversable:set': (m.Scope scope, FocusNode target)=>(other)=>target.descendantsAreTraversable=other,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@context': (m.Scope scope, FocusNode target)=>target.context,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@parent': (m.Scope scope, FocusNode target)=>target.parent,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@children': (m.Scope scope, FocusNode target)=>target.children,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@traversalChildren': (m.Scope scope, FocusNode target)=>target.traversalChildren,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@debugLabel': (m.Scope scope, FocusNode target)=>target.debugLabel,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@debugLabel:set': (m.Scope scope, FocusNode target)=>(other)=>target.debugLabel=other,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@descendants': (m.Scope scope, FocusNode target)=>target.descendants,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@traversalDescendants': (m.Scope scope, FocusNode target)=>target.traversalDescendants,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@ancestors': (m.Scope scope, FocusNode target)=>target.ancestors,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@hasFocus': (m.Scope scope, FocusNode target)=>target.hasFocus,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@hasPrimaryFocus': (m.Scope scope, FocusNode target)=>target.hasPrimaryFocus,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@highlightMode': (m.Scope scope, FocusNode target)=>target.highlightMode,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@nearestScope': (m.Scope scope, FocusNode target)=>target.nearestScope,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@enclosingScope': (m.Scope scope, FocusNode target)=>target.enclosingScope,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@size': (m.Scope scope, FocusNode target)=>target.size,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@offset': (m.Scope scope, FocusNode target)=>target.offset,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@rect': (m.Scope scope, FocusNode target)=>target.rect,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@': (m.Scope scope)=>({ canRequestFocus,  debugLabel,  descendantsAreFocusable,  descendantsAreTraversable,  onKey,  onKeyEvent,  skipTraversal}){
KeyEventResult onKeyProxy( node,  event) {
return  engine.callFunctionPointer(scope, onKey!,[node, event], {});
}

KeyEventResult onKeyEventProxy( node,  event) {
return  engine.callFunctionPointer(scope, onKeyEvent!,[node, event], {});
}

return FocusNode(canRequestFocus:canRequestFocus ?? true, debugLabel:debugLabel, descendantsAreFocusable:descendantsAreFocusable ?? true, descendantsAreTraversable:descendantsAreTraversable ?? true, onKey:onKey == null ? null :onKeyProxy, onKeyEvent:onKeyEvent == null ? null :onKeyEventProxy, skipTraversal:skipTraversal ?? false);
},
'package:flutter/src/widgets/focus_manager.dart@FocusNode@unfocus': (m.Scope scope, FocusNode target)=>target.unfocus,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@consumeKeyboardToken': (m.Scope scope, FocusNode target)=>target.consumeKeyboardToken,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@attach': (m.Scope scope, FocusNode target)=>( context, { onKey,  onKeyEvent}){
KeyEventResult onKeyProxy( node,  event) {
return  engine.callFunctionPointer(scope, onKey!,[node, event], {});
}

KeyEventResult onKeyEventProxy( node,  event) {
return  engine.callFunctionPointer(scope, onKeyEvent!,[node, event], {});
}

return target.attach(context, onKey:onKey == null ? null :onKeyProxy, onKeyEvent:onKeyEvent == null ? null :onKeyEventProxy);
},
'package:flutter/src/widgets/focus_manager.dart@FocusNode@dispose': (m.Scope scope, FocusNode target)=>target.dispose,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@requestFocus': (m.Scope scope, FocusNode target)=>target.requestFocus,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@nextFocus': (m.Scope scope, FocusNode target)=>target.nextFocus,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@previousFocus': (m.Scope scope, FocusNode target)=>target.previousFocus,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@focusInDirection': (m.Scope scope, FocusNode target)=>target.focusInDirection,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@debugFillProperties': (m.Scope scope, FocusNode target)=>target.debugFillProperties,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@debugDescribeChildren': (m.Scope scope, FocusNode target)=>target.debugDescribeChildren,
'package:flutter/src/widgets/focus_manager.dart@FocusNode@toStringShort': (m.Scope scope, FocusNode target)=>target.toStringShort,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@#as': (m.Scope scope, target)=>()=>target as FocusScopeNode,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@#is': (m.Scope scope, target)=>()=>target is FocusScopeNode,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@traversalEdgeBehavior': (m.Scope scope, FocusScopeNode target)=>target.traversalEdgeBehavior,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@traversalEdgeBehavior:set': (m.Scope scope, FocusScopeNode target)=>(other)=>target.traversalEdgeBehavior=other,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@nearestScope': (m.Scope scope, FocusScopeNode target)=>target.nearestScope,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@isFirstFocus': (m.Scope scope, FocusScopeNode target)=>target.isFirstFocus,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@focusedChild': (m.Scope scope, FocusScopeNode target)=>target.focusedChild,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@traversalChildren': (m.Scope scope, FocusScopeNode target)=>target.traversalChildren,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@traversalDescendants': (m.Scope scope, FocusScopeNode target)=>target.traversalDescendants,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@': (m.Scope scope)=>({ canRequestFocus,  debugLabel,  onKey,  onKeyEvent,  skipTraversal,  traversalEdgeBehavior}){
KeyEventResult onKeyProxy( node,  event) {
return  engine.callFunctionPointer(scope, onKey!,[node, event], {});
}

KeyEventResult onKeyEventProxy( node,  event) {
return  engine.callFunctionPointer(scope, onKeyEvent!,[node, event], {});
}

return FocusScopeNode(canRequestFocus:canRequestFocus ?? true, debugLabel:debugLabel, onKey:onKey == null ? null :onKeyProxy, onKeyEvent:onKeyEvent == null ? null :onKeyEventProxy, skipTraversal:skipTraversal ?? false, traversalEdgeBehavior:traversalEdgeBehavior ?? TraversalEdgeBehavior.closedLoop);
},
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@setFirstFocus': (m.Scope scope, FocusScopeNode target)=>target.setFirstFocus,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@autofocus': (m.Scope scope, FocusScopeNode target)=>target.autofocus,
'package:flutter/src/widgets/focus_manager.dart@FocusScopeNode@debugFillProperties': (m.Scope scope, FocusScopeNode target)=>target.debugFillProperties,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@#as': (m.Scope scope, target)=>()=>target as FocusManager,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@#is': (m.Scope scope, target)=>()=>target is FocusManager,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@rootScope': (m.Scope scope, FocusManager target)=>target.rootScope,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@instance': (m.Scope scope)=>FocusManager.instance,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@highlightStrategy': (m.Scope scope, FocusManager target)=>target.highlightStrategy,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@highlightStrategy:set': (m.Scope scope, FocusManager target)=>(other)=>target.highlightStrategy=other,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@highlightMode': (m.Scope scope, FocusManager target)=>target.highlightMode,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@primaryFocus': (m.Scope scope, FocusManager target)=>target.primaryFocus,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@': (m.Scope scope)=>(){
return FocusManager();
},
'package:flutter/src/widgets/focus_manager.dart@FocusManager@registerGlobalHandlers': (m.Scope scope, FocusManager target)=>target.registerGlobalHandlers,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@dispose': (m.Scope scope, FocusManager target)=>target.dispose,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@addHighlightModeListener': (m.Scope scope, FocusManager target)=>( listener){
void listenerProxy( value) {
 engine.callFunctionPointer(scope, listener!,[value], {});
}

target.addHighlightModeListener(listenerProxy);
},
'package:flutter/src/widgets/focus_manager.dart@FocusManager@removeHighlightModeListener': (m.Scope scope, FocusManager target)=>( listener){
void listenerProxy( value) {
 engine.callFunctionPointer(scope, listener!,[value], {});
}

target.removeHighlightModeListener(listenerProxy);
},
'package:flutter/src/widgets/focus_manager.dart@FocusManager@debugDescribeChildren': (m.Scope scope, FocusManager target)=>target.debugDescribeChildren,
'package:flutter/src/widgets/focus_manager.dart@FocusManager@debugFillProperties': (m.Scope scope, FocusManager target)=>target.debugFillProperties,
'package:flutter/src/widgets/focus_manager.dart@@combineKeyEventResults': (m.Scope scope)=>combineKeyEventResults,
'package:flutter/src/widgets/focus_manager.dart@@debugDescribeFocusTree': (m.Scope scope)=>debugDescribeFocusTree,
'package:flutter/src/widgets/focus_manager.dart@@debugDumpFocusTree': (m.Scope scope)=>debugDumpFocusTree,

};
}