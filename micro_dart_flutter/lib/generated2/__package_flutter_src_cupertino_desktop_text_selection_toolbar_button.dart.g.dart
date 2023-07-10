import 'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/button.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/text_selection_toolbar_button.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart@CupertinoDesktopTextSelectionToolbarButton@#as': (m.Scope scope, target)=>()=>target as CupertinoDesktopTextSelectionToolbarButton,
'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart@CupertinoDesktopTextSelectionToolbarButton@#is': (m.Scope scope, target)=>()=>target is CupertinoDesktopTextSelectionToolbarButton,
'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart@CupertinoDesktopTextSelectionToolbarButton@onPressed': (m.Scope scope, CupertinoDesktopTextSelectionToolbarButton target)=>target.onPressed,
'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart@CupertinoDesktopTextSelectionToolbarButton@child': (m.Scope scope, CupertinoDesktopTextSelectionToolbarButton target)=>target.child,
'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart@CupertinoDesktopTextSelectionToolbarButton@buttonItem': (m.Scope scope, CupertinoDesktopTextSelectionToolbarButton target)=>target.buttonItem,
'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart@CupertinoDesktopTextSelectionToolbarButton@': (m.Scope scope)=>({ child,  key,  onPressed}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return CupertinoDesktopTextSelectionToolbarButton(child:child, key:key, onPressed:onPressedProxy);
},
'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart@CupertinoDesktopTextSelectionToolbarButton@text': (m.Scope scope)=>({ context,  key,  onPressed,  text}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return CupertinoDesktopTextSelectionToolbarButton.text(context:context, key:key, onPressed:onPressedProxy, text:text);
},
'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart@CupertinoDesktopTextSelectionToolbarButton@buttonItem': (m.Scope scope)=>CupertinoDesktopTextSelectionToolbarButton.buttonItem,
'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart@CupertinoDesktopTextSelectionToolbarButton@createState': (m.Scope scope, CupertinoDesktopTextSelectionToolbarButton target)=>target.createState,

};
}