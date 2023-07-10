import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalPolicy@#as': (m.Scope scope, target)=>()=>target as FocusTraversalPolicy,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalPolicy@#is': (m.Scope scope, target)=>()=>target is FocusTraversalPolicy,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalPolicy@findFirstFocus': (m.Scope scope, FocusTraversalPolicy target)=>target.findFirstFocus,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalPolicy@findLastFocus': (m.Scope scope, FocusTraversalPolicy target)=>target.findLastFocus,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalPolicy@findFirstFocusInDirection': (m.Scope scope, FocusTraversalPolicy target)=>target.findFirstFocusInDirection,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalPolicy@invalidateScopeData': (m.Scope scope, FocusTraversalPolicy target)=>target.invalidateScopeData,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalPolicy@changedScope': (m.Scope scope, FocusTraversalPolicy target)=>target.changedScope,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalPolicy@next': (m.Scope scope, FocusTraversalPolicy target)=>target.next,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalPolicy@previous': (m.Scope scope, FocusTraversalPolicy target)=>target.previous,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalPolicy@inDirection': (m.Scope scope, FocusTraversalPolicy target)=>target.inDirection,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalPolicy@sortDescendants': (m.Scope scope, FocusTraversalPolicy target)=>target.sortDescendants,
'package:flutter/src/widgets/focus_traversal.dart@WidgetOrderTraversalPolicy@#as': (m.Scope scope, target)=>()=>target as WidgetOrderTraversalPolicy,
'package:flutter/src/widgets/focus_traversal.dart@WidgetOrderTraversalPolicy@#is': (m.Scope scope, target)=>()=>target is WidgetOrderTraversalPolicy,
'package:flutter/src/widgets/focus_traversal.dart@WidgetOrderTraversalPolicy@': (m.Scope scope)=>(){
return WidgetOrderTraversalPolicy();
},
'package:flutter/src/widgets/focus_traversal.dart@WidgetOrderTraversalPolicy@sortDescendants': (m.Scope scope, WidgetOrderTraversalPolicy target)=>target.sortDescendants,
'package:flutter/src/widgets/focus_traversal.dart@ReadingOrderTraversalPolicy@#as': (m.Scope scope, target)=>()=>target as ReadingOrderTraversalPolicy,
'package:flutter/src/widgets/focus_traversal.dart@ReadingOrderTraversalPolicy@#is': (m.Scope scope, target)=>()=>target is ReadingOrderTraversalPolicy,
'package:flutter/src/widgets/focus_traversal.dart@ReadingOrderTraversalPolicy@': (m.Scope scope)=>(){
return ReadingOrderTraversalPolicy();
},
'package:flutter/src/widgets/focus_traversal.dart@ReadingOrderTraversalPolicy@sortDescendants': (m.Scope scope, ReadingOrderTraversalPolicy target)=>target.sortDescendants,
'package:flutter/src/widgets/focus_traversal.dart@FocusOrder@#as': (m.Scope scope, target)=>()=>target as FocusOrder,
'package:flutter/src/widgets/focus_traversal.dart@FocusOrder@#is': (m.Scope scope, target)=>()=>target is FocusOrder,
'package:flutter/src/widgets/focus_traversal.dart@FocusOrder@compareTo': (m.Scope scope, FocusOrder target)=>target.compareTo,
'package:flutter/src/widgets/focus_traversal.dart@FocusOrder@doCompare': (m.Scope scope, FocusOrder target)=>target.doCompare,
'package:flutter/src/widgets/focus_traversal.dart@NumericFocusOrder@#as': (m.Scope scope, target)=>()=>target as NumericFocusOrder,
'package:flutter/src/widgets/focus_traversal.dart@NumericFocusOrder@#is': (m.Scope scope, target)=>()=>target is NumericFocusOrder,
'package:flutter/src/widgets/focus_traversal.dart@NumericFocusOrder@order': (m.Scope scope, NumericFocusOrder target)=>target.order,
'package:flutter/src/widgets/focus_traversal.dart@NumericFocusOrder@': (m.Scope scope)=>( order){
return NumericFocusOrder(order);
},
'package:flutter/src/widgets/focus_traversal.dart@NumericFocusOrder@doCompare': (m.Scope scope, NumericFocusOrder target)=>target.doCompare,
'package:flutter/src/widgets/focus_traversal.dart@NumericFocusOrder@debugFillProperties': (m.Scope scope, NumericFocusOrder target)=>target.debugFillProperties,
'package:flutter/src/widgets/focus_traversal.dart@LexicalFocusOrder@#as': (m.Scope scope, target)=>()=>target as LexicalFocusOrder,
'package:flutter/src/widgets/focus_traversal.dart@LexicalFocusOrder@#is': (m.Scope scope, target)=>()=>target is LexicalFocusOrder,
'package:flutter/src/widgets/focus_traversal.dart@LexicalFocusOrder@order': (m.Scope scope, LexicalFocusOrder target)=>target.order,
'package:flutter/src/widgets/focus_traversal.dart@LexicalFocusOrder@': (m.Scope scope)=>( order){
return LexicalFocusOrder(order);
},
'package:flutter/src/widgets/focus_traversal.dart@LexicalFocusOrder@doCompare': (m.Scope scope, LexicalFocusOrder target)=>target.doCompare,
'package:flutter/src/widgets/focus_traversal.dart@LexicalFocusOrder@debugFillProperties': (m.Scope scope, LexicalFocusOrder target)=>target.debugFillProperties,
'package:flutter/src/widgets/focus_traversal.dart@OrderedTraversalPolicy@#as': (m.Scope scope, target)=>()=>target as OrderedTraversalPolicy,
'package:flutter/src/widgets/focus_traversal.dart@OrderedTraversalPolicy@#is': (m.Scope scope, target)=>()=>target is OrderedTraversalPolicy,
'package:flutter/src/widgets/focus_traversal.dart@OrderedTraversalPolicy@secondary': (m.Scope scope, OrderedTraversalPolicy target)=>target.secondary,
'package:flutter/src/widgets/focus_traversal.dart@OrderedTraversalPolicy@': (m.Scope scope)=>({ secondary}){
return OrderedTraversalPolicy(secondary:secondary);
},
'package:flutter/src/widgets/focus_traversal.dart@OrderedTraversalPolicy@sortDescendants': (m.Scope scope, OrderedTraversalPolicy target)=>target.sortDescendants,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalOrder@#as': (m.Scope scope, target)=>()=>target as FocusTraversalOrder,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalOrder@#is': (m.Scope scope, target)=>()=>target is FocusTraversalOrder,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalOrder@order': (m.Scope scope, FocusTraversalOrder target)=>target.order,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalOrder@': (m.Scope scope)=>({ child,  key,  order}){
return FocusTraversalOrder(child:child, key:key, order:order);
},
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalOrder@of': (m.Scope scope)=>FocusTraversalOrder.of,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalOrder@maybeOf': (m.Scope scope)=>FocusTraversalOrder.maybeOf,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalOrder@updateShouldNotify': (m.Scope scope, FocusTraversalOrder target)=>target.updateShouldNotify,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalOrder@debugFillProperties': (m.Scope scope, FocusTraversalOrder target)=>target.debugFillProperties,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@#as': (m.Scope scope, target)=>()=>target as FocusTraversalGroup,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@#is': (m.Scope scope, target)=>()=>target is FocusTraversalGroup,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@policy': (m.Scope scope, FocusTraversalGroup target)=>target.policy,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@descendantsAreFocusable': (m.Scope scope, FocusTraversalGroup target)=>target.descendantsAreFocusable,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@descendantsAreTraversable': (m.Scope scope, FocusTraversalGroup target)=>target.descendantsAreTraversable,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@child': (m.Scope scope, FocusTraversalGroup target)=>target.child,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@': (m.Scope scope)=>({ child,  descendantsAreFocusable,  descendantsAreTraversable,  key,  policy}){
return FocusTraversalGroup(child:child, descendantsAreFocusable:descendantsAreFocusable ?? true, descendantsAreTraversable:descendantsAreTraversable ?? true, key:key, policy:policy);
},
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@maybeOfNode': (m.Scope scope)=>FocusTraversalGroup.maybeOfNode,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@of': (m.Scope scope)=>FocusTraversalGroup.of,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@maybeOf': (m.Scope scope)=>FocusTraversalGroup.maybeOf,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@createState': (m.Scope scope, FocusTraversalGroup target)=>target.createState,
'package:flutter/src/widgets/focus_traversal.dart@FocusTraversalGroup@debugFillProperties': (m.Scope scope, FocusTraversalGroup target)=>target.debugFillProperties,
'package:flutter/src/widgets/focus_traversal.dart@RequestFocusIntent@#as': (m.Scope scope, target)=>()=>target as RequestFocusIntent,
'package:flutter/src/widgets/focus_traversal.dart@RequestFocusIntent@#is': (m.Scope scope, target)=>()=>target is RequestFocusIntent,
'package:flutter/src/widgets/focus_traversal.dart@RequestFocusIntent@focusNode': (m.Scope scope, RequestFocusIntent target)=>target.focusNode,
'package:flutter/src/widgets/focus_traversal.dart@RequestFocusIntent@': (m.Scope scope)=>( focusNode){
return RequestFocusIntent(focusNode);
},
'package:flutter/src/widgets/focus_traversal.dart@RequestFocusAction@#as': (m.Scope scope, target)=>()=>target as RequestFocusAction,
'package:flutter/src/widgets/focus_traversal.dart@RequestFocusAction@#is': (m.Scope scope, target)=>()=>target is RequestFocusAction,
'package:flutter/src/widgets/focus_traversal.dart@RequestFocusAction@': (m.Scope scope)=>(){
return RequestFocusAction();
},
'package:flutter/src/widgets/focus_traversal.dart@RequestFocusAction@invoke': (m.Scope scope, RequestFocusAction target)=>target.invoke,
'package:flutter/src/widgets/focus_traversal.dart@NextFocusIntent@#as': (m.Scope scope, target)=>()=>target as NextFocusIntent,
'package:flutter/src/widgets/focus_traversal.dart@NextFocusIntent@#is': (m.Scope scope, target)=>()=>target is NextFocusIntent,
'package:flutter/src/widgets/focus_traversal.dart@NextFocusIntent@': (m.Scope scope)=>(){
return NextFocusIntent();
},
'package:flutter/src/widgets/focus_traversal.dart@NextFocusAction@#as': (m.Scope scope, target)=>()=>target as NextFocusAction,
'package:flutter/src/widgets/focus_traversal.dart@NextFocusAction@#is': (m.Scope scope, target)=>()=>target is NextFocusAction,
'package:flutter/src/widgets/focus_traversal.dart@NextFocusAction@': (m.Scope scope)=>(){
return NextFocusAction();
},
'package:flutter/src/widgets/focus_traversal.dart@NextFocusAction@invoke': (m.Scope scope, NextFocusAction target)=>target.invoke,
'package:flutter/src/widgets/focus_traversal.dart@NextFocusAction@toKeyEventResult': (m.Scope scope, NextFocusAction target)=>target.toKeyEventResult,
'package:flutter/src/widgets/focus_traversal.dart@PreviousFocusIntent@#as': (m.Scope scope, target)=>()=>target as PreviousFocusIntent,
'package:flutter/src/widgets/focus_traversal.dart@PreviousFocusIntent@#is': (m.Scope scope, target)=>()=>target is PreviousFocusIntent,
'package:flutter/src/widgets/focus_traversal.dart@PreviousFocusIntent@': (m.Scope scope)=>(){
return PreviousFocusIntent();
},
'package:flutter/src/widgets/focus_traversal.dart@PreviousFocusAction@#as': (m.Scope scope, target)=>()=>target as PreviousFocusAction,
'package:flutter/src/widgets/focus_traversal.dart@PreviousFocusAction@#is': (m.Scope scope, target)=>()=>target is PreviousFocusAction,
'package:flutter/src/widgets/focus_traversal.dart@PreviousFocusAction@': (m.Scope scope)=>(){
return PreviousFocusAction();
},
'package:flutter/src/widgets/focus_traversal.dart@PreviousFocusAction@invoke': (m.Scope scope, PreviousFocusAction target)=>target.invoke,
'package:flutter/src/widgets/focus_traversal.dart@PreviousFocusAction@toKeyEventResult': (m.Scope scope, PreviousFocusAction target)=>target.toKeyEventResult,
'package:flutter/src/widgets/focus_traversal.dart@DirectionalFocusIntent@#as': (m.Scope scope, target)=>()=>target as DirectionalFocusIntent,
'package:flutter/src/widgets/focus_traversal.dart@DirectionalFocusIntent@#is': (m.Scope scope, target)=>()=>target is DirectionalFocusIntent,
'package:flutter/src/widgets/focus_traversal.dart@DirectionalFocusIntent@direction': (m.Scope scope, DirectionalFocusIntent target)=>target.direction,
'package:flutter/src/widgets/focus_traversal.dart@DirectionalFocusIntent@ignoreTextFields': (m.Scope scope, DirectionalFocusIntent target)=>target.ignoreTextFields,
'package:flutter/src/widgets/focus_traversal.dart@DirectionalFocusIntent@': (m.Scope scope)=>( direction, { ignoreTextFields}){
return DirectionalFocusIntent(direction, ignoreTextFields:ignoreTextFields ?? true);
},
'package:flutter/src/widgets/focus_traversal.dart@DirectionalFocusIntent@debugFillProperties': (m.Scope scope, DirectionalFocusIntent target)=>target.debugFillProperties,
'package:flutter/src/widgets/focus_traversal.dart@DirectionalFocusAction@#as': (m.Scope scope, target)=>()=>target as DirectionalFocusAction,
'package:flutter/src/widgets/focus_traversal.dart@DirectionalFocusAction@#is': (m.Scope scope, target)=>()=>target is DirectionalFocusAction,
'package:flutter/src/widgets/focus_traversal.dart@DirectionalFocusAction@': (m.Scope scope)=>(){
return DirectionalFocusAction();
},
'package:flutter/src/widgets/focus_traversal.dart@DirectionalFocusAction@forTextField': (m.Scope scope)=>DirectionalFocusAction.forTextField,
'package:flutter/src/widgets/focus_traversal.dart@DirectionalFocusAction@invoke': (m.Scope scope, DirectionalFocusAction target)=>target.invoke,
'package:flutter/src/widgets/focus_traversal.dart@ExcludeFocusTraversal@#as': (m.Scope scope, target)=>()=>target as ExcludeFocusTraversal,
'package:flutter/src/widgets/focus_traversal.dart@ExcludeFocusTraversal@#is': (m.Scope scope, target)=>()=>target is ExcludeFocusTraversal,
'package:flutter/src/widgets/focus_traversal.dart@ExcludeFocusTraversal@excluding': (m.Scope scope, ExcludeFocusTraversal target)=>target.excluding,
'package:flutter/src/widgets/focus_traversal.dart@ExcludeFocusTraversal@child': (m.Scope scope, ExcludeFocusTraversal target)=>target.child,
'package:flutter/src/widgets/focus_traversal.dart@ExcludeFocusTraversal@': (m.Scope scope)=>({ child,  excluding,  key}){
return ExcludeFocusTraversal(child:child, excluding:excluding ?? true, key:key);
},
'package:flutter/src/widgets/focus_traversal.dart@ExcludeFocusTraversal@build': (m.Scope scope, ExcludeFocusTraversal target)=>target.build,

};
}