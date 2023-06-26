import 'package:flutter/src/cupertino/switch.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:flutter/src/cupertino/thumb_painter.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@#as': (m.Scope scope, target)=>()=>target as CupertinoSwitch,
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@#is': (m.Scope scope, target)=>()=>target is CupertinoSwitch,
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@value': (m.Scope scope, CupertinoSwitch target)=>target.value,
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@onChanged': (m.Scope scope, CupertinoSwitch target)=>target.onChanged,
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@activeColor': (m.Scope scope, CupertinoSwitch target)=>target.activeColor,
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@trackColor': (m.Scope scope, CupertinoSwitch target)=>target.trackColor,
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@thumbColor': (m.Scope scope, CupertinoSwitch target)=>target.thumbColor,
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@focusColor': (m.Scope scope, CupertinoSwitch target)=>target.focusColor,
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@applyTheme': (m.Scope scope, CupertinoSwitch target)=>target.applyTheme,
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@dragStartBehavior': (m.Scope scope, CupertinoSwitch target)=>target.dragStartBehavior,
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@': (m.Scope scope)=>({ activeColor,  applyTheme,  dragStartBehavior,  focusColor,  key,  onChanged,  thumbColor,  trackColor,  value}){
void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

return CupertinoSwitch(activeColor:activeColor, applyTheme:applyTheme, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, focusColor:focusColor, key:key, onChanged:onChangedProxy, thumbColor:thumbColor, trackColor:trackColor, value:value);
},
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@createState': (m.Scope scope, CupertinoSwitch target)=>target.createState,
'package:flutter/src/cupertino/switch.dart@CupertinoSwitch@debugFillProperties': (m.Scope scope, CupertinoSwitch target)=>target.debugFillProperties,

};
}