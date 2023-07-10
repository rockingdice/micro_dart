import 'package:flutter/src/material/app_bar.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/action_buttons.dart';
import 'package:flutter/src/material/app_bar_theme.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/flexible_space_bar.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icon_button_theme.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/tabs.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/app_bar.dart@AppBar@#as': (m.Scope scope, target)=>()=>target as AppBar,
'package:flutter/src/material/app_bar.dart@AppBar@#is': (m.Scope scope, target)=>()=>target is AppBar,
'package:flutter/src/material/app_bar.dart@AppBar@leading': (m.Scope scope, AppBar target)=>target.leading,
'package:flutter/src/material/app_bar.dart@AppBar@automaticallyImplyLeading': (m.Scope scope, AppBar target)=>target.automaticallyImplyLeading,
'package:flutter/src/material/app_bar.dart@AppBar@title': (m.Scope scope, AppBar target)=>target.title,
'package:flutter/src/material/app_bar.dart@AppBar@actions': (m.Scope scope, AppBar target)=>target.actions,
'package:flutter/src/material/app_bar.dart@AppBar@flexibleSpace': (m.Scope scope, AppBar target)=>target.flexibleSpace,
'package:flutter/src/material/app_bar.dart@AppBar@bottom': (m.Scope scope, AppBar target)=>target.bottom,
'package:flutter/src/material/app_bar.dart@AppBar@elevation': (m.Scope scope, AppBar target)=>target.elevation,
'package:flutter/src/material/app_bar.dart@AppBar@scrolledUnderElevation': (m.Scope scope, AppBar target)=>target.scrolledUnderElevation,
'package:flutter/src/material/app_bar.dart@AppBar@notificationPredicate': (m.Scope scope, AppBar target)=>target.notificationPredicate,
'package:flutter/src/material/app_bar.dart@AppBar@shadowColor': (m.Scope scope, AppBar target)=>target.shadowColor,
'package:flutter/src/material/app_bar.dart@AppBar@surfaceTintColor': (m.Scope scope, AppBar target)=>target.surfaceTintColor,
'package:flutter/src/material/app_bar.dart@AppBar@shape': (m.Scope scope, AppBar target)=>target.shape,
'package:flutter/src/material/app_bar.dart@AppBar@backgroundColor': (m.Scope scope, AppBar target)=>target.backgroundColor,
'package:flutter/src/material/app_bar.dart@AppBar@foregroundColor': (m.Scope scope, AppBar target)=>target.foregroundColor,
'package:flutter/src/material/app_bar.dart@AppBar@iconTheme': (m.Scope scope, AppBar target)=>target.iconTheme,
'package:flutter/src/material/app_bar.dart@AppBar@actionsIconTheme': (m.Scope scope, AppBar target)=>target.actionsIconTheme,
'package:flutter/src/material/app_bar.dart@AppBar@primary': (m.Scope scope, AppBar target)=>target.primary,
'package:flutter/src/material/app_bar.dart@AppBar@centerTitle': (m.Scope scope, AppBar target)=>target.centerTitle,
'package:flutter/src/material/app_bar.dart@AppBar@excludeHeaderSemantics': (m.Scope scope, AppBar target)=>target.excludeHeaderSemantics,
'package:flutter/src/material/app_bar.dart@AppBar@titleSpacing': (m.Scope scope, AppBar target)=>target.titleSpacing,
'package:flutter/src/material/app_bar.dart@AppBar@toolbarOpacity': (m.Scope scope, AppBar target)=>target.toolbarOpacity,
'package:flutter/src/material/app_bar.dart@AppBar@bottomOpacity': (m.Scope scope, AppBar target)=>target.bottomOpacity,
'package:flutter/src/material/app_bar.dart@AppBar@preferredSize': (m.Scope scope, AppBar target)=>target.preferredSize,
'package:flutter/src/material/app_bar.dart@AppBar@toolbarHeight': (m.Scope scope, AppBar target)=>target.toolbarHeight,
'package:flutter/src/material/app_bar.dart@AppBar@leadingWidth': (m.Scope scope, AppBar target)=>target.leadingWidth,
'package:flutter/src/material/app_bar.dart@AppBar@toolbarTextStyle': (m.Scope scope, AppBar target)=>target.toolbarTextStyle,
'package:flutter/src/material/app_bar.dart@AppBar@titleTextStyle': (m.Scope scope, AppBar target)=>target.titleTextStyle,
'package:flutter/src/material/app_bar.dart@AppBar@systemOverlayStyle': (m.Scope scope, AppBar target)=>target.systemOverlayStyle,
'package:flutter/src/material/app_bar.dart@AppBar@forceMaterialTransparency': (m.Scope scope, AppBar target)=>target.forceMaterialTransparency,
'package:flutter/src/material/app_bar.dart@AppBar@clipBehavior': (m.Scope scope, AppBar target)=>target.clipBehavior,
'package:flutter/src/material/app_bar.dart@AppBar@': (m.Scope scope)=>({ actions,  actionsIconTheme,  automaticallyImplyLeading,  backgroundColor,  bottom,  bottomOpacity,  centerTitle,  clipBehavior,  elevation,  excludeHeaderSemantics,  flexibleSpace,  forceMaterialTransparency,  foregroundColor,  iconTheme,  key,  leading,  leadingWidth,  notificationPredicate,  primary,  scrolledUnderElevation,  shadowColor,  shape,  surfaceTintColor,  systemOverlayStyle,  title,  titleSpacing,  titleTextStyle,  toolbarHeight,  toolbarOpacity,  toolbarTextStyle}){
bool notificationPredicateProxy( notification) {
return  engine.callFunctionPointer(scope, notificationPredicate!,[notification], {});
}

return AppBar(actions:actions, actionsIconTheme:actionsIconTheme, automaticallyImplyLeading:automaticallyImplyLeading ?? true, backgroundColor:backgroundColor, bottom:bottom, bottomOpacity:bottomOpacity ?? 1.0, centerTitle:centerTitle, clipBehavior:clipBehavior, elevation:elevation, excludeHeaderSemantics:excludeHeaderSemantics ?? false, flexibleSpace:flexibleSpace, forceMaterialTransparency:forceMaterialTransparency ?? false, foregroundColor:foregroundColor, iconTheme:iconTheme, key:key, leading:leading, leadingWidth:leadingWidth, notificationPredicate:notificationPredicate == null ? defaultScrollNotificationPredicate :notificationPredicateProxy, primary:primary ?? true, scrolledUnderElevation:scrolledUnderElevation, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor, systemOverlayStyle:systemOverlayStyle, title:title, titleSpacing:titleSpacing, titleTextStyle:titleTextStyle, toolbarHeight:toolbarHeight, toolbarOpacity:toolbarOpacity ?? 1.0, toolbarTextStyle:toolbarTextStyle);
},
'package:flutter/src/material/app_bar.dart@AppBar@preferredHeightFor': (m.Scope scope)=>AppBar.preferredHeightFor,
'package:flutter/src/material/app_bar.dart@AppBar@createState': (m.Scope scope, AppBar target)=>target.createState,
'package:flutter/src/material/app_bar.dart@SliverAppBar@#as': (m.Scope scope, target)=>()=>target as SliverAppBar,
'package:flutter/src/material/app_bar.dart@SliverAppBar@#is': (m.Scope scope, target)=>()=>target is SliverAppBar,
'package:flutter/src/material/app_bar.dart@SliverAppBar@leading': (m.Scope scope, SliverAppBar target)=>target.leading,
'package:flutter/src/material/app_bar.dart@SliverAppBar@automaticallyImplyLeading': (m.Scope scope, SliverAppBar target)=>target.automaticallyImplyLeading,
'package:flutter/src/material/app_bar.dart@SliverAppBar@title': (m.Scope scope, SliverAppBar target)=>target.title,
'package:flutter/src/material/app_bar.dart@SliverAppBar@actions': (m.Scope scope, SliverAppBar target)=>target.actions,
'package:flutter/src/material/app_bar.dart@SliverAppBar@flexibleSpace': (m.Scope scope, SliverAppBar target)=>target.flexibleSpace,
'package:flutter/src/material/app_bar.dart@SliverAppBar@bottom': (m.Scope scope, SliverAppBar target)=>target.bottom,
'package:flutter/src/material/app_bar.dart@SliverAppBar@elevation': (m.Scope scope, SliverAppBar target)=>target.elevation,
'package:flutter/src/material/app_bar.dart@SliverAppBar@scrolledUnderElevation': (m.Scope scope, SliverAppBar target)=>target.scrolledUnderElevation,
'package:flutter/src/material/app_bar.dart@SliverAppBar@shadowColor': (m.Scope scope, SliverAppBar target)=>target.shadowColor,
'package:flutter/src/material/app_bar.dart@SliverAppBar@surfaceTintColor': (m.Scope scope, SliverAppBar target)=>target.surfaceTintColor,
'package:flutter/src/material/app_bar.dart@SliverAppBar@forceElevated': (m.Scope scope, SliverAppBar target)=>target.forceElevated,
'package:flutter/src/material/app_bar.dart@SliverAppBar@backgroundColor': (m.Scope scope, SliverAppBar target)=>target.backgroundColor,
'package:flutter/src/material/app_bar.dart@SliverAppBar@foregroundColor': (m.Scope scope, SliverAppBar target)=>target.foregroundColor,
'package:flutter/src/material/app_bar.dart@SliverAppBar@iconTheme': (m.Scope scope, SliverAppBar target)=>target.iconTheme,
'package:flutter/src/material/app_bar.dart@SliverAppBar@actionsIconTheme': (m.Scope scope, SliverAppBar target)=>target.actionsIconTheme,
'package:flutter/src/material/app_bar.dart@SliverAppBar@primary': (m.Scope scope, SliverAppBar target)=>target.primary,
'package:flutter/src/material/app_bar.dart@SliverAppBar@centerTitle': (m.Scope scope, SliverAppBar target)=>target.centerTitle,
'package:flutter/src/material/app_bar.dart@SliverAppBar@excludeHeaderSemantics': (m.Scope scope, SliverAppBar target)=>target.excludeHeaderSemantics,
'package:flutter/src/material/app_bar.dart@SliverAppBar@titleSpacing': (m.Scope scope, SliverAppBar target)=>target.titleSpacing,
'package:flutter/src/material/app_bar.dart@SliverAppBar@collapsedHeight': (m.Scope scope, SliverAppBar target)=>target.collapsedHeight,
'package:flutter/src/material/app_bar.dart@SliverAppBar@expandedHeight': (m.Scope scope, SliverAppBar target)=>target.expandedHeight,
'package:flutter/src/material/app_bar.dart@SliverAppBar@floating': (m.Scope scope, SliverAppBar target)=>target.floating,
'package:flutter/src/material/app_bar.dart@SliverAppBar@pinned': (m.Scope scope, SliverAppBar target)=>target.pinned,
'package:flutter/src/material/app_bar.dart@SliverAppBar@shape': (m.Scope scope, SliverAppBar target)=>target.shape,
'package:flutter/src/material/app_bar.dart@SliverAppBar@snap': (m.Scope scope, SliverAppBar target)=>target.snap,
'package:flutter/src/material/app_bar.dart@SliverAppBar@stretch': (m.Scope scope, SliverAppBar target)=>target.stretch,
'package:flutter/src/material/app_bar.dart@SliverAppBar@stretchTriggerOffset': (m.Scope scope, SliverAppBar target)=>target.stretchTriggerOffset,
'package:flutter/src/material/app_bar.dart@SliverAppBar@onStretchTrigger': (m.Scope scope, SliverAppBar target)=>target.onStretchTrigger,
'package:flutter/src/material/app_bar.dart@SliverAppBar@toolbarHeight': (m.Scope scope, SliverAppBar target)=>target.toolbarHeight,
'package:flutter/src/material/app_bar.dart@SliverAppBar@leadingWidth': (m.Scope scope, SliverAppBar target)=>target.leadingWidth,
'package:flutter/src/material/app_bar.dart@SliverAppBar@toolbarTextStyle': (m.Scope scope, SliverAppBar target)=>target.toolbarTextStyle,
'package:flutter/src/material/app_bar.dart@SliverAppBar@titleTextStyle': (m.Scope scope, SliverAppBar target)=>target.titleTextStyle,
'package:flutter/src/material/app_bar.dart@SliverAppBar@systemOverlayStyle': (m.Scope scope, SliverAppBar target)=>target.systemOverlayStyle,
'package:flutter/src/material/app_bar.dart@SliverAppBar@forceMaterialTransparency': (m.Scope scope, SliverAppBar target)=>target.forceMaterialTransparency,
'package:flutter/src/material/app_bar.dart@SliverAppBar@clipBehavior': (m.Scope scope, SliverAppBar target)=>target.clipBehavior,
'package:flutter/src/material/app_bar.dart@SliverAppBar@': (m.Scope scope)=>({ actions,  actionsIconTheme,  automaticallyImplyLeading,  backgroundColor,  bottom,  centerTitle,  clipBehavior,  collapsedHeight,  elevation,  excludeHeaderSemantics,  expandedHeight,  flexibleSpace,  floating,  forceElevated,  forceMaterialTransparency,  foregroundColor,  iconTheme,  key,  leading,  leadingWidth,  onStretchTrigger,  pinned,  primary,  scrolledUnderElevation,  shadowColor,  shape,  snap,  stretch,  stretchTriggerOffset,  surfaceTintColor,  systemOverlayStyle,  title,  titleSpacing,  titleTextStyle,  toolbarHeight,  toolbarTextStyle}){
Future onStretchTriggerProxy() async{
return await engine.callFunctionPointerAsync(scope, onStretchTrigger!,[], {});
}

return SliverAppBar(actions:actions, actionsIconTheme:actionsIconTheme, automaticallyImplyLeading:automaticallyImplyLeading ?? true, backgroundColor:backgroundColor, bottom:bottom, centerTitle:centerTitle, clipBehavior:clipBehavior, collapsedHeight:collapsedHeight, elevation:elevation, excludeHeaderSemantics:excludeHeaderSemantics ?? false, expandedHeight:expandedHeight, flexibleSpace:flexibleSpace, floating:floating ?? false, forceElevated:forceElevated ?? false, forceMaterialTransparency:forceMaterialTransparency ?? false, foregroundColor:foregroundColor, iconTheme:iconTheme, key:key, leading:leading, leadingWidth:leadingWidth, onStretchTrigger:onStretchTrigger == null ? null :onStretchTriggerProxy, pinned:pinned ?? false, primary:primary ?? true, scrolledUnderElevation:scrolledUnderElevation, shadowColor:shadowColor, shape:shape, snap:snap ?? false, stretch:stretch ?? false, stretchTriggerOffset:stretchTriggerOffset ?? 100.0, surfaceTintColor:surfaceTintColor, systemOverlayStyle:systemOverlayStyle, title:title, titleSpacing:titleSpacing, titleTextStyle:titleTextStyle, toolbarHeight:toolbarHeight ?? kToolbarHeight, toolbarTextStyle:toolbarTextStyle);
},
'package:flutter/src/material/app_bar.dart@SliverAppBar@medium': (m.Scope scope)=>({ actions,  actionsIconTheme,  automaticallyImplyLeading,  backgroundColor,  bottom,  centerTitle,  collapsedHeight,  elevation,  excludeHeaderSemantics,  expandedHeight,  flexibleSpace,  floating,  forceElevated,  foregroundColor,  iconTheme,  key,  leading,  leadingWidth,  onStretchTrigger,  pinned,  primary,  scrolledUnderElevation,  shadowColor,  shape,  snap,  stretch,  stretchTriggerOffset,  surfaceTintColor,  systemOverlayStyle,  title,  titleSpacing,  titleTextStyle,  toolbarHeight,  toolbarTextStyle}){
Future onStretchTriggerProxy() async{
return await engine.callFunctionPointerAsync(scope, onStretchTrigger!,[], {});
}

return SliverAppBar.medium(actions:actions, actionsIconTheme:actionsIconTheme, automaticallyImplyLeading:automaticallyImplyLeading ?? true, backgroundColor:backgroundColor, bottom:bottom, centerTitle:centerTitle, collapsedHeight:collapsedHeight, elevation:elevation, excludeHeaderSemantics:excludeHeaderSemantics ?? false, expandedHeight:expandedHeight, flexibleSpace:flexibleSpace, floating:floating ?? false, forceElevated:forceElevated ?? false, foregroundColor:foregroundColor, iconTheme:iconTheme, key:key, leading:leading, leadingWidth:leadingWidth, onStretchTrigger:onStretchTrigger == null ? null :onStretchTriggerProxy, pinned:pinned ?? true, primary:primary ?? true, scrolledUnderElevation:scrolledUnderElevation, shadowColor:shadowColor, shape:shape, snap:snap ?? false, stretch:stretch ?? false, stretchTriggerOffset:stretchTriggerOffset ?? 100.0, surfaceTintColor:surfaceTintColor, systemOverlayStyle:systemOverlayStyle, title:title, titleSpacing:titleSpacing, titleTextStyle:titleTextStyle, toolbarHeight:toolbarHeight ?? 64.0, toolbarTextStyle:toolbarTextStyle);
},
'package:flutter/src/material/app_bar.dart@SliverAppBar@large': (m.Scope scope)=>({ actions,  actionsIconTheme,  automaticallyImplyLeading,  backgroundColor,  bottom,  centerTitle,  collapsedHeight,  elevation,  excludeHeaderSemantics,  expandedHeight,  flexibleSpace,  floating,  forceElevated,  foregroundColor,  iconTheme,  key,  leading,  leadingWidth,  onStretchTrigger,  pinned,  primary,  scrolledUnderElevation,  shadowColor,  shape,  snap,  stretch,  stretchTriggerOffset,  surfaceTintColor,  systemOverlayStyle,  title,  titleSpacing,  titleTextStyle,  toolbarHeight,  toolbarTextStyle}){
Future onStretchTriggerProxy() async{
return await engine.callFunctionPointerAsync(scope, onStretchTrigger!,[], {});
}

return SliverAppBar.large(actions:actions, actionsIconTheme:actionsIconTheme, automaticallyImplyLeading:automaticallyImplyLeading ?? true, backgroundColor:backgroundColor, bottom:bottom, centerTitle:centerTitle, collapsedHeight:collapsedHeight, elevation:elevation, excludeHeaderSemantics:excludeHeaderSemantics ?? false, expandedHeight:expandedHeight, flexibleSpace:flexibleSpace, floating:floating ?? false, forceElevated:forceElevated ?? false, foregroundColor:foregroundColor, iconTheme:iconTheme, key:key, leading:leading, leadingWidth:leadingWidth, onStretchTrigger:onStretchTrigger == null ? null :onStretchTriggerProxy, pinned:pinned ?? true, primary:primary ?? true, scrolledUnderElevation:scrolledUnderElevation, shadowColor:shadowColor, shape:shape, snap:snap ?? false, stretch:stretch ?? false, stretchTriggerOffset:stretchTriggerOffset ?? 100.0, surfaceTintColor:surfaceTintColor, systemOverlayStyle:systemOverlayStyle, title:title, titleSpacing:titleSpacing, titleTextStyle:titleTextStyle, toolbarHeight:toolbarHeight ?? 64.0, toolbarTextStyle:toolbarTextStyle);
},
'package:flutter/src/material/app_bar.dart@SliverAppBar@createState': (m.Scope scope, SliverAppBar target)=>target.createState,

};
}