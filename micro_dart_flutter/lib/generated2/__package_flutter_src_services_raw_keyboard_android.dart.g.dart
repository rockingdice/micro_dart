import 'package:flutter/src/services/raw_keyboard_android.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_maps.g.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@#as': (m.Scope scope, target)=>()=>target as RawKeyEventDataAndroid,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@#is': (m.Scope scope, target)=>()=>target is RawKeyEventDataAndroid,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@flags': (m.Scope scope, RawKeyEventDataAndroid target)=>target.flags,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@codePoint': (m.Scope scope, RawKeyEventDataAndroid target)=>target.codePoint,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@plainCodePoint': (m.Scope scope, RawKeyEventDataAndroid target)=>target.plainCodePoint,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@keyCode': (m.Scope scope, RawKeyEventDataAndroid target)=>target.keyCode,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@scanCode': (m.Scope scope, RawKeyEventDataAndroid target)=>target.scanCode,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@metaState': (m.Scope scope, RawKeyEventDataAndroid target)=>target.metaState,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@eventSource': (m.Scope scope, RawKeyEventDataAndroid target)=>target.eventSource,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@vendorId': (m.Scope scope, RawKeyEventDataAndroid target)=>target.vendorId,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@productId': (m.Scope scope, RawKeyEventDataAndroid target)=>target.productId,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@deviceId': (m.Scope scope, RawKeyEventDataAndroid target)=>target.deviceId,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@repeatCount': (m.Scope scope, RawKeyEventDataAndroid target)=>target.repeatCount,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierNone': (m.Scope scope)=>RawKeyEventDataAndroid.modifierNone,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierAlt': (m.Scope scope)=>RawKeyEventDataAndroid.modifierAlt,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierLeftAlt': (m.Scope scope)=>RawKeyEventDataAndroid.modifierLeftAlt,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierRightAlt': (m.Scope scope)=>RawKeyEventDataAndroid.modifierRightAlt,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierShift': (m.Scope scope)=>RawKeyEventDataAndroid.modifierShift,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierLeftShift': (m.Scope scope)=>RawKeyEventDataAndroid.modifierLeftShift,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierRightShift': (m.Scope scope)=>RawKeyEventDataAndroid.modifierRightShift,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierSym': (m.Scope scope)=>RawKeyEventDataAndroid.modifierSym,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierFunction': (m.Scope scope)=>RawKeyEventDataAndroid.modifierFunction,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierControl': (m.Scope scope)=>RawKeyEventDataAndroid.modifierControl,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierLeftControl': (m.Scope scope)=>RawKeyEventDataAndroid.modifierLeftControl,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierRightControl': (m.Scope scope)=>RawKeyEventDataAndroid.modifierRightControl,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierMeta': (m.Scope scope)=>RawKeyEventDataAndroid.modifierMeta,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierLeftMeta': (m.Scope scope)=>RawKeyEventDataAndroid.modifierLeftMeta,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierRightMeta': (m.Scope scope)=>RawKeyEventDataAndroid.modifierRightMeta,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierCapsLock': (m.Scope scope)=>RawKeyEventDataAndroid.modifierCapsLock,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierNumLock': (m.Scope scope)=>RawKeyEventDataAndroid.modifierNumLock,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@modifierScrollLock': (m.Scope scope)=>RawKeyEventDataAndroid.modifierScrollLock,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@keyLabel': (m.Scope scope, RawKeyEventDataAndroid target)=>target.keyLabel,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@physicalKey': (m.Scope scope, RawKeyEventDataAndroid target)=>target.physicalKey,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@logicalKey': (m.Scope scope, RawKeyEventDataAndroid target)=>target.logicalKey,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@hashCode': (m.Scope scope, RawKeyEventDataAndroid target)=>target.hashCode,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@': (m.Scope scope)=>({ codePoint,  deviceId,  eventSource,  flags,  keyCode,  metaState,  plainCodePoint,  productId,  repeatCount,  scanCode,  vendorId}){
return RawKeyEventDataAndroid(codePoint:codePoint ?? 0, deviceId:deviceId ?? 0, eventSource:eventSource ?? 0, flags:flags ?? 0, keyCode:keyCode ?? 0, metaState:metaState ?? 0, plainCodePoint:plainCodePoint ?? 0, productId:productId ?? 0, repeatCount:repeatCount ?? 0, scanCode:scanCode ?? 0, vendorId:vendorId ?? 0);
},
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@isModifierPressed': (m.Scope scope, RawKeyEventDataAndroid target)=>target.isModifierPressed,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@getModifierSide': (m.Scope scope, RawKeyEventDataAndroid target)=>target.getModifierSide,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@debugFillProperties': (m.Scope scope, RawKeyEventDataAndroid target)=>target.debugFillProperties,
'package:flutter/src/services/raw_keyboard_android.dart@RawKeyEventDataAndroid@==': (m.Scope scope, RawKeyEventDataAndroid target)=>(other)=> target == other,

};
}