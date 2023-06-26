import 'package:flutter/src/material/adaptive_text_selection_toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/desktop_text_selection_toolbar.dart';
import 'package:flutter/src/material/desktop_text_selection_toolbar_button.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_selection_toolbar.dart';
import 'package:flutter/src/material/text_selection_toolbar_text_button.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@#as': (m.Scope scope, target)=>()=>target as AdaptiveTextSelectionToolbar,
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@#is': (m.Scope scope, target)=>()=>target is AdaptiveTextSelectionToolbar,
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@buttonItems': (m.Scope scope, AdaptiveTextSelectionToolbar target)=>target.buttonItems,
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@children': (m.Scope scope, AdaptiveTextSelectionToolbar target)=>target.children,
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@anchors': (m.Scope scope, AdaptiveTextSelectionToolbar target)=>target.anchors,
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@': (m.Scope scope)=>AdaptiveTextSelectionToolbar,
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@buttonItems': (m.Scope scope)=>AdaptiveTextSelectionToolbar.buttonItems,
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@editable': (m.Scope scope)=>({ anchors,  clipboardStatus,  key,  onCopy,  onCut,  onPaste,  onSelectAll}){
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

return AdaptiveTextSelectionToolbar.editable(anchors:anchors, clipboardStatus:clipboardStatus, key:key, onCopy:onCopyProxy, onCut:onCutProxy, onPaste:onPasteProxy, onSelectAll:onSelectAllProxy);
},
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@editableText': (m.Scope scope)=>AdaptiveTextSelectionToolbar.editableText,
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@selectable': (m.Scope scope)=>({ anchors,  key,  onCopy,  onSelectAll,  selectionGeometry}){
void onCopyProxy() {
 engine.callFunctionPointer(scope, onCopy!,[], {});
}

void onSelectAllProxy() {
 engine.callFunctionPointer(scope, onSelectAll!,[], {});
}

return AdaptiveTextSelectionToolbar.selectable(anchors:anchors, key:key, onCopy:onCopyProxy, onSelectAll:onSelectAllProxy, selectionGeometry:selectionGeometry);
},
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@selectableRegion': (m.Scope scope)=>AdaptiveTextSelectionToolbar.selectableRegion,
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@getButtonLabel': (m.Scope scope)=>AdaptiveTextSelectionToolbar.getButtonLabel,
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@getAdaptiveButtons': (m.Scope scope)=>AdaptiveTextSelectionToolbar.getAdaptiveButtons,
'package:flutter/src/material/adaptive_text_selection_toolbar.dart@AdaptiveTextSelectionToolbar@build': (m.Scope scope, AdaptiveTextSelectionToolbar target)=>target.build,

};
}