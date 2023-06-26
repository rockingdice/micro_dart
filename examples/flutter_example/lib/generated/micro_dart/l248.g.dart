import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_notifier.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/focus_scope.dart@Focus@#as': (m.Scope scope, target)=>()=>target as Focus,
'package:flutter/src/widgets/focus_scope.dart@Focus@#is': (m.Scope scope, target)=>()=>target is Focus,
'package:flutter/src/widgets/focus_scope.dart@Focus@parentNode': (m.Scope scope, Focus target)=>target.parentNode,
'package:flutter/src/widgets/focus_scope.dart@Focus@child': (m.Scope scope, Focus target)=>target.child,
'package:flutter/src/widgets/focus_scope.dart@Focus@focusNode': (m.Scope scope, Focus target)=>target.focusNode,
'package:flutter/src/widgets/focus_scope.dart@Focus@autofocus': (m.Scope scope, Focus target)=>target.autofocus,
'package:flutter/src/widgets/focus_scope.dart@Focus@onFocusChange': (m.Scope scope, Focus target)=>target.onFocusChange,
'package:flutter/src/widgets/focus_scope.dart@Focus@includeSemantics': (m.Scope scope, Focus target)=>target.includeSemantics,
'package:flutter/src/widgets/focus_scope.dart@Focus@onKeyEvent': (m.Scope scope, Focus target)=>target.onKeyEvent,
'package:flutter/src/widgets/focus_scope.dart@Focus@onKey': (m.Scope scope, Focus target)=>target.onKey,
'package:flutter/src/widgets/focus_scope.dart@Focus@canRequestFocus': (m.Scope scope, Focus target)=>target.canRequestFocus,
'package:flutter/src/widgets/focus_scope.dart@Focus@skipTraversal': (m.Scope scope, Focus target)=>target.skipTraversal,
'package:flutter/src/widgets/focus_scope.dart@Focus@descendantsAreFocusable': (m.Scope scope, Focus target)=>target.descendantsAreFocusable,
'package:flutter/src/widgets/focus_scope.dart@Focus@descendantsAreTraversable': (m.Scope scope, Focus target)=>target.descendantsAreTraversable,
'package:flutter/src/widgets/focus_scope.dart@Focus@debugLabel': (m.Scope scope, Focus target)=>target.debugLabel,
'package:flutter/src/widgets/focus_scope.dart@Focus@': (m.Scope scope)=>({ autofocus,  canRequestFocus,  child,  debugLabel,  descendantsAreFocusable,  descendantsAreTraversable,  focusNode,  includeSemantics,  key,  onFocusChange,  onKey,  onKeyEvent,  parentNode,  skipTraversal}){
void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

KeyEventResult onKeyProxy( node,  event) {
return  engine.callFunctionPointer(scope, onKey!,[node, event], {});
}

KeyEventResult onKeyEventProxy( node,  event) {
return  engine.callFunctionPointer(scope, onKeyEvent!,[node, event], {});
}

return Focus(autofocus:autofocus ?? false, canRequestFocus:canRequestFocus, child:child, debugLabel:debugLabel, descendantsAreFocusable:descendantsAreFocusable, descendantsAreTraversable:descendantsAreTraversable, focusNode:focusNode, includeSemantics:includeSemantics ?? true, key:key, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onKey:onKey == null ? null :onKeyProxy, onKeyEvent:onKeyEvent == null ? null :onKeyEventProxy, parentNode:parentNode, skipTraversal:skipTraversal);
},
'package:flutter/src/widgets/focus_scope.dart@Focus@withExternalFocusNode': (m.Scope scope)=>({ autofocus,  child,  focusNode,  includeSemantics,  key,  onFocusChange,  parentNode}){
void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

return Focus.withExternalFocusNode(autofocus:autofocus, child:child, focusNode:focusNode, includeSemantics:includeSemantics, key:key, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, parentNode:parentNode);
},
'package:flutter/src/widgets/focus_scope.dart@Focus@of': (m.Scope scope)=>Focus.of,
'package:flutter/src/widgets/focus_scope.dart@Focus@maybeOf': (m.Scope scope)=>Focus.maybeOf,
'package:flutter/src/widgets/focus_scope.dart@Focus@isAt': (m.Scope scope)=>Focus.isAt,
'package:flutter/src/widgets/focus_scope.dart@Focus@debugFillProperties': (m.Scope scope, Focus target)=>target.debugFillProperties,
'package:flutter/src/widgets/focus_scope.dart@Focus@createState': (m.Scope scope, Focus target)=>target.createState,
'package:flutter/src/widgets/focus_scope.dart@FocusScope@#as': (m.Scope scope, target)=>()=>target as FocusScope,
'package:flutter/src/widgets/focus_scope.dart@FocusScope@#is': (m.Scope scope, target)=>()=>target is FocusScope,
'package:flutter/src/widgets/focus_scope.dart@FocusScope@': (m.Scope scope)=>({ autofocus,  canRequestFocus,  child,  debugLabel,  key,  node,  onFocusChange,  onKey,  onKeyEvent,  parentNode,  skipTraversal}){
void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

KeyEventResult onKeyProxy( node,  event) {
return  engine.callFunctionPointer(scope, onKey!,[node, event], {});
}

KeyEventResult onKeyEventProxy( node,  event) {
return  engine.callFunctionPointer(scope, onKeyEvent!,[node, event], {});
}

return FocusScope(autofocus:autofocus ?? false, canRequestFocus:canRequestFocus, child:child, debugLabel:debugLabel, key:key, node:node, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onKey:onKey == null ? null :onKeyProxy, onKeyEvent:onKeyEvent == null ? null :onKeyEventProxy, parentNode:parentNode, skipTraversal:skipTraversal);
},
'package:flutter/src/widgets/focus_scope.dart@FocusScope@withExternalFocusNode': (m.Scope scope)=>({ autofocus,  child,  focusScopeNode,  key,  onFocusChange,  parentNode}){
void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

return FocusScope.withExternalFocusNode(autofocus:autofocus, child:child, focusScopeNode:focusScopeNode, key:key, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, parentNode:parentNode);
},
'package:flutter/src/widgets/focus_scope.dart@FocusScope@of': (m.Scope scope)=>FocusScope.of,
'package:flutter/src/widgets/focus_scope.dart@FocusScope@createState': (m.Scope scope, FocusScope target)=>target.createState,
'package:flutter/src/widgets/focus_scope.dart@ExcludeFocus@#as': (m.Scope scope, target)=>()=>target as ExcludeFocus,
'package:flutter/src/widgets/focus_scope.dart@ExcludeFocus@#is': (m.Scope scope, target)=>()=>target is ExcludeFocus,
'package:flutter/src/widgets/focus_scope.dart@ExcludeFocus@excluding': (m.Scope scope, ExcludeFocus target)=>target.excluding,
'package:flutter/src/widgets/focus_scope.dart@ExcludeFocus@child': (m.Scope scope, ExcludeFocus target)=>target.child,
'package:flutter/src/widgets/focus_scope.dart@ExcludeFocus@': (m.Scope scope)=>ExcludeFocus,
'package:flutter/src/widgets/focus_scope.dart@ExcludeFocus@build': (m.Scope scope, ExcludeFocus target)=>target.build,

};
}