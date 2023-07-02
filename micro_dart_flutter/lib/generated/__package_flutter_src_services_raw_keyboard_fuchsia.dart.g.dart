import 'package:flutter/src/services/raw_keyboard_fuchsia.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_maps.g.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@#as': (m.Scope scope, target)=>()=>target as RawKeyEventDataFuchsia,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@#is': (m.Scope scope, target)=>()=>target is RawKeyEventDataFuchsia,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@hidUsage': (m.Scope scope, RawKeyEventDataFuchsia target)=>target.hidUsage,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@codePoint': (m.Scope scope, RawKeyEventDataFuchsia target)=>target.codePoint,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifiers': (m.Scope scope, RawKeyEventDataFuchsia target)=>target.modifiers,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierNone': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierNone,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierCapsLock': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierCapsLock,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierLeftShift': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierLeftShift,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierRightShift': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierRightShift,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierShift': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierShift,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierLeftControl': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierLeftControl,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierRightControl': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierRightControl,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierControl': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierControl,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierLeftAlt': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierLeftAlt,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierRightAlt': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierRightAlt,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierAlt': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierAlt,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierLeftMeta': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierLeftMeta,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierRightMeta': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierRightMeta,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@modifierMeta': (m.Scope scope)=>RawKeyEventDataFuchsia.modifierMeta,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@keyLabel': (m.Scope scope, RawKeyEventDataFuchsia target)=>target.keyLabel,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@logicalKey': (m.Scope scope, RawKeyEventDataFuchsia target)=>target.logicalKey,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@physicalKey': (m.Scope scope, RawKeyEventDataFuchsia target)=>target.physicalKey,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@hashCode': (m.Scope scope, RawKeyEventDataFuchsia target)=>target.hashCode,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@': (m.Scope scope)=>({ codePoint,  hidUsage,  modifiers}){
return RawKeyEventDataFuchsia(codePoint:codePoint ?? 0, hidUsage:hidUsage ?? 0, modifiers:modifiers ?? 0);
},
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@isModifierPressed': (m.Scope scope, RawKeyEventDataFuchsia target)=>target.isModifierPressed,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@getModifierSide': (m.Scope scope, RawKeyEventDataFuchsia target)=>target.getModifierSide,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@debugFillProperties': (m.Scope scope, RawKeyEventDataFuchsia target)=>target.debugFillProperties,
'package:flutter/src/services/raw_keyboard_fuchsia.dart@RawKeyEventDataFuchsia@==': (m.Scope scope, RawKeyEventDataFuchsia target)=>(other)=> target == other,

};
}