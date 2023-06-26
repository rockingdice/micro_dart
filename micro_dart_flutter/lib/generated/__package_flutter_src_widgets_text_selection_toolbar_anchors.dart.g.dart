import 'package:flutter/src/widgets/text_selection_toolbar_anchors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/text_selection_toolbar_anchors.dart@TextSelectionToolbarAnchors@#as': (m.Scope scope, target)=>()=>target as TextSelectionToolbarAnchors,
'package:flutter/src/widgets/text_selection_toolbar_anchors.dart@TextSelectionToolbarAnchors@#is': (m.Scope scope, target)=>()=>target is TextSelectionToolbarAnchors,
'package:flutter/src/widgets/text_selection_toolbar_anchors.dart@TextSelectionToolbarAnchors@primaryAnchor': (m.Scope scope, TextSelectionToolbarAnchors target)=>target.primaryAnchor,
'package:flutter/src/widgets/text_selection_toolbar_anchors.dart@TextSelectionToolbarAnchors@secondaryAnchor': (m.Scope scope, TextSelectionToolbarAnchors target)=>target.secondaryAnchor,
'package:flutter/src/widgets/text_selection_toolbar_anchors.dart@TextSelectionToolbarAnchors@': (m.Scope scope)=>TextSelectionToolbarAnchors,
'package:flutter/src/widgets/text_selection_toolbar_anchors.dart@TextSelectionToolbarAnchors@fromSelection': (m.Scope scope)=>TextSelectionToolbarAnchors.fromSelection,

};
}