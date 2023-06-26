import 'package:flutter/src/material/menu_anchor.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/button_style_button.dart';
import 'package:flutter/src/material/checkbox.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/menu_bar_theme.dart';
import 'package:flutter/src/material/menu_button_theme.dart';
import 'package:flutter/src/material/menu_style.dart';
import 'package:flutter/src/material/menu_theme.dart';
import 'package:flutter/src/material/radio.dart';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@#as': (m.Scope scope, target)=>()=>target as MenuAnchor,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@#is': (m.Scope scope, target)=>()=>target is MenuAnchor,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@controller': (m.Scope scope, MenuAnchor target)=>target.controller,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@childFocusNode': (m.Scope scope, MenuAnchor target)=>target.childFocusNode,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@style': (m.Scope scope, MenuAnchor target)=>target.style,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@alignmentOffset': (m.Scope scope, MenuAnchor target)=>target.alignmentOffset,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@clipBehavior': (m.Scope scope, MenuAnchor target)=>target.clipBehavior,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@anchorTapClosesMenu': (m.Scope scope, MenuAnchor target)=>target.anchorTapClosesMenu,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@onOpen': (m.Scope scope, MenuAnchor target)=>target.onOpen,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@onClose': (m.Scope scope, MenuAnchor target)=>target.onClose,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@crossAxisUnconstrained': (m.Scope scope, MenuAnchor target)=>target.crossAxisUnconstrained,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@menuChildren': (m.Scope scope, MenuAnchor target)=>target.menuChildren,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@builder': (m.Scope scope, MenuAnchor target)=>target.builder,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@child': (m.Scope scope, MenuAnchor target)=>target.child,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@': (m.Scope scope)=>({ alignmentOffset,  anchorTapClosesMenu,  builder,  child,  childFocusNode,  clipBehavior,  controller,  crossAxisUnconstrained,  key,  menuChildren,  onClose,  onOpen,  style}){
Widget builderProxy( context,  controller,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, controller, child], {});
}

void onCloseProxy() {
 engine.callFunctionPointer(scope, onClose!,[], {});
}

void onOpenProxy() {
 engine.callFunctionPointer(scope, onOpen!,[], {});
}

return MenuAnchor(alignmentOffset:alignmentOffset ?? Offset.zero, anchorTapClosesMenu:anchorTapClosesMenu ?? false, builder:builder == null ? null :builderProxy, child:child, childFocusNode:childFocusNode, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, crossAxisUnconstrained:crossAxisUnconstrained ?? true, key:key, menuChildren:menuChildren, onClose:onClose == null ? null :onCloseProxy, onOpen:onOpen == null ? null :onOpenProxy, style:style);
},
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@createState': (m.Scope scope, MenuAnchor target)=>target.createState,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@debugDescribeChildren': (m.Scope scope, MenuAnchor target)=>target.debugDescribeChildren,
'package:flutter/src/material/menu_anchor.dart@MenuAnchor@debugFillProperties': (m.Scope scope, MenuAnchor target)=>target.debugFillProperties,
'package:flutter/src/material/menu_anchor.dart@MenuController@#as': (m.Scope scope, target)=>()=>target as MenuController,
'package:flutter/src/material/menu_anchor.dart@MenuController@#is': (m.Scope scope, target)=>()=>target is MenuController,
'package:flutter/src/material/menu_anchor.dart@MenuController@isOpen': (m.Scope scope, MenuController target)=>target.isOpen,
'package:flutter/src/material/menu_anchor.dart@MenuController@': (m.Scope scope)=>(){
return MenuController();
},
'package:flutter/src/material/menu_anchor.dart@MenuController@close': (m.Scope scope, MenuController target)=>target.close,
'package:flutter/src/material/menu_anchor.dart@MenuController@open': (m.Scope scope, MenuController target)=>target.open,
'package:flutter/src/material/menu_anchor.dart@MenuBar@#as': (m.Scope scope, target)=>()=>target as MenuBar,
'package:flutter/src/material/menu_anchor.dart@MenuBar@#is': (m.Scope scope, target)=>()=>target is MenuBar,
'package:flutter/src/material/menu_anchor.dart@MenuBar@style': (m.Scope scope, MenuBar target)=>target.style,
'package:flutter/src/material/menu_anchor.dart@MenuBar@clipBehavior': (m.Scope scope, MenuBar target)=>target.clipBehavior,
'package:flutter/src/material/menu_anchor.dart@MenuBar@controller': (m.Scope scope, MenuBar target)=>target.controller,
'package:flutter/src/material/menu_anchor.dart@MenuBar@children': (m.Scope scope, MenuBar target)=>target.children,
'package:flutter/src/material/menu_anchor.dart@MenuBar@': (m.Scope scope)=>MenuBar,
'package:flutter/src/material/menu_anchor.dart@MenuBar@build': (m.Scope scope, MenuBar target)=>target.build,
'package:flutter/src/material/menu_anchor.dart@MenuBar@debugDescribeChildren': (m.Scope scope, MenuBar target)=>target.debugDescribeChildren,
'package:flutter/src/material/menu_anchor.dart@MenuBar@debugFillProperties': (m.Scope scope, MenuBar target)=>target.debugFillProperties,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@#as': (m.Scope scope, target)=>()=>target as MenuItemButton,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@#is': (m.Scope scope, target)=>()=>target is MenuItemButton,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@onPressed': (m.Scope scope, MenuItemButton target)=>target.onPressed,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@onHover': (m.Scope scope, MenuItemButton target)=>target.onHover,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@requestFocusOnHover': (m.Scope scope, MenuItemButton target)=>target.requestFocusOnHover,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@onFocusChange': (m.Scope scope, MenuItemButton target)=>target.onFocusChange,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@focusNode': (m.Scope scope, MenuItemButton target)=>target.focusNode,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@shortcut': (m.Scope scope, MenuItemButton target)=>target.shortcut,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@style': (m.Scope scope, MenuItemButton target)=>target.style,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@statesController': (m.Scope scope, MenuItemButton target)=>target.statesController,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@clipBehavior': (m.Scope scope, MenuItemButton target)=>target.clipBehavior,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@leadingIcon': (m.Scope scope, MenuItemButton target)=>target.leadingIcon,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@trailingIcon': (m.Scope scope, MenuItemButton target)=>target.trailingIcon,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@closeOnActivate': (m.Scope scope, MenuItemButton target)=>target.closeOnActivate,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@child': (m.Scope scope, MenuItemButton target)=>target.child,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@enabled': (m.Scope scope, MenuItemButton target)=>target.enabled,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@': (m.Scope scope)=>({ child,  clipBehavior,  closeOnActivate,  focusNode,  key,  leadingIcon,  onFocusChange,  onHover,  onPressed,  requestFocusOnHover,  shortcut,  statesController,  style,  trailingIcon}){
void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onHoverProxy( value) {
 engine.callFunctionPointer(scope, onHover!,[value], {});
}

void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return MenuItemButton(child:child, clipBehavior:clipBehavior ?? Clip.none, closeOnActivate:closeOnActivate ?? true, focusNode:focusNode, key:key, leadingIcon:leadingIcon, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHover:onHover == null ? null :onHoverProxy, onPressed:onPressed == null ? null :onPressedProxy, requestFocusOnHover:requestFocusOnHover ?? true, shortcut:shortcut, statesController:statesController, style:style, trailingIcon:trailingIcon);
},
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@createState': (m.Scope scope, MenuItemButton target)=>target.createState,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@defaultStyleOf': (m.Scope scope, MenuItemButton target)=>target.defaultStyleOf,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@themeStyleOf': (m.Scope scope, MenuItemButton target)=>target.themeStyleOf,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@styleFrom': (m.Scope scope)=>MenuItemButton.styleFrom,
'package:flutter/src/material/menu_anchor.dart@MenuItemButton@debugFillProperties': (m.Scope scope, MenuItemButton target)=>target.debugFillProperties,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@#as': (m.Scope scope, target)=>()=>target as CheckboxMenuButton,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@#is': (m.Scope scope, target)=>()=>target is CheckboxMenuButton,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@value': (m.Scope scope, CheckboxMenuButton target)=>target.value,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@tristate': (m.Scope scope, CheckboxMenuButton target)=>target.tristate,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@isError': (m.Scope scope, CheckboxMenuButton target)=>target.isError,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@onChanged': (m.Scope scope, CheckboxMenuButton target)=>target.onChanged,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@onHover': (m.Scope scope, CheckboxMenuButton target)=>target.onHover,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@onFocusChange': (m.Scope scope, CheckboxMenuButton target)=>target.onFocusChange,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@focusNode': (m.Scope scope, CheckboxMenuButton target)=>target.focusNode,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@shortcut': (m.Scope scope, CheckboxMenuButton target)=>target.shortcut,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@style': (m.Scope scope, CheckboxMenuButton target)=>target.style,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@statesController': (m.Scope scope, CheckboxMenuButton target)=>target.statesController,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@clipBehavior': (m.Scope scope, CheckboxMenuButton target)=>target.clipBehavior,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@trailingIcon': (m.Scope scope, CheckboxMenuButton target)=>target.trailingIcon,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@closeOnActivate': (m.Scope scope, CheckboxMenuButton target)=>target.closeOnActivate,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@child': (m.Scope scope, CheckboxMenuButton target)=>target.child,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@enabled': (m.Scope scope, CheckboxMenuButton target)=>target.enabled,
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@': (m.Scope scope)=>({ child,  clipBehavior,  closeOnActivate,  focusNode,  isError,  key,  onChanged,  onFocusChange,  onHover,  shortcut,  statesController,  style,  trailingIcon,  tristate,  value}){
void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onHoverProxy( value) {
 engine.callFunctionPointer(scope, onHover!,[value], {});
}

return CheckboxMenuButton(child:child, clipBehavior:clipBehavior ?? Clip.none, closeOnActivate:closeOnActivate ?? true, focusNode:focusNode, isError:isError ?? false, key:key, onChanged:onChangedProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHover:onHover == null ? null :onHoverProxy, shortcut:shortcut, statesController:statesController, style:style, trailingIcon:trailingIcon, tristate:tristate ?? false, value:value);
},
'package:flutter/src/material/menu_anchor.dart@CheckboxMenuButton@build': (m.Scope scope, CheckboxMenuButton target)=>target.build,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@#as': (m.Scope scope, target)=>()=>target as RadioMenuButton,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@#is': (m.Scope scope, target)=>()=>target is RadioMenuButton,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@value': (m.Scope scope, RadioMenuButton target)=>target.value,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@groupValue': (m.Scope scope, RadioMenuButton target)=>target.groupValue,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@toggleable': (m.Scope scope, RadioMenuButton target)=>target.toggleable,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@onChanged': (m.Scope scope, RadioMenuButton target)=>target.onChanged,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@onHover': (m.Scope scope, RadioMenuButton target)=>target.onHover,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@onFocusChange': (m.Scope scope, RadioMenuButton target)=>target.onFocusChange,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@focusNode': (m.Scope scope, RadioMenuButton target)=>target.focusNode,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@shortcut': (m.Scope scope, RadioMenuButton target)=>target.shortcut,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@style': (m.Scope scope, RadioMenuButton target)=>target.style,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@statesController': (m.Scope scope, RadioMenuButton target)=>target.statesController,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@clipBehavior': (m.Scope scope, RadioMenuButton target)=>target.clipBehavior,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@trailingIcon': (m.Scope scope, RadioMenuButton target)=>target.trailingIcon,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@closeOnActivate': (m.Scope scope, RadioMenuButton target)=>target.closeOnActivate,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@child': (m.Scope scope, RadioMenuButton target)=>target.child,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@enabled': (m.Scope scope, RadioMenuButton target)=>target.enabled,
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@': (m.Scope scope)=>({ child,  clipBehavior,  closeOnActivate,  focusNode,  groupValue,  key,  onChanged,  onFocusChange,  onHover,  shortcut,  statesController,  style,  toggleable,  trailingIcon,  value}){
void onChangedProxy<T>( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onHoverProxy( value) {
 engine.callFunctionPointer(scope, onHover!,[value], {});
}

return RadioMenuButton(child:child, clipBehavior:clipBehavior ?? Clip.none, closeOnActivate:closeOnActivate ?? true, focusNode:focusNode, groupValue:groupValue, key:key, onChanged:onChangedProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHover:onHover == null ? null :onHoverProxy, shortcut:shortcut, statesController:statesController, style:style, toggleable:toggleable ?? false, trailingIcon:trailingIcon, value:value);
},
'package:flutter/src/material/menu_anchor.dart@RadioMenuButton@build': (m.Scope scope, RadioMenuButton target)=>target.build,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@#as': (m.Scope scope, target)=>()=>target as SubmenuButton,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@#is': (m.Scope scope, target)=>()=>target is SubmenuButton,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@onHover': (m.Scope scope, SubmenuButton target)=>target.onHover,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@onFocusChange': (m.Scope scope, SubmenuButton target)=>target.onFocusChange,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@onOpen': (m.Scope scope, SubmenuButton target)=>target.onOpen,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@onClose': (m.Scope scope, SubmenuButton target)=>target.onClose,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@style': (m.Scope scope, SubmenuButton target)=>target.style,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@menuStyle': (m.Scope scope, SubmenuButton target)=>target.menuStyle,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@alignmentOffset': (m.Scope scope, SubmenuButton target)=>target.alignmentOffset,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@clipBehavior': (m.Scope scope, SubmenuButton target)=>target.clipBehavior,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@focusNode': (m.Scope scope, SubmenuButton target)=>target.focusNode,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@statesController': (m.Scope scope, SubmenuButton target)=>target.statesController,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@leadingIcon': (m.Scope scope, SubmenuButton target)=>target.leadingIcon,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@trailingIcon': (m.Scope scope, SubmenuButton target)=>target.trailingIcon,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@menuChildren': (m.Scope scope, SubmenuButton target)=>target.menuChildren,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@child': (m.Scope scope, SubmenuButton target)=>target.child,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@': (m.Scope scope)=>({ alignmentOffset,  child,  clipBehavior,  focusNode,  key,  leadingIcon,  menuChildren,  menuStyle,  onClose,  onFocusChange,  onHover,  onOpen,  statesController,  style,  trailingIcon}){
void onCloseProxy() {
 engine.callFunctionPointer(scope, onClose!,[], {});
}

void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onHoverProxy( value) {
 engine.callFunctionPointer(scope, onHover!,[value], {});
}

void onOpenProxy() {
 engine.callFunctionPointer(scope, onOpen!,[], {});
}

return SubmenuButton(alignmentOffset:alignmentOffset, child:child, clipBehavior:clipBehavior ?? Clip.hardEdge, focusNode:focusNode, key:key, leadingIcon:leadingIcon, menuChildren:menuChildren, menuStyle:menuStyle, onClose:onClose == null ? null :onCloseProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHover:onHover == null ? null :onHoverProxy, onOpen:onOpen == null ? null :onOpenProxy, statesController:statesController, style:style, trailingIcon:trailingIcon);
},
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@createState': (m.Scope scope, SubmenuButton target)=>target.createState,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@defaultStyleOf': (m.Scope scope, SubmenuButton target)=>target.defaultStyleOf,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@themeStyleOf': (m.Scope scope, SubmenuButton target)=>target.themeStyleOf,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@styleFrom': (m.Scope scope)=>SubmenuButton.styleFrom,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@debugDescribeChildren': (m.Scope scope, SubmenuButton target)=>target.debugDescribeChildren,
'package:flutter/src/material/menu_anchor.dart@SubmenuButton@debugFillProperties': (m.Scope scope, SubmenuButton target)=>target.debugFillProperties,
'package:flutter/src/material/menu_anchor.dart@DismissMenuAction@#as': (m.Scope scope, target)=>()=>target as DismissMenuAction,
'package:flutter/src/material/menu_anchor.dart@DismissMenuAction@#is': (m.Scope scope, target)=>()=>target is DismissMenuAction,
'package:flutter/src/material/menu_anchor.dart@DismissMenuAction@controller': (m.Scope scope, DismissMenuAction target)=>target.controller,
'package:flutter/src/material/menu_anchor.dart@DismissMenuAction@': (m.Scope scope)=>DismissMenuAction,
'package:flutter/src/material/menu_anchor.dart@DismissMenuAction@invoke': (m.Scope scope, DismissMenuAction target)=>target.invoke,
'package:flutter/src/material/menu_anchor.dart@DismissMenuAction@isEnabled': (m.Scope scope, DismissMenuAction target)=>target.isEnabled,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorCallbackBinding@#as': (m.Scope scope, target)=>()=>target as MenuAcceleratorCallbackBinding,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorCallbackBinding@#is': (m.Scope scope, target)=>()=>target is MenuAcceleratorCallbackBinding,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorCallbackBinding@onInvoke': (m.Scope scope, MenuAcceleratorCallbackBinding target)=>target.onInvoke,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorCallbackBinding@hasSubmenu': (m.Scope scope, MenuAcceleratorCallbackBinding target)=>target.hasSubmenu,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorCallbackBinding@': (m.Scope scope)=>({ child,  hasSubmenu,  key,  onInvoke}){
void onInvokeProxy() {
 engine.callFunctionPointer(scope, onInvoke!,[], {});
}

return MenuAcceleratorCallbackBinding(child:child, hasSubmenu:hasSubmenu ?? false, key:key, onInvoke:onInvoke == null ? null :onInvokeProxy);
},
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorCallbackBinding@updateShouldNotify': (m.Scope scope, MenuAcceleratorCallbackBinding target)=>target.updateShouldNotify,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorCallbackBinding@maybeOf': (m.Scope scope)=>MenuAcceleratorCallbackBinding.maybeOf,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorCallbackBinding@of': (m.Scope scope)=>MenuAcceleratorCallbackBinding.of,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@#as': (m.Scope scope, target)=>()=>target as MenuAcceleratorLabel,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@#is': (m.Scope scope, target)=>()=>target is MenuAcceleratorLabel,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@label': (m.Scope scope, MenuAcceleratorLabel target)=>target.label,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@builder': (m.Scope scope, MenuAcceleratorLabel target)=>target.builder,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@displayLabel': (m.Scope scope, MenuAcceleratorLabel target)=>target.displayLabel,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@hasAccelerator': (m.Scope scope, MenuAcceleratorLabel target)=>target.hasAccelerator,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@': (m.Scope scope)=>( label, { builder,  key}){
Widget builderProxy( context,  label,  index) {
return  engine.callFunctionPointer(scope, builder!,[context, label, index], {});
}

return MenuAcceleratorLabel(label, builder:builder == null ? defaultLabelBuilder :builderProxy, key:key);
},
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@defaultLabelBuilder': (m.Scope scope)=>MenuAcceleratorLabel.defaultLabelBuilder,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@stripAcceleratorMarkers': (m.Scope scope)=>( label, { setIndex}){
void setIndexProxy( index) {
 engine.callFunctionPointer(scope, setIndex!,[index], {});
}

return MenuAcceleratorLabel.stripAcceleratorMarkers(label, setIndex:setIndex == null ? null :setIndexProxy);
},
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@createState': (m.Scope scope, MenuAcceleratorLabel target)=>target.createState,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@toString': (m.Scope scope, MenuAcceleratorLabel target)=>target.toString,
'package:flutter/src/material/menu_anchor.dart@MenuAcceleratorLabel@debugFillProperties': (m.Scope scope, MenuAcceleratorLabel target)=>target.debugFillProperties,

};
}