import 'package:flutter/src/widgets/default_text_editing_shortcuts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scrollable_helpers.dart';
import 'package:flutter/src/widgets/shortcuts.dart';
import 'package:flutter/src/widgets/text_editing_intents.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/default_text_editing_shortcuts.dart@DefaultTextEditingShortcuts@#as': (m.Scope scope, target)=>()=>target as DefaultTextEditingShortcuts,
'package:flutter/src/widgets/default_text_editing_shortcuts.dart@DefaultTextEditingShortcuts@#is': (m.Scope scope, target)=>()=>target is DefaultTextEditingShortcuts,
'package:flutter/src/widgets/default_text_editing_shortcuts.dart@DefaultTextEditingShortcuts@child': (m.Scope scope, DefaultTextEditingShortcuts target)=>target.child,
'package:flutter/src/widgets/default_text_editing_shortcuts.dart@DefaultTextEditingShortcuts@': (m.Scope scope)=>({ child,  key}){
return DefaultTextEditingShortcuts(child:child, key:key);
},
'package:flutter/src/widgets/default_text_editing_shortcuts.dart@DefaultTextEditingShortcuts@build': (m.Scope scope, DefaultTextEditingShortcuts target)=>target.build,
'package:flutter/src/widgets/default_text_editing_shortcuts.dart@@intentForMacOSSelector': (m.Scope scope)=>intentForMacOSSelector,

};
}