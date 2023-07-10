import 'package:flutter/src/material/list_tile.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icon_button_theme.dart';
import 'package:flutter/src/material/ink_decoration.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/list_tile_theme.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/list_tile.dart@ListTile@#as': (m.Scope scope, target)=>()=>target as ListTile,
'package:flutter/src/material/list_tile.dart@ListTile@#is': (m.Scope scope, target)=>()=>target is ListTile,
'package:flutter/src/material/list_tile.dart@ListTile@leading': (m.Scope scope, ListTile target)=>target.leading,
'package:flutter/src/material/list_tile.dart@ListTile@title': (m.Scope scope, ListTile target)=>target.title,
'package:flutter/src/material/list_tile.dart@ListTile@subtitle': (m.Scope scope, ListTile target)=>target.subtitle,
'package:flutter/src/material/list_tile.dart@ListTile@trailing': (m.Scope scope, ListTile target)=>target.trailing,
'package:flutter/src/material/list_tile.dart@ListTile@isThreeLine': (m.Scope scope, ListTile target)=>target.isThreeLine,
'package:flutter/src/material/list_tile.dart@ListTile@dense': (m.Scope scope, ListTile target)=>target.dense,
'package:flutter/src/material/list_tile.dart@ListTile@visualDensity': (m.Scope scope, ListTile target)=>target.visualDensity,
'package:flutter/src/material/list_tile.dart@ListTile@shape': (m.Scope scope, ListTile target)=>target.shape,
'package:flutter/src/material/list_tile.dart@ListTile@selectedColor': (m.Scope scope, ListTile target)=>target.selectedColor,
'package:flutter/src/material/list_tile.dart@ListTile@iconColor': (m.Scope scope, ListTile target)=>target.iconColor,
'package:flutter/src/material/list_tile.dart@ListTile@textColor': (m.Scope scope, ListTile target)=>target.textColor,
'package:flutter/src/material/list_tile.dart@ListTile@titleTextStyle': (m.Scope scope, ListTile target)=>target.titleTextStyle,
'package:flutter/src/material/list_tile.dart@ListTile@subtitleTextStyle': (m.Scope scope, ListTile target)=>target.subtitleTextStyle,
'package:flutter/src/material/list_tile.dart@ListTile@leadingAndTrailingTextStyle': (m.Scope scope, ListTile target)=>target.leadingAndTrailingTextStyle,
'package:flutter/src/material/list_tile.dart@ListTile@style': (m.Scope scope, ListTile target)=>target.style,
'package:flutter/src/material/list_tile.dart@ListTile@contentPadding': (m.Scope scope, ListTile target)=>target.contentPadding,
'package:flutter/src/material/list_tile.dart@ListTile@enabled': (m.Scope scope, ListTile target)=>target.enabled,
'package:flutter/src/material/list_tile.dart@ListTile@onTap': (m.Scope scope, ListTile target)=>target.onTap,
'package:flutter/src/material/list_tile.dart@ListTile@onLongPress': (m.Scope scope, ListTile target)=>target.onLongPress,
'package:flutter/src/material/list_tile.dart@ListTile@onFocusChange': (m.Scope scope, ListTile target)=>target.onFocusChange,
'package:flutter/src/material/list_tile.dart@ListTile@mouseCursor': (m.Scope scope, ListTile target)=>target.mouseCursor,
'package:flutter/src/material/list_tile.dart@ListTile@selected': (m.Scope scope, ListTile target)=>target.selected,
'package:flutter/src/material/list_tile.dart@ListTile@focusColor': (m.Scope scope, ListTile target)=>target.focusColor,
'package:flutter/src/material/list_tile.dart@ListTile@hoverColor': (m.Scope scope, ListTile target)=>target.hoverColor,
'package:flutter/src/material/list_tile.dart@ListTile@splashColor': (m.Scope scope, ListTile target)=>target.splashColor,
'package:flutter/src/material/list_tile.dart@ListTile@focusNode': (m.Scope scope, ListTile target)=>target.focusNode,
'package:flutter/src/material/list_tile.dart@ListTile@autofocus': (m.Scope scope, ListTile target)=>target.autofocus,
'package:flutter/src/material/list_tile.dart@ListTile@tileColor': (m.Scope scope, ListTile target)=>target.tileColor,
'package:flutter/src/material/list_tile.dart@ListTile@selectedTileColor': (m.Scope scope, ListTile target)=>target.selectedTileColor,
'package:flutter/src/material/list_tile.dart@ListTile@enableFeedback': (m.Scope scope, ListTile target)=>target.enableFeedback,
'package:flutter/src/material/list_tile.dart@ListTile@horizontalTitleGap': (m.Scope scope, ListTile target)=>target.horizontalTitleGap,
'package:flutter/src/material/list_tile.dart@ListTile@minVerticalPadding': (m.Scope scope, ListTile target)=>target.minVerticalPadding,
'package:flutter/src/material/list_tile.dart@ListTile@minLeadingWidth': (m.Scope scope, ListTile target)=>target.minLeadingWidth,
'package:flutter/src/material/list_tile.dart@ListTile@titleAlignment': (m.Scope scope, ListTile target)=>target.titleAlignment,
'package:flutter/src/material/list_tile.dart@ListTile@': (m.Scope scope)=>({ autofocus,  contentPadding,  dense,  enableFeedback,  enabled,  focusColor,  focusNode,  horizontalTitleGap,  hoverColor,  iconColor,  isThreeLine,  key,  leading,  leadingAndTrailingTextStyle,  minLeadingWidth,  minVerticalPadding,  mouseCursor,  onFocusChange,  onLongPress,  onTap,  selected,  selectedColor,  selectedTileColor,  shape,  splashColor,  style,  subtitle,  subtitleTextStyle,  textColor,  tileColor,  title,  titleAlignment,  titleTextStyle,  trailing,  visualDensity}){
void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return ListTile(autofocus:autofocus ?? false, contentPadding:contentPadding, dense:dense, enableFeedback:enableFeedback, enabled:enabled ?? true, focusColor:focusColor, focusNode:focusNode, horizontalTitleGap:horizontalTitleGap, hoverColor:hoverColor, iconColor:iconColor, isThreeLine:isThreeLine ?? false, key:key, leading:leading, leadingAndTrailingTextStyle:leadingAndTrailingTextStyle, minLeadingWidth:minLeadingWidth, minVerticalPadding:minVerticalPadding, mouseCursor:mouseCursor, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onTap:onTap == null ? null :onTapProxy, selected:selected ?? false, selectedColor:selectedColor, selectedTileColor:selectedTileColor, shape:shape, splashColor:splashColor, style:style, subtitle:subtitle, subtitleTextStyle:subtitleTextStyle, textColor:textColor, tileColor:tileColor, title:title, titleAlignment:titleAlignment, titleTextStyle:titleTextStyle, trailing:trailing, visualDensity:visualDensity);
},
'package:flutter/src/material/list_tile.dart@ListTile@divideTiles': (m.Scope scope)=>ListTile.divideTiles,
'package:flutter/src/material/list_tile.dart@ListTile@build': (m.Scope scope, ListTile target)=>target.build,
'package:flutter/src/material/list_tile.dart@ListTile@debugFillProperties': (m.Scope scope, ListTile target)=>target.debugFillProperties,

};
}