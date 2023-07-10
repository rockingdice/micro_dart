import 'package:flutter/src/material/action_icons_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/action_buttons.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@#as': (m.Scope scope, target)=>()=>target as ActionIconThemeData,
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@#is': (m.Scope scope, target)=>()=>target is ActionIconThemeData,
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@backButtonIconBuilder': (m.Scope scope, ActionIconThemeData target)=>target.backButtonIconBuilder,
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@closeButtonIconBuilder': (m.Scope scope, ActionIconThemeData target)=>target.closeButtonIconBuilder,
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@drawerButtonIconBuilder': (m.Scope scope, ActionIconThemeData target)=>target.drawerButtonIconBuilder,
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@endDrawerButtonIconBuilder': (m.Scope scope, ActionIconThemeData target)=>target.endDrawerButtonIconBuilder,
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@hashCode': (m.Scope scope, ActionIconThemeData target)=>target.hashCode,
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@': (m.Scope scope)=>({ backButtonIconBuilder,  closeButtonIconBuilder,  drawerButtonIconBuilder,  endDrawerButtonIconBuilder}){
Widget backButtonIconBuilderProxy( context) {
return  engine.callFunctionPointer(scope, backButtonIconBuilder!,[context], {});
}

Widget closeButtonIconBuilderProxy( context) {
return  engine.callFunctionPointer(scope, closeButtonIconBuilder!,[context], {});
}

Widget drawerButtonIconBuilderProxy( context) {
return  engine.callFunctionPointer(scope, drawerButtonIconBuilder!,[context], {});
}

Widget endDrawerButtonIconBuilderProxy( context) {
return  engine.callFunctionPointer(scope, endDrawerButtonIconBuilder!,[context], {});
}

return ActionIconThemeData(backButtonIconBuilder:backButtonIconBuilder == null ? null :backButtonIconBuilderProxy, closeButtonIconBuilder:closeButtonIconBuilder == null ? null :closeButtonIconBuilderProxy, drawerButtonIconBuilder:drawerButtonIconBuilder == null ? null :drawerButtonIconBuilderProxy, endDrawerButtonIconBuilder:endDrawerButtonIconBuilder == null ? null :endDrawerButtonIconBuilderProxy);
},
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@copyWith': (m.Scope scope, ActionIconThemeData target)=>({ backButtonIconBuilder,  closeButtonIconBuilder,  drawerButtonIconBuilder,  endDrawerButtonIconBuilder}){
Widget backButtonIconBuilderProxy( context) {
return  engine.callFunctionPointer(scope, backButtonIconBuilder!,[context], {});
}

Widget closeButtonIconBuilderProxy( context) {
return  engine.callFunctionPointer(scope, closeButtonIconBuilder!,[context], {});
}

Widget drawerButtonIconBuilderProxy( context) {
return  engine.callFunctionPointer(scope, drawerButtonIconBuilder!,[context], {});
}

Widget endDrawerButtonIconBuilderProxy( context) {
return  engine.callFunctionPointer(scope, endDrawerButtonIconBuilder!,[context], {});
}

return target.copyWith(backButtonIconBuilder:backButtonIconBuilder == null ? null :backButtonIconBuilderProxy, closeButtonIconBuilder:closeButtonIconBuilder == null ? null :closeButtonIconBuilderProxy, drawerButtonIconBuilder:drawerButtonIconBuilder == null ? null :drawerButtonIconBuilderProxy, endDrawerButtonIconBuilder:endDrawerButtonIconBuilder == null ? null :endDrawerButtonIconBuilderProxy);
},
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@lerp': (m.Scope scope)=>ActionIconThemeData.lerp,
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@==': (m.Scope scope, ActionIconThemeData target)=>(other)=> target == other,
'package:flutter/src/material/action_icons_theme.dart@ActionIconThemeData@debugFillProperties': (m.Scope scope, ActionIconThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/action_icons_theme.dart@ActionIconTheme@#as': (m.Scope scope, target)=>()=>target as ActionIconTheme,
'package:flutter/src/material/action_icons_theme.dart@ActionIconTheme@#is': (m.Scope scope, target)=>()=>target is ActionIconTheme,
'package:flutter/src/material/action_icons_theme.dart@ActionIconTheme@data': (m.Scope scope, ActionIconTheme target)=>target.data,
'package:flutter/src/material/action_icons_theme.dart@ActionIconTheme@': (m.Scope scope)=>({ child,  data,  key}){
return ActionIconTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/action_icons_theme.dart@ActionIconTheme@of': (m.Scope scope)=>ActionIconTheme.of,
'package:flutter/src/material/action_icons_theme.dart@ActionIconTheme@wrap': (m.Scope scope, ActionIconTheme target)=>target.wrap,
'package:flutter/src/material/action_icons_theme.dart@ActionIconTheme@updateShouldNotify': (m.Scope scope, ActionIconTheme target)=>target.updateShouldNotify,

};
}