import 'package:flutter/src/services/system_sound.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/system_sound.dart@SystemSound@#as': (m.Scope scope, target)=>()=>target as SystemSound,
'package:flutter/src/services/system_sound.dart@SystemSound@#is': (m.Scope scope, target)=>()=>target is SystemSound,
'package:flutter/src/services/system_sound.dart@SystemSound@play': (m.Scope scope)=>SystemSound.play,

};
}