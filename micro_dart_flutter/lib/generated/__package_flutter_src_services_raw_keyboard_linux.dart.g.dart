import 'package:flutter/src/services/raw_keyboard_linux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_maps.g.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@#as': (m.Scope scope, target)=>()=>target as RawKeyEventDataLinux,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@#is': (m.Scope scope, target)=>()=>target is RawKeyEventDataLinux,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@keyHelper': (m.Scope scope, RawKeyEventDataLinux target)=>target.keyHelper,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@unicodeScalarValues': (m.Scope scope, RawKeyEventDataLinux target)=>target.unicodeScalarValues,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@scanCode': (m.Scope scope, RawKeyEventDataLinux target)=>target.scanCode,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@keyCode': (m.Scope scope, RawKeyEventDataLinux target)=>target.keyCode,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@modifiers': (m.Scope scope, RawKeyEventDataLinux target)=>target.modifiers,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@isDown': (m.Scope scope, RawKeyEventDataLinux target)=>target.isDown,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@specifiedLogicalKey': (m.Scope scope, RawKeyEventDataLinux target)=>target.specifiedLogicalKey,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@keyLabel': (m.Scope scope, RawKeyEventDataLinux target)=>target.keyLabel,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@physicalKey': (m.Scope scope, RawKeyEventDataLinux target)=>target.physicalKey,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@logicalKey': (m.Scope scope, RawKeyEventDataLinux target)=>target.logicalKey,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@hashCode': (m.Scope scope, RawKeyEventDataLinux target)=>target.hashCode,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@': (m.Scope scope)=>({ isDown,  keyCode,  keyHelper,  modifiers,  scanCode,  specifiedLogicalKey,  unicodeScalarValues}){
return RawKeyEventDataLinux(isDown:isDown, keyCode:keyCode ?? 0, keyHelper:keyHelper, modifiers:modifiers ?? 0, scanCode:scanCode ?? 0, specifiedLogicalKey:specifiedLogicalKey, unicodeScalarValues:unicodeScalarValues ?? 0);
},
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@isModifierPressed': (m.Scope scope, RawKeyEventDataLinux target)=>target.isModifierPressed,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@getModifierSide': (m.Scope scope, RawKeyEventDataLinux target)=>target.getModifierSide,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@debugFillProperties': (m.Scope scope, RawKeyEventDataLinux target)=>target.debugFillProperties,
'package:flutter/src/services/raw_keyboard_linux.dart@RawKeyEventDataLinux@==': (m.Scope scope, RawKeyEventDataLinux target)=>(other)=> target == other,
'package:flutter/src/services/raw_keyboard_linux.dart@KeyHelper@#as': (m.Scope scope, target)=>()=>target as KeyHelper,
'package:flutter/src/services/raw_keyboard_linux.dart@KeyHelper@#is': (m.Scope scope, target)=>()=>target is KeyHelper,
'package:flutter/src/services/raw_keyboard_linux.dart@KeyHelper@debugToolkit': (m.Scope scope, KeyHelper target)=>target.debugToolkit,
'package:flutter/src/services/raw_keyboard_linux.dart@KeyHelper@platformPlane': (m.Scope scope, KeyHelper target)=>target.platformPlane,
'package:flutter/src/services/raw_keyboard_linux.dart@KeyHelper@': (m.Scope scope)=>( toolkit){
return KeyHelper(toolkit);
},
'package:flutter/src/services/raw_keyboard_linux.dart@KeyHelper@getModifierSide': (m.Scope scope, KeyHelper target)=>target.getModifierSide,
'package:flutter/src/services/raw_keyboard_linux.dart@KeyHelper@isModifierPressed': (m.Scope scope, KeyHelper target)=>target.isModifierPressed,
'package:flutter/src/services/raw_keyboard_linux.dart@KeyHelper@numpadKey': (m.Scope scope, KeyHelper target)=>target.numpadKey,
'package:flutter/src/services/raw_keyboard_linux.dart@KeyHelper@logicalKey': (m.Scope scope, KeyHelper target)=>target.logicalKey,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@#as': (m.Scope scope, target)=>()=>target as GLFWKeyHelper,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@#is': (m.Scope scope, target)=>()=>target is GLFWKeyHelper,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@modifierCapsLock': (m.Scope scope)=>GLFWKeyHelper.modifierCapsLock,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@modifierShift': (m.Scope scope)=>GLFWKeyHelper.modifierShift,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@modifierControl': (m.Scope scope)=>GLFWKeyHelper.modifierControl,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@modifierAlt': (m.Scope scope)=>GLFWKeyHelper.modifierAlt,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@modifierMeta': (m.Scope scope)=>GLFWKeyHelper.modifierMeta,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@modifierNumericPad': (m.Scope scope)=>GLFWKeyHelper.modifierNumericPad,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@debugToolkit': (m.Scope scope, GLFWKeyHelper target)=>target.debugToolkit,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@platformPlane': (m.Scope scope, GLFWKeyHelper target)=>target.platformPlane,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@': (m.Scope scope)=>(){
return GLFWKeyHelper();
},
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@isModifierPressed': (m.Scope scope, GLFWKeyHelper target)=>target.isModifierPressed,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@getModifierSide': (m.Scope scope, GLFWKeyHelper target)=>target.getModifierSide,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@numpadKey': (m.Scope scope, GLFWKeyHelper target)=>target.numpadKey,
'package:flutter/src/services/raw_keyboard_linux.dart@GLFWKeyHelper@logicalKey': (m.Scope scope, GLFWKeyHelper target)=>target.logicalKey,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@#as': (m.Scope scope, target)=>()=>target as GtkKeyHelper,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@#is': (m.Scope scope, target)=>()=>target is GtkKeyHelper,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@modifierShift': (m.Scope scope)=>GtkKeyHelper.modifierShift,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@modifierCapsLock': (m.Scope scope)=>GtkKeyHelper.modifierCapsLock,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@modifierControl': (m.Scope scope)=>GtkKeyHelper.modifierControl,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@modifierMod1': (m.Scope scope)=>GtkKeyHelper.modifierMod1,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@modifierMod2': (m.Scope scope)=>GtkKeyHelper.modifierMod2,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@modifierMeta': (m.Scope scope)=>GtkKeyHelper.modifierMeta,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@debugToolkit': (m.Scope scope, GtkKeyHelper target)=>target.debugToolkit,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@platformPlane': (m.Scope scope, GtkKeyHelper target)=>target.platformPlane,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@': (m.Scope scope)=>(){
return GtkKeyHelper();
},
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@isModifierPressed': (m.Scope scope, GtkKeyHelper target)=>target.isModifierPressed,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@getModifierSide': (m.Scope scope, GtkKeyHelper target)=>target.getModifierSide,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@numpadKey': (m.Scope scope, GtkKeyHelper target)=>target.numpadKey,
'package:flutter/src/services/raw_keyboard_linux.dart@GtkKeyHelper@logicalKey': (m.Scope scope, GtkKeyHelper target)=>target.logicalKey,

};
}