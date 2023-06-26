import 'package:flutter/src/cupertino/magnifier.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/magnifier.dart@CupertinoTextMagnifier@#as': (m.Scope scope, target)=>()=>target as CupertinoTextMagnifier,
'package:flutter/src/cupertino/magnifier.dart@CupertinoTextMagnifier@#is': (m.Scope scope, target)=>()=>target is CupertinoTextMagnifier,
'package:flutter/src/cupertino/magnifier.dart@CupertinoTextMagnifier@animationCurve': (m.Scope scope, CupertinoTextMagnifier target)=>target.animationCurve,
'package:flutter/src/cupertino/magnifier.dart@CupertinoTextMagnifier@controller': (m.Scope scope, CupertinoTextMagnifier target)=>target.controller,
'package:flutter/src/cupertino/magnifier.dart@CupertinoTextMagnifier@dragResistance': (m.Scope scope, CupertinoTextMagnifier target)=>target.dragResistance,
'package:flutter/src/cupertino/magnifier.dart@CupertinoTextMagnifier@hideBelowThreshold': (m.Scope scope, CupertinoTextMagnifier target)=>target.hideBelowThreshold,
'package:flutter/src/cupertino/magnifier.dart@CupertinoTextMagnifier@horizontalScreenEdgePadding': (m.Scope scope, CupertinoTextMagnifier target)=>target.horizontalScreenEdgePadding,
'package:flutter/src/cupertino/magnifier.dart@CupertinoTextMagnifier@magnifierInfo': (m.Scope scope, CupertinoTextMagnifier target)=>target.magnifierInfo,
'package:flutter/src/cupertino/magnifier.dart@CupertinoTextMagnifier@': (m.Scope scope)=>CupertinoTextMagnifier,
'package:flutter/src/cupertino/magnifier.dart@CupertinoTextMagnifier@createState': (m.Scope scope, CupertinoTextMagnifier target)=>target.createState,
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@#as': (m.Scope scope, target)=>()=>target as CupertinoMagnifier,
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@#is': (m.Scope scope, target)=>()=>target is CupertinoMagnifier,
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@shadows': (m.Scope scope, CupertinoMagnifier target)=>target.shadows,
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@borderSide': (m.Scope scope, CupertinoMagnifier target)=>target.borderSide,
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@kMagnifierAboveFocalPoint': (m.Scope scope)=>CupertinoMagnifier.kMagnifierAboveFocalPoint,
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@kDefaultSize': (m.Scope scope)=>CupertinoMagnifier.kDefaultSize,
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@size': (m.Scope scope, CupertinoMagnifier target)=>target.size,
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@borderRadius': (m.Scope scope, CupertinoMagnifier target)=>target.borderRadius,
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@inOutAnimation': (m.Scope scope, CupertinoMagnifier target)=>target.inOutAnimation,
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@additionalFocalPointOffset': (m.Scope scope, CupertinoMagnifier target)=>target.additionalFocalPointOffset,
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@': (m.Scope scope)=>({ additionalFocalPointOffset,  borderRadius,  borderSide,  inOutAnimation,  key,  shadows,  size}){
return CupertinoMagnifier(additionalFocalPointOffset:additionalFocalPointOffset ?? Offset.zero, borderRadius:borderRadius ?? const BorderRadius.all(Radius.elliptical(60, 50)), borderSide:borderSide ?? const BorderSide(color: Color.fromARGB(255, 232, 232, 232)), inOutAnimation:inOutAnimation, key:key, shadows:shadows ?? const <BoxShadow>[BoxShadow(color: Color.fromARGB(25, 0, 0, 0), blurRadius: 11, spreadRadius: 0.2)], size:size ?? CupertinoMagnifier.kDefaultSize);
},
'package:flutter/src/cupertino/magnifier.dart@CupertinoMagnifier@build': (m.Scope scope, CupertinoMagnifier target)=>target.build,

};
}