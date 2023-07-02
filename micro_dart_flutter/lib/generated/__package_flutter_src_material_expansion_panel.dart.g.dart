import 'package:flutter/src/material/expansion_panel.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/expand_icon.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/mergeable_material.dart';
import 'package:flutter/src/material/shadows.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/expansion_panel.dart@ExpansionPanel@#as': (m.Scope scope, target)=>()=>target as ExpansionPanel,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanel@#is': (m.Scope scope, target)=>()=>target is ExpansionPanel,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanel@headerBuilder': (m.Scope scope, ExpansionPanel target)=>target.headerBuilder,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanel@body': (m.Scope scope, ExpansionPanel target)=>target.body,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanel@isExpanded': (m.Scope scope, ExpansionPanel target)=>target.isExpanded,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanel@canTapOnHeader': (m.Scope scope, ExpansionPanel target)=>target.canTapOnHeader,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanel@backgroundColor': (m.Scope scope, ExpansionPanel target)=>target.backgroundColor,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanel@': (m.Scope scope)=>({ backgroundColor,  body,  canTapOnHeader,  headerBuilder,  isExpanded}){
Widget headerBuilderProxy( context,  isExpanded) {
return  engine.callFunctionPointer(scope, headerBuilder!,[context, isExpanded], {});
}

return ExpansionPanel(backgroundColor:backgroundColor, body:body, canTapOnHeader:canTapOnHeader ?? false, headerBuilder:headerBuilderProxy, isExpanded:isExpanded ?? false);
},
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelRadio@#as': (m.Scope scope, target)=>()=>target as ExpansionPanelRadio,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelRadio@#is': (m.Scope scope, target)=>()=>target is ExpansionPanelRadio,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelRadio@value': (m.Scope scope, ExpansionPanelRadio target)=>target.value,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelRadio@': (m.Scope scope)=>({ backgroundColor,  body,  canTapOnHeader,  headerBuilder,  value}){
Widget headerBuilderProxy( context,  isExpanded) {
return  engine.callFunctionPointer(scope, headerBuilder!,[context, isExpanded], {});
}

return ExpansionPanelRadio(backgroundColor:backgroundColor, body:body, canTapOnHeader:canTapOnHeader ?? false, headerBuilder:headerBuilderProxy, value:value);
},
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@#as': (m.Scope scope, target)=>()=>target as ExpansionPanelList,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@#is': (m.Scope scope, target)=>()=>target is ExpansionPanelList,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@children': (m.Scope scope, ExpansionPanelList target)=>target.children,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@expansionCallback': (m.Scope scope, ExpansionPanelList target)=>target.expansionCallback,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@animationDuration': (m.Scope scope, ExpansionPanelList target)=>target.animationDuration,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@initialOpenPanelValue': (m.Scope scope, ExpansionPanelList target)=>target.initialOpenPanelValue,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@expandedHeaderPadding': (m.Scope scope, ExpansionPanelList target)=>target.expandedHeaderPadding,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@dividerColor': (m.Scope scope, ExpansionPanelList target)=>target.dividerColor,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@elevation': (m.Scope scope, ExpansionPanelList target)=>target.elevation,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@expandIconColor': (m.Scope scope, ExpansionPanelList target)=>target.expandIconColor,
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@': (m.Scope scope)=>({ animationDuration,  children,  dividerColor,  elevation,  expandIconColor,  expandedHeaderPadding,  expansionCallback,  key}){
void expansionCallbackProxy( panelIndex,  isExpanded) {
 engine.callFunctionPointer(scope, expansionCallback!,[panelIndex, isExpanded], {});
}

return ExpansionPanelList(animationDuration:animationDuration ?? kThemeAnimationDuration, children:children ?? const <ExpansionPanel>[], dividerColor:dividerColor, elevation:elevation ?? 2, expandIconColor:expandIconColor, expandedHeaderPadding:expandedHeaderPadding ?? const EdgeInsets.symmetric(vertical: 64.0 - 48.0,), expansionCallback:expansionCallback == null ? null :expansionCallbackProxy, key:key);
},
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@radio': (m.Scope scope)=>({ animationDuration,  children,  dividerColor,  elevation,  expandIconColor,  expandedHeaderPadding,  expansionCallback,  initialOpenPanelValue,  key}){
void expansionCallbackProxy( panelIndex,  isExpanded) {
 engine.callFunctionPointer(scope, expansionCallback!,[panelIndex, isExpanded], {});
}

return ExpansionPanelList.radio(animationDuration:animationDuration ?? kThemeAnimationDuration, children:children ?? const <ExpansionPanelRadio>[], dividerColor:dividerColor, elevation:elevation ?? 2, expandIconColor:expandIconColor, expandedHeaderPadding:expandedHeaderPadding ?? const EdgeInsets.symmetric(vertical: 64.0 - 48.0,), expansionCallback:expansionCallback == null ? null :expansionCallbackProxy, initialOpenPanelValue:initialOpenPanelValue, key:key);
},
'package:flutter/src/material/expansion_panel.dart@ExpansionPanelList@createState': (m.Scope scope, ExpansionPanelList target)=>target.createState,

};
}