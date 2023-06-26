import 'package:flutter/src/services/raw_keyboard_web.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/keyboard_maps.g.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@#as': (m.Scope scope, target)=>()=>target as RawKeyEventDataWeb,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@#is': (m.Scope scope, target)=>()=>target is RawKeyEventDataWeb,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@code': (m.Scope scope, RawKeyEventDataWeb target)=>target.code,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@key': (m.Scope scope, RawKeyEventDataWeb target)=>target.key,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@location': (m.Scope scope, RawKeyEventDataWeb target)=>target.location,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@metaState': (m.Scope scope, RawKeyEventDataWeb target)=>target.metaState,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@keyCode': (m.Scope scope, RawKeyEventDataWeb target)=>target.keyCode,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@modifierNone': (m.Scope scope)=>RawKeyEventDataWeb.modifierNone,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@modifierShift': (m.Scope scope)=>RawKeyEventDataWeb.modifierShift,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@modifierAlt': (m.Scope scope)=>RawKeyEventDataWeb.modifierAlt,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@modifierControl': (m.Scope scope)=>RawKeyEventDataWeb.modifierControl,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@modifierMeta': (m.Scope scope)=>RawKeyEventDataWeb.modifierMeta,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@modifierNumLock': (m.Scope scope)=>RawKeyEventDataWeb.modifierNumLock,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@modifierCapsLock': (m.Scope scope)=>RawKeyEventDataWeb.modifierCapsLock,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@modifierScrollLock': (m.Scope scope)=>RawKeyEventDataWeb.modifierScrollLock,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@keyLabel': (m.Scope scope, RawKeyEventDataWeb target)=>target.keyLabel,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@physicalKey': (m.Scope scope, RawKeyEventDataWeb target)=>target.physicalKey,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@logicalKey': (m.Scope scope, RawKeyEventDataWeb target)=>target.logicalKey,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@hashCode': (m.Scope scope, RawKeyEventDataWeb target)=>target.hashCode,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@': (m.Scope scope)=>RawKeyEventDataWeb,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@isModifierPressed': (m.Scope scope, RawKeyEventDataWeb target)=>target.isModifierPressed,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@getModifierSide': (m.Scope scope, RawKeyEventDataWeb target)=>target.getModifierSide,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@debugFillProperties': (m.Scope scope, RawKeyEventDataWeb target)=>target.debugFillProperties,
'package:flutter/src/services/raw_keyboard_web.dart@RawKeyEventDataWeb@==': (m.Scope scope, RawKeyEventDataWeb target)=>(other)=> target == other,

};
}