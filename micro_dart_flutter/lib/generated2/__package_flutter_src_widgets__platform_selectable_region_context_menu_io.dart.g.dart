import 'package:flutter/src/widgets/_platform_selectable_region_context_menu_io.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/selection_container.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/_platform_selectable_region_context_menu_io.dart@PlatformSelectableRegionContextMenu@#as': (m.Scope scope, target)=>()=>target as PlatformSelectableRegionContextMenu,
'package:flutter/src/widgets/_platform_selectable_region_context_menu_io.dart@PlatformSelectableRegionContextMenu@#is': (m.Scope scope, target)=>()=>target is PlatformSelectableRegionContextMenu,
'package:flutter/src/widgets/_platform_selectable_region_context_menu_io.dart@PlatformSelectableRegionContextMenu@': (m.Scope scope)=>({ child,  key}){
return PlatformSelectableRegionContextMenu(child:child, key:key);
},
'package:flutter/src/widgets/_platform_selectable_region_context_menu_io.dart@PlatformSelectableRegionContextMenu@attach': (m.Scope scope)=>PlatformSelectableRegionContextMenu.attach,
'package:flutter/src/widgets/_platform_selectable_region_context_menu_io.dart@PlatformSelectableRegionContextMenu@detach': (m.Scope scope)=>PlatformSelectableRegionContextMenu.detach,
'package:flutter/src/widgets/_platform_selectable_region_context_menu_io.dart@PlatformSelectableRegionContextMenu@build': (m.Scope scope, PlatformSelectableRegionContextMenu target)=>target.build,

};
}