import 'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/desktop_text_selection_toolbar.dart';
import 'package:flutter/src/cupertino/desktop_text_selection_toolbar_button.dart';
import 'package:flutter/src/cupertino/text_selection_toolbar.dart';
import 'package:flutter/src/cupertino/text_selection_toolbar_button.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@#as': (m.Scope scope, target)=>()=>target as CupertinoAdaptiveTextSelectionToolbar,
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@#is': (m.Scope scope, target)=>()=>target is CupertinoAdaptiveTextSelectionToolbar,
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@anchors': (m.Scope scope, CupertinoAdaptiveTextSelectionToolbar target)=>target.anchors,
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@children': (m.Scope scope, CupertinoAdaptiveTextSelectionToolbar target)=>target.children,
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@buttonItems': (m.Scope scope, CupertinoAdaptiveTextSelectionToolbar target)=>target.buttonItems,
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@': (m.Scope scope)=>CupertinoAdaptiveTextSelectionToolbar,
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@buttonItems': (m.Scope scope)=>CupertinoAdaptiveTextSelectionToolbar.buttonItems,
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@editable': (m.Scope scope)=>({ anchors,  clipboardStatus,  key,  onCopy,  onCut,  onPaste,  onSelectAll}){
void onCopyProxy() {
 engine.callFunctionPointer(scope, onCopy!,[], {});
}

void onCutProxy() {
 engine.callFunctionPointer(scope, onCut!,[], {});
}

void onPasteProxy() {
 engine.callFunctionPointer(scope, onPaste!,[], {});
}

void onSelectAllProxy() {
 engine.callFunctionPointer(scope, onSelectAll!,[], {});
}

return CupertinoAdaptiveTextSelectionToolbar.editable(anchors:anchors, clipboardStatus:clipboardStatus, key:key, onCopy:onCopyProxy, onCut:onCutProxy, onPaste:onPasteProxy, onSelectAll:onSelectAllProxy);
},
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@editableText': (m.Scope scope)=>CupertinoAdaptiveTextSelectionToolbar.editableText,
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@selectable': (m.Scope scope)=>({ anchors,  key,  onCopy,  onSelectAll,  selectionGeometry}){
void onCopyProxy() {
 engine.callFunctionPointer(scope, onCopy!,[], {});
}

void onSelectAllProxy() {
 engine.callFunctionPointer(scope, onSelectAll!,[], {});
}

return CupertinoAdaptiveTextSelectionToolbar.selectable(anchors:anchors, key:key, onCopy:onCopyProxy, onSelectAll:onSelectAllProxy, selectionGeometry:selectionGeometry);
},
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@getAdaptiveButtons': (m.Scope scope)=>CupertinoAdaptiveTextSelectionToolbar.getAdaptiveButtons,
'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart@CupertinoAdaptiveTextSelectionToolbar@build': (m.Scope scope, CupertinoAdaptiveTextSelectionToolbar target)=>target.build,

};
}