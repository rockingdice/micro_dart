import 'package:flutter/src/widgets/text_selection_toolbar_layout_delegate.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/text_selection_toolbar_layout_delegate.dart@TextSelectionToolbarLayoutDelegate@#as': (m.Scope scope, target)=>()=>target as TextSelectionToolbarLayoutDelegate,
'package:flutter/src/widgets/text_selection_toolbar_layout_delegate.dart@TextSelectionToolbarLayoutDelegate@#is': (m.Scope scope, target)=>()=>target is TextSelectionToolbarLayoutDelegate,
'package:flutter/src/widgets/text_selection_toolbar_layout_delegate.dart@TextSelectionToolbarLayoutDelegate@anchorAbove': (m.Scope scope, TextSelectionToolbarLayoutDelegate target)=>target.anchorAbove,
'package:flutter/src/widgets/text_selection_toolbar_layout_delegate.dart@TextSelectionToolbarLayoutDelegate@anchorBelow': (m.Scope scope, TextSelectionToolbarLayoutDelegate target)=>target.anchorBelow,
'package:flutter/src/widgets/text_selection_toolbar_layout_delegate.dart@TextSelectionToolbarLayoutDelegate@fitsAbove': (m.Scope scope, TextSelectionToolbarLayoutDelegate target)=>target.fitsAbove,
'package:flutter/src/widgets/text_selection_toolbar_layout_delegate.dart@TextSelectionToolbarLayoutDelegate@': (m.Scope scope)=>TextSelectionToolbarLayoutDelegate,
'package:flutter/src/widgets/text_selection_toolbar_layout_delegate.dart@TextSelectionToolbarLayoutDelegate@centerOn': (m.Scope scope)=>TextSelectionToolbarLayoutDelegate.centerOn,
'package:flutter/src/widgets/text_selection_toolbar_layout_delegate.dart@TextSelectionToolbarLayoutDelegate@getConstraintsForChild': (m.Scope scope, TextSelectionToolbarLayoutDelegate target)=>target.getConstraintsForChild,
'package:flutter/src/widgets/text_selection_toolbar_layout_delegate.dart@TextSelectionToolbarLayoutDelegate@getPositionForChild': (m.Scope scope, TextSelectionToolbarLayoutDelegate target)=>target.getPositionForChild,
'package:flutter/src/widgets/text_selection_toolbar_layout_delegate.dart@TextSelectionToolbarLayoutDelegate@shouldRelayout': (m.Scope scope, TextSelectionToolbarLayoutDelegate target)=>target.shouldRelayout,

};
}