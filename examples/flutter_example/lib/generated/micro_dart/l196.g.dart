import 'package:flutter/src/material/toggleable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/toggleable.dart@ToggleablePainter@#as': (m.Scope scope, target)=>()=>target as ToggleablePainter,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@#is': (m.Scope scope, target)=>()=>target is ToggleablePainter,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@position': (m.Scope scope, ToggleablePainter target)=>target.position,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@position:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.position=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@reaction': (m.Scope scope, ToggleablePainter target)=>target.reaction,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@reaction:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.reaction=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@reactionFocusFade': (m.Scope scope, ToggleablePainter target)=>target.reactionFocusFade,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@reactionFocusFade:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.reactionFocusFade=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@reactionHoverFade': (m.Scope scope, ToggleablePainter target)=>target.reactionHoverFade,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@reactionHoverFade:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.reactionHoverFade=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@activeColor': (m.Scope scope, ToggleablePainter target)=>target.activeColor,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@activeColor:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.activeColor=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@inactiveColor': (m.Scope scope, ToggleablePainter target)=>target.inactiveColor,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@inactiveColor:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.inactiveColor=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@inactiveReactionColor': (m.Scope scope, ToggleablePainter target)=>target.inactiveReactionColor,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@inactiveReactionColor:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.inactiveReactionColor=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@reactionColor': (m.Scope scope, ToggleablePainter target)=>target.reactionColor,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@reactionColor:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.reactionColor=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@hoverColor': (m.Scope scope, ToggleablePainter target)=>target.hoverColor,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@hoverColor:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.hoverColor=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@focusColor': (m.Scope scope, ToggleablePainter target)=>target.focusColor,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@focusColor:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.focusColor=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@splashRadius': (m.Scope scope, ToggleablePainter target)=>target.splashRadius,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@splashRadius:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.splashRadius=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@downPosition': (m.Scope scope, ToggleablePainter target)=>target.downPosition,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@downPosition:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.downPosition=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@isFocused': (m.Scope scope, ToggleablePainter target)=>target.isFocused,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@isFocused:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.isFocused=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@isHovered': (m.Scope scope, ToggleablePainter target)=>target.isHovered,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@isHovered:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.isHovered=other,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@semanticsBuilder': (m.Scope scope, ToggleablePainter target)=>target.semanticsBuilder,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@paintRadialReaction': (m.Scope scope, ToggleablePainter target)=>target.paintRadialReaction,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@dispose': (m.Scope scope, ToggleablePainter target)=>target.dispose,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@shouldRepaint': (m.Scope scope, ToggleablePainter target)=>target.shouldRepaint,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@hitTest': (m.Scope scope, ToggleablePainter target)=>target.hitTest,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@shouldRebuildSemantics': (m.Scope scope, ToggleablePainter target)=>target.shouldRebuildSemantics,
'package:flutter/src/material/toggleable.dart@ToggleablePainter@toString': (m.Scope scope, ToggleablePainter target)=>target.toString,

};
}