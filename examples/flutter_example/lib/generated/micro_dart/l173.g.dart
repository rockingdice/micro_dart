import 'package:flutter/src/material/switch.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/shadows.dart';
import 'package:flutter/src/material/switch_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/toggleable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/switch.dart@Switch@#as': (m.Scope scope, target)=>()=>target as Switch,
'package:flutter/src/material/switch.dart@Switch@#is': (m.Scope scope, target)=>()=>target is Switch,
'package:flutter/src/material/switch.dart@Switch@value': (m.Scope scope, Switch target)=>target.value,
'package:flutter/src/material/switch.dart@Switch@onChanged': (m.Scope scope, Switch target)=>target.onChanged,
'package:flutter/src/material/switch.dart@Switch@activeColor': (m.Scope scope, Switch target)=>target.activeColor,
'package:flutter/src/material/switch.dart@Switch@activeTrackColor': (m.Scope scope, Switch target)=>target.activeTrackColor,
'package:flutter/src/material/switch.dart@Switch@inactiveThumbColor': (m.Scope scope, Switch target)=>target.inactiveThumbColor,
'package:flutter/src/material/switch.dart@Switch@inactiveTrackColor': (m.Scope scope, Switch target)=>target.inactiveTrackColor,
'package:flutter/src/material/switch.dart@Switch@activeThumbImage': (m.Scope scope, Switch target)=>target.activeThumbImage,
'package:flutter/src/material/switch.dart@Switch@onActiveThumbImageError': (m.Scope scope, Switch target)=>target.onActiveThumbImageError,
'package:flutter/src/material/switch.dart@Switch@inactiveThumbImage': (m.Scope scope, Switch target)=>target.inactiveThumbImage,
'package:flutter/src/material/switch.dart@Switch@onInactiveThumbImageError': (m.Scope scope, Switch target)=>target.onInactiveThumbImageError,
'package:flutter/src/material/switch.dart@Switch@thumbColor': (m.Scope scope, Switch target)=>target.thumbColor,
'package:flutter/src/material/switch.dart@Switch@trackColor': (m.Scope scope, Switch target)=>target.trackColor,
'package:flutter/src/material/switch.dart@Switch@trackOutlineColor': (m.Scope scope, Switch target)=>target.trackOutlineColor,
'package:flutter/src/material/switch.dart@Switch@thumbIcon': (m.Scope scope, Switch target)=>target.thumbIcon,
'package:flutter/src/material/switch.dart@Switch@materialTapTargetSize': (m.Scope scope, Switch target)=>target.materialTapTargetSize,
'package:flutter/src/material/switch.dart@Switch@applyCupertinoTheme': (m.Scope scope, Switch target)=>target.applyCupertinoTheme,
'package:flutter/src/material/switch.dart@Switch@dragStartBehavior': (m.Scope scope, Switch target)=>target.dragStartBehavior,
'package:flutter/src/material/switch.dart@Switch@mouseCursor': (m.Scope scope, Switch target)=>target.mouseCursor,
'package:flutter/src/material/switch.dart@Switch@focusColor': (m.Scope scope, Switch target)=>target.focusColor,
'package:flutter/src/material/switch.dart@Switch@hoverColor': (m.Scope scope, Switch target)=>target.hoverColor,
'package:flutter/src/material/switch.dart@Switch@overlayColor': (m.Scope scope, Switch target)=>target.overlayColor,
'package:flutter/src/material/switch.dart@Switch@splashRadius': (m.Scope scope, Switch target)=>target.splashRadius,
'package:flutter/src/material/switch.dart@Switch@focusNode': (m.Scope scope, Switch target)=>target.focusNode,
'package:flutter/src/material/switch.dart@Switch@onFocusChange': (m.Scope scope, Switch target)=>target.onFocusChange,
'package:flutter/src/material/switch.dart@Switch@autofocus': (m.Scope scope, Switch target)=>target.autofocus,
'package:flutter/src/material/switch.dart@Switch@': (m.Scope scope)=>({ activeColor,  activeThumbImage,  activeTrackColor,  autofocus,  dragStartBehavior,  focusColor,  focusNode,  hoverColor,  inactiveThumbColor,  inactiveThumbImage,  inactiveTrackColor,  key,  materialTapTargetSize,  mouseCursor,  onActiveThumbImageError,  onChanged,  onFocusChange,  onInactiveThumbImageError,  overlayColor,  splashRadius,  thumbColor,  thumbIcon,  trackColor,  trackOutlineColor,  value}){
void onActiveThumbImageErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, onActiveThumbImageError!,[exception, stackTrace], {});
}

void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onInactiveThumbImageErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, onInactiveThumbImageError!,[exception, stackTrace], {});
}

return Switch(activeColor:activeColor, activeThumbImage:activeThumbImage, activeTrackColor:activeTrackColor, autofocus:autofocus ?? false, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, focusColor:focusColor, focusNode:focusNode, hoverColor:hoverColor, inactiveThumbColor:inactiveThumbColor, inactiveThumbImage:inactiveThumbImage, inactiveTrackColor:inactiveTrackColor, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onActiveThumbImageError:onActiveThumbImageError == null ? null :onActiveThumbImageErrorProxy, onChanged:onChangedProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onInactiveThumbImageError:onInactiveThumbImageError == null ? null :onInactiveThumbImageErrorProxy, overlayColor:overlayColor, splashRadius:splashRadius, thumbColor:thumbColor, thumbIcon:thumbIcon, trackColor:trackColor, trackOutlineColor:trackOutlineColor, value:value);
},
'package:flutter/src/material/switch.dart@Switch@adaptive': (m.Scope scope)=>({ activeColor,  activeThumbImage,  activeTrackColor,  applyCupertinoTheme,  autofocus,  dragStartBehavior,  focusColor,  focusNode,  hoverColor,  inactiveThumbColor,  inactiveThumbImage,  inactiveTrackColor,  key,  materialTapTargetSize,  mouseCursor,  onActiveThumbImageError,  onChanged,  onFocusChange,  onInactiveThumbImageError,  overlayColor,  splashRadius,  thumbColor,  thumbIcon,  trackColor,  trackOutlineColor,  value}){
void onActiveThumbImageErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, onActiveThumbImageError!,[exception, stackTrace], {});
}

void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onInactiveThumbImageErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, onInactiveThumbImageError!,[exception, stackTrace], {});
}

return Switch.adaptive(activeColor:activeColor, activeThumbImage:activeThumbImage, activeTrackColor:activeTrackColor, applyCupertinoTheme:applyCupertinoTheme, autofocus:autofocus ?? false, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, focusColor:focusColor, focusNode:focusNode, hoverColor:hoverColor, inactiveThumbColor:inactiveThumbColor, inactiveThumbImage:inactiveThumbImage, inactiveTrackColor:inactiveTrackColor, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onActiveThumbImageError:onActiveThumbImageError == null ? null :onActiveThumbImageErrorProxy, onChanged:onChangedProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onInactiveThumbImageError:onInactiveThumbImageError == null ? null :onInactiveThumbImageErrorProxy, overlayColor:overlayColor, splashRadius:splashRadius, thumbColor:thumbColor, thumbIcon:thumbIcon, trackColor:trackColor, trackOutlineColor:trackOutlineColor, value:value);
},
'package:flutter/src/material/switch.dart@Switch@build': (m.Scope scope, Switch target)=>target.build,
'package:flutter/src/material/switch.dart@Switch@debugFillProperties': (m.Scope scope, Switch target)=>target.debugFillProperties,

};
}