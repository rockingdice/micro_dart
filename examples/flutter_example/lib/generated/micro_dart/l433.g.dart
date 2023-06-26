import 'package:flutter/src/cupertino/text_selection.dart';
import 'dart:math';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:flutter/src/cupertino/text_selection_toolbar.dart';
import 'package:flutter/src/cupertino/text_selection_toolbar_button.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/text_selection.dart@@cupertinoTextSelectionHandleControls': (m.Scope scope)=>cupertinoTextSelectionHandleControls,
'package:flutter/src/cupertino/text_selection.dart@@cupertinoTextSelectionControls': (m.Scope scope)=>cupertinoTextSelectionControls,
'package:flutter/src/cupertino/text_selection.dart@CupertinoTextSelectionHandleControls@#as': (m.Scope scope, target)=>()=>target as CupertinoTextSelectionHandleControls,
'package:flutter/src/cupertino/text_selection.dart@CupertinoTextSelectionHandleControls@#is': (m.Scope scope, target)=>()=>target is CupertinoTextSelectionHandleControls,
'package:flutter/src/cupertino/text_selection.dart@CupertinoTextSelectionHandleControls@': (m.Scope scope)=>(){
return CupertinoTextSelectionHandleControls();
},
'package:flutter/src/cupertino/text_selection.dart@CupertinoTextSelectionControls@#as': (m.Scope scope, target)=>()=>target as CupertinoTextSelectionControls,
'package:flutter/src/cupertino/text_selection.dart@CupertinoTextSelectionControls@#is': (m.Scope scope, target)=>()=>target is CupertinoTextSelectionControls,
'package:flutter/src/cupertino/text_selection.dart@CupertinoTextSelectionControls@': (m.Scope scope)=>(){
return CupertinoTextSelectionControls();
},
'package:flutter/src/cupertino/text_selection.dart@CupertinoTextSelectionControls@getHandleSize': (m.Scope scope, CupertinoTextSelectionControls target)=>target.getHandleSize,
'package:flutter/src/cupertino/text_selection.dart@CupertinoTextSelectionControls@buildHandle': (m.Scope scope, CupertinoTextSelectionControls target)=>( context,  type,  textLineHeight, [m.FunctionPointer? onTap]){
if(onTap == null){
return target.buildHandle(context, type, textLineHeight);
}
void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return target.buildHandle(context, type, textLineHeight, onTapProxy);
},
'package:flutter/src/cupertino/text_selection.dart@CupertinoTextSelectionControls@getHandleAnchor': (m.Scope scope, CupertinoTextSelectionControls target)=>target.getHandleAnchor,

};
}