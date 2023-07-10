import 'package:flutter/src/material/desktop_text_selection.dart';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/desktop_text_selection_toolbar.dart';
import 'package:flutter/src/material/desktop_text_selection_toolbar_button.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/desktop_text_selection.dart@@desktopTextSelectionHandleControls': (m.Scope scope)=>desktopTextSelectionHandleControls,
'package:flutter/src/material/desktop_text_selection.dart@@desktopTextSelectionControls': (m.Scope scope)=>desktopTextSelectionControls,
'package:flutter/src/material/desktop_text_selection.dart@DesktopTextSelectionControls@#as': (m.Scope scope, target)=>()=>target as DesktopTextSelectionControls,
'package:flutter/src/material/desktop_text_selection.dart@DesktopTextSelectionControls@#is': (m.Scope scope, target)=>()=>target is DesktopTextSelectionControls,
'package:flutter/src/material/desktop_text_selection.dart@DesktopTextSelectionControls@': (m.Scope scope)=>(){
return DesktopTextSelectionControls();
},
'package:flutter/src/material/desktop_text_selection.dart@DesktopTextSelectionControls@getHandleSize': (m.Scope scope, DesktopTextSelectionControls target)=>target.getHandleSize,
'package:flutter/src/material/desktop_text_selection.dart@DesktopTextSelectionControls@buildHandle': (m.Scope scope, DesktopTextSelectionControls target)=>( context,  type,  textLineHeight, [m.FunctionPointer? onTap]){
if(onTap == null){
return target.buildHandle(context, type, textLineHeight);
}
void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return target.buildHandle(context, type, textLineHeight, onTapProxy);
},
'package:flutter/src/material/desktop_text_selection.dart@DesktopTextSelectionControls@getHandleAnchor': (m.Scope scope, DesktopTextSelectionControls target)=>target.getHandleAnchor,

};
}