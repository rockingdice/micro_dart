import 'package:flutter/src/widgets/title.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/title.dart@Title@#as': (m.Scope scope, target)=>()=>target as Title,
'package:flutter/src/widgets/title.dart@Title@#is': (m.Scope scope, target)=>()=>target is Title,
'package:flutter/src/widgets/title.dart@Title@title': (m.Scope scope, Title target)=>target.title,
'package:flutter/src/widgets/title.dart@Title@color': (m.Scope scope, Title target)=>target.color,
'package:flutter/src/widgets/title.dart@Title@child': (m.Scope scope, Title target)=>target.child,
'package:flutter/src/widgets/title.dart@Title@': (m.Scope scope)=>Title,
'package:flutter/src/widgets/title.dart@Title@build': (m.Scope scope, Title target)=>target.build,
'package:flutter/src/widgets/title.dart@Title@debugFillProperties': (m.Scope scope, Title target)=>target.debugFillProperties,

};
}