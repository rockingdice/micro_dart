import 'package:flutter/src/material/desktop_text_selection_toolbar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/text_selection_toolbar.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/desktop_text_selection_toolbar.dart@DesktopTextSelectionToolbar@#as': (m.Scope scope, target)=>()=>target as DesktopTextSelectionToolbar,
'package:flutter/src/material/desktop_text_selection_toolbar.dart@DesktopTextSelectionToolbar@#is': (m.Scope scope, target)=>()=>target is DesktopTextSelectionToolbar,
'package:flutter/src/material/desktop_text_selection_toolbar.dart@DesktopTextSelectionToolbar@anchor': (m.Scope scope, DesktopTextSelectionToolbar target)=>target.anchor,
'package:flutter/src/material/desktop_text_selection_toolbar.dart@DesktopTextSelectionToolbar@children': (m.Scope scope, DesktopTextSelectionToolbar target)=>target.children,
'package:flutter/src/material/desktop_text_selection_toolbar.dart@DesktopTextSelectionToolbar@': (m.Scope scope)=>({ anchor,  children,  key}){
return DesktopTextSelectionToolbar(anchor:anchor, children:children, key:key);
},
'package:flutter/src/material/desktop_text_selection_toolbar.dart@DesktopTextSelectionToolbar@build': (m.Scope scope, DesktopTextSelectionToolbar target)=>target.build,

};
}