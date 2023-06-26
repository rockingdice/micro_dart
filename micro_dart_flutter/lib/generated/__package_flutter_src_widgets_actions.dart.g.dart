import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/shortcuts.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/actions.dart@Intent@#as': (m.Scope scope, target)=>()=>target as Intent,
'package:flutter/src/widgets/actions.dart@Intent@#is': (m.Scope scope, target)=>()=>target is Intent,
'package:flutter/src/widgets/actions.dart@Intent@doNothing': (m.Scope scope)=>Intent.doNothing,
'package:flutter/src/widgets/actions.dart@Action@#as': (m.Scope scope, target)=>()=>target as Action,
'package:flutter/src/widgets/actions.dart@Action@#is': (m.Scope scope, target)=>()=>target is Action,
'package:flutter/src/widgets/actions.dart@Action@callingAction': (m.Scope scope, Action target)=>target.callingAction,
'package:flutter/src/widgets/actions.dart@Action@intentType': (m.Scope scope, Action target)=>target.intentType,
'package:flutter/src/widgets/actions.dart@Action@isActionEnabled': (m.Scope scope, Action target)=>target.isActionEnabled,
'package:flutter/src/widgets/actions.dart@Action@overridable': (m.Scope scope)=>Action.overridable,
'package:flutter/src/widgets/actions.dart@Action@isEnabled': (m.Scope scope, Action target)=>target.isEnabled,
'package:flutter/src/widgets/actions.dart@Action@consumesKey': (m.Scope scope, Action target)=>target.consumesKey,
'package:flutter/src/widgets/actions.dart@Action@toKeyEventResult': (m.Scope scope, Action target)=>target.toKeyEventResult,
'package:flutter/src/widgets/actions.dart@Action@invoke': (m.Scope scope, Action target)=>target.invoke,
'package:flutter/src/widgets/actions.dart@Action@addActionListener': (m.Scope scope, Action target)=>( listener){
void listenerProxy( action) {
 engine.callFunctionPointer(scope, listener!,[action], {});
}

target.addActionListener(listenerProxy);
},
'package:flutter/src/widgets/actions.dart@Action@removeActionListener': (m.Scope scope, Action target)=>( listener){
void listenerProxy( action) {
 engine.callFunctionPointer(scope, listener!,[action], {});
}

target.removeActionListener(listenerProxy);
},
'package:flutter/src/widgets/actions.dart@Action@notifyActionListeners': (m.Scope scope, Action target)=>target.notifyActionListeners,
'package:flutter/src/widgets/actions.dart@ActionListener@#as': (m.Scope scope, target)=>()=>target as ActionListener,
'package:flutter/src/widgets/actions.dart@ActionListener@#is': (m.Scope scope, target)=>()=>target is ActionListener,
'package:flutter/src/widgets/actions.dart@ActionListener@listener': (m.Scope scope, ActionListener target)=>target.listener,
'package:flutter/src/widgets/actions.dart@ActionListener@action': (m.Scope scope, ActionListener target)=>target.action,
'package:flutter/src/widgets/actions.dart@ActionListener@child': (m.Scope scope, ActionListener target)=>target.child,
'package:flutter/src/widgets/actions.dart@ActionListener@': (m.Scope scope)=>({ action,  child,  key,  listener}){
void listenerProxy( action) {
 engine.callFunctionPointer(scope, listener!,[action], {});
}

return ActionListener(action:action, child:child, key:key, listener:listenerProxy);
},
'package:flutter/src/widgets/actions.dart@ActionListener@createState': (m.Scope scope, ActionListener target)=>target.createState,
'package:flutter/src/widgets/actions.dart@ContextAction@#as': (m.Scope scope, target)=>()=>target as ContextAction,
'package:flutter/src/widgets/actions.dart@ContextAction@#is': (m.Scope scope, target)=>()=>target is ContextAction,
'package:flutter/src/widgets/actions.dart@ContextAction@invoke': (m.Scope scope, ContextAction target)=>target.invoke,
'package:flutter/src/widgets/actions.dart@CallbackAction@#as': (m.Scope scope, target)=>()=>target as CallbackAction,
'package:flutter/src/widgets/actions.dart@CallbackAction@#is': (m.Scope scope, target)=>()=>target is CallbackAction,
'package:flutter/src/widgets/actions.dart@CallbackAction@onInvoke': (m.Scope scope, CallbackAction target)=>target.onInvoke,
'package:flutter/src/widgets/actions.dart@CallbackAction@': (m.Scope scope)=>({ onInvoke}){
Object onInvokeProxy<T>( intent) {
return  engine.callFunctionPointer(scope, onInvoke!,[intent], {});
}

return CallbackAction(onInvoke:onInvokeProxy);
},
'package:flutter/src/widgets/actions.dart@CallbackAction@invoke': (m.Scope scope, CallbackAction target)=>target.invoke,
'package:flutter/src/widgets/actions.dart@ActionDispatcher@#as': (m.Scope scope, target)=>()=>target as ActionDispatcher,
'package:flutter/src/widgets/actions.dart@ActionDispatcher@#is': (m.Scope scope, target)=>()=>target is ActionDispatcher,
'package:flutter/src/widgets/actions.dart@ActionDispatcher@': (m.Scope scope)=>(){
return ActionDispatcher();
},
'package:flutter/src/widgets/actions.dart@ActionDispatcher@invokeAction': (m.Scope scope, ActionDispatcher target)=>target.invokeAction,
'package:flutter/src/widgets/actions.dart@Actions@#as': (m.Scope scope, target)=>()=>target as Actions,
'package:flutter/src/widgets/actions.dart@Actions@#is': (m.Scope scope, target)=>()=>target is Actions,
'package:flutter/src/widgets/actions.dart@Actions@dispatcher': (m.Scope scope, Actions target)=>target.dispatcher,
'package:flutter/src/widgets/actions.dart@Actions@actions': (m.Scope scope, Actions target)=>target.actions,
'package:flutter/src/widgets/actions.dart@Actions@child': (m.Scope scope, Actions target)=>target.child,
'package:flutter/src/widgets/actions.dart@Actions@': (m.Scope scope)=>Actions,
'package:flutter/src/widgets/actions.dart@Actions@handler': (m.Scope scope)=>Actions.handler,
'package:flutter/src/widgets/actions.dart@Actions@find': (m.Scope scope)=>Actions.find,
'package:flutter/src/widgets/actions.dart@Actions@maybeFind': (m.Scope scope)=>Actions.maybeFind,
'package:flutter/src/widgets/actions.dart@Actions@of': (m.Scope scope)=>Actions.of,
'package:flutter/src/widgets/actions.dart@Actions@invoke': (m.Scope scope)=>Actions.invoke,
'package:flutter/src/widgets/actions.dart@Actions@maybeInvoke': (m.Scope scope)=>Actions.maybeInvoke,
'package:flutter/src/widgets/actions.dart@Actions@createState': (m.Scope scope, Actions target)=>target.createState,
'package:flutter/src/widgets/actions.dart@Actions@debugFillProperties': (m.Scope scope, Actions target)=>target.debugFillProperties,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@#as': (m.Scope scope, target)=>()=>target as FocusableActionDetector,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@#is': (m.Scope scope, target)=>()=>target is FocusableActionDetector,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@enabled': (m.Scope scope, FocusableActionDetector target)=>target.enabled,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@focusNode': (m.Scope scope, FocusableActionDetector target)=>target.focusNode,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@autofocus': (m.Scope scope, FocusableActionDetector target)=>target.autofocus,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@descendantsAreFocusable': (m.Scope scope, FocusableActionDetector target)=>target.descendantsAreFocusable,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@descendantsAreTraversable': (m.Scope scope, FocusableActionDetector target)=>target.descendantsAreTraversable,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@actions': (m.Scope scope, FocusableActionDetector target)=>target.actions,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@shortcuts': (m.Scope scope, FocusableActionDetector target)=>target.shortcuts,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@onShowFocusHighlight': (m.Scope scope, FocusableActionDetector target)=>target.onShowFocusHighlight,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@onShowHoverHighlight': (m.Scope scope, FocusableActionDetector target)=>target.onShowHoverHighlight,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@onFocusChange': (m.Scope scope, FocusableActionDetector target)=>target.onFocusChange,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@mouseCursor': (m.Scope scope, FocusableActionDetector target)=>target.mouseCursor,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@includeFocusSemantics': (m.Scope scope, FocusableActionDetector target)=>target.includeFocusSemantics,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@child': (m.Scope scope, FocusableActionDetector target)=>target.child,
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@': (m.Scope scope)=>({ actions,  autofocus,  child,  descendantsAreFocusable,  descendantsAreTraversable,  enabled,  focusNode,  includeFocusSemantics,  key,  mouseCursor,  onFocusChange,  onShowFocusHighlight,  onShowHoverHighlight,  shortcuts}){
void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onShowFocusHighlightProxy( value) {
 engine.callFunctionPointer(scope, onShowFocusHighlight!,[value], {});
}

void onShowHoverHighlightProxy( value) {
 engine.callFunctionPointer(scope, onShowHoverHighlight!,[value], {});
}

return FocusableActionDetector(actions:actions, autofocus:autofocus ?? false, child:child, descendantsAreFocusable:descendantsAreFocusable ?? true, descendantsAreTraversable:descendantsAreTraversable ?? true, enabled:enabled ?? true, focusNode:focusNode, includeFocusSemantics:includeFocusSemantics ?? true, key:key, mouseCursor:mouseCursor ?? MouseCursor.defer, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onShowFocusHighlight:onShowFocusHighlight == null ? null :onShowFocusHighlightProxy, onShowHoverHighlight:onShowHoverHighlight == null ? null :onShowHoverHighlightProxy, shortcuts:shortcuts);
},
'package:flutter/src/widgets/actions.dart@FocusableActionDetector@createState': (m.Scope scope, FocusableActionDetector target)=>target.createState,
'package:flutter/src/widgets/actions.dart@VoidCallbackIntent@#as': (m.Scope scope, target)=>()=>target as VoidCallbackIntent,
'package:flutter/src/widgets/actions.dart@VoidCallbackIntent@#is': (m.Scope scope, target)=>()=>target is VoidCallbackIntent,
'package:flutter/src/widgets/actions.dart@VoidCallbackIntent@callback': (m.Scope scope, VoidCallbackIntent target)=>target.callback,
'package:flutter/src/widgets/actions.dart@VoidCallbackIntent@': (m.Scope scope)=>( callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

return VoidCallbackIntent(callbackProxy);
},
'package:flutter/src/widgets/actions.dart@VoidCallbackAction@#as': (m.Scope scope, target)=>()=>target as VoidCallbackAction,
'package:flutter/src/widgets/actions.dart@VoidCallbackAction@#is': (m.Scope scope, target)=>()=>target is VoidCallbackAction,
'package:flutter/src/widgets/actions.dart@VoidCallbackAction@': (m.Scope scope)=>(){
return VoidCallbackAction();
},
'package:flutter/src/widgets/actions.dart@VoidCallbackAction@invoke': (m.Scope scope, VoidCallbackAction target)=>target.invoke,
'package:flutter/src/widgets/actions.dart@DoNothingIntent@#as': (m.Scope scope, target)=>()=>target as DoNothingIntent,
'package:flutter/src/widgets/actions.dart@DoNothingIntent@#is': (m.Scope scope, target)=>()=>target is DoNothingIntent,
'package:flutter/src/widgets/actions.dart@DoNothingIntent@': (m.Scope scope)=>(){
return DoNothingIntent();
},
'package:flutter/src/widgets/actions.dart@DoNothingAndStopPropagationIntent@#as': (m.Scope scope, target)=>()=>target as DoNothingAndStopPropagationIntent,
'package:flutter/src/widgets/actions.dart@DoNothingAndStopPropagationIntent@#is': (m.Scope scope, target)=>()=>target is DoNothingAndStopPropagationIntent,
'package:flutter/src/widgets/actions.dart@DoNothingAndStopPropagationIntent@': (m.Scope scope)=>(){
return DoNothingAndStopPropagationIntent();
},
'package:flutter/src/widgets/actions.dart@DoNothingAction@#as': (m.Scope scope, target)=>()=>target as DoNothingAction,
'package:flutter/src/widgets/actions.dart@DoNothingAction@#is': (m.Scope scope, target)=>()=>target is DoNothingAction,
'package:flutter/src/widgets/actions.dart@DoNothingAction@': (m.Scope scope)=>({ consumesKey}){
return DoNothingAction(consumesKey:consumesKey ?? true);
},
'package:flutter/src/widgets/actions.dart@DoNothingAction@consumesKey': (m.Scope scope, DoNothingAction target)=>target.consumesKey,
'package:flutter/src/widgets/actions.dart@DoNothingAction@invoke': (m.Scope scope, DoNothingAction target)=>target.invoke,
'package:flutter/src/widgets/actions.dart@ActivateIntent@#as': (m.Scope scope, target)=>()=>target as ActivateIntent,
'package:flutter/src/widgets/actions.dart@ActivateIntent@#is': (m.Scope scope, target)=>()=>target is ActivateIntent,
'package:flutter/src/widgets/actions.dart@ActivateIntent@': (m.Scope scope)=>(){
return ActivateIntent();
},
'package:flutter/src/widgets/actions.dart@ButtonActivateIntent@#as': (m.Scope scope, target)=>()=>target as ButtonActivateIntent,
'package:flutter/src/widgets/actions.dart@ButtonActivateIntent@#is': (m.Scope scope, target)=>()=>target is ButtonActivateIntent,
'package:flutter/src/widgets/actions.dart@ButtonActivateIntent@': (m.Scope scope)=>(){
return ButtonActivateIntent();
},
'package:flutter/src/widgets/actions.dart@ActivateAction@#as': (m.Scope scope, target)=>()=>target as ActivateAction,
'package:flutter/src/widgets/actions.dart@ActivateAction@#is': (m.Scope scope, target)=>()=>target is ActivateAction,
'package:flutter/src/widgets/actions.dart@SelectIntent@#as': (m.Scope scope, target)=>()=>target as SelectIntent,
'package:flutter/src/widgets/actions.dart@SelectIntent@#is': (m.Scope scope, target)=>()=>target is SelectIntent,
'package:flutter/src/widgets/actions.dart@SelectIntent@': (m.Scope scope)=>(){
return SelectIntent();
},
'package:flutter/src/widgets/actions.dart@SelectAction@#as': (m.Scope scope, target)=>()=>target as SelectAction,
'package:flutter/src/widgets/actions.dart@SelectAction@#is': (m.Scope scope, target)=>()=>target is SelectAction,
'package:flutter/src/widgets/actions.dart@DismissIntent@#as': (m.Scope scope, target)=>()=>target as DismissIntent,
'package:flutter/src/widgets/actions.dart@DismissIntent@#is': (m.Scope scope, target)=>()=>target is DismissIntent,
'package:flutter/src/widgets/actions.dart@DismissIntent@': (m.Scope scope)=>(){
return DismissIntent();
},
'package:flutter/src/widgets/actions.dart@DismissAction@#as': (m.Scope scope, target)=>()=>target as DismissAction,
'package:flutter/src/widgets/actions.dart@DismissAction@#is': (m.Scope scope, target)=>()=>target is DismissAction,
'package:flutter/src/widgets/actions.dart@PrioritizedIntents@#as': (m.Scope scope, target)=>()=>target as PrioritizedIntents,
'package:flutter/src/widgets/actions.dart@PrioritizedIntents@#is': (m.Scope scope, target)=>()=>target is PrioritizedIntents,
'package:flutter/src/widgets/actions.dart@PrioritizedIntents@orderedIntents': (m.Scope scope, PrioritizedIntents target)=>target.orderedIntents,
'package:flutter/src/widgets/actions.dart@PrioritizedIntents@': (m.Scope scope)=>PrioritizedIntents,
'package:flutter/src/widgets/actions.dart@PrioritizedAction@#as': (m.Scope scope, target)=>()=>target as PrioritizedAction,
'package:flutter/src/widgets/actions.dart@PrioritizedAction@#is': (m.Scope scope, target)=>()=>target is PrioritizedAction,
'package:flutter/src/widgets/actions.dart@PrioritizedAction@': (m.Scope scope)=>(){
return PrioritizedAction();
},
'package:flutter/src/widgets/actions.dart@PrioritizedAction@isEnabled': (m.Scope scope, PrioritizedAction target)=>target.isEnabled,
'package:flutter/src/widgets/actions.dart@PrioritizedAction@invoke': (m.Scope scope, PrioritizedAction target)=>target.invoke,

};
}