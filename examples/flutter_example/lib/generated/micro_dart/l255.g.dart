import 'package:flutter/src/widgets/icon.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/icon_data.dart';
import 'package:flutter/src/widgets/icon_theme.dart';
import 'package:flutter/src/widgets/icon_theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/icon.dart@Icon@#as': (m.Scope scope, target)=>()=>target as Icon,
'package:flutter/src/widgets/icon.dart@Icon@#is': (m.Scope scope, target)=>()=>target is Icon,
'package:flutter/src/widgets/icon.dart@Icon@icon': (m.Scope scope, Icon target)=>target.icon,
'package:flutter/src/widgets/icon.dart@Icon@size': (m.Scope scope, Icon target)=>target.size,
'package:flutter/src/widgets/icon.dart@Icon@fill': (m.Scope scope, Icon target)=>target.fill,
'package:flutter/src/widgets/icon.dart@Icon@weight': (m.Scope scope, Icon target)=>target.weight,
'package:flutter/src/widgets/icon.dart@Icon@grade': (m.Scope scope, Icon target)=>target.grade,
'package:flutter/src/widgets/icon.dart@Icon@opticalSize': (m.Scope scope, Icon target)=>target.opticalSize,
'package:flutter/src/widgets/icon.dart@Icon@color': (m.Scope scope, Icon target)=>target.color,
'package:flutter/src/widgets/icon.dart@Icon@shadows': (m.Scope scope, Icon target)=>target.shadows,
'package:flutter/src/widgets/icon.dart@Icon@semanticLabel': (m.Scope scope, Icon target)=>target.semanticLabel,
'package:flutter/src/widgets/icon.dart@Icon@textDirection': (m.Scope scope, Icon target)=>target.textDirection,
'package:flutter/src/widgets/icon.dart@Icon@': (m.Scope scope)=>Icon,
'package:flutter/src/widgets/icon.dart@Icon@build': (m.Scope scope, Icon target)=>target.build,
'package:flutter/src/widgets/icon.dart@Icon@debugFillProperties': (m.Scope scope, Icon target)=>target.debugFillProperties,

};
}