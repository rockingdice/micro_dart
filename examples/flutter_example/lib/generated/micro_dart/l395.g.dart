import 'package:flutter/src/cupertino/button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/constants.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/button.dart@CupertinoButton@#as': (m.Scope scope, target)=>()=>target as CupertinoButton,
'package:flutter/src/cupertino/button.dart@CupertinoButton@#is': (m.Scope scope, target)=>()=>target is CupertinoButton,
'package:flutter/src/cupertino/button.dart@CupertinoButton@child': (m.Scope scope, CupertinoButton target)=>target.child,
'package:flutter/src/cupertino/button.dart@CupertinoButton@padding': (m.Scope scope, CupertinoButton target)=>target.padding,
'package:flutter/src/cupertino/button.dart@CupertinoButton@color': (m.Scope scope, CupertinoButton target)=>target.color,
'package:flutter/src/cupertino/button.dart@CupertinoButton@disabledColor': (m.Scope scope, CupertinoButton target)=>target.disabledColor,
'package:flutter/src/cupertino/button.dart@CupertinoButton@onPressed': (m.Scope scope, CupertinoButton target)=>target.onPressed,
'package:flutter/src/cupertino/button.dart@CupertinoButton@minSize': (m.Scope scope, CupertinoButton target)=>target.minSize,
'package:flutter/src/cupertino/button.dart@CupertinoButton@pressedOpacity': (m.Scope scope, CupertinoButton target)=>target.pressedOpacity,
'package:flutter/src/cupertino/button.dart@CupertinoButton@borderRadius': (m.Scope scope, CupertinoButton target)=>target.borderRadius,
'package:flutter/src/cupertino/button.dart@CupertinoButton@alignment': (m.Scope scope, CupertinoButton target)=>target.alignment,
'package:flutter/src/cupertino/button.dart@CupertinoButton@enabled': (m.Scope scope, CupertinoButton target)=>target.enabled,
'package:flutter/src/cupertino/button.dart@CupertinoButton@': (m.Scope scope)=>({ alignment,  borderRadius,  child,  color,  disabledColor,  key,  minSize,  onPressed,  padding,  pressedOpacity}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return CupertinoButton(alignment:alignment ?? Alignment.center, borderRadius:borderRadius ?? const BorderRadius.all(Radius.circular(8.0)), child:child, color:color, disabledColor:disabledColor ?? CupertinoColors.quaternarySystemFill, key:key, minSize:minSize ?? kMinInteractiveDimensionCupertino, onPressed:onPressedProxy, padding:padding, pressedOpacity:pressedOpacity ?? 0.4);
},
'package:flutter/src/cupertino/button.dart@CupertinoButton@filled': (m.Scope scope)=>({ alignment,  borderRadius,  child,  disabledColor,  key,  minSize,  onPressed,  padding,  pressedOpacity}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return CupertinoButton.filled(alignment:alignment ?? Alignment.center, borderRadius:borderRadius ?? const BorderRadius.all(Radius.circular(8.0)), child:child, disabledColor:disabledColor ?? CupertinoColors.quaternarySystemFill, key:key, minSize:minSize ?? kMinInteractiveDimensionCupertino, onPressed:onPressedProxy, padding:padding, pressedOpacity:pressedOpacity ?? 0.4);
},
'package:flutter/src/cupertino/button.dart@CupertinoButton@createState': (m.Scope scope, CupertinoButton target)=>target.createState,
'package:flutter/src/cupertino/button.dart@CupertinoButton@debugFillProperties': (m.Scope scope, CupertinoButton target)=>target.debugFillProperties,

};
}