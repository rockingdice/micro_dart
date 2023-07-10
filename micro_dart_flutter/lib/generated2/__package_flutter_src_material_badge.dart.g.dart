import 'package:flutter/src/material/badge.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/badge_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/badge.dart@Badge@#as': (m.Scope scope, target)=>()=>target as Badge,
'package:flutter/src/material/badge.dart@Badge@#is': (m.Scope scope, target)=>()=>target is Badge,
'package:flutter/src/material/badge.dart@Badge@backgroundColor': (m.Scope scope, Badge target)=>target.backgroundColor,
'package:flutter/src/material/badge.dart@Badge@textColor': (m.Scope scope, Badge target)=>target.textColor,
'package:flutter/src/material/badge.dart@Badge@smallSize': (m.Scope scope, Badge target)=>target.smallSize,
'package:flutter/src/material/badge.dart@Badge@largeSize': (m.Scope scope, Badge target)=>target.largeSize,
'package:flutter/src/material/badge.dart@Badge@textStyle': (m.Scope scope, Badge target)=>target.textStyle,
'package:flutter/src/material/badge.dart@Badge@padding': (m.Scope scope, Badge target)=>target.padding,
'package:flutter/src/material/badge.dart@Badge@alignment': (m.Scope scope, Badge target)=>target.alignment,
'package:flutter/src/material/badge.dart@Badge@offset': (m.Scope scope, Badge target)=>target.offset,
'package:flutter/src/material/badge.dart@Badge@label': (m.Scope scope, Badge target)=>target.label,
'package:flutter/src/material/badge.dart@Badge@isLabelVisible': (m.Scope scope, Badge target)=>target.isLabelVisible,
'package:flutter/src/material/badge.dart@Badge@child': (m.Scope scope, Badge target)=>target.child,
'package:flutter/src/material/badge.dart@Badge@': (m.Scope scope)=>({ alignment,  backgroundColor,  child,  isLabelVisible,  key,  label,  largeSize,  offset,  padding,  smallSize,  textColor,  textStyle}){
return Badge(alignment:alignment, backgroundColor:backgroundColor, child:child, isLabelVisible:isLabelVisible ?? true, key:key, label:label, largeSize:largeSize, offset:offset, padding:padding, smallSize:smallSize, textColor:textColor, textStyle:textStyle);
},
'package:flutter/src/material/badge.dart@Badge@count': (m.Scope scope)=>Badge.count,
'package:flutter/src/material/badge.dart@Badge@build': (m.Scope scope, Badge target)=>target.build,

};
}