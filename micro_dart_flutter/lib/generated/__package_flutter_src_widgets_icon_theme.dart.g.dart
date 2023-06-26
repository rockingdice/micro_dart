import 'package:flutter/src/widgets/icon_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/icon_theme_data.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/icon_theme.dart@IconTheme@#as': (m.Scope scope, target)=>()=>target as IconTheme,
'package:flutter/src/widgets/icon_theme.dart@IconTheme@#is': (m.Scope scope, target)=>()=>target is IconTheme,
'package:flutter/src/widgets/icon_theme.dart@IconTheme@data': (m.Scope scope, IconTheme target)=>target.data,
'package:flutter/src/widgets/icon_theme.dart@IconTheme@': (m.Scope scope)=>IconTheme,
'package:flutter/src/widgets/icon_theme.dart@IconTheme@merge': (m.Scope scope)=>IconTheme.merge,
'package:flutter/src/widgets/icon_theme.dart@IconTheme@of': (m.Scope scope)=>IconTheme.of,
'package:flutter/src/widgets/icon_theme.dart@IconTheme@updateShouldNotify': (m.Scope scope, IconTheme target)=>target.updateShouldNotify,
'package:flutter/src/widgets/icon_theme.dart@IconTheme@wrap': (m.Scope scope, IconTheme target)=>target.wrap,
'package:flutter/src/widgets/icon_theme.dart@IconTheme@debugFillProperties': (m.Scope scope, IconTheme target)=>target.debugFillProperties,

};
}