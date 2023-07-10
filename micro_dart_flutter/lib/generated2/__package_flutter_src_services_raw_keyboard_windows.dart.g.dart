import 'package:flutter/src/services/raw_keyboard_windows.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_maps.g.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@#as': (m.Scope scope, target)=>()=>target as RawKeyEventDataWindows,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@#is': (m.Scope scope, target)=>()=>target is RawKeyEventDataWindows,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@keyCode': (m.Scope scope, RawKeyEventDataWindows target)=>target.keyCode,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@scanCode': (m.Scope scope, RawKeyEventDataWindows target)=>target.scanCode,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@characterCodePoint': (m.Scope scope, RawKeyEventDataWindows target)=>target.characterCodePoint,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifiers': (m.Scope scope, RawKeyEventDataWindows target)=>target.modifiers,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierShift': (m.Scope scope)=>RawKeyEventDataWindows.modifierShift,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierLeftShift': (m.Scope scope)=>RawKeyEventDataWindows.modifierLeftShift,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierRightShift': (m.Scope scope)=>RawKeyEventDataWindows.modifierRightShift,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierControl': (m.Scope scope)=>RawKeyEventDataWindows.modifierControl,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierLeftControl': (m.Scope scope)=>RawKeyEventDataWindows.modifierLeftControl,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierRightControl': (m.Scope scope)=>RawKeyEventDataWindows.modifierRightControl,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierAlt': (m.Scope scope)=>RawKeyEventDataWindows.modifierAlt,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierLeftAlt': (m.Scope scope)=>RawKeyEventDataWindows.modifierLeftAlt,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierRightAlt': (m.Scope scope)=>RawKeyEventDataWindows.modifierRightAlt,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierLeftMeta': (m.Scope scope)=>RawKeyEventDataWindows.modifierLeftMeta,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierRightMeta': (m.Scope scope)=>RawKeyEventDataWindows.modifierRightMeta,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierCaps': (m.Scope scope)=>RawKeyEventDataWindows.modifierCaps,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierNumLock': (m.Scope scope)=>RawKeyEventDataWindows.modifierNumLock,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@modifierScrollLock': (m.Scope scope)=>RawKeyEventDataWindows.modifierScrollLock,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@keyLabel': (m.Scope scope, RawKeyEventDataWindows target)=>target.keyLabel,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@physicalKey': (m.Scope scope, RawKeyEventDataWindows target)=>target.physicalKey,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@logicalKey': (m.Scope scope, RawKeyEventDataWindows target)=>target.logicalKey,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@hashCode': (m.Scope scope, RawKeyEventDataWindows target)=>target.hashCode,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@': (m.Scope scope)=>({ characterCodePoint,  keyCode,  modifiers,  scanCode}){
return RawKeyEventDataWindows(characterCodePoint:characterCodePoint ?? 0, keyCode:keyCode ?? 0, modifiers:modifiers ?? 0, scanCode:scanCode ?? 0);
},
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@isModifierPressed': (m.Scope scope, RawKeyEventDataWindows target)=>target.isModifierPressed,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@getModifierSide': (m.Scope scope, RawKeyEventDataWindows target)=>target.getModifierSide,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@shouldDispatchEvent': (m.Scope scope, RawKeyEventDataWindows target)=>target.shouldDispatchEvent,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@debugFillProperties': (m.Scope scope, RawKeyEventDataWindows target)=>target.debugFillProperties,
'package:flutter/src/services/raw_keyboard_windows.dart@RawKeyEventDataWindows@==': (m.Scope scope, RawKeyEventDataWindows target)=>(other)=> target == other,

};
}