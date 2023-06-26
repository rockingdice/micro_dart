import 'package:flutter/src/material/animated_icons.dart';
import 'dart:math' show pi;
import 'dart:ui' show Canvas,Paint,Path;
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/animated_icons.dart@AnimatedIcon@#as': (m.Scope scope, target)=>()=>target as AnimatedIcon,
'package:flutter/src/material/animated_icons.dart@AnimatedIcon@#is': (m.Scope scope, target)=>()=>target is AnimatedIcon,
'package:flutter/src/material/animated_icons.dart@AnimatedIcon@progress': (m.Scope scope, AnimatedIcon target)=>target.progress,
'package:flutter/src/material/animated_icons.dart@AnimatedIcon@color': (m.Scope scope, AnimatedIcon target)=>target.color,
'package:flutter/src/material/animated_icons.dart@AnimatedIcon@size': (m.Scope scope, AnimatedIcon target)=>target.size,
'package:flutter/src/material/animated_icons.dart@AnimatedIcon@icon': (m.Scope scope, AnimatedIcon target)=>target.icon,
'package:flutter/src/material/animated_icons.dart@AnimatedIcon@semanticLabel': (m.Scope scope, AnimatedIcon target)=>target.semanticLabel,
'package:flutter/src/material/animated_icons.dart@AnimatedIcon@textDirection': (m.Scope scope, AnimatedIcon target)=>target.textDirection,
'package:flutter/src/material/animated_icons.dart@AnimatedIcon@': (m.Scope scope)=>AnimatedIcon,
'package:flutter/src/material/animated_icons.dart@AnimatedIcon@build': (m.Scope scope, AnimatedIcon target)=>target.build,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@#as': (m.Scope scope, target)=>()=>target as AnimatedIcons,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@#is': (m.Scope scope, target)=>()=>target is AnimatedIcons,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@add_event': (m.Scope scope)=>AnimatedIcons.add_event,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@arrow_menu': (m.Scope scope)=>AnimatedIcons.arrow_menu,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@close_menu': (m.Scope scope)=>AnimatedIcons.close_menu,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@ellipsis_search': (m.Scope scope)=>AnimatedIcons.ellipsis_search,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@event_add': (m.Scope scope)=>AnimatedIcons.event_add,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@home_menu': (m.Scope scope)=>AnimatedIcons.home_menu,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@list_view': (m.Scope scope)=>AnimatedIcons.list_view,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@menu_arrow': (m.Scope scope)=>AnimatedIcons.menu_arrow,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@menu_close': (m.Scope scope)=>AnimatedIcons.menu_close,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@menu_home': (m.Scope scope)=>AnimatedIcons.menu_home,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@pause_play': (m.Scope scope)=>AnimatedIcons.pause_play,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@play_pause': (m.Scope scope)=>AnimatedIcons.play_pause,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@search_ellipsis': (m.Scope scope)=>AnimatedIcons.search_ellipsis,
'package:flutter/src/material/animated_icons.dart@AnimatedIcons@view_list': (m.Scope scope)=>AnimatedIcons.view_list,
'package:flutter/src/material/animated_icons.dart@AnimatedIconData@#as': (m.Scope scope, target)=>()=>target as AnimatedIconData,
'package:flutter/src/material/animated_icons.dart@AnimatedIconData@#is': (m.Scope scope, target)=>()=>target is AnimatedIconData,
'package:flutter/src/material/animated_icons.dart@AnimatedIconData@matchTextDirection': (m.Scope scope, AnimatedIconData target)=>target.matchTextDirection,

};
}