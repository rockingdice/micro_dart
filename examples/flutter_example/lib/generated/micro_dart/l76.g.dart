import 'package:flutter/src/material/desktop_text_selection_toolbar_button.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/desktop_text_selection_toolbar_button.dart@DesktopTextSelectionToolbarButton@#as': (m.Scope scope, target)=>()=>target as DesktopTextSelectionToolbarButton,
'package:flutter/src/material/desktop_text_selection_toolbar_button.dart@DesktopTextSelectionToolbarButton@#is': (m.Scope scope, target)=>()=>target is DesktopTextSelectionToolbarButton,
'package:flutter/src/material/desktop_text_selection_toolbar_button.dart@DesktopTextSelectionToolbarButton@onPressed': (m.Scope scope, DesktopTextSelectionToolbarButton target)=>target.onPressed,
'package:flutter/src/material/desktop_text_selection_toolbar_button.dart@DesktopTextSelectionToolbarButton@child': (m.Scope scope, DesktopTextSelectionToolbarButton target)=>target.child,
'package:flutter/src/material/desktop_text_selection_toolbar_button.dart@DesktopTextSelectionToolbarButton@': (m.Scope scope)=>({ child,  key,  onPressed}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return DesktopTextSelectionToolbarButton(child:child, key:key, onPressed:onPressedProxy);
},
'package:flutter/src/material/desktop_text_selection_toolbar_button.dart@DesktopTextSelectionToolbarButton@text': (m.Scope scope)=>({ context,  key,  onPressed,  text}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return DesktopTextSelectionToolbarButton.text(context:context, key:key, onPressed:onPressedProxy, text:text);
},
'package:flutter/src/material/desktop_text_selection_toolbar_button.dart@DesktopTextSelectionToolbarButton@build': (m.Scope scope, DesktopTextSelectionToolbarButton target)=>target.build,

};
}