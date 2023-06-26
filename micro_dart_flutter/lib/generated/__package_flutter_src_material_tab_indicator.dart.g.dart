import 'package:flutter/src/material/tab_indicator.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/tab_indicator.dart@UnderlineTabIndicator@#as': (m.Scope scope, target)=>()=>target as UnderlineTabIndicator,
'package:flutter/src/material/tab_indicator.dart@UnderlineTabIndicator@#is': (m.Scope scope, target)=>()=>target is UnderlineTabIndicator,
'package:flutter/src/material/tab_indicator.dart@UnderlineTabIndicator@borderRadius': (m.Scope scope, UnderlineTabIndicator target)=>target.borderRadius,
'package:flutter/src/material/tab_indicator.dart@UnderlineTabIndicator@borderSide': (m.Scope scope, UnderlineTabIndicator target)=>target.borderSide,
'package:flutter/src/material/tab_indicator.dart@UnderlineTabIndicator@insets': (m.Scope scope, UnderlineTabIndicator target)=>target.insets,
'package:flutter/src/material/tab_indicator.dart@UnderlineTabIndicator@': (m.Scope scope)=>({ borderRadius,  borderSide,  insets}){
return UnderlineTabIndicator(borderRadius:borderRadius, borderSide:borderSide ?? const BorderSide(width: 2.0, color: Colors.white), insets:insets ?? EdgeInsets.zero);
},
'package:flutter/src/material/tab_indicator.dart@UnderlineTabIndicator@lerpFrom': (m.Scope scope, UnderlineTabIndicator target)=>target.lerpFrom,
'package:flutter/src/material/tab_indicator.dart@UnderlineTabIndicator@lerpTo': (m.Scope scope, UnderlineTabIndicator target)=>target.lerpTo,
'package:flutter/src/material/tab_indicator.dart@UnderlineTabIndicator@createBoxPainter': (m.Scope scope, UnderlineTabIndicator target)=>([m.FunctionPointer? onChanged]){
if(onChanged == null){
return target.createBoxPainter();
}
void onChangedProxy() {
 engine.callFunctionPointer(scope, onChanged!,[], {});
}

return target.createBoxPainter(onChangedProxy);
},
'package:flutter/src/material/tab_indicator.dart@UnderlineTabIndicator@getClipPath': (m.Scope scope, UnderlineTabIndicator target)=>target.getClipPath,

};
}