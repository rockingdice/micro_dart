import 'package:flutter/src/cupertino/desktop_text_selection_toolbar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/desktop_text_selection_toolbar.dart@CupertinoDesktopTextSelectionToolbar@#as': (m.Scope scope, target)=>()=>target as CupertinoDesktopTextSelectionToolbar,
'package:flutter/src/cupertino/desktop_text_selection_toolbar.dart@CupertinoDesktopTextSelectionToolbar@#is': (m.Scope scope, target)=>()=>target is CupertinoDesktopTextSelectionToolbar,
'package:flutter/src/cupertino/desktop_text_selection_toolbar.dart@CupertinoDesktopTextSelectionToolbar@anchor': (m.Scope scope, CupertinoDesktopTextSelectionToolbar target)=>target.anchor,
'package:flutter/src/cupertino/desktop_text_selection_toolbar.dart@CupertinoDesktopTextSelectionToolbar@children': (m.Scope scope, CupertinoDesktopTextSelectionToolbar target)=>target.children,
'package:flutter/src/cupertino/desktop_text_selection_toolbar.dart@CupertinoDesktopTextSelectionToolbar@': (m.Scope scope)=>({ anchor,  children,  key}){
return CupertinoDesktopTextSelectionToolbar(anchor:anchor, children:children, key:key);
},
'package:flutter/src/cupertino/desktop_text_selection_toolbar.dart@CupertinoDesktopTextSelectionToolbar@build': (m.Scope scope, CupertinoDesktopTextSelectionToolbar target)=>target.build,

};
}