import 'package:flutter/src/cupertino/text_selection_toolbar_button.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/button.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/debug.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/text_selection_toolbar_button.dart@CupertinoTextSelectionToolbarButton@#as': (m.Scope scope, target)=>()=>target as CupertinoTextSelectionToolbarButton,
'package:flutter/src/cupertino/text_selection_toolbar_button.dart@CupertinoTextSelectionToolbarButton@#is': (m.Scope scope, target)=>()=>target is CupertinoTextSelectionToolbarButton,
'package:flutter/src/cupertino/text_selection_toolbar_button.dart@CupertinoTextSelectionToolbarButton@child': (m.Scope scope, CupertinoTextSelectionToolbarButton target)=>target.child,
'package:flutter/src/cupertino/text_selection_toolbar_button.dart@CupertinoTextSelectionToolbarButton@onPressed': (m.Scope scope, CupertinoTextSelectionToolbarButton target)=>target.onPressed,
'package:flutter/src/cupertino/text_selection_toolbar_button.dart@CupertinoTextSelectionToolbarButton@buttonItem': (m.Scope scope, CupertinoTextSelectionToolbarButton target)=>target.buttonItem,
'package:flutter/src/cupertino/text_selection_toolbar_button.dart@CupertinoTextSelectionToolbarButton@text': (m.Scope scope, CupertinoTextSelectionToolbarButton target)=>target.text,
'package:flutter/src/cupertino/text_selection_toolbar_button.dart@CupertinoTextSelectionToolbarButton@': (m.Scope scope)=>({ child,  key,  onPressed}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return CupertinoTextSelectionToolbarButton(child:child, key:key, onPressed:onPressed == null ? null :onPressedProxy);
},
'package:flutter/src/cupertino/text_selection_toolbar_button.dart@CupertinoTextSelectionToolbarButton@text': (m.Scope scope)=>({ key,  onPressed,  text}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return CupertinoTextSelectionToolbarButton.text(key:key, onPressed:onPressed == null ? null :onPressedProxy, text:text);
},
'package:flutter/src/cupertino/text_selection_toolbar_button.dart@CupertinoTextSelectionToolbarButton@buttonItem': (m.Scope scope)=>CupertinoTextSelectionToolbarButton.buttonItem,
'package:flutter/src/cupertino/text_selection_toolbar_button.dart@CupertinoTextSelectionToolbarButton@getButtonLabel': (m.Scope scope)=>CupertinoTextSelectionToolbarButton.getButtonLabel,
'package:flutter/src/cupertino/text_selection_toolbar_button.dart@CupertinoTextSelectionToolbarButton@build': (m.Scope scope, CupertinoTextSelectionToolbarButton target)=>target.build,

};
}