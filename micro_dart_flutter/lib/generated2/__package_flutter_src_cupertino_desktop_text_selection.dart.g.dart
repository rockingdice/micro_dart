import 'package:flutter/src/cupertino/desktop_text_selection.dart';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/desktop_text_selection_toolbar.dart';
import 'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/desktop_text_selection.dart@@cupertinoDesktopTextSelectionHandleControls': (m.Scope scope)=>cupertinoDesktopTextSelectionHandleControls,
'package:flutter/src/cupertino/desktop_text_selection.dart@@cupertinoDesktopTextSelectionControls': (m.Scope scope)=>cupertinoDesktopTextSelectionControls,
'package:flutter/src/cupertino/desktop_text_selection.dart@CupertinoDesktopTextSelectionControls@#as': (m.Scope scope, target)=>()=>target as CupertinoDesktopTextSelectionControls,
'package:flutter/src/cupertino/desktop_text_selection.dart@CupertinoDesktopTextSelectionControls@#is': (m.Scope scope, target)=>()=>target is CupertinoDesktopTextSelectionControls,
'package:flutter/src/cupertino/desktop_text_selection.dart@CupertinoDesktopTextSelectionControls@': (m.Scope scope)=>(){
return CupertinoDesktopTextSelectionControls();
},
'package:flutter/src/cupertino/desktop_text_selection.dart@CupertinoDesktopTextSelectionControls@getHandleSize': (m.Scope scope, CupertinoDesktopTextSelectionControls target)=>target.getHandleSize,
'package:flutter/src/cupertino/desktop_text_selection.dart@CupertinoDesktopTextSelectionControls@buildHandle': (m.Scope scope, CupertinoDesktopTextSelectionControls target)=>( context,  type,  textLineHeight, [m.FunctionPointer? onTap]){
if(onTap == null){
return target.buildHandle(context, type, textLineHeight);
}
void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return target.buildHandle(context, type, textLineHeight, onTapProxy);
},
'package:flutter/src/cupertino/desktop_text_selection.dart@CupertinoDesktopTextSelectionControls@getHandleAnchor': (m.Scope scope, CupertinoDesktopTextSelectionControls target)=>target.getHandleAnchor,

};
}