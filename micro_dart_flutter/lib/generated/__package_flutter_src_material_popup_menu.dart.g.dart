import 'package:flutter/src/material/popup_menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/popup_menu_theme.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/popup_menu.dart@PopupMenuEntry@#as': (m.Scope scope, target)=>()=>target as PopupMenuEntry,
'package:flutter/src/material/popup_menu.dart@PopupMenuEntry@#is': (m.Scope scope, target)=>()=>target is PopupMenuEntry,
'package:flutter/src/material/popup_menu.dart@PopupMenuEntry@height': (m.Scope scope, PopupMenuEntry target)=>target.height,
'package:flutter/src/material/popup_menu.dart@PopupMenuEntry@represents': (m.Scope scope, PopupMenuEntry target)=>target.represents,
'package:flutter/src/material/popup_menu.dart@PopupMenuDivider@#as': (m.Scope scope, target)=>()=>target as PopupMenuDivider,
'package:flutter/src/material/popup_menu.dart@PopupMenuDivider@#is': (m.Scope scope, target)=>()=>target is PopupMenuDivider,
'package:flutter/src/material/popup_menu.dart@PopupMenuDivider@height': (m.Scope scope, PopupMenuDivider target)=>target.height,
'package:flutter/src/material/popup_menu.dart@PopupMenuDivider@': (m.Scope scope)=>({ height,  key}){
return PopupMenuDivider(height:height ?? _kMenuDividerHeight, key:key);
},
'package:flutter/src/material/popup_menu.dart@PopupMenuDivider@represents': (m.Scope scope, PopupMenuDivider target)=>target.represents,
'package:flutter/src/material/popup_menu.dart@PopupMenuDivider@createState': (m.Scope scope, PopupMenuDivider target)=>target.createState,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@#as': (m.Scope scope, target)=>()=>target as PopupMenuItem,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@#is': (m.Scope scope, target)=>()=>target is PopupMenuItem,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@value': (m.Scope scope, PopupMenuItem target)=>target.value,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@onTap': (m.Scope scope, PopupMenuItem target)=>target.onTap,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@enabled': (m.Scope scope, PopupMenuItem target)=>target.enabled,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@height': (m.Scope scope, PopupMenuItem target)=>target.height,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@padding': (m.Scope scope, PopupMenuItem target)=>target.padding,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@textStyle': (m.Scope scope, PopupMenuItem target)=>target.textStyle,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@labelTextStyle': (m.Scope scope, PopupMenuItem target)=>target.labelTextStyle,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@mouseCursor': (m.Scope scope, PopupMenuItem target)=>target.mouseCursor,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@child': (m.Scope scope, PopupMenuItem target)=>target.child,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@': (m.Scope scope)=>({ child,  enabled,  height,  key,  labelTextStyle,  mouseCursor,  onTap,  padding,  textStyle,  value}){
void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return PopupMenuItem(child:child, enabled:enabled ?? true, height:height ?? kMinInteractiveDimension, key:key, labelTextStyle:labelTextStyle, mouseCursor:mouseCursor, onTap:onTap == null ? null :onTapProxy, padding:padding, textStyle:textStyle, value:value);
},
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@represents': (m.Scope scope, PopupMenuItem target)=>target.represents,
'package:flutter/src/material/popup_menu.dart@PopupMenuItem@createState': (m.Scope scope, PopupMenuItem target)=>target.createState,
'package:flutter/src/material/popup_menu.dart@PopupMenuItemState@#as': (m.Scope scope, target)=>()=>target as PopupMenuItemState,
'package:flutter/src/material/popup_menu.dart@PopupMenuItemState@#is': (m.Scope scope, target)=>()=>target is PopupMenuItemState,
'package:flutter/src/material/popup_menu.dart@PopupMenuItemState@': (m.Scope scope)=><T, W>(){
return PopupMenuItemState();
},
'package:flutter/src/material/popup_menu.dart@PopupMenuItemState@buildChild': (m.Scope scope, PopupMenuItemState target)=>target.buildChild,
'package:flutter/src/material/popup_menu.dart@PopupMenuItemState@handleTap': (m.Scope scope, PopupMenuItemState target)=>target.handleTap,
'package:flutter/src/material/popup_menu.dart@PopupMenuItemState@build': (m.Scope scope, PopupMenuItemState target)=>target.build,
'package:flutter/src/material/popup_menu.dart@CheckedPopupMenuItem@#as': (m.Scope scope, target)=>()=>target as CheckedPopupMenuItem,
'package:flutter/src/material/popup_menu.dart@CheckedPopupMenuItem@#is': (m.Scope scope, target)=>()=>target is CheckedPopupMenuItem,
'package:flutter/src/material/popup_menu.dart@CheckedPopupMenuItem@checked': (m.Scope scope, CheckedPopupMenuItem target)=>target.checked,
'package:flutter/src/material/popup_menu.dart@CheckedPopupMenuItem@child': (m.Scope scope, CheckedPopupMenuItem target)=>target.child,
'package:flutter/src/material/popup_menu.dart@CheckedPopupMenuItem@': (m.Scope scope)=><T>({ checked,  child,  enabled,  height,  key,  mouseCursor,  padding,  value}){
return CheckedPopupMenuItem(checked:checked ?? false, child:child, enabled:enabled ?? true, height:height ?? kMinInteractiveDimension, key:key, mouseCursor:mouseCursor, padding:padding, value:value);
},
'package:flutter/src/material/popup_menu.dart@CheckedPopupMenuItem@createState': (m.Scope scope, CheckedPopupMenuItem target)=>target.createState,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@#as': (m.Scope scope, target)=>()=>target as PopupMenuButton,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@#is': (m.Scope scope, target)=>()=>target is PopupMenuButton,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@itemBuilder': (m.Scope scope, PopupMenuButton target)=>target.itemBuilder,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@initialValue': (m.Scope scope, PopupMenuButton target)=>target.initialValue,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@onOpened': (m.Scope scope, PopupMenuButton target)=>target.onOpened,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@onSelected': (m.Scope scope, PopupMenuButton target)=>target.onSelected,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@onCanceled': (m.Scope scope, PopupMenuButton target)=>target.onCanceled,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@tooltip': (m.Scope scope, PopupMenuButton target)=>target.tooltip,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@elevation': (m.Scope scope, PopupMenuButton target)=>target.elevation,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@shadowColor': (m.Scope scope, PopupMenuButton target)=>target.shadowColor,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@surfaceTintColor': (m.Scope scope, PopupMenuButton target)=>target.surfaceTintColor,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@padding': (m.Scope scope, PopupMenuButton target)=>target.padding,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@splashRadius': (m.Scope scope, PopupMenuButton target)=>target.splashRadius,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@child': (m.Scope scope, PopupMenuButton target)=>target.child,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@icon': (m.Scope scope, PopupMenuButton target)=>target.icon,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@offset': (m.Scope scope, PopupMenuButton target)=>target.offset,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@enabled': (m.Scope scope, PopupMenuButton target)=>target.enabled,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@shape': (m.Scope scope, PopupMenuButton target)=>target.shape,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@color': (m.Scope scope, PopupMenuButton target)=>target.color,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@enableFeedback': (m.Scope scope, PopupMenuButton target)=>target.enableFeedback,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@iconSize': (m.Scope scope, PopupMenuButton target)=>target.iconSize,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@constraints': (m.Scope scope, PopupMenuButton target)=>target.constraints,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@position': (m.Scope scope, PopupMenuButton target)=>target.position,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@clipBehavior': (m.Scope scope, PopupMenuButton target)=>target.clipBehavior,
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@': (m.Scope scope)=>({ child,  clipBehavior,  color,  constraints,  elevation,  enableFeedback,  enabled,  icon,  iconSize,  initialValue,  itemBuilder,  key,  offset,  onCanceled,  onOpened,  onSelected,  padding,  position,  shadowColor,  shape,  splashRadius,  surfaceTintColor,  tooltip}){
List<PopupMenuEntry<T>> itemBuilderProxy( context) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context], {});
}

void onCanceledProxy() {
 engine.callFunctionPointer(scope, onCanceled!,[], {});
}

void onOpenedProxy() {
 engine.callFunctionPointer(scope, onOpened!,[], {});
}

void onSelectedProxy<T>( value) {
 engine.callFunctionPointer(scope, onSelected!,[value], {});
}

return PopupMenuButton(child:child, clipBehavior:clipBehavior ?? Clip.none, color:color, constraints:constraints, elevation:elevation, enableFeedback:enableFeedback, enabled:enabled ?? true, icon:icon, iconSize:iconSize, initialValue:initialValue, itemBuilder:itemBuilderProxy, key:key, offset:offset ?? Offset.zero, onCanceled:onCanceled == null ? null :onCanceledProxy, onOpened:onOpened == null ? null :onOpenedProxy, onSelected:onSelected == null ? null :onSelectedProxy, padding:padding ?? const EdgeInsets.all(8.0), position:position, shadowColor:shadowColor, shape:shape, splashRadius:splashRadius, surfaceTintColor:surfaceTintColor, tooltip:tooltip);
},
'package:flutter/src/material/popup_menu.dart@PopupMenuButton@createState': (m.Scope scope, PopupMenuButton target)=>target.createState,
'package:flutter/src/material/popup_menu.dart@PopupMenuButtonState@#as': (m.Scope scope, target)=>()=>target as PopupMenuButtonState,
'package:flutter/src/material/popup_menu.dart@PopupMenuButtonState@#is': (m.Scope scope, target)=>()=>target is PopupMenuButtonState,
'package:flutter/src/material/popup_menu.dart@PopupMenuButtonState@': (m.Scope scope)=><T>(){
return PopupMenuButtonState();
},
'package:flutter/src/material/popup_menu.dart@PopupMenuButtonState@showButtonMenu': (m.Scope scope, PopupMenuButtonState target)=>target.showButtonMenu,
'package:flutter/src/material/popup_menu.dart@PopupMenuButtonState@build': (m.Scope scope, PopupMenuButtonState target)=>target.build,
'package:flutter/src/material/popup_menu.dart@@showMenu': (m.Scope scope)=>showMenu,

};
}