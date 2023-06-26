import 'package:flutter/src/widgets/selection_container.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/selection_container.dart@SelectionContainer@#as': (m.Scope scope, target)=>()=>target as SelectionContainer,
'package:flutter/src/widgets/selection_container.dart@SelectionContainer@#is': (m.Scope scope, target)=>()=>target is SelectionContainer,
'package:flutter/src/widgets/selection_container.dart@SelectionContainer@registrar': (m.Scope scope, SelectionContainer target)=>target.registrar,
'package:flutter/src/widgets/selection_container.dart@SelectionContainer@child': (m.Scope scope, SelectionContainer target)=>target.child,
'package:flutter/src/widgets/selection_container.dart@SelectionContainer@delegate': (m.Scope scope, SelectionContainer target)=>target.delegate,
'package:flutter/src/widgets/selection_container.dart@SelectionContainer@': (m.Scope scope)=>SelectionContainer,
'package:flutter/src/widgets/selection_container.dart@SelectionContainer@disabled': (m.Scope scope)=>SelectionContainer.disabled,
'package:flutter/src/widgets/selection_container.dart@SelectionContainer@maybeOf': (m.Scope scope)=>SelectionContainer.maybeOf,
'package:flutter/src/widgets/selection_container.dart@SelectionContainer@createState': (m.Scope scope, SelectionContainer target)=>target.createState,
'package:flutter/src/widgets/selection_container.dart@SelectionRegistrarScope@#as': (m.Scope scope, target)=>()=>target as SelectionRegistrarScope,
'package:flutter/src/widgets/selection_container.dart@SelectionRegistrarScope@#is': (m.Scope scope, target)=>()=>target is SelectionRegistrarScope,
'package:flutter/src/widgets/selection_container.dart@SelectionRegistrarScope@registrar': (m.Scope scope, SelectionRegistrarScope target)=>target.registrar,
'package:flutter/src/widgets/selection_container.dart@SelectionRegistrarScope@': (m.Scope scope)=>SelectionRegistrarScope,
'package:flutter/src/widgets/selection_container.dart@SelectionRegistrarScope@updateShouldNotify': (m.Scope scope, SelectionRegistrarScope target)=>target.updateShouldNotify,
'package:flutter/src/widgets/selection_container.dart@SelectionContainerDelegate@#as': (m.Scope scope, target)=>()=>target as SelectionContainerDelegate,
'package:flutter/src/widgets/selection_container.dart@SelectionContainerDelegate@#is': (m.Scope scope, target)=>()=>target is SelectionContainerDelegate,
'package:flutter/src/widgets/selection_container.dart@SelectionContainerDelegate@hasSize': (m.Scope scope, SelectionContainerDelegate target)=>target.hasSize,
'package:flutter/src/widgets/selection_container.dart@SelectionContainerDelegate@containerSize': (m.Scope scope, SelectionContainerDelegate target)=>target.containerSize,
'package:flutter/src/widgets/selection_container.dart@SelectionContainerDelegate@getTransformFrom': (m.Scope scope, SelectionContainerDelegate target)=>target.getTransformFrom,
'package:flutter/src/widgets/selection_container.dart@SelectionContainerDelegate@getTransformTo': (m.Scope scope, SelectionContainerDelegate target)=>target.getTransformTo,

};
}