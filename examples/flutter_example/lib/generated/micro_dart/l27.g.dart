import 'package:flutter/src/material/action_buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/action_icons_theme.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/action_buttons.dart@BackButtonIcon@#as': (m.Scope scope, target)=>()=>target as BackButtonIcon,
'package:flutter/src/material/action_buttons.dart@BackButtonIcon@#is': (m.Scope scope, target)=>()=>target is BackButtonIcon,
'package:flutter/src/material/action_buttons.dart@BackButtonIcon@': (m.Scope scope)=>({ key}){
return BackButtonIcon(key:key);
},
'package:flutter/src/material/action_buttons.dart@BackButtonIcon@build': (m.Scope scope, BackButtonIcon target)=>target.build,
'package:flutter/src/material/action_buttons.dart@BackButton@#as': (m.Scope scope, target)=>()=>target as BackButton,
'package:flutter/src/material/action_buttons.dart@BackButton@#is': (m.Scope scope, target)=>()=>target is BackButton,
'package:flutter/src/material/action_buttons.dart@BackButton@': (m.Scope scope)=>({ color,  key,  onPressed,  style}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return BackButton(color:color, key:key, onPressed:onPressed == null ? null :onPressedProxy, style:style);
},
'package:flutter/src/material/action_buttons.dart@CloseButtonIcon@#as': (m.Scope scope, target)=>()=>target as CloseButtonIcon,
'package:flutter/src/material/action_buttons.dart@CloseButtonIcon@#is': (m.Scope scope, target)=>()=>target is CloseButtonIcon,
'package:flutter/src/material/action_buttons.dart@CloseButtonIcon@': (m.Scope scope)=>({ key}){
return CloseButtonIcon(key:key);
},
'package:flutter/src/material/action_buttons.dart@CloseButtonIcon@build': (m.Scope scope, CloseButtonIcon target)=>target.build,
'package:flutter/src/material/action_buttons.dart@CloseButton@#as': (m.Scope scope, target)=>()=>target as CloseButton,
'package:flutter/src/material/action_buttons.dart@CloseButton@#is': (m.Scope scope, target)=>()=>target is CloseButton,
'package:flutter/src/material/action_buttons.dart@CloseButton@': (m.Scope scope)=>({ color,  key,  onPressed,  style}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return CloseButton(color:color, key:key, onPressed:onPressed == null ? null :onPressedProxy, style:style);
},
'package:flutter/src/material/action_buttons.dart@DrawerButtonIcon@#as': (m.Scope scope, target)=>()=>target as DrawerButtonIcon,
'package:flutter/src/material/action_buttons.dart@DrawerButtonIcon@#is': (m.Scope scope, target)=>()=>target is DrawerButtonIcon,
'package:flutter/src/material/action_buttons.dart@DrawerButtonIcon@': (m.Scope scope)=>({ key}){
return DrawerButtonIcon(key:key);
},
'package:flutter/src/material/action_buttons.dart@DrawerButtonIcon@build': (m.Scope scope, DrawerButtonIcon target)=>target.build,
'package:flutter/src/material/action_buttons.dart@DrawerButton@#as': (m.Scope scope, target)=>()=>target as DrawerButton,
'package:flutter/src/material/action_buttons.dart@DrawerButton@#is': (m.Scope scope, target)=>()=>target is DrawerButton,
'package:flutter/src/material/action_buttons.dart@DrawerButton@': (m.Scope scope)=>({ key,  onPressed,  style}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return DrawerButton(key:key, onPressed:onPressed == null ? null :onPressedProxy, style:style);
},
'package:flutter/src/material/action_buttons.dart@EndDrawerButtonIcon@#as': (m.Scope scope, target)=>()=>target as EndDrawerButtonIcon,
'package:flutter/src/material/action_buttons.dart@EndDrawerButtonIcon@#is': (m.Scope scope, target)=>()=>target is EndDrawerButtonIcon,
'package:flutter/src/material/action_buttons.dart@EndDrawerButtonIcon@': (m.Scope scope)=>({ key}){
return EndDrawerButtonIcon(key:key);
},
'package:flutter/src/material/action_buttons.dart@EndDrawerButtonIcon@build': (m.Scope scope, EndDrawerButtonIcon target)=>target.build,
'package:flutter/src/material/action_buttons.dart@EndDrawerButton@#as': (m.Scope scope, target)=>()=>target as EndDrawerButton,
'package:flutter/src/material/action_buttons.dart@EndDrawerButton@#is': (m.Scope scope, target)=>()=>target is EndDrawerButton,
'package:flutter/src/material/action_buttons.dart@EndDrawerButton@': (m.Scope scope)=>({ key,  onPressed,  style}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return EndDrawerButton(key:key, onPressed:onPressed == null ? null :onPressedProxy, style:style);
},

};
}