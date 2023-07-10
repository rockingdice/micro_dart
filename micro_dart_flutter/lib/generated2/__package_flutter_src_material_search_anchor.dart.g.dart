import 'package:flutter/src/material/search_anchor.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/divider_theme.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/search_bar_theme.dart';
import 'package:flutter/src/material/search_view_theme.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/search_anchor.dart@SearchAnchor@#as': (m.Scope scope, target)=>()=>target as SearchAnchor,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@#is': (m.Scope scope, target)=>()=>target is SearchAnchor,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@isFullScreen': (m.Scope scope, SearchAnchor target)=>target.isFullScreen,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@searchController': (m.Scope scope, SearchAnchor target)=>target.searchController,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@viewBuilder': (m.Scope scope, SearchAnchor target)=>target.viewBuilder,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@viewLeading': (m.Scope scope, SearchAnchor target)=>target.viewLeading,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@viewTrailing': (m.Scope scope, SearchAnchor target)=>target.viewTrailing,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@viewHintText': (m.Scope scope, SearchAnchor target)=>target.viewHintText,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@viewBackgroundColor': (m.Scope scope, SearchAnchor target)=>target.viewBackgroundColor,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@viewElevation': (m.Scope scope, SearchAnchor target)=>target.viewElevation,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@viewSurfaceTintColor': (m.Scope scope, SearchAnchor target)=>target.viewSurfaceTintColor,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@viewSide': (m.Scope scope, SearchAnchor target)=>target.viewSide,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@viewShape': (m.Scope scope, SearchAnchor target)=>target.viewShape,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@headerTextStyle': (m.Scope scope, SearchAnchor target)=>target.headerTextStyle,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@headerHintStyle': (m.Scope scope, SearchAnchor target)=>target.headerHintStyle,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@dividerColor': (m.Scope scope, SearchAnchor target)=>target.dividerColor,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@viewConstraints': (m.Scope scope, SearchAnchor target)=>target.viewConstraints,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@builder': (m.Scope scope, SearchAnchor target)=>target.builder,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@suggestionsBuilder': (m.Scope scope, SearchAnchor target)=>target.suggestionsBuilder,
'package:flutter/src/material/search_anchor.dart@SearchAnchor@': (m.Scope scope)=>({ builder,  dividerColor,  headerHintStyle,  headerTextStyle,  isFullScreen,  key,  searchController,  suggestionsBuilder,  viewBackgroundColor,  viewBuilder,  viewConstraints,  viewElevation,  viewHintText,  viewLeading,  viewShape,  viewSide,  viewSurfaceTintColor,  viewTrailing}){
Widget builderProxy( context,  controller) {
return  engine.callFunctionPointer(scope, builder!,[context, controller], {});
}

Iterable<Widget> suggestionsBuilderProxy( context,  controller) {
return  engine.callFunctionPointer(scope, suggestionsBuilder!,[context, controller], {});
}

Widget viewBuilderProxy( suggestions) {
return  engine.callFunctionPointer(scope, viewBuilder!,[suggestions], {});
}

return SearchAnchor(builder:builderProxy, dividerColor:dividerColor, headerHintStyle:headerHintStyle, headerTextStyle:headerTextStyle, isFullScreen:isFullScreen, key:key, searchController:searchController, suggestionsBuilder:suggestionsBuilderProxy, viewBackgroundColor:viewBackgroundColor, viewBuilder:viewBuilder == null ? null :viewBuilderProxy, viewConstraints:viewConstraints, viewElevation:viewElevation, viewHintText:viewHintText, viewLeading:viewLeading, viewShape:viewShape, viewSide:viewSide, viewSurfaceTintColor:viewSurfaceTintColor, viewTrailing:viewTrailing);
},
'package:flutter/src/material/search_anchor.dart@SearchAnchor@bar': (m.Scope scope)=>({ barBackgroundColor,  barElevation,  barHintStyle,  barHintText,  barLeading,  barOverlayColor,  barPadding,  barShape,  barSide,  barTextStyle,  barTrailing,  constraints,  dividerColor,  isFullScreen,  onTap,  searchController,  suggestionsBuilder,  viewBackgroundColor,  viewConstraints,  viewElevation,  viewHeaderHintStyle,  viewHeaderTextStyle,  viewHintText,  viewLeading,  viewShape,  viewSide,  viewTrailing}){
void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

Iterable<Widget> suggestionsBuilderProxy( context,  controller) {
return  engine.callFunctionPointer(scope, suggestionsBuilder!,[context, controller], {});
}

return SearchAnchor.bar(barBackgroundColor:barBackgroundColor, barElevation:barElevation, barHintStyle:barHintStyle, barHintText:barHintText, barLeading:barLeading, barOverlayColor:barOverlayColor, barPadding:barPadding, barShape:barShape, barSide:barSide, barTextStyle:barTextStyle, barTrailing:barTrailing, constraints:constraints, dividerColor:dividerColor, isFullScreen:isFullScreen, onTap:onTap == null ? null :onTapProxy, searchController:searchController, suggestionsBuilder:suggestionsBuilderProxy, viewBackgroundColor:viewBackgroundColor, viewConstraints:viewConstraints, viewElevation:viewElevation, viewHeaderHintStyle:viewHeaderHintStyle, viewHeaderTextStyle:viewHeaderTextStyle, viewHintText:viewHintText, viewLeading:viewLeading, viewShape:viewShape, viewSide:viewSide, viewTrailing:viewTrailing);
},
'package:flutter/src/material/search_anchor.dart@SearchAnchor@createState': (m.Scope scope, SearchAnchor target)=>target.createState,
'package:flutter/src/material/search_anchor.dart@SearchController@#as': (m.Scope scope, target)=>()=>target as SearchController,
'package:flutter/src/material/search_anchor.dart@SearchController@#is': (m.Scope scope, target)=>()=>target is SearchController,
'package:flutter/src/material/search_anchor.dart@SearchController@isOpen': (m.Scope scope, SearchController target)=>target.isOpen,
'package:flutter/src/material/search_anchor.dart@SearchController@': (m.Scope scope)=>(){
return SearchController();
},
'package:flutter/src/material/search_anchor.dart@SearchController@openView': (m.Scope scope, SearchController target)=>target.openView,
'package:flutter/src/material/search_anchor.dart@SearchController@closeView': (m.Scope scope, SearchController target)=>target.closeView,
'package:flutter/src/material/search_anchor.dart@SearchBar@#as': (m.Scope scope, target)=>()=>target as SearchBar,
'package:flutter/src/material/search_anchor.dart@SearchBar@#is': (m.Scope scope, target)=>()=>target is SearchBar,
'package:flutter/src/material/search_anchor.dart@SearchBar@controller': (m.Scope scope, SearchBar target)=>target.controller,
'package:flutter/src/material/search_anchor.dart@SearchBar@focusNode': (m.Scope scope, SearchBar target)=>target.focusNode,
'package:flutter/src/material/search_anchor.dart@SearchBar@hintText': (m.Scope scope, SearchBar target)=>target.hintText,
'package:flutter/src/material/search_anchor.dart@SearchBar@leading': (m.Scope scope, SearchBar target)=>target.leading,
'package:flutter/src/material/search_anchor.dart@SearchBar@trailing': (m.Scope scope, SearchBar target)=>target.trailing,
'package:flutter/src/material/search_anchor.dart@SearchBar@onTap': (m.Scope scope, SearchBar target)=>target.onTap,
'package:flutter/src/material/search_anchor.dart@SearchBar@onChanged': (m.Scope scope, SearchBar target)=>target.onChanged,
'package:flutter/src/material/search_anchor.dart@SearchBar@constraints': (m.Scope scope, SearchBar target)=>target.constraints,
'package:flutter/src/material/search_anchor.dart@SearchBar@elevation': (m.Scope scope, SearchBar target)=>target.elevation,
'package:flutter/src/material/search_anchor.dart@SearchBar@backgroundColor': (m.Scope scope, SearchBar target)=>target.backgroundColor,
'package:flutter/src/material/search_anchor.dart@SearchBar@shadowColor': (m.Scope scope, SearchBar target)=>target.shadowColor,
'package:flutter/src/material/search_anchor.dart@SearchBar@surfaceTintColor': (m.Scope scope, SearchBar target)=>target.surfaceTintColor,
'package:flutter/src/material/search_anchor.dart@SearchBar@overlayColor': (m.Scope scope, SearchBar target)=>target.overlayColor,
'package:flutter/src/material/search_anchor.dart@SearchBar@side': (m.Scope scope, SearchBar target)=>target.side,
'package:flutter/src/material/search_anchor.dart@SearchBar@shape': (m.Scope scope, SearchBar target)=>target.shape,
'package:flutter/src/material/search_anchor.dart@SearchBar@padding': (m.Scope scope, SearchBar target)=>target.padding,
'package:flutter/src/material/search_anchor.dart@SearchBar@textStyle': (m.Scope scope, SearchBar target)=>target.textStyle,
'package:flutter/src/material/search_anchor.dart@SearchBar@hintStyle': (m.Scope scope, SearchBar target)=>target.hintStyle,
'package:flutter/src/material/search_anchor.dart@SearchBar@': (m.Scope scope)=>({ backgroundColor,  constraints,  controller,  elevation,  focusNode,  hintStyle,  hintText,  key,  leading,  onChanged,  onTap,  overlayColor,  padding,  shadowColor,  shape,  side,  surfaceTintColor,  textStyle,  trailing}){
void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return SearchBar(backgroundColor:backgroundColor, constraints:constraints, controller:controller, elevation:elevation, focusNode:focusNode, hintStyle:hintStyle, hintText:hintText, key:key, leading:leading, onChanged:onChanged == null ? null :onChangedProxy, onTap:onTap == null ? null :onTapProxy, overlayColor:overlayColor, padding:padding, shadowColor:shadowColor, shape:shape, side:side, surfaceTintColor:surfaceTintColor, textStyle:textStyle, trailing:trailing);
},
'package:flutter/src/material/search_anchor.dart@SearchBar@createState': (m.Scope scope, SearchBar target)=>target.createState,

};
}