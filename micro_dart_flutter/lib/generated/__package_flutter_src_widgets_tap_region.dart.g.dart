import 'package:flutter/src/widgets/tap_region.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/tap_region.dart@TapRegionRegistry@#as': (m.Scope scope, target)=>()=>target as TapRegionRegistry,
'package:flutter/src/widgets/tap_region.dart@TapRegionRegistry@#is': (m.Scope scope, target)=>()=>target is TapRegionRegistry,
'package:flutter/src/widgets/tap_region.dart@TapRegionRegistry@registerTapRegion': (m.Scope scope, TapRegionRegistry target)=>target.registerTapRegion,
'package:flutter/src/widgets/tap_region.dart@TapRegionRegistry@unregisterTapRegion': (m.Scope scope, TapRegionRegistry target)=>target.unregisterTapRegion,
'package:flutter/src/widgets/tap_region.dart@TapRegionRegistry@of': (m.Scope scope)=>TapRegionRegistry.of,
'package:flutter/src/widgets/tap_region.dart@TapRegionRegistry@maybeOf': (m.Scope scope)=>TapRegionRegistry.maybeOf,
'package:flutter/src/widgets/tap_region.dart@TapRegionSurface@#as': (m.Scope scope, target)=>()=>target as TapRegionSurface,
'package:flutter/src/widgets/tap_region.dart@TapRegionSurface@#is': (m.Scope scope, target)=>()=>target is TapRegionSurface,
'package:flutter/src/widgets/tap_region.dart@TapRegionSurface@': (m.Scope scope)=>TapRegionSurface,
'package:flutter/src/widgets/tap_region.dart@TapRegionSurface@createRenderObject': (m.Scope scope, TapRegionSurface target)=>target.createRenderObject,
'package:flutter/src/widgets/tap_region.dart@TapRegionSurface@updateRenderObject': (m.Scope scope, TapRegionSurface target)=>target.updateRenderObject,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegionSurface@#as': (m.Scope scope, target)=>()=>target as RenderTapRegionSurface,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegionSurface@#is': (m.Scope scope, target)=>()=>target is RenderTapRegionSurface,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegionSurface@': (m.Scope scope)=>(){
return RenderTapRegionSurface();
},
'package:flutter/src/widgets/tap_region.dart@RenderTapRegionSurface@registerTapRegion': (m.Scope scope, RenderTapRegionSurface target)=>target.registerTapRegion,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegionSurface@unregisterTapRegion': (m.Scope scope, RenderTapRegionSurface target)=>target.unregisterTapRegion,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegionSurface@hitTest': (m.Scope scope, RenderTapRegionSurface target)=>target.hitTest,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegionSurface@handleEvent': (m.Scope scope, RenderTapRegionSurface target)=>target.handleEvent,
'package:flutter/src/widgets/tap_region.dart@TapRegion@#as': (m.Scope scope, target)=>()=>target as TapRegion,
'package:flutter/src/widgets/tap_region.dart@TapRegion@#is': (m.Scope scope, target)=>()=>target is TapRegion,
'package:flutter/src/widgets/tap_region.dart@TapRegion@enabled': (m.Scope scope, TapRegion target)=>target.enabled,
'package:flutter/src/widgets/tap_region.dart@TapRegion@behavior': (m.Scope scope, TapRegion target)=>target.behavior,
'package:flutter/src/widgets/tap_region.dart@TapRegion@onTapOutside': (m.Scope scope, TapRegion target)=>target.onTapOutside,
'package:flutter/src/widgets/tap_region.dart@TapRegion@onTapInside': (m.Scope scope, TapRegion target)=>target.onTapInside,
'package:flutter/src/widgets/tap_region.dart@TapRegion@groupId': (m.Scope scope, TapRegion target)=>target.groupId,
'package:flutter/src/widgets/tap_region.dart@TapRegion@debugLabel': (m.Scope scope, TapRegion target)=>target.debugLabel,
'package:flutter/src/widgets/tap_region.dart@TapRegion@': (m.Scope scope)=>({ behavior,  child,  debugLabel,  enabled,  groupId,  key,  onTapInside,  onTapOutside}){
void onTapInsideProxy( event) {
 engine.callFunctionPointer(scope, onTapInside!,[event], {});
}

void onTapOutsideProxy( event) {
 engine.callFunctionPointer(scope, onTapOutside!,[event], {});
}

return TapRegion(behavior:behavior ?? HitTestBehavior.deferToChild, child:child, debugLabel:debugLabel, enabled:enabled ?? true, groupId:groupId, key:key, onTapInside:onTapInside == null ? null :onTapInsideProxy, onTapOutside:onTapOutside == null ? null :onTapOutsideProxy);
},
'package:flutter/src/widgets/tap_region.dart@TapRegion@createRenderObject': (m.Scope scope, TapRegion target)=>target.createRenderObject,
'package:flutter/src/widgets/tap_region.dart@TapRegion@updateRenderObject': (m.Scope scope, TapRegion target)=>target.updateRenderObject,
'package:flutter/src/widgets/tap_region.dart@TapRegion@debugFillProperties': (m.Scope scope, TapRegion target)=>target.debugFillProperties,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@#as': (m.Scope scope, target)=>()=>target as RenderTapRegion,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@#is': (m.Scope scope, target)=>()=>target is RenderTapRegion,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@onTapOutside': (m.Scope scope, RenderTapRegion target)=>target.onTapOutside,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@onTapOutside:set': (m.Scope scope, RenderTapRegion target)=>(other)=>target.onTapOutside=other,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@onTapInside': (m.Scope scope, RenderTapRegion target)=>target.onTapInside,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@onTapInside:set': (m.Scope scope, RenderTapRegion target)=>(other)=>target.onTapInside=other,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@debugLabel': (m.Scope scope, RenderTapRegion target)=>target.debugLabel,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@debugLabel:set': (m.Scope scope, RenderTapRegion target)=>(other)=>target.debugLabel=other,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@enabled': (m.Scope scope, RenderTapRegion target)=>target.enabled,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@enabled:set': (m.Scope scope, RenderTapRegion target)=>(other)=>target.enabled=other,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@groupId': (m.Scope scope, RenderTapRegion target)=>target.groupId,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@groupId:set': (m.Scope scope, RenderTapRegion target)=>(other)=>target.groupId=other,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@registry': (m.Scope scope, RenderTapRegion target)=>target.registry,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@registry:set': (m.Scope scope, RenderTapRegion target)=>(other)=>target.registry=other,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@': (m.Scope scope)=>({ behavior,  debugLabel,  enabled,  groupId,  onTapInside,  onTapOutside,  registry}){
void onTapInsideProxy( event) {
 engine.callFunctionPointer(scope, onTapInside!,[event], {});
}

void onTapOutsideProxy( event) {
 engine.callFunctionPointer(scope, onTapOutside!,[event], {});
}

return RenderTapRegion(behavior:behavior ?? HitTestBehavior.deferToChild, debugLabel:debugLabel, enabled:enabled ?? true, groupId:groupId, onTapInside:onTapInside == null ? null :onTapInsideProxy, onTapOutside:onTapOutside == null ? null :onTapOutsideProxy, registry:registry);
},
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@layout': (m.Scope scope, RenderTapRegion target)=>target.layout,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@dispose': (m.Scope scope, RenderTapRegion target)=>target.dispose,
'package:flutter/src/widgets/tap_region.dart@RenderTapRegion@debugFillProperties': (m.Scope scope, RenderTapRegion target)=>target.debugFillProperties,
'package:flutter/src/widgets/tap_region.dart@TextFieldTapRegion@#as': (m.Scope scope, target)=>()=>target as TextFieldTapRegion,
'package:flutter/src/widgets/tap_region.dart@TextFieldTapRegion@#is': (m.Scope scope, target)=>()=>target is TextFieldTapRegion,
'package:flutter/src/widgets/tap_region.dart@TextFieldTapRegion@': (m.Scope scope)=>({ child,  debugLabel,  enabled,  key,  onTapInside,  onTapOutside}){
void onTapInsideProxy( event) {
 engine.callFunctionPointer(scope, onTapInside!,[event], {});
}

void onTapOutsideProxy( event) {
 engine.callFunctionPointer(scope, onTapOutside!,[event], {});
}

return TextFieldTapRegion(child:child, debugLabel:debugLabel, enabled:enabled ?? true, key:key, onTapInside:onTapInside == null ? null :onTapInsideProxy, onTapOutside:onTapOutside == null ? null :onTapOutsideProxy);
},

};
}