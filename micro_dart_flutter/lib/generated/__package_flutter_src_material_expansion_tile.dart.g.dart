import 'package:flutter/src/material/expansion_tile.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/expansion_tile_theme.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/list_tile_theme.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/expansion_tile.dart@ExpansionTileController@#as': (m.Scope scope, target)=>()=>target as ExpansionTileController,
'package:flutter/src/material/expansion_tile.dart@ExpansionTileController@#is': (m.Scope scope, target)=>()=>target is ExpansionTileController,
'package:flutter/src/material/expansion_tile.dart@ExpansionTileController@isExpanded': (m.Scope scope, ExpansionTileController target)=>target.isExpanded,
'package:flutter/src/material/expansion_tile.dart@ExpansionTileController@': (m.Scope scope)=>(){
return ExpansionTileController();
},
'package:flutter/src/material/expansion_tile.dart@ExpansionTileController@expand': (m.Scope scope, ExpansionTileController target)=>target.expand,
'package:flutter/src/material/expansion_tile.dart@ExpansionTileController@collapse': (m.Scope scope, ExpansionTileController target)=>target.collapse,
'package:flutter/src/material/expansion_tile.dart@ExpansionTileController@of': (m.Scope scope)=>ExpansionTileController.of,
'package:flutter/src/material/expansion_tile.dart@ExpansionTileController@maybeOf': (m.Scope scope)=>ExpansionTileController.maybeOf,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@#as': (m.Scope scope, target)=>()=>target as ExpansionTile,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@#is': (m.Scope scope, target)=>()=>target is ExpansionTile,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@leading': (m.Scope scope, ExpansionTile target)=>target.leading,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@title': (m.Scope scope, ExpansionTile target)=>target.title,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@subtitle': (m.Scope scope, ExpansionTile target)=>target.subtitle,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@onExpansionChanged': (m.Scope scope, ExpansionTile target)=>target.onExpansionChanged,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@children': (m.Scope scope, ExpansionTile target)=>target.children,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@backgroundColor': (m.Scope scope, ExpansionTile target)=>target.backgroundColor,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@collapsedBackgroundColor': (m.Scope scope, ExpansionTile target)=>target.collapsedBackgroundColor,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@trailing': (m.Scope scope, ExpansionTile target)=>target.trailing,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@initiallyExpanded': (m.Scope scope, ExpansionTile target)=>target.initiallyExpanded,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@maintainState': (m.Scope scope, ExpansionTile target)=>target.maintainState,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@tilePadding': (m.Scope scope, ExpansionTile target)=>target.tilePadding,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@expandedAlignment': (m.Scope scope, ExpansionTile target)=>target.expandedAlignment,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@expandedCrossAxisAlignment': (m.Scope scope, ExpansionTile target)=>target.expandedCrossAxisAlignment,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@childrenPadding': (m.Scope scope, ExpansionTile target)=>target.childrenPadding,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@iconColor': (m.Scope scope, ExpansionTile target)=>target.iconColor,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@collapsedIconColor': (m.Scope scope, ExpansionTile target)=>target.collapsedIconColor,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@textColor': (m.Scope scope, ExpansionTile target)=>target.textColor,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@collapsedTextColor': (m.Scope scope, ExpansionTile target)=>target.collapsedTextColor,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@shape': (m.Scope scope, ExpansionTile target)=>target.shape,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@collapsedShape': (m.Scope scope, ExpansionTile target)=>target.collapsedShape,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@clipBehavior': (m.Scope scope, ExpansionTile target)=>target.clipBehavior,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@controlAffinity': (m.Scope scope, ExpansionTile target)=>target.controlAffinity,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@controller': (m.Scope scope, ExpansionTile target)=>target.controller,
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@': (m.Scope scope)=>({ backgroundColor,  children,  childrenPadding,  clipBehavior,  collapsedBackgroundColor,  collapsedIconColor,  collapsedShape,  collapsedTextColor,  controlAffinity,  controller,  expandedAlignment,  expandedCrossAxisAlignment,  iconColor,  initiallyExpanded,  key,  leading,  maintainState,  onExpansionChanged,  shape,  subtitle,  textColor,  tilePadding,  title,  trailing}){
void onExpansionChangedProxy( value) {
 engine.callFunctionPointer(scope, onExpansionChanged!,[value], {});
}

return ExpansionTile(backgroundColor:backgroundColor, children:children ?? const <Widget>[], childrenPadding:childrenPadding, clipBehavior:clipBehavior, collapsedBackgroundColor:collapsedBackgroundColor, collapsedIconColor:collapsedIconColor, collapsedShape:collapsedShape, collapsedTextColor:collapsedTextColor, controlAffinity:controlAffinity, controller:controller, expandedAlignment:expandedAlignment, expandedCrossAxisAlignment:expandedCrossAxisAlignment, iconColor:iconColor, initiallyExpanded:initiallyExpanded ?? false, key:key, leading:leading, maintainState:maintainState ?? false, onExpansionChanged:onExpansionChanged == null ? null :onExpansionChangedProxy, shape:shape, subtitle:subtitle, textColor:textColor, tilePadding:tilePadding, title:title, trailing:trailing);
},
'package:flutter/src/material/expansion_tile.dart@ExpansionTile@createState': (m.Scope scope, ExpansionTile target)=>target.createState,

};
}