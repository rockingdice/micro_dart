import 'package:flutter/src/widgets/selectable_region.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/context_menu_button_item.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/magnifier.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/platform_selectable_region_context_menu.dart';
import 'package:flutter/src/widgets/selection_container.dart';
import 'package:flutter/src/widgets/text_editing_intents.dart';
import 'package:flutter/src/widgets/text_selection.dart';
import 'package:flutter/src/widgets/text_selection_toolbar_anchors.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/selectable_region.dart@SelectableRegion@#as': (m.Scope scope, target)=>()=>target as SelectableRegion,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegion@#is': (m.Scope scope, target)=>()=>target is SelectableRegion,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegion@magnifierConfiguration': (m.Scope scope, SelectableRegion target)=>target.magnifierConfiguration,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegion@focusNode': (m.Scope scope, SelectableRegion target)=>target.focusNode,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegion@child': (m.Scope scope, SelectableRegion target)=>target.child,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegion@contextMenuBuilder': (m.Scope scope, SelectableRegion target)=>target.contextMenuBuilder,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegion@selectionControls': (m.Scope scope, SelectableRegion target)=>target.selectionControls,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegion@onSelectionChanged': (m.Scope scope, SelectableRegion target)=>target.onSelectionChanged,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegion@': (m.Scope scope)=>({ child,  contextMenuBuilder,  focusNode,  key,  magnifierConfiguration,  onSelectionChanged,  selectionControls}){
Widget contextMenuBuilderProxy( context,  selectableRegionState) {
return  engine.callFunctionPointer(scope, contextMenuBuilder!,[context, selectableRegionState], {});
}

void onSelectionChangedProxy( value) {
 engine.callFunctionPointer(scope, onSelectionChanged!,[value], {});
}

return SelectableRegion(child:child, contextMenuBuilder:contextMenuBuilder == null ? null :contextMenuBuilderProxy, focusNode:focusNode, key:key, magnifierConfiguration:magnifierConfiguration ?? TextMagnifierConfiguration.disabled, onSelectionChanged:onSelectionChanged == null ? null :onSelectionChangedProxy, selectionControls:selectionControls);
},
'package:flutter/src/widgets/selectable_region.dart@SelectableRegion@getSelectableButtonItems': (m.Scope scope)=>({ onCopy,  onSelectAll,  selectionGeometry}){
void onCopyProxy() {
 engine.callFunctionPointer(scope, onCopy!,[], {});
}

void onSelectAllProxy() {
 engine.callFunctionPointer(scope, onSelectAll!,[], {});
}

return SelectableRegion.getSelectableButtonItems(onCopy:onCopyProxy, onSelectAll:onSelectAllProxy, selectionGeometry:selectionGeometry);
},
'package:flutter/src/widgets/selectable_region.dart@SelectableRegion@createState': (m.Scope scope, SelectableRegion target)=>target.createState,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@#as': (m.Scope scope, target)=>()=>target as SelectableRegionState,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@#is': (m.Scope scope, target)=>()=>target is SelectableRegionState,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@lastSecondaryTapDownPosition': (m.Scope scope, SelectableRegionState target)=>target.lastSecondaryTapDownPosition,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@lastSecondaryTapDownPosition:set': (m.Scope scope, SelectableRegionState target)=>(other)=>target.lastSecondaryTapDownPosition=other,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@textEditingValue': (m.Scope scope, SelectableRegionState target)=>target.textEditingValue,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@textEditingValue:set': (m.Scope scope, SelectableRegionState target)=>(other)=>target.textEditingValue=other,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@selectionOverlay': (m.Scope scope, SelectableRegionState target)=>target.selectionOverlay,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@contextMenuAnchors': (m.Scope scope, SelectableRegionState target)=>target.contextMenuAnchors,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@contextMenuButtonItems': (m.Scope scope, SelectableRegionState target)=>target.contextMenuButtonItems,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@startGlyphHeight': (m.Scope scope, SelectableRegionState target)=>target.startGlyphHeight,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@endGlyphHeight': (m.Scope scope, SelectableRegionState target)=>target.endGlyphHeight,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@selectionEndpoints': (m.Scope scope, SelectableRegionState target)=>target.selectionEndpoints,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@': (m.Scope scope)=>(){
return SelectableRegionState();
},
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@initState': (m.Scope scope, SelectableRegionState target)=>target.initState,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@didChangeDependencies': (m.Scope scope, SelectableRegionState target)=>target.didChangeDependencies,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@didUpdateWidget': (m.Scope scope, SelectableRegionState target)=>target.didUpdateWidget,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@hideToolbar': (m.Scope scope, SelectableRegionState target)=>target.hideToolbar,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@selectAll': (m.Scope scope, SelectableRegionState target)=>target.selectAll,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@add': (m.Scope scope, SelectableRegionState target)=>target.add,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@remove': (m.Scope scope, SelectableRegionState target)=>target.remove,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@dispose': (m.Scope scope, SelectableRegionState target)=>target.dispose,
'package:flutter/src/widgets/selectable_region.dart@SelectableRegionState@build': (m.Scope scope, SelectableRegionState target)=>target.build,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@#as': (m.Scope scope, target)=>()=>target as MultiSelectableSelectionContainerDelegate,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@#is': (m.Scope scope, target)=>()=>target is MultiSelectableSelectionContainerDelegate,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@selectables': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.selectables,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@selectables:set': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>(other)=>target.selectables=other,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@currentSelectionEndIndex': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.currentSelectionEndIndex,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@currentSelectionEndIndex:set': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>(other)=>target.currentSelectionEndIndex=other,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@currentSelectionStartIndex': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.currentSelectionStartIndex,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@currentSelectionStartIndex:set': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>(other)=>target.currentSelectionStartIndex=other,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@value': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.value,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@compareOrder': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.compareOrder,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@add': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.add,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@remove': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.remove,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@layoutDidChange': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.layoutDidChange,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@didChangeSelectables': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.didChangeSelectables,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@getSelectionGeometry': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.getSelectionGeometry,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@pushHandleLayers': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.pushHandleLayers,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@getSelectedContent': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.getSelectedContent,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@handleSelectAll': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.handleSelectAll,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@handleSelectWord': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.handleSelectWord,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@handleClearSelection': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.handleClearSelection,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@handleGranularlyExtendSelection': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.handleGranularlyExtendSelection,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@handleDirectionallyExtendSelection': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.handleDirectionallyExtendSelection,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@handleSelectionEdgeUpdate': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.handleSelectionEdgeUpdate,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@dispatchSelectionEvent': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.dispatchSelectionEvent,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@dispose': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.dispose,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@ensureChildUpdated': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.ensureChildUpdated,
'package:flutter/src/widgets/selectable_region.dart@MultiSelectableSelectionContainerDelegate@dispatchSelectionEventToChild': (m.Scope scope, MultiSelectableSelectionContainerDelegate target)=>target.dispatchSelectionEventToChild,

};
}