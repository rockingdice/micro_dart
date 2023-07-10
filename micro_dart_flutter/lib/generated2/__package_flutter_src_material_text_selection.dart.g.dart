import 'package:flutter/src/material/text_selection.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_selection_theme.dart';
import 'package:flutter/src/material/text_selection_toolbar.dart';
import 'package:flutter/src/material/text_selection_toolbar_text_button.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/text_selection.dart@@materialTextSelectionHandleControls': (m.Scope scope)=>materialTextSelectionHandleControls,
'package:flutter/src/material/text_selection.dart@@materialTextSelectionControls': (m.Scope scope)=>materialTextSelectionControls,
'package:flutter/src/material/text_selection.dart@MaterialTextSelectionHandleControls@#as': (m.Scope scope, target)=>()=>target as MaterialTextSelectionHandleControls,
'package:flutter/src/material/text_selection.dart@MaterialTextSelectionHandleControls@#is': (m.Scope scope, target)=>()=>target is MaterialTextSelectionHandleControls,
'package:flutter/src/material/text_selection.dart@MaterialTextSelectionHandleControls@': (m.Scope scope)=>(){
return MaterialTextSelectionHandleControls();
},
'package:flutter/src/material/text_selection.dart@MaterialTextSelectionControls@#as': (m.Scope scope, target)=>()=>target as MaterialTextSelectionControls,
'package:flutter/src/material/text_selection.dart@MaterialTextSelectionControls@#is': (m.Scope scope, target)=>()=>target is MaterialTextSelectionControls,
'package:flutter/src/material/text_selection.dart@MaterialTextSelectionControls@': (m.Scope scope)=>(){
return MaterialTextSelectionControls();
},
'package:flutter/src/material/text_selection.dart@MaterialTextSelectionControls@getHandleSize': (m.Scope scope, MaterialTextSelectionControls target)=>target.getHandleSize,
'package:flutter/src/material/text_selection.dart@MaterialTextSelectionControls@buildHandle': (m.Scope scope, MaterialTextSelectionControls target)=>( context,  type,  textHeight, [m.FunctionPointer? onTap]){
if(onTap == null){
return target.buildHandle(context, type, textHeight);
}
void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return target.buildHandle(context, type, textHeight, onTapProxy);
},
'package:flutter/src/material/text_selection.dart@MaterialTextSelectionControls@getHandleAnchor': (m.Scope scope, MaterialTextSelectionControls target)=>target.getHandleAnchor,

};
}