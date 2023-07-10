import 'package:flutter/src/services/raw_keyboard_macos.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_maps.g.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@#as': (m.Scope scope, target)=>()=>target as RawKeyEventDataMacOs,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@#is': (m.Scope scope, target)=>()=>target is RawKeyEventDataMacOs,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@characters': (m.Scope scope, RawKeyEventDataMacOs target)=>target.characters,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@charactersIgnoringModifiers': (m.Scope scope, RawKeyEventDataMacOs target)=>target.charactersIgnoringModifiers,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@keyCode': (m.Scope scope, RawKeyEventDataMacOs target)=>target.keyCode,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifiers': (m.Scope scope, RawKeyEventDataMacOs target)=>target.modifiers,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@specifiedLogicalKey': (m.Scope scope, RawKeyEventDataMacOs target)=>target.specifiedLogicalKey,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierCapsLock': (m.Scope scope)=>RawKeyEventDataMacOs.modifierCapsLock,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierShift': (m.Scope scope)=>RawKeyEventDataMacOs.modifierShift,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierLeftShift': (m.Scope scope)=>RawKeyEventDataMacOs.modifierLeftShift,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierRightShift': (m.Scope scope)=>RawKeyEventDataMacOs.modifierRightShift,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierControl': (m.Scope scope)=>RawKeyEventDataMacOs.modifierControl,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierLeftControl': (m.Scope scope)=>RawKeyEventDataMacOs.modifierLeftControl,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierRightControl': (m.Scope scope)=>RawKeyEventDataMacOs.modifierRightControl,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierOption': (m.Scope scope)=>RawKeyEventDataMacOs.modifierOption,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierLeftOption': (m.Scope scope)=>RawKeyEventDataMacOs.modifierLeftOption,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierRightOption': (m.Scope scope)=>RawKeyEventDataMacOs.modifierRightOption,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierCommand': (m.Scope scope)=>RawKeyEventDataMacOs.modifierCommand,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierLeftCommand': (m.Scope scope)=>RawKeyEventDataMacOs.modifierLeftCommand,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierRightCommand': (m.Scope scope)=>RawKeyEventDataMacOs.modifierRightCommand,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierNumericPad': (m.Scope scope)=>RawKeyEventDataMacOs.modifierNumericPad,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierHelp': (m.Scope scope)=>RawKeyEventDataMacOs.modifierHelp,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@modifierFunction': (m.Scope scope)=>RawKeyEventDataMacOs.modifierFunction,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@deviceIndependentMask': (m.Scope scope)=>RawKeyEventDataMacOs.deviceIndependentMask,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@keyLabel': (m.Scope scope, RawKeyEventDataMacOs target)=>target.keyLabel,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@physicalKey': (m.Scope scope, RawKeyEventDataMacOs target)=>target.physicalKey,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@logicalKey': (m.Scope scope, RawKeyEventDataMacOs target)=>target.logicalKey,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@hashCode': (m.Scope scope, RawKeyEventDataMacOs target)=>target.hashCode,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@': (m.Scope scope)=>({ characters,  charactersIgnoringModifiers,  keyCode,  modifiers,  specifiedLogicalKey}){
return RawKeyEventDataMacOs(characters:characters ?? '', charactersIgnoringModifiers:charactersIgnoringModifiers ?? '', keyCode:keyCode ?? 0, modifiers:modifiers ?? 0, specifiedLogicalKey:specifiedLogicalKey);
},
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@isModifierPressed': (m.Scope scope, RawKeyEventDataMacOs target)=>target.isModifierPressed,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@getModifierSide': (m.Scope scope, RawKeyEventDataMacOs target)=>target.getModifierSide,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@shouldDispatchEvent': (m.Scope scope, RawKeyEventDataMacOs target)=>target.shouldDispatchEvent,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@debugFillProperties': (m.Scope scope, RawKeyEventDataMacOs target)=>target.debugFillProperties,
'package:flutter/src/services/raw_keyboard_macos.dart@RawKeyEventDataMacOs@==': (m.Scope scope, RawKeyEventDataMacOs target)=>(other)=> target == other,
'package:flutter/src/services/raw_keyboard_macos.dart@@runeToLowerCase': (m.Scope scope)=>runeToLowerCase,

};
}