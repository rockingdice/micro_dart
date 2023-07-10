import 'package:flutter/src/material/button_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_bar_theme.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/dialog.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/button_bar.dart@ButtonBar@#as': (m.Scope scope, target)=>()=>target as ButtonBar,
'package:flutter/src/material/button_bar.dart@ButtonBar@#is': (m.Scope scope, target)=>()=>target is ButtonBar,
'package:flutter/src/material/button_bar.dart@ButtonBar@alignment': (m.Scope scope, ButtonBar target)=>target.alignment,
'package:flutter/src/material/button_bar.dart@ButtonBar@mainAxisSize': (m.Scope scope, ButtonBar target)=>target.mainAxisSize,
'package:flutter/src/material/button_bar.dart@ButtonBar@buttonTextTheme': (m.Scope scope, ButtonBar target)=>target.buttonTextTheme,
'package:flutter/src/material/button_bar.dart@ButtonBar@buttonMinWidth': (m.Scope scope, ButtonBar target)=>target.buttonMinWidth,
'package:flutter/src/material/button_bar.dart@ButtonBar@buttonHeight': (m.Scope scope, ButtonBar target)=>target.buttonHeight,
'package:flutter/src/material/button_bar.dart@ButtonBar@buttonPadding': (m.Scope scope, ButtonBar target)=>target.buttonPadding,
'package:flutter/src/material/button_bar.dart@ButtonBar@buttonAlignedDropdown': (m.Scope scope, ButtonBar target)=>target.buttonAlignedDropdown,
'package:flutter/src/material/button_bar.dart@ButtonBar@layoutBehavior': (m.Scope scope, ButtonBar target)=>target.layoutBehavior,
'package:flutter/src/material/button_bar.dart@ButtonBar@overflowDirection': (m.Scope scope, ButtonBar target)=>target.overflowDirection,
'package:flutter/src/material/button_bar.dart@ButtonBar@overflowButtonSpacing': (m.Scope scope, ButtonBar target)=>target.overflowButtonSpacing,
'package:flutter/src/material/button_bar.dart@ButtonBar@children': (m.Scope scope, ButtonBar target)=>target.children,
'package:flutter/src/material/button_bar.dart@ButtonBar@': (m.Scope scope)=>({ alignment,  buttonAlignedDropdown,  buttonHeight,  buttonMinWidth,  buttonPadding,  buttonTextTheme,  children,  key,  layoutBehavior,  mainAxisSize,  overflowButtonSpacing,  overflowDirection}){
return ButtonBar(alignment:alignment, buttonAlignedDropdown:buttonAlignedDropdown, buttonHeight:buttonHeight, buttonMinWidth:buttonMinWidth, buttonPadding:buttonPadding, buttonTextTheme:buttonTextTheme, children:children ?? const <Widget>[], key:key, layoutBehavior:layoutBehavior, mainAxisSize:mainAxisSize, overflowButtonSpacing:overflowButtonSpacing, overflowDirection:overflowDirection);
},
'package:flutter/src/material/button_bar.dart@ButtonBar@build': (m.Scope scope, ButtonBar target)=>target.build,

};
}