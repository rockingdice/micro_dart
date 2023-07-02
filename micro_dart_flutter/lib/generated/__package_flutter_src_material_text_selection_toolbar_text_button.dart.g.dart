import 'package:flutter/src/material/text_selection_toolbar_text_button.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/text_selection_toolbar_text_button.dart@TextSelectionToolbarTextButton@#as': (m.Scope scope, target)=>()=>target as TextSelectionToolbarTextButton,
'package:flutter/src/material/text_selection_toolbar_text_button.dart@TextSelectionToolbarTextButton@#is': (m.Scope scope, target)=>()=>target is TextSelectionToolbarTextButton,
'package:flutter/src/material/text_selection_toolbar_text_button.dart@TextSelectionToolbarTextButton@child': (m.Scope scope, TextSelectionToolbarTextButton target)=>target.child,
'package:flutter/src/material/text_selection_toolbar_text_button.dart@TextSelectionToolbarTextButton@onPressed': (m.Scope scope, TextSelectionToolbarTextButton target)=>target.onPressed,
'package:flutter/src/material/text_selection_toolbar_text_button.dart@TextSelectionToolbarTextButton@padding': (m.Scope scope, TextSelectionToolbarTextButton target)=>target.padding,
'package:flutter/src/material/text_selection_toolbar_text_button.dart@TextSelectionToolbarTextButton@alignment': (m.Scope scope, TextSelectionToolbarTextButton target)=>target.alignment,
'package:flutter/src/material/text_selection_toolbar_text_button.dart@TextSelectionToolbarTextButton@': (m.Scope scope)=>({ alignment,  child,  key,  onPressed,  padding}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return TextSelectionToolbarTextButton(alignment:alignment, child:child, key:key, onPressed:onPressed == null ? null :onPressedProxy, padding:padding);
},
'package:flutter/src/material/text_selection_toolbar_text_button.dart@TextSelectionToolbarTextButton@getPadding': (m.Scope scope)=>TextSelectionToolbarTextButton.getPadding,
'package:flutter/src/material/text_selection_toolbar_text_button.dart@TextSelectionToolbarTextButton@copyWith': (m.Scope scope, TextSelectionToolbarTextButton target)=>({ alignment,  child,  onPressed,  padding}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return target.copyWith(alignment:alignment, child:child, onPressed:onPressed == null ? null :onPressedProxy, padding:padding);
},
'package:flutter/src/material/text_selection_toolbar_text_button.dart@TextSelectionToolbarTextButton@build': (m.Scope scope, TextSelectionToolbarTextButton target)=>target.build,

};
}