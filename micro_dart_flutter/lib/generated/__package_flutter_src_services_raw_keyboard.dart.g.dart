import 'package:flutter/src/services/raw_keyboard.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/binding.dart';
import 'package:flutter/src/services/hardware_keyboard.dart';
import 'package:flutter/src/services/keyboard_key.g.dart';
import 'package:flutter/src/services/raw_keyboard_android.dart';
import 'package:flutter/src/services/raw_keyboard_fuchsia.dart';
import 'package:flutter/src/services/raw_keyboard_ios.dart';
import 'package:flutter/src/services/raw_keyboard_linux.dart';
import 'package:flutter/src/services/raw_keyboard_macos.dart';
import 'package:flutter/src/services/raw_keyboard_web.dart';
import 'package:flutter/src/services/raw_keyboard_windows.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@#as': (m.Scope scope, target)=>()=>target as RawKeyEventData,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@#is': (m.Scope scope, target)=>()=>target is RawKeyEventData,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@isControlPressed': (m.Scope scope, RawKeyEventData target)=>target.isControlPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@isShiftPressed': (m.Scope scope, RawKeyEventData target)=>target.isShiftPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@isAltPressed': (m.Scope scope, RawKeyEventData target)=>target.isAltPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@isMetaPressed': (m.Scope scope, RawKeyEventData target)=>target.isMetaPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@modifiersPressed': (m.Scope scope, RawKeyEventData target)=>target.modifiersPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@physicalKey': (m.Scope scope, RawKeyEventData target)=>target.physicalKey,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@logicalKey': (m.Scope scope, RawKeyEventData target)=>target.logicalKey,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@keyLabel': (m.Scope scope, RawKeyEventData target)=>target.keyLabel,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@isModifierPressed': (m.Scope scope, RawKeyEventData target)=>target.isModifierPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@getModifierSide': (m.Scope scope, RawKeyEventData target)=>target.getModifierSide,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEventData@shouldDispatchEvent': (m.Scope scope, RawKeyEventData target)=>target.shouldDispatchEvent,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@#as': (m.Scope scope, target)=>()=>target as RawKeyEvent,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@#is': (m.Scope scope, target)=>()=>target is RawKeyEvent,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@character': (m.Scope scope, RawKeyEvent target)=>target.character,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@repeat': (m.Scope scope, RawKeyEvent target)=>target.repeat,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@data': (m.Scope scope, RawKeyEvent target)=>target.data,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@isControlPressed': (m.Scope scope, RawKeyEvent target)=>target.isControlPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@isShiftPressed': (m.Scope scope, RawKeyEvent target)=>target.isShiftPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@isAltPressed': (m.Scope scope, RawKeyEvent target)=>target.isAltPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@isMetaPressed': (m.Scope scope, RawKeyEvent target)=>target.isMetaPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@physicalKey': (m.Scope scope, RawKeyEvent target)=>target.physicalKey,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@logicalKey': (m.Scope scope, RawKeyEvent target)=>target.logicalKey,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@fromMessage': (m.Scope scope)=>RawKeyEvent.fromMessage,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@isKeyPressed': (m.Scope scope, RawKeyEvent target)=>target.isKeyPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyEvent@debugFillProperties': (m.Scope scope, RawKeyEvent target)=>target.debugFillProperties,
'package:flutter/src/services/raw_keyboard.dart@RawKeyDownEvent@#as': (m.Scope scope, target)=>()=>target as RawKeyDownEvent,
'package:flutter/src/services/raw_keyboard.dart@RawKeyDownEvent@#is': (m.Scope scope, target)=>()=>target is RawKeyDownEvent,
'package:flutter/src/services/raw_keyboard.dart@RawKeyDownEvent@': (m.Scope scope)=>RawKeyDownEvent,
'package:flutter/src/services/raw_keyboard.dart@RawKeyUpEvent@#as': (m.Scope scope, target)=>()=>target as RawKeyUpEvent,
'package:flutter/src/services/raw_keyboard.dart@RawKeyUpEvent@#is': (m.Scope scope, target)=>()=>target is RawKeyUpEvent,
'package:flutter/src/services/raw_keyboard.dart@RawKeyUpEvent@': (m.Scope scope)=>RawKeyUpEvent,
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@#as': (m.Scope scope, target)=>()=>target as RawKeyboard,
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@#is': (m.Scope scope, target)=>()=>target is RawKeyboard,
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@instance': (m.Scope scope)=>RawKeyboard.instance,
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@keyEventHandler': (m.Scope scope, RawKeyboard target)=>target.keyEventHandler,
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@keyEventHandler:set': (m.Scope scope, RawKeyboard target)=>(other)=>target.keyEventHandler=other,
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@keysPressed': (m.Scope scope, RawKeyboard target)=>target.keysPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@physicalKeysPressed': (m.Scope scope, RawKeyboard target)=>target.physicalKeysPressed,
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@addListener': (m.Scope scope, RawKeyboard target)=>( listener){
void listenerProxy( value) {
 engine.callFunctionPointer(scope, listener!,[value], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@removeListener': (m.Scope scope, RawKeyboard target)=>( listener){
void listenerProxy( value) {
 engine.callFunctionPointer(scope, listener!,[value], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@handleRawKeyEvent': (m.Scope scope, RawKeyboard target)=>target.handleRawKeyEvent,
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@lookUpLayout': (m.Scope scope, RawKeyboard target)=>target.lookUpLayout,
'package:flutter/src/services/raw_keyboard.dart@RawKeyboard@clearKeysPressed': (m.Scope scope, RawKeyboard target)=>target.clearKeysPressed,

};
}