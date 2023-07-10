import 'package:flutter/src/cupertino/picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@#as': (m.Scope scope, target)=>()=>target as CupertinoPicker,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@#is': (m.Scope scope, target)=>()=>target is CupertinoPicker,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@diameterRatio': (m.Scope scope, CupertinoPicker target)=>target.diameterRatio,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@backgroundColor': (m.Scope scope, CupertinoPicker target)=>target.backgroundColor,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@offAxisFraction': (m.Scope scope, CupertinoPicker target)=>target.offAxisFraction,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@useMagnifier': (m.Scope scope, CupertinoPicker target)=>target.useMagnifier,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@magnification': (m.Scope scope, CupertinoPicker target)=>target.magnification,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@scrollController': (m.Scope scope, CupertinoPicker target)=>target.scrollController,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@itemExtent': (m.Scope scope, CupertinoPicker target)=>target.itemExtent,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@squeeze': (m.Scope scope, CupertinoPicker target)=>target.squeeze,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@onSelectedItemChanged': (m.Scope scope, CupertinoPicker target)=>target.onSelectedItemChanged,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@childDelegate': (m.Scope scope, CupertinoPicker target)=>target.childDelegate,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@selectionOverlay': (m.Scope scope, CupertinoPicker target)=>target.selectionOverlay,
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@': (m.Scope scope)=>({ backgroundColor,  children,  diameterRatio,  itemExtent,  key,  looping,  magnification,  offAxisFraction,  onSelectedItemChanged,  scrollController,  selectionOverlay,  squeeze,  useMagnifier}){
void onSelectedItemChangedProxy( value) {
 engine.callFunctionPointer(scope, onSelectedItemChanged!,[value], {});
}

return CupertinoPicker(backgroundColor:backgroundColor, children:children, diameterRatio:diameterRatio ?? 1.07, itemExtent:itemExtent, key:key, looping:looping ?? false, magnification:magnification ?? 1.0, offAxisFraction:offAxisFraction ?? 0.0, onSelectedItemChanged:onSelectedItemChangedProxy, scrollController:scrollController, selectionOverlay:selectionOverlay ?? const CupertinoPickerDefaultSelectionOverlay(), squeeze:squeeze ?? 1.45, useMagnifier:useMagnifier ?? false);
},
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@builder': (m.Scope scope)=>({ backgroundColor,  childCount,  diameterRatio,  itemBuilder,  itemExtent,  key,  magnification,  offAxisFraction,  onSelectedItemChanged,  scrollController,  selectionOverlay,  squeeze,  useMagnifier}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

void onSelectedItemChangedProxy( value) {
 engine.callFunctionPointer(scope, onSelectedItemChanged!,[value], {});
}

return CupertinoPicker.builder(backgroundColor:backgroundColor, childCount:childCount, diameterRatio:diameterRatio ?? 1.07, itemBuilder:itemBuilderProxy, itemExtent:itemExtent, key:key, magnification:magnification ?? 1.0, offAxisFraction:offAxisFraction ?? 0.0, onSelectedItemChanged:onSelectedItemChangedProxy, scrollController:scrollController, selectionOverlay:selectionOverlay ?? const CupertinoPickerDefaultSelectionOverlay(), squeeze:squeeze ?? 1.45, useMagnifier:useMagnifier ?? false);
},
'package:flutter/src/cupertino/picker.dart@CupertinoPicker@createState': (m.Scope scope, CupertinoPicker target)=>target.createState,
'package:flutter/src/cupertino/picker.dart@CupertinoPickerDefaultSelectionOverlay@#as': (m.Scope scope, target)=>()=>target as CupertinoPickerDefaultSelectionOverlay,
'package:flutter/src/cupertino/picker.dart@CupertinoPickerDefaultSelectionOverlay@#is': (m.Scope scope, target)=>()=>target is CupertinoPickerDefaultSelectionOverlay,
'package:flutter/src/cupertino/picker.dart@CupertinoPickerDefaultSelectionOverlay@capStartEdge': (m.Scope scope, CupertinoPickerDefaultSelectionOverlay target)=>target.capStartEdge,
'package:flutter/src/cupertino/picker.dart@CupertinoPickerDefaultSelectionOverlay@capEndEdge': (m.Scope scope, CupertinoPickerDefaultSelectionOverlay target)=>target.capEndEdge,
'package:flutter/src/cupertino/picker.dart@CupertinoPickerDefaultSelectionOverlay@background': (m.Scope scope, CupertinoPickerDefaultSelectionOverlay target)=>target.background,
'package:flutter/src/cupertino/picker.dart@CupertinoPickerDefaultSelectionOverlay@': (m.Scope scope)=>({ background,  capEndEdge,  capStartEdge,  key}){
return CupertinoPickerDefaultSelectionOverlay(background:background ?? CupertinoColors.tertiarySystemFill, capEndEdge:capEndEdge ?? true, capStartEdge:capStartEdge ?? true, key:key);
},
'package:flutter/src/cupertino/picker.dart@CupertinoPickerDefaultSelectionOverlay@build': (m.Scope scope, CupertinoPickerDefaultSelectionOverlay target)=>target.build,

};
}