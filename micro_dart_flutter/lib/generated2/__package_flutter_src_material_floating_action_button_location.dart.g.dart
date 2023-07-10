import 'package:flutter/src/material/floating_action_button_location.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/floating_action_button_location.dart@@kFloatingActionButtonMargin': (m.Scope scope)=>kFloatingActionButtonMargin,
'package:flutter/src/material/floating_action_button_location.dart@@kFloatingActionButtonSegue': (m.Scope scope)=>kFloatingActionButtonSegue,
'package:flutter/src/material/floating_action_button_location.dart@@kFloatingActionButtonTurnInterval': (m.Scope scope)=>kFloatingActionButtonTurnInterval,
'package:flutter/src/material/floating_action_button_location.dart@@kMiniButtonOffsetAdjustment': (m.Scope scope)=>kMiniButtonOffsetAdjustment,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@#as': (m.Scope scope, target)=>()=>target as FloatingActionButtonLocation,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@#is': (m.Scope scope, target)=>()=>target is FloatingActionButtonLocation,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@startTop': (m.Scope scope)=>FloatingActionButtonLocation.startTop,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@miniStartTop': (m.Scope scope)=>FloatingActionButtonLocation.miniStartTop,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@centerTop': (m.Scope scope)=>FloatingActionButtonLocation.centerTop,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@miniCenterTop': (m.Scope scope)=>FloatingActionButtonLocation.miniCenterTop,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@endTop': (m.Scope scope)=>FloatingActionButtonLocation.endTop,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@miniEndTop': (m.Scope scope)=>FloatingActionButtonLocation.miniEndTop,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@startFloat': (m.Scope scope)=>FloatingActionButtonLocation.startFloat,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@miniStartFloat': (m.Scope scope)=>FloatingActionButtonLocation.miniStartFloat,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@centerFloat': (m.Scope scope)=>FloatingActionButtonLocation.centerFloat,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@miniCenterFloat': (m.Scope scope)=>FloatingActionButtonLocation.miniCenterFloat,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@endFloat': (m.Scope scope)=>FloatingActionButtonLocation.endFloat,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@miniEndFloat': (m.Scope scope)=>FloatingActionButtonLocation.miniEndFloat,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@startDocked': (m.Scope scope)=>FloatingActionButtonLocation.startDocked,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@miniStartDocked': (m.Scope scope)=>FloatingActionButtonLocation.miniStartDocked,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@centerDocked': (m.Scope scope)=>FloatingActionButtonLocation.centerDocked,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@miniCenterDocked': (m.Scope scope)=>FloatingActionButtonLocation.miniCenterDocked,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@endDocked': (m.Scope scope)=>FloatingActionButtonLocation.endDocked,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@miniEndDocked': (m.Scope scope)=>FloatingActionButtonLocation.miniEndDocked,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@endContained': (m.Scope scope)=>FloatingActionButtonLocation.endContained,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@getOffset': (m.Scope scope, FloatingActionButtonLocation target)=>target.getOffset,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonLocation@toString': (m.Scope scope, FloatingActionButtonLocation target)=>target.toString,
'package:flutter/src/material/floating_action_button_location.dart@StandardFabLocation@#as': (m.Scope scope, target)=>()=>target as StandardFabLocation,
'package:flutter/src/material/floating_action_button_location.dart@StandardFabLocation@#is': (m.Scope scope, target)=>()=>target is StandardFabLocation,
'package:flutter/src/material/floating_action_button_location.dart@StandardFabLocation@getOffsetX': (m.Scope scope, StandardFabLocation target)=>target.getOffsetX,
'package:flutter/src/material/floating_action_button_location.dart@StandardFabLocation@getOffsetY': (m.Scope scope, StandardFabLocation target)=>target.getOffsetY,
'package:flutter/src/material/floating_action_button_location.dart@StandardFabLocation@isMini': (m.Scope scope, StandardFabLocation target)=>target.isMini,
'package:flutter/src/material/floating_action_button_location.dart@StandardFabLocation@getOffset': (m.Scope scope, StandardFabLocation target)=>target.getOffset,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonAnimator@#as': (m.Scope scope, target)=>()=>target as FloatingActionButtonAnimator,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonAnimator@#is': (m.Scope scope, target)=>()=>target is FloatingActionButtonAnimator,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonAnimator@scaling': (m.Scope scope)=>FloatingActionButtonAnimator.scaling,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonAnimator@getOffset': (m.Scope scope, FloatingActionButtonAnimator target)=>target.getOffset,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonAnimator@getScaleAnimation': (m.Scope scope, FloatingActionButtonAnimator target)=>target.getScaleAnimation,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonAnimator@getRotationAnimation': (m.Scope scope, FloatingActionButtonAnimator target)=>target.getRotationAnimation,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonAnimator@getAnimationRestart': (m.Scope scope, FloatingActionButtonAnimator target)=>target.getAnimationRestart,
'package:flutter/src/material/floating_action_button_location.dart@FloatingActionButtonAnimator@toString': (m.Scope scope, FloatingActionButtonAnimator target)=>target.toString,

};
}