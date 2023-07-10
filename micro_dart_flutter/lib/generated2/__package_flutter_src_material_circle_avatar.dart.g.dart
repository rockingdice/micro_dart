import 'package:flutter/src/material/circle_avatar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@#as': (m.Scope scope, target)=>()=>target as CircleAvatar,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@#is': (m.Scope scope, target)=>()=>target is CircleAvatar,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@child': (m.Scope scope, CircleAvatar target)=>target.child,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@backgroundColor': (m.Scope scope, CircleAvatar target)=>target.backgroundColor,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@foregroundColor': (m.Scope scope, CircleAvatar target)=>target.foregroundColor,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@backgroundImage': (m.Scope scope, CircleAvatar target)=>target.backgroundImage,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@foregroundImage': (m.Scope scope, CircleAvatar target)=>target.foregroundImage,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@onBackgroundImageError': (m.Scope scope, CircleAvatar target)=>target.onBackgroundImageError,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@onForegroundImageError': (m.Scope scope, CircleAvatar target)=>target.onForegroundImageError,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@radius': (m.Scope scope, CircleAvatar target)=>target.radius,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@minRadius': (m.Scope scope, CircleAvatar target)=>target.minRadius,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@maxRadius': (m.Scope scope, CircleAvatar target)=>target.maxRadius,
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@': (m.Scope scope)=>({ backgroundColor,  backgroundImage,  child,  foregroundColor,  foregroundImage,  key,  maxRadius,  minRadius,  onBackgroundImageError,  onForegroundImageError,  radius}){
void onBackgroundImageErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, onBackgroundImageError!,[exception, stackTrace], {});
}

void onForegroundImageErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, onForegroundImageError!,[exception, stackTrace], {});
}

return CircleAvatar(backgroundColor:backgroundColor, backgroundImage:backgroundImage, child:child, foregroundColor:foregroundColor, foregroundImage:foregroundImage, key:key, maxRadius:maxRadius, minRadius:minRadius, onBackgroundImageError:onBackgroundImageError == null ? null :onBackgroundImageErrorProxy, onForegroundImageError:onForegroundImageError == null ? null :onForegroundImageErrorProxy, radius:radius);
},
'package:flutter/src/material/circle_avatar.dart@CircleAvatar@build': (m.Scope scope, CircleAvatar target)=>target.build,

};
}