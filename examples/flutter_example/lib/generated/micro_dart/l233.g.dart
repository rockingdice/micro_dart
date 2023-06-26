import 'package:flutter/src/widgets/context_menu_button_item.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/context_menu_button_item.dart@ContextMenuButtonItem@#as': (m.Scope scope, target)=>()=>target as ContextMenuButtonItem,
'package:flutter/src/widgets/context_menu_button_item.dart@ContextMenuButtonItem@#is': (m.Scope scope, target)=>()=>target is ContextMenuButtonItem,
'package:flutter/src/widgets/context_menu_button_item.dart@ContextMenuButtonItem@onPressed': (m.Scope scope, ContextMenuButtonItem target)=>target.onPressed,
'package:flutter/src/widgets/context_menu_button_item.dart@ContextMenuButtonItem@type': (m.Scope scope, ContextMenuButtonItem target)=>target.type,
'package:flutter/src/widgets/context_menu_button_item.dart@ContextMenuButtonItem@label': (m.Scope scope, ContextMenuButtonItem target)=>target.label,
'package:flutter/src/widgets/context_menu_button_item.dart@ContextMenuButtonItem@hashCode': (m.Scope scope, ContextMenuButtonItem target)=>target.hashCode,
'package:flutter/src/widgets/context_menu_button_item.dart@ContextMenuButtonItem@': (m.Scope scope)=>({ label,  onPressed,  type}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return ContextMenuButtonItem(label:label, onPressed:onPressedProxy, type:type ?? ContextMenuButtonType.custom);
},
'package:flutter/src/widgets/context_menu_button_item.dart@ContextMenuButtonItem@copyWith': (m.Scope scope, ContextMenuButtonItem target)=>({ label,  onPressed,  type}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return target.copyWith(label:label, onPressed:onPressed == null ? null :onPressedProxy, type:type);
},
'package:flutter/src/widgets/context_menu_button_item.dart@ContextMenuButtonItem@==': (m.Scope scope, ContextMenuButtonItem target)=>(other)=> target == other,
'package:flutter/src/widgets/context_menu_button_item.dart@ContextMenuButtonItem@toString': (m.Scope scope, ContextMenuButtonItem target)=>target.toString,

};
}