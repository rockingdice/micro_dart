import 'package:flutter/src/material/switch_list_tile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/list_tile_theme.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/switch.dart';
import 'package:flutter/src/material/switch_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@#as': (m.Scope scope, target)=>()=>target as SwitchListTile,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@#is': (m.Scope scope, target)=>()=>target is SwitchListTile,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@value': (m.Scope scope, SwitchListTile target)=>target.value,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@onChanged': (m.Scope scope, SwitchListTile target)=>target.onChanged,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@activeColor': (m.Scope scope, SwitchListTile target)=>target.activeColor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@activeTrackColor': (m.Scope scope, SwitchListTile target)=>target.activeTrackColor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@inactiveThumbColor': (m.Scope scope, SwitchListTile target)=>target.inactiveThumbColor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@inactiveTrackColor': (m.Scope scope, SwitchListTile target)=>target.inactiveTrackColor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@activeThumbImage': (m.Scope scope, SwitchListTile target)=>target.activeThumbImage,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@onActiveThumbImageError': (m.Scope scope, SwitchListTile target)=>target.onActiveThumbImageError,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@inactiveThumbImage': (m.Scope scope, SwitchListTile target)=>target.inactiveThumbImage,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@onInactiveThumbImageError': (m.Scope scope, SwitchListTile target)=>target.onInactiveThumbImageError,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@thumbColor': (m.Scope scope, SwitchListTile target)=>target.thumbColor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@trackColor': (m.Scope scope, SwitchListTile target)=>target.trackColor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@trackOutlineColor': (m.Scope scope, SwitchListTile target)=>target.trackOutlineColor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@thumbIcon': (m.Scope scope, SwitchListTile target)=>target.thumbIcon,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@materialTapTargetSize': (m.Scope scope, SwitchListTile target)=>target.materialTapTargetSize,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@dragStartBehavior': (m.Scope scope, SwitchListTile target)=>target.dragStartBehavior,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@mouseCursor': (m.Scope scope, SwitchListTile target)=>target.mouseCursor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@overlayColor': (m.Scope scope, SwitchListTile target)=>target.overlayColor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@splashRadius': (m.Scope scope, SwitchListTile target)=>target.splashRadius,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@focusNode': (m.Scope scope, SwitchListTile target)=>target.focusNode,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@onFocusChange': (m.Scope scope, SwitchListTile target)=>target.onFocusChange,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@autofocus': (m.Scope scope, SwitchListTile target)=>target.autofocus,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@tileColor': (m.Scope scope, SwitchListTile target)=>target.tileColor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@title': (m.Scope scope, SwitchListTile target)=>target.title,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@subtitle': (m.Scope scope, SwitchListTile target)=>target.subtitle,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@secondary': (m.Scope scope, SwitchListTile target)=>target.secondary,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@isThreeLine': (m.Scope scope, SwitchListTile target)=>target.isThreeLine,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@dense': (m.Scope scope, SwitchListTile target)=>target.dense,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@contentPadding': (m.Scope scope, SwitchListTile target)=>target.contentPadding,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@selected': (m.Scope scope, SwitchListTile target)=>target.selected,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@controlAffinity': (m.Scope scope, SwitchListTile target)=>target.controlAffinity,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@shape': (m.Scope scope, SwitchListTile target)=>target.shape,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@selectedTileColor': (m.Scope scope, SwitchListTile target)=>target.selectedTileColor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@visualDensity': (m.Scope scope, SwitchListTile target)=>target.visualDensity,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@enableFeedback': (m.Scope scope, SwitchListTile target)=>target.enableFeedback,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@hoverColor': (m.Scope scope, SwitchListTile target)=>target.hoverColor,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@applyCupertinoTheme': (m.Scope scope, SwitchListTile target)=>target.applyCupertinoTheme,
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@': (m.Scope scope)=>({ activeColor,  activeThumbImage,  activeTrackColor,  autofocus,  contentPadding,  controlAffinity,  dense,  dragStartBehavior,  enableFeedback,  focusNode,  hoverColor,  inactiveThumbColor,  inactiveThumbImage,  inactiveTrackColor,  isThreeLine,  key,  materialTapTargetSize,  mouseCursor,  onActiveThumbImageError,  onChanged,  onFocusChange,  onInactiveThumbImageError,  overlayColor,  secondary,  selected,  selectedTileColor,  shape,  splashRadius,  subtitle,  thumbColor,  thumbIcon,  tileColor,  title,  trackColor,  trackOutlineColor,  value,  visualDensity}){
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

return SwitchListTile(activeColor:activeColor, activeThumbImage:activeThumbImage, activeTrackColor:activeTrackColor, autofocus:autofocus ?? false, contentPadding:contentPadding, controlAffinity:controlAffinity ?? ListTileControlAffinity.platform, dense:dense, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, enableFeedback:enableFeedback, focusNode:focusNode, hoverColor:hoverColor, inactiveThumbColor:inactiveThumbColor, inactiveThumbImage:inactiveThumbImage, inactiveTrackColor:inactiveTrackColor, isThreeLine:isThreeLine ?? false, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onActiveThumbImageError:onActiveThumbImageError == null ? null :onActiveThumbImageErrorProxy, onChanged:onChangedProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onInactiveThumbImageError:onInactiveThumbImageError == null ? null :onInactiveThumbImageErrorProxy, overlayColor:overlayColor, secondary:secondary, selected:selected ?? false, selectedTileColor:selectedTileColor, shape:shape, splashRadius:splashRadius, subtitle:subtitle, thumbColor:thumbColor, thumbIcon:thumbIcon, tileColor:tileColor, title:title, trackColor:trackColor, trackOutlineColor:trackOutlineColor, value:value, visualDensity:visualDensity);
},
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@adaptive': (m.Scope scope)=>({ activeColor,  activeThumbImage,  activeTrackColor,  applyCupertinoTheme,  autofocus,  contentPadding,  controlAffinity,  dense,  dragStartBehavior,  enableFeedback,  focusNode,  hoverColor,  inactiveThumbColor,  inactiveThumbImage,  inactiveTrackColor,  isThreeLine,  key,  materialTapTargetSize,  mouseCursor,  onActiveThumbImageError,  onChanged,  onFocusChange,  onInactiveThumbImageError,  overlayColor,  secondary,  selected,  selectedTileColor,  shape,  splashRadius,  subtitle,  thumbColor,  thumbIcon,  tileColor,  title,  trackColor,  trackOutlineColor,  value,  visualDensity}){
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

return SwitchListTile.adaptive(activeColor:activeColor, activeThumbImage:activeThumbImage, activeTrackColor:activeTrackColor, applyCupertinoTheme:applyCupertinoTheme, autofocus:autofocus ?? false, contentPadding:contentPadding, controlAffinity:controlAffinity ?? ListTileControlAffinity.platform, dense:dense, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, enableFeedback:enableFeedback, focusNode:focusNode, hoverColor:hoverColor, inactiveThumbColor:inactiveThumbColor, inactiveThumbImage:inactiveThumbImage, inactiveTrackColor:inactiveTrackColor, isThreeLine:isThreeLine ?? false, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onActiveThumbImageError:onActiveThumbImageError == null ? null :onActiveThumbImageErrorProxy, onChanged:onChangedProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onInactiveThumbImageError:onInactiveThumbImageError == null ? null :onInactiveThumbImageErrorProxy, overlayColor:overlayColor, secondary:secondary, selected:selected ?? false, selectedTileColor:selectedTileColor, shape:shape, splashRadius:splashRadius, subtitle:subtitle, thumbColor:thumbColor, thumbIcon:thumbIcon, tileColor:tileColor, title:title, trackColor:trackColor, trackOutlineColor:trackOutlineColor, value:value, visualDensity:visualDensity);
},
'package:flutter/src/material/switch_list_tile.dart@SwitchListTile@build': (m.Scope scope, SwitchListTile target)=>target.build,

};
}