import 'package:flutter/src/material/tabs.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/tab_bar_theme.dart';
import 'package:flutter/src/material/tab_controller.dart';
import 'package:flutter/src/material/tab_indicator.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/tabs.dart@Tab@#as': (m.Scope scope, target)=>()=>target as Tab,
'package:flutter/src/material/tabs.dart@Tab@#is': (m.Scope scope, target)=>()=>target is Tab,
'package:flutter/src/material/tabs.dart@Tab@text': (m.Scope scope, Tab target)=>target.text,
'package:flutter/src/material/tabs.dart@Tab@child': (m.Scope scope, Tab target)=>target.child,
'package:flutter/src/material/tabs.dart@Tab@icon': (m.Scope scope, Tab target)=>target.icon,
'package:flutter/src/material/tabs.dart@Tab@iconMargin': (m.Scope scope, Tab target)=>target.iconMargin,
'package:flutter/src/material/tabs.dart@Tab@height': (m.Scope scope, Tab target)=>target.height,
'package:flutter/src/material/tabs.dart@Tab@preferredSize': (m.Scope scope, Tab target)=>target.preferredSize,
'package:flutter/src/material/tabs.dart@Tab@': (m.Scope scope)=>({ child,  height,  icon,  iconMargin,  key,  text}){
return Tab(child:child, height:height, icon:icon, iconMargin:iconMargin ?? const EdgeInsets.only(bottom: 10.0), key:key, text:text);
},
'package:flutter/src/material/tabs.dart@Tab@build': (m.Scope scope, Tab target)=>target.build,
'package:flutter/src/material/tabs.dart@Tab@debugFillProperties': (m.Scope scope, Tab target)=>target.debugFillProperties,
'package:flutter/src/material/tabs.dart@TabBar@#as': (m.Scope scope, target)=>()=>target as TabBar,
'package:flutter/src/material/tabs.dart@TabBar@#is': (m.Scope scope, target)=>()=>target is TabBar,
'package:flutter/src/material/tabs.dart@TabBar@tabs': (m.Scope scope, TabBar target)=>target.tabs,
'package:flutter/src/material/tabs.dart@TabBar@controller': (m.Scope scope, TabBar target)=>target.controller,
'package:flutter/src/material/tabs.dart@TabBar@isScrollable': (m.Scope scope, TabBar target)=>target.isScrollable,
'package:flutter/src/material/tabs.dart@TabBar@padding': (m.Scope scope, TabBar target)=>target.padding,
'package:flutter/src/material/tabs.dart@TabBar@indicatorColor': (m.Scope scope, TabBar target)=>target.indicatorColor,
'package:flutter/src/material/tabs.dart@TabBar@indicatorWeight': (m.Scope scope, TabBar target)=>target.indicatorWeight,
'package:flutter/src/material/tabs.dart@TabBar@indicatorPadding': (m.Scope scope, TabBar target)=>target.indicatorPadding,
'package:flutter/src/material/tabs.dart@TabBar@indicator': (m.Scope scope, TabBar target)=>target.indicator,
'package:flutter/src/material/tabs.dart@TabBar@automaticIndicatorColorAdjustment': (m.Scope scope, TabBar target)=>target.automaticIndicatorColorAdjustment,
'package:flutter/src/material/tabs.dart@TabBar@indicatorSize': (m.Scope scope, TabBar target)=>target.indicatorSize,
'package:flutter/src/material/tabs.dart@TabBar@dividerColor': (m.Scope scope, TabBar target)=>target.dividerColor,
'package:flutter/src/material/tabs.dart@TabBar@labelColor': (m.Scope scope, TabBar target)=>target.labelColor,
'package:flutter/src/material/tabs.dart@TabBar@unselectedLabelColor': (m.Scope scope, TabBar target)=>target.unselectedLabelColor,
'package:flutter/src/material/tabs.dart@TabBar@labelStyle': (m.Scope scope, TabBar target)=>target.labelStyle,
'package:flutter/src/material/tabs.dart@TabBar@unselectedLabelStyle': (m.Scope scope, TabBar target)=>target.unselectedLabelStyle,
'package:flutter/src/material/tabs.dart@TabBar@labelPadding': (m.Scope scope, TabBar target)=>target.labelPadding,
'package:flutter/src/material/tabs.dart@TabBar@overlayColor': (m.Scope scope, TabBar target)=>target.overlayColor,
'package:flutter/src/material/tabs.dart@TabBar@dragStartBehavior': (m.Scope scope, TabBar target)=>target.dragStartBehavior,
'package:flutter/src/material/tabs.dart@TabBar@mouseCursor': (m.Scope scope, TabBar target)=>target.mouseCursor,
'package:flutter/src/material/tabs.dart@TabBar@enableFeedback': (m.Scope scope, TabBar target)=>target.enableFeedback,
'package:flutter/src/material/tabs.dart@TabBar@onTap': (m.Scope scope, TabBar target)=>target.onTap,
'package:flutter/src/material/tabs.dart@TabBar@physics': (m.Scope scope, TabBar target)=>target.physics,
'package:flutter/src/material/tabs.dart@TabBar@splashFactory': (m.Scope scope, TabBar target)=>target.splashFactory,
'package:flutter/src/material/tabs.dart@TabBar@splashBorderRadius': (m.Scope scope, TabBar target)=>target.splashBorderRadius,
'package:flutter/src/material/tabs.dart@TabBar@preferredSize': (m.Scope scope, TabBar target)=>target.preferredSize,
'package:flutter/src/material/tabs.dart@TabBar@tabHasTextAndIcon': (m.Scope scope, TabBar target)=>target.tabHasTextAndIcon,
'package:flutter/src/material/tabs.dart@TabBar@': (m.Scope scope)=>({ automaticIndicatorColorAdjustment,  controller,  dividerColor,  dragStartBehavior,  enableFeedback,  indicator,  indicatorColor,  indicatorPadding,  indicatorSize,  indicatorWeight,  isScrollable,  key,  labelColor,  labelPadding,  labelStyle,  mouseCursor,  onTap,  overlayColor,  padding,  physics,  splashBorderRadius,  splashFactory,  tabs,  unselectedLabelColor,  unselectedLabelStyle}){
void onTapProxy( value) {
 engine.callFunctionPointer(scope, onTap!,[value], {});
}

return TabBar(automaticIndicatorColorAdjustment:automaticIndicatorColorAdjustment ?? true, controller:controller, dividerColor:dividerColor, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, enableFeedback:enableFeedback, indicator:indicator, indicatorColor:indicatorColor, indicatorPadding:indicatorPadding ?? EdgeInsets.zero, indicatorSize:indicatorSize, indicatorWeight:indicatorWeight ?? 2.0, isScrollable:isScrollable ?? false, key:key, labelColor:labelColor, labelPadding:labelPadding, labelStyle:labelStyle, mouseCursor:mouseCursor, onTap:onTap == null ? null :onTapProxy, overlayColor:overlayColor, padding:padding, physics:physics, splashBorderRadius:splashBorderRadius, splashFactory:splashFactory, tabs:tabs, unselectedLabelColor:unselectedLabelColor, unselectedLabelStyle:unselectedLabelStyle);
},
'package:flutter/src/material/tabs.dart@TabBar@secondary': (m.Scope scope)=>({ automaticIndicatorColorAdjustment,  controller,  dividerColor,  dragStartBehavior,  enableFeedback,  indicator,  indicatorColor,  indicatorPadding,  indicatorSize,  indicatorWeight,  isScrollable,  key,  labelColor,  labelPadding,  labelStyle,  mouseCursor,  onTap,  overlayColor,  padding,  physics,  splashBorderRadius,  splashFactory,  tabs,  unselectedLabelColor,  unselectedLabelStyle}){
void onTapProxy( value) {
 engine.callFunctionPointer(scope, onTap!,[value], {});
}

return TabBar.secondary(automaticIndicatorColorAdjustment:automaticIndicatorColorAdjustment ?? true, controller:controller, dividerColor:dividerColor, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, enableFeedback:enableFeedback, indicator:indicator, indicatorColor:indicatorColor, indicatorPadding:indicatorPadding ?? EdgeInsets.zero, indicatorSize:indicatorSize, indicatorWeight:indicatorWeight ?? 2.0, isScrollable:isScrollable ?? false, key:key, labelColor:labelColor, labelPadding:labelPadding, labelStyle:labelStyle, mouseCursor:mouseCursor, onTap:onTap == null ? null :onTapProxy, overlayColor:overlayColor, padding:padding, physics:physics, splashBorderRadius:splashBorderRadius, splashFactory:splashFactory, tabs:tabs, unselectedLabelColor:unselectedLabelColor, unselectedLabelStyle:unselectedLabelStyle);
},
'package:flutter/src/material/tabs.dart@TabBar@createState': (m.Scope scope, TabBar target)=>target.createState,
'package:flutter/src/material/tabs.dart@TabBarView@#as': (m.Scope scope, target)=>()=>target as TabBarView,
'package:flutter/src/material/tabs.dart@TabBarView@#is': (m.Scope scope, target)=>()=>target is TabBarView,
'package:flutter/src/material/tabs.dart@TabBarView@controller': (m.Scope scope, TabBarView target)=>target.controller,
'package:flutter/src/material/tabs.dart@TabBarView@children': (m.Scope scope, TabBarView target)=>target.children,
'package:flutter/src/material/tabs.dart@TabBarView@physics': (m.Scope scope, TabBarView target)=>target.physics,
'package:flutter/src/material/tabs.dart@TabBarView@dragStartBehavior': (m.Scope scope, TabBarView target)=>target.dragStartBehavior,
'package:flutter/src/material/tabs.dart@TabBarView@viewportFraction': (m.Scope scope, TabBarView target)=>target.viewportFraction,
'package:flutter/src/material/tabs.dart@TabBarView@clipBehavior': (m.Scope scope, TabBarView target)=>target.clipBehavior,
'package:flutter/src/material/tabs.dart@TabBarView@': (m.Scope scope)=>({ children,  clipBehavior,  controller,  dragStartBehavior,  key,  physics,  viewportFraction}){
return TabBarView(children:children, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, key:key, physics:physics, viewportFraction:viewportFraction ?? 1.0);
},
'package:flutter/src/material/tabs.dart@TabBarView@createState': (m.Scope scope, TabBarView target)=>target.createState,
'package:flutter/src/material/tabs.dart@TabPageSelectorIndicator@#as': (m.Scope scope, target)=>()=>target as TabPageSelectorIndicator,
'package:flutter/src/material/tabs.dart@TabPageSelectorIndicator@#is': (m.Scope scope, target)=>()=>target is TabPageSelectorIndicator,
'package:flutter/src/material/tabs.dart@TabPageSelectorIndicator@backgroundColor': (m.Scope scope, TabPageSelectorIndicator target)=>target.backgroundColor,
'package:flutter/src/material/tabs.dart@TabPageSelectorIndicator@borderColor': (m.Scope scope, TabPageSelectorIndicator target)=>target.borderColor,
'package:flutter/src/material/tabs.dart@TabPageSelectorIndicator@size': (m.Scope scope, TabPageSelectorIndicator target)=>target.size,
'package:flutter/src/material/tabs.dart@TabPageSelectorIndicator@borderStyle': (m.Scope scope, TabPageSelectorIndicator target)=>target.borderStyle,
'package:flutter/src/material/tabs.dart@TabPageSelectorIndicator@': (m.Scope scope)=>({ backgroundColor,  borderColor,  borderStyle,  key,  size}){
return TabPageSelectorIndicator(backgroundColor:backgroundColor, borderColor:borderColor, borderStyle:borderStyle ?? BorderStyle.solid, key:key, size:size);
},
'package:flutter/src/material/tabs.dart@TabPageSelectorIndicator@build': (m.Scope scope, TabPageSelectorIndicator target)=>target.build,
'package:flutter/src/material/tabs.dart@TabPageSelector@#as': (m.Scope scope, target)=>()=>target as TabPageSelector,
'package:flutter/src/material/tabs.dart@TabPageSelector@#is': (m.Scope scope, target)=>()=>target is TabPageSelector,
'package:flutter/src/material/tabs.dart@TabPageSelector@controller': (m.Scope scope, TabPageSelector target)=>target.controller,
'package:flutter/src/material/tabs.dart@TabPageSelector@indicatorSize': (m.Scope scope, TabPageSelector target)=>target.indicatorSize,
'package:flutter/src/material/tabs.dart@TabPageSelector@color': (m.Scope scope, TabPageSelector target)=>target.color,
'package:flutter/src/material/tabs.dart@TabPageSelector@selectedColor': (m.Scope scope, TabPageSelector target)=>target.selectedColor,
'package:flutter/src/material/tabs.dart@TabPageSelector@borderStyle': (m.Scope scope, TabPageSelector target)=>target.borderStyle,
'package:flutter/src/material/tabs.dart@TabPageSelector@': (m.Scope scope)=>({ borderStyle,  color,  controller,  indicatorSize,  key,  selectedColor}){
return TabPageSelector(borderStyle:borderStyle, color:color, controller:controller, indicatorSize:indicatorSize ?? 12.0, key:key, selectedColor:selectedColor);
},
'package:flutter/src/material/tabs.dart@TabPageSelector@build': (m.Scope scope, TabPageSelector target)=>target.build,

};
}