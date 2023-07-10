import 'package:flutter/src/material/tooltip.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/tooltip_theme.dart';
import 'package:flutter/src/material/tooltip_visibility.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/tooltip.dart@Tooltip@#as': (m.Scope scope, target)=>()=>target as Tooltip,
'package:flutter/src/material/tooltip.dart@Tooltip@#is': (m.Scope scope, target)=>()=>target is Tooltip,
'package:flutter/src/material/tooltip.dart@Tooltip@message': (m.Scope scope, Tooltip target)=>target.message,
'package:flutter/src/material/tooltip.dart@Tooltip@richMessage': (m.Scope scope, Tooltip target)=>target.richMessage,
'package:flutter/src/material/tooltip.dart@Tooltip@height': (m.Scope scope, Tooltip target)=>target.height,
'package:flutter/src/material/tooltip.dart@Tooltip@padding': (m.Scope scope, Tooltip target)=>target.padding,
'package:flutter/src/material/tooltip.dart@Tooltip@margin': (m.Scope scope, Tooltip target)=>target.margin,
'package:flutter/src/material/tooltip.dart@Tooltip@verticalOffset': (m.Scope scope, Tooltip target)=>target.verticalOffset,
'package:flutter/src/material/tooltip.dart@Tooltip@preferBelow': (m.Scope scope, Tooltip target)=>target.preferBelow,
'package:flutter/src/material/tooltip.dart@Tooltip@excludeFromSemantics': (m.Scope scope, Tooltip target)=>target.excludeFromSemantics,
'package:flutter/src/material/tooltip.dart@Tooltip@child': (m.Scope scope, Tooltip target)=>target.child,
'package:flutter/src/material/tooltip.dart@Tooltip@decoration': (m.Scope scope, Tooltip target)=>target.decoration,
'package:flutter/src/material/tooltip.dart@Tooltip@textStyle': (m.Scope scope, Tooltip target)=>target.textStyle,
'package:flutter/src/material/tooltip.dart@Tooltip@textAlign': (m.Scope scope, Tooltip target)=>target.textAlign,
'package:flutter/src/material/tooltip.dart@Tooltip@waitDuration': (m.Scope scope, Tooltip target)=>target.waitDuration,
'package:flutter/src/material/tooltip.dart@Tooltip@showDuration': (m.Scope scope, Tooltip target)=>target.showDuration,
'package:flutter/src/material/tooltip.dart@Tooltip@triggerMode': (m.Scope scope, Tooltip target)=>target.triggerMode,
'package:flutter/src/material/tooltip.dart@Tooltip@enableFeedback': (m.Scope scope, Tooltip target)=>target.enableFeedback,
'package:flutter/src/material/tooltip.dart@Tooltip@onTriggered': (m.Scope scope, Tooltip target)=>target.onTriggered,
'package:flutter/src/material/tooltip.dart@Tooltip@': (m.Scope scope)=>({ child,  decoration,  enableFeedback,  excludeFromSemantics,  height,  key,  margin,  message,  onTriggered,  padding,  preferBelow,  richMessage,  showDuration,  textAlign,  textStyle,  triggerMode,  verticalOffset,  waitDuration}){
void onTriggeredProxy() {
 engine.callFunctionPointer(scope, onTriggered!,[], {});
}

return Tooltip(child:child, decoration:decoration, enableFeedback:enableFeedback, excludeFromSemantics:excludeFromSemantics, height:height, key:key, margin:margin, message:message, onTriggered:onTriggered == null ? null :onTriggeredProxy, padding:padding, preferBelow:preferBelow, richMessage:richMessage, showDuration:showDuration, textAlign:textAlign, textStyle:textStyle, triggerMode:triggerMode, verticalOffset:verticalOffset, waitDuration:waitDuration);
},
'package:flutter/src/material/tooltip.dart@Tooltip@dismissAllToolTips': (m.Scope scope)=>Tooltip.dismissAllToolTips,
'package:flutter/src/material/tooltip.dart@Tooltip@createState': (m.Scope scope, Tooltip target)=>target.createState,
'package:flutter/src/material/tooltip.dart@Tooltip@debugFillProperties': (m.Scope scope, Tooltip target)=>target.debugFillProperties,
'package:flutter/src/material/tooltip.dart@TooltipState@#as': (m.Scope scope, target)=>()=>target as TooltipState,
'package:flutter/src/material/tooltip.dart@TooltipState@#is': (m.Scope scope, target)=>()=>target is TooltipState,
'package:flutter/src/material/tooltip.dart@TooltipState@': (m.Scope scope)=>(){
return TooltipState();
},
'package:flutter/src/material/tooltip.dart@TooltipState@initState': (m.Scope scope, TooltipState target)=>target.initState,
'package:flutter/src/material/tooltip.dart@TooltipState@didChangeDependencies': (m.Scope scope, TooltipState target)=>target.didChangeDependencies,
'package:flutter/src/material/tooltip.dart@TooltipState@ensureTooltipVisible': (m.Scope scope, TooltipState target)=>target.ensureTooltipVisible,
'package:flutter/src/material/tooltip.dart@TooltipState@deactivate': (m.Scope scope, TooltipState target)=>target.deactivate,
'package:flutter/src/material/tooltip.dart@TooltipState@dispose': (m.Scope scope, TooltipState target)=>target.dispose,
'package:flutter/src/material/tooltip.dart@TooltipState@build': (m.Scope scope, TooltipState target)=>target.build,

};
}