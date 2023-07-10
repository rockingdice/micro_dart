import 'package:flutter/src/cupertino/context_menu_action.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/context_menu_action.dart@CupertinoContextMenuAction@#as': (m.Scope scope, target)=>()=>target as CupertinoContextMenuAction,
'package:flutter/src/cupertino/context_menu_action.dart@CupertinoContextMenuAction@#is': (m.Scope scope, target)=>()=>target is CupertinoContextMenuAction,
'package:flutter/src/cupertino/context_menu_action.dart@CupertinoContextMenuAction@child': (m.Scope scope, CupertinoContextMenuAction target)=>target.child,
'package:flutter/src/cupertino/context_menu_action.dart@CupertinoContextMenuAction@isDefaultAction': (m.Scope scope, CupertinoContextMenuAction target)=>target.isDefaultAction,
'package:flutter/src/cupertino/context_menu_action.dart@CupertinoContextMenuAction@isDestructiveAction': (m.Scope scope, CupertinoContextMenuAction target)=>target.isDestructiveAction,
'package:flutter/src/cupertino/context_menu_action.dart@CupertinoContextMenuAction@onPressed': (m.Scope scope, CupertinoContextMenuAction target)=>target.onPressed,
'package:flutter/src/cupertino/context_menu_action.dart@CupertinoContextMenuAction@trailingIcon': (m.Scope scope, CupertinoContextMenuAction target)=>target.trailingIcon,
'package:flutter/src/cupertino/context_menu_action.dart@CupertinoContextMenuAction@': (m.Scope scope)=>({ child,  isDefaultAction,  isDestructiveAction,  key,  onPressed,  trailingIcon}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return CupertinoContextMenuAction(child:child, isDefaultAction:isDefaultAction ?? false, isDestructiveAction:isDestructiveAction ?? false, key:key, onPressed:onPressed == null ? null :onPressedProxy, trailingIcon:trailingIcon);
},
'package:flutter/src/cupertino/context_menu_action.dart@CupertinoContextMenuAction@createState': (m.Scope scope, CupertinoContextMenuAction target)=>target.createState,

};
}