import 'package:flutter/src/services/raw_keyboard_ios.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_maps.g.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@#as': (m.Scope scope, target)=>()=>target as RawKeyEventDataIos,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@#is': (m.Scope scope, target)=>()=>target is RawKeyEventDataIos,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@characters': (m.Scope scope, RawKeyEventDataIos target)=>target.characters,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@charactersIgnoringModifiers': (m.Scope scope, RawKeyEventDataIos target)=>target.charactersIgnoringModifiers,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@keyCode': (m.Scope scope, RawKeyEventDataIos target)=>target.keyCode,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifiers': (m.Scope scope, RawKeyEventDataIos target)=>target.modifiers,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierCapsLock': (m.Scope scope)=>RawKeyEventDataIos.modifierCapsLock,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierShift': (m.Scope scope)=>RawKeyEventDataIos.modifierShift,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierLeftShift': (m.Scope scope)=>RawKeyEventDataIos.modifierLeftShift,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierRightShift': (m.Scope scope)=>RawKeyEventDataIos.modifierRightShift,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierControl': (m.Scope scope)=>RawKeyEventDataIos.modifierControl,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierLeftControl': (m.Scope scope)=>RawKeyEventDataIos.modifierLeftControl,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierRightControl': (m.Scope scope)=>RawKeyEventDataIos.modifierRightControl,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierOption': (m.Scope scope)=>RawKeyEventDataIos.modifierOption,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierLeftOption': (m.Scope scope)=>RawKeyEventDataIos.modifierLeftOption,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierRightOption': (m.Scope scope)=>RawKeyEventDataIos.modifierRightOption,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierCommand': (m.Scope scope)=>RawKeyEventDataIos.modifierCommand,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierLeftCommand': (m.Scope scope)=>RawKeyEventDataIos.modifierLeftCommand,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierRightCommand': (m.Scope scope)=>RawKeyEventDataIos.modifierRightCommand,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierNumericPad': (m.Scope scope)=>RawKeyEventDataIos.modifierNumericPad,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierHelp': (m.Scope scope)=>RawKeyEventDataIos.modifierHelp,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@modifierFunction': (m.Scope scope)=>RawKeyEventDataIos.modifierFunction,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@deviceIndependentMask': (m.Scope scope)=>RawKeyEventDataIos.deviceIndependentMask,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@keyLabel': (m.Scope scope, RawKeyEventDataIos target)=>target.keyLabel,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@physicalKey': (m.Scope scope, RawKeyEventDataIos target)=>target.physicalKey,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@logicalKey': (m.Scope scope, RawKeyEventDataIos target)=>target.logicalKey,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@hashCode': (m.Scope scope, RawKeyEventDataIos target)=>target.hashCode,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@': (m.Scope scope)=>({ characters,  charactersIgnoringModifiers,  keyCode,  modifiers}){
return RawKeyEventDataIos(characters:characters ?? '', charactersIgnoringModifiers:charactersIgnoringModifiers ?? '', keyCode:keyCode ?? 0, modifiers:modifiers ?? 0);
},
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@isModifierPressed': (m.Scope scope, RawKeyEventDataIos target)=>target.isModifierPressed,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@getModifierSide': (m.Scope scope, RawKeyEventDataIos target)=>target.getModifierSide,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@debugFillProperties': (m.Scope scope, RawKeyEventDataIos target)=>target.debugFillProperties,
'package:flutter/src/services/raw_keyboard_ios.dart@RawKeyEventDataIos@==': (m.Scope scope, RawKeyEventDataIos target)=>(other)=> target == other,

};
}