import 'package:flutter/src/services/haptic_feedback.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/haptic_feedback.dart@HapticFeedback@#as': (m.Scope scope, target)=>()=>target as HapticFeedback,
'package:flutter/src/services/haptic_feedback.dart@HapticFeedback@#is': (m.Scope scope, target)=>()=>target is HapticFeedback,
'package:flutter/src/services/haptic_feedback.dart@HapticFeedback@vibrate': (m.Scope scope)=>HapticFeedback.vibrate,
'package:flutter/src/services/haptic_feedback.dart@HapticFeedback@lightImpact': (m.Scope scope)=>HapticFeedback.lightImpact,
'package:flutter/src/services/haptic_feedback.dart@HapticFeedback@mediumImpact': (m.Scope scope)=>HapticFeedback.mediumImpact,
'package:flutter/src/services/haptic_feedback.dart@HapticFeedback@heavyImpact': (m.Scope scope)=>HapticFeedback.heavyImpact,
'package:flutter/src/services/haptic_feedback.dart@HapticFeedback@selectionClick': (m.Scope scope)=>HapticFeedback.selectionClick,

};
}