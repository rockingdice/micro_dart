import 'package:flutter/src/widgets/platform_menu_bar.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/shortcuts.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/platform_menu_bar.dart@ShortcutSerialization@#as': (m.Scope scope, target)=>()=>target as ShortcutSerialization,
'package:flutter/src/widgets/platform_menu_bar.dart@ShortcutSerialization@#is': (m.Scope scope, target)=>()=>target is ShortcutSerialization,
'package:flutter/src/widgets/platform_menu_bar.dart@ShortcutSerialization@trigger': (m.Scope scope, ShortcutSerialization target)=>target.trigger,
'package:flutter/src/widgets/platform_menu_bar.dart@ShortcutSerialization@character': (m.Scope scope, ShortcutSerialization target)=>target.character,
'package:flutter/src/widgets/platform_menu_bar.dart@ShortcutSerialization@alt': (m.Scope scope, ShortcutSerialization target)=>target.alt,
'package:flutter/src/widgets/platform_menu_bar.dart@ShortcutSerialization@control': (m.Scope scope, ShortcutSerialization target)=>target.control,
'package:flutter/src/widgets/platform_menu_bar.dart@ShortcutSerialization@meta': (m.Scope scope, ShortcutSerialization target)=>target.meta,
'package:flutter/src/widgets/platform_menu_bar.dart@ShortcutSerialization@shift': (m.Scope scope, ShortcutSerialization target)=>target.shift,
'package:flutter/src/widgets/platform_menu_bar.dart@ShortcutSerialization@character': (m.Scope scope)=>ShortcutSerialization.character,
'package:flutter/src/widgets/platform_menu_bar.dart@ShortcutSerialization@modifier': (m.Scope scope)=>ShortcutSerialization.modifier,
'package:flutter/src/widgets/platform_menu_bar.dart@ShortcutSerialization@toChannelRepresentation': (m.Scope scope, ShortcutSerialization target)=>target.toChannelRepresentation,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuDelegate@#as': (m.Scope scope, target)=>()=>target as PlatformMenuDelegate,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuDelegate@#is': (m.Scope scope, target)=>()=>target is PlatformMenuDelegate,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuDelegate@setMenus': (m.Scope scope, PlatformMenuDelegate target)=>target.setMenus,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuDelegate@clearMenus': (m.Scope scope, PlatformMenuDelegate target)=>target.clearMenus,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuDelegate@debugLockDelegate': (m.Scope scope, PlatformMenuDelegate target)=>target.debugLockDelegate,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuDelegate@debugUnlockDelegate': (m.Scope scope, PlatformMenuDelegate target)=>target.debugUnlockDelegate,
'package:flutter/src/widgets/platform_menu_bar.dart@DefaultPlatformMenuDelegate@#as': (m.Scope scope, target)=>()=>target as DefaultPlatformMenuDelegate,
'package:flutter/src/widgets/platform_menu_bar.dart@DefaultPlatformMenuDelegate@#is': (m.Scope scope, target)=>()=>target is DefaultPlatformMenuDelegate,
'package:flutter/src/widgets/platform_menu_bar.dart@DefaultPlatformMenuDelegate@channel': (m.Scope scope, DefaultPlatformMenuDelegate target)=>target.channel,
'package:flutter/src/widgets/platform_menu_bar.dart@DefaultPlatformMenuDelegate@': (m.Scope scope)=>({ channel}){
return DefaultPlatformMenuDelegate(channel:channel);
},
'package:flutter/src/widgets/platform_menu_bar.dart@DefaultPlatformMenuDelegate@clearMenus': (m.Scope scope, DefaultPlatformMenuDelegate target)=>target.clearMenus,
'package:flutter/src/widgets/platform_menu_bar.dart@DefaultPlatformMenuDelegate@setMenus': (m.Scope scope, DefaultPlatformMenuDelegate target)=>target.setMenus,
'package:flutter/src/widgets/platform_menu_bar.dart@DefaultPlatformMenuDelegate@debugLockDelegate': (m.Scope scope, DefaultPlatformMenuDelegate target)=>target.debugLockDelegate,
'package:flutter/src/widgets/platform_menu_bar.dart@DefaultPlatformMenuDelegate@debugUnlockDelegate': (m.Scope scope, DefaultPlatformMenuDelegate target)=>target.debugUnlockDelegate,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuBar@#as': (m.Scope scope, target)=>()=>target as PlatformMenuBar,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuBar@#is': (m.Scope scope, target)=>()=>target is PlatformMenuBar,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuBar@child': (m.Scope scope, PlatformMenuBar target)=>target.child,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuBar@body': (m.Scope scope, PlatformMenuBar target)=>target.body,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuBar@menus': (m.Scope scope, PlatformMenuBar target)=>target.menus,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuBar@': (m.Scope scope)=>({ body,  child,  key,  menus}){
return PlatformMenuBar(body:body, child:child, key:key, menus:menus);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuBar@createState': (m.Scope scope, PlatformMenuBar target)=>target.createState,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuBar@debugDescribeChildren': (m.Scope scope, PlatformMenuBar target)=>target.debugDescribeChildren,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@#as': (m.Scope scope, target)=>()=>target as PlatformMenu,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@#is': (m.Scope scope, target)=>()=>target is PlatformMenu,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@onOpen': (m.Scope scope, PlatformMenu target)=>target.onOpen,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@onClose': (m.Scope scope, PlatformMenu target)=>target.onClose,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@menus': (m.Scope scope, PlatformMenu target)=>target.menus,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@descendants': (m.Scope scope, PlatformMenu target)=>target.descendants,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@': (m.Scope scope)=>({ label,  menus,  onClose,  onOpen}){
void onCloseProxy() {
 engine.callFunctionPointer(scope, onClose!,[], {});
}

void onOpenProxy() {
 engine.callFunctionPointer(scope, onOpen!,[], {});
}

return PlatformMenu(label:label, menus:menus, onClose:onClose == null ? null :onCloseProxy, onOpen:onOpen == null ? null :onOpenProxy);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@getDescendants': (m.Scope scope)=>PlatformMenu.getDescendants,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@toChannelRepresentation': (m.Scope scope, PlatformMenu target)=>( delegate, { getId}){
int getIdProxy( item) {
return  engine.callFunctionPointer(scope, getId!,[item], {});
}

return target.toChannelRepresentation(delegate, getId:getIdProxy);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@serialize': (m.Scope scope)=>( item,  delegate,  getId){
int getIdProxy( item) {
return  engine.callFunctionPointer(scope, getId!,[item], {});
}

return PlatformMenu.serialize(item, delegate, getIdProxy);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@debugDescribeChildren': (m.Scope scope, PlatformMenu target)=>target.debugDescribeChildren,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenu@debugFillProperties': (m.Scope scope, PlatformMenu target)=>target.debugFillProperties,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItemGroup@#as': (m.Scope scope, target)=>()=>target as PlatformMenuItemGroup,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItemGroup@#is': (m.Scope scope, target)=>()=>target is PlatformMenuItemGroup,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItemGroup@members': (m.Scope scope, PlatformMenuItemGroup target)=>target.members,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItemGroup@': (m.Scope scope)=>({ members}){
return PlatformMenuItemGroup(members:members);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItemGroup@toChannelRepresentation': (m.Scope scope, PlatformMenuItemGroup target)=>( delegate, { getId}){
int getIdProxy( item) {
return  engine.callFunctionPointer(scope, getId!,[item], {});
}

return target.toChannelRepresentation(delegate, getId:getIdProxy);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItemGroup@serialize': (m.Scope scope)=>( group,  delegate, { getId}){
int getIdProxy( item) {
return  engine.callFunctionPointer(scope, getId!,[item], {});
}

return PlatformMenuItemGroup.serialize(group, delegate, getId:getIdProxy);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItemGroup@debugFillProperties': (m.Scope scope, PlatformMenuItemGroup target)=>target.debugFillProperties,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@#as': (m.Scope scope, target)=>()=>target as PlatformMenuItem,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@#is': (m.Scope scope, target)=>()=>target is PlatformMenuItem,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@label': (m.Scope scope, PlatformMenuItem target)=>target.label,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@shortcut': (m.Scope scope, PlatformMenuItem target)=>target.shortcut,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@onSelected': (m.Scope scope, PlatformMenuItem target)=>target.onSelected,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@onSelectedIntent': (m.Scope scope, PlatformMenuItem target)=>target.onSelectedIntent,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@onOpen': (m.Scope scope, PlatformMenuItem target)=>target.onOpen,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@onClose': (m.Scope scope, PlatformMenuItem target)=>target.onClose,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@descendants': (m.Scope scope, PlatformMenuItem target)=>target.descendants,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@members': (m.Scope scope, PlatformMenuItem target)=>target.members,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@': (m.Scope scope)=>({ label,  onSelected,  onSelectedIntent,  shortcut}){
void onSelectedProxy() {
 engine.callFunctionPointer(scope, onSelected!,[], {});
}

return PlatformMenuItem(label:label, onSelected:onSelected == null ? null :onSelectedProxy, onSelectedIntent:onSelectedIntent, shortcut:shortcut);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@toChannelRepresentation': (m.Scope scope, PlatformMenuItem target)=>( delegate, { getId}){
int getIdProxy( item) {
return  engine.callFunctionPointer(scope, getId!,[item], {});
}

return target.toChannelRepresentation(delegate, getId:getIdProxy);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@serialize': (m.Scope scope)=>( item,  delegate,  getId){
int getIdProxy( item) {
return  engine.callFunctionPointer(scope, getId!,[item], {});
}

return PlatformMenuItem.serialize(item, delegate, getIdProxy);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@toStringShort': (m.Scope scope, PlatformMenuItem target)=>target.toStringShort,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformMenuItem@debugFillProperties': (m.Scope scope, PlatformMenuItem target)=>target.debugFillProperties,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformProvidedMenuItem@#as': (m.Scope scope, target)=>()=>target as PlatformProvidedMenuItem,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformProvidedMenuItem@#is': (m.Scope scope, target)=>()=>target is PlatformProvidedMenuItem,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformProvidedMenuItem@type': (m.Scope scope, PlatformProvidedMenuItem target)=>target.type,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformProvidedMenuItem@enabled': (m.Scope scope, PlatformProvidedMenuItem target)=>target.enabled,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformProvidedMenuItem@': (m.Scope scope)=>({ enabled,  type}){
return PlatformProvidedMenuItem(enabled:enabled ?? true, type:type);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformProvidedMenuItem@hasMenu': (m.Scope scope)=>PlatformProvidedMenuItem.hasMenu,
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformProvidedMenuItem@toChannelRepresentation': (m.Scope scope, PlatformProvidedMenuItem target)=>( delegate, { getId}){
int getIdProxy( item) {
return  engine.callFunctionPointer(scope, getId!,[item], {});
}

return target.toChannelRepresentation(delegate, getId:getIdProxy);
},
'package:flutter/src/widgets/platform_menu_bar.dart@PlatformProvidedMenuItem@debugFillProperties': (m.Scope scope, PlatformProvidedMenuItem target)=>target.debugFillProperties,

};
}