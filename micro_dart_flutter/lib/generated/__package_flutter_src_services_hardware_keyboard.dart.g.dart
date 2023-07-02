import 'package:flutter/src/services/hardware_keyboard.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/binding.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/hardware_keyboard.dart@KeyEvent@#as': (m.Scope scope, target)=>()=>target as KeyEvent,
'package:flutter/src/services/hardware_keyboard.dart@KeyEvent@#is': (m.Scope scope, target)=>()=>target is KeyEvent,
'package:flutter/src/services/hardware_keyboard.dart@KeyEvent@physicalKey': (m.Scope scope, KeyEvent target)=>target.physicalKey,
'package:flutter/src/services/hardware_keyboard.dart@KeyEvent@logicalKey': (m.Scope scope, KeyEvent target)=>target.logicalKey,
'package:flutter/src/services/hardware_keyboard.dart@KeyEvent@character': (m.Scope scope, KeyEvent target)=>target.character,
'package:flutter/src/services/hardware_keyboard.dart@KeyEvent@timeStamp': (m.Scope scope, KeyEvent target)=>target.timeStamp,
'package:flutter/src/services/hardware_keyboard.dart@KeyEvent@synthesized': (m.Scope scope, KeyEvent target)=>target.synthesized,
'package:flutter/src/services/hardware_keyboard.dart@KeyEvent@debugFillProperties': (m.Scope scope, KeyEvent target)=>target.debugFillProperties,
'package:flutter/src/services/hardware_keyboard.dart@KeyDownEvent@#as': (m.Scope scope, target)=>()=>target as KeyDownEvent,
'package:flutter/src/services/hardware_keyboard.dart@KeyDownEvent@#is': (m.Scope scope, target)=>()=>target is KeyDownEvent,
'package:flutter/src/services/hardware_keyboard.dart@KeyDownEvent@': (m.Scope scope)=>({ character,  logicalKey,  physicalKey,  synthesized,  timeStamp}){
return KeyDownEvent(character:character, logicalKey:logicalKey, physicalKey:physicalKey, synthesized:synthesized ?? false, timeStamp:timeStamp);
},
'package:flutter/src/services/hardware_keyboard.dart@KeyUpEvent@#as': (m.Scope scope, target)=>()=>target as KeyUpEvent,
'package:flutter/src/services/hardware_keyboard.dart@KeyUpEvent@#is': (m.Scope scope, target)=>()=>target is KeyUpEvent,
'package:flutter/src/services/hardware_keyboard.dart@KeyUpEvent@': (m.Scope scope)=>({ logicalKey,  physicalKey,  synthesized,  timeStamp}){
return KeyUpEvent(logicalKey:logicalKey, physicalKey:physicalKey, synthesized:synthesized ?? false, timeStamp:timeStamp);
},
'package:flutter/src/services/hardware_keyboard.dart@KeyRepeatEvent@#as': (m.Scope scope, target)=>()=>target as KeyRepeatEvent,
'package:flutter/src/services/hardware_keyboard.dart@KeyRepeatEvent@#is': (m.Scope scope, target)=>()=>target is KeyRepeatEvent,
'package:flutter/src/services/hardware_keyboard.dart@KeyRepeatEvent@': (m.Scope scope)=>({ character,  logicalKey,  physicalKey,  timeStamp}){
return KeyRepeatEvent(character:character, logicalKey:logicalKey, physicalKey:physicalKey, timeStamp:timeStamp);
},
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@#as': (m.Scope scope, target)=>()=>target as HardwareKeyboard,
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@#is': (m.Scope scope, target)=>()=>target is HardwareKeyboard,
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@instance': (m.Scope scope)=>HardwareKeyboard.instance,
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@physicalKeysPressed': (m.Scope scope, HardwareKeyboard target)=>target.physicalKeysPressed,
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@logicalKeysPressed': (m.Scope scope, HardwareKeyboard target)=>target.logicalKeysPressed,
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@lockModesEnabled': (m.Scope scope, HardwareKeyboard target)=>target.lockModesEnabled,
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@': (m.Scope scope)=>(){
return HardwareKeyboard();
},
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@lookUpLayout': (m.Scope scope, HardwareKeyboard target)=>target.lookUpLayout,
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@addHandler': (m.Scope scope, HardwareKeyboard target)=>( handler){
bool handlerProxy( event) {
return  engine.callFunctionPointer(scope, handler!,[event], {});
}

target.addHandler(handlerProxy);
},
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@removeHandler': (m.Scope scope, HardwareKeyboard target)=>( handler){
bool handlerProxy( event) {
return  engine.callFunctionPointer(scope, handler!,[event], {});
}

target.removeHandler(handlerProxy);
},
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@handleKeyEvent': (m.Scope scope, HardwareKeyboard target)=>target.handleKeyEvent,
'package:flutter/src/services/hardware_keyboard.dart@HardwareKeyboard@clearState': (m.Scope scope, HardwareKeyboard target)=>target.clearState,
'package:flutter/src/services/hardware_keyboard.dart@KeyMessage@#as': (m.Scope scope, target)=>()=>target as KeyMessage,
'package:flutter/src/services/hardware_keyboard.dart@KeyMessage@#is': (m.Scope scope, target)=>()=>target is KeyMessage,
'package:flutter/src/services/hardware_keyboard.dart@KeyMessage@events': (m.Scope scope, KeyMessage target)=>target.events,
'package:flutter/src/services/hardware_keyboard.dart@KeyMessage@rawEvent': (m.Scope scope, KeyMessage target)=>target.rawEvent,
'package:flutter/src/services/hardware_keyboard.dart@KeyMessage@': (m.Scope scope)=>( events,  rawEvent){
return KeyMessage(events, rawEvent);
},
'package:flutter/src/services/hardware_keyboard.dart@KeyMessage@toString': (m.Scope scope, KeyMessage target)=>target.toString,
'package:flutter/src/services/hardware_keyboard.dart@KeyEventManager@#as': (m.Scope scope, target)=>()=>target as KeyEventManager,
'package:flutter/src/services/hardware_keyboard.dart@KeyEventManager@#is': (m.Scope scope, target)=>()=>target is KeyEventManager,
'package:flutter/src/services/hardware_keyboard.dart@KeyEventManager@keyMessageHandler': (m.Scope scope, KeyEventManager target)=>target.keyMessageHandler,
'package:flutter/src/services/hardware_keyboard.dart@KeyEventManager@keyMessageHandler:set': (m.Scope scope, KeyEventManager target)=>(other)=>target.keyMessageHandler=other,
'package:flutter/src/services/hardware_keyboard.dart@KeyEventManager@': (m.Scope scope)=>( _hardwareKeyboard,  _rawKeyboard){
return KeyEventManager(_hardwareKeyboard, _rawKeyboard);
},
'package:flutter/src/services/hardware_keyboard.dart@KeyEventManager@handleKeyData': (m.Scope scope, KeyEventManager target)=>target.handleKeyData,
'package:flutter/src/services/hardware_keyboard.dart@KeyEventManager@handleRawKeyMessage': (m.Scope scope, KeyEventManager target)=>target.handleRawKeyMessage,
'package:flutter/src/services/hardware_keyboard.dart@KeyEventManager@clearState': (m.Scope scope, KeyEventManager target)=>target.clearState,

};
}