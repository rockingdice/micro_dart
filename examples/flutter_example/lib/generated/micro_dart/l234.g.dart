import 'package:flutter/src/widgets/context_menu_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/context_menu_controller.dart@ContextMenuController@#as': (m.Scope scope, target)=>()=>target as ContextMenuController,
'package:flutter/src/widgets/context_menu_controller.dart@ContextMenuController@#is': (m.Scope scope, target)=>()=>target is ContextMenuController,
'package:flutter/src/widgets/context_menu_controller.dart@ContextMenuController@onRemove': (m.Scope scope, ContextMenuController target)=>target.onRemove,
'package:flutter/src/widgets/context_menu_controller.dart@ContextMenuController@isShown': (m.Scope scope, ContextMenuController target)=>target.isShown,
'package:flutter/src/widgets/context_menu_controller.dart@ContextMenuController@': (m.Scope scope)=>({ onRemove}){
void onRemoveProxy() {
 engine.callFunctionPointer(scope, onRemove!,[], {});
}

return ContextMenuController(onRemove:onRemove == null ? null :onRemoveProxy);
},
'package:flutter/src/widgets/context_menu_controller.dart@ContextMenuController@show': (m.Scope scope, ContextMenuController target)=>({ context,  contextMenuBuilder,  debugRequiredFor}){
Widget contextMenuBuilderProxy( context) {
return  engine.callFunctionPointer(scope, contextMenuBuilder!,[context], {});
}

target.show(context:context, contextMenuBuilder:contextMenuBuilderProxy, debugRequiredFor:debugRequiredFor);
},
'package:flutter/src/widgets/context_menu_controller.dart@ContextMenuController@removeAny': (m.Scope scope)=>ContextMenuController.removeAny,
'package:flutter/src/widgets/context_menu_controller.dart@ContextMenuController@markNeedsBuild': (m.Scope scope, ContextMenuController target)=>target.markNeedsBuild,
'package:flutter/src/widgets/context_menu_controller.dart@ContextMenuController@remove': (m.Scope scope, ContextMenuController target)=>target.remove,

};
}