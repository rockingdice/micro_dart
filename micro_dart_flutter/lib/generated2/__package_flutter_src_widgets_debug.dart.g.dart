import 'package:flutter/src/widgets/debug.dart';
import 'dart:collection';
import 'dart:developer' show Timeline;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/lookup_boundary.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/table.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/debug.dart@@debugPrintRebuildDirtyWidgets': (m.Scope scope)=>debugPrintRebuildDirtyWidgets,
'package:flutter/src/widgets/debug.dart@@debugPrintRebuildDirtyWidgets:set': (m.Scope scope)=>(other)=>debugPrintRebuildDirtyWidgets=other,
'package:flutter/src/widgets/debug.dart@@debugOnRebuildDirtyWidget': (m.Scope scope)=>debugOnRebuildDirtyWidget,
'package:flutter/src/widgets/debug.dart@@debugOnRebuildDirtyWidget:set': (m.Scope scope)=>(other)=>debugOnRebuildDirtyWidget=other,
'package:flutter/src/widgets/debug.dart@@debugPrintBuildScope': (m.Scope scope)=>debugPrintBuildScope,
'package:flutter/src/widgets/debug.dart@@debugPrintBuildScope:set': (m.Scope scope)=>(other)=>debugPrintBuildScope=other,
'package:flutter/src/widgets/debug.dart@@debugPrintScheduleBuildForStacks': (m.Scope scope)=>debugPrintScheduleBuildForStacks,
'package:flutter/src/widgets/debug.dart@@debugPrintScheduleBuildForStacks:set': (m.Scope scope)=>(other)=>debugPrintScheduleBuildForStacks=other,
'package:flutter/src/widgets/debug.dart@@debugPrintGlobalKeyedWidgetLifecycle': (m.Scope scope)=>debugPrintGlobalKeyedWidgetLifecycle,
'package:flutter/src/widgets/debug.dart@@debugPrintGlobalKeyedWidgetLifecycle:set': (m.Scope scope)=>(other)=>debugPrintGlobalKeyedWidgetLifecycle=other,
'package:flutter/src/widgets/debug.dart@@debugProfileBuildsEnabled': (m.Scope scope)=>debugProfileBuildsEnabled,
'package:flutter/src/widgets/debug.dart@@debugProfileBuildsEnabled:set': (m.Scope scope)=>(other)=>debugProfileBuildsEnabled=other,
'package:flutter/src/widgets/debug.dart@@debugProfileBuildsEnabledUserWidgets': (m.Scope scope)=>debugProfileBuildsEnabledUserWidgets,
'package:flutter/src/widgets/debug.dart@@debugProfileBuildsEnabledUserWidgets:set': (m.Scope scope)=>(other)=>debugProfileBuildsEnabledUserWidgets=other,
'package:flutter/src/widgets/debug.dart@@debugEnhanceBuildTimelineArguments': (m.Scope scope)=>debugEnhanceBuildTimelineArguments,
'package:flutter/src/widgets/debug.dart@@debugEnhanceBuildTimelineArguments:set': (m.Scope scope)=>(other)=>debugEnhanceBuildTimelineArguments=other,
'package:flutter/src/widgets/debug.dart@@debugHighlightDeprecatedWidgets': (m.Scope scope)=>debugHighlightDeprecatedWidgets,
'package:flutter/src/widgets/debug.dart@@debugHighlightDeprecatedWidgets:set': (m.Scope scope)=>(other)=>debugHighlightDeprecatedWidgets=other,
'package:flutter/src/widgets/debug.dart@@debugChildrenHaveDuplicateKeys': (m.Scope scope)=>debugChildrenHaveDuplicateKeys,
'package:flutter/src/widgets/debug.dart@@debugItemsHaveDuplicateKeys': (m.Scope scope)=>debugItemsHaveDuplicateKeys,
'package:flutter/src/widgets/debug.dart@@debugCheckHasTable': (m.Scope scope)=>debugCheckHasTable,
'package:flutter/src/widgets/debug.dart@@debugCheckHasMediaQuery': (m.Scope scope)=>debugCheckHasMediaQuery,
'package:flutter/src/widgets/debug.dart@@debugCheckHasDirectionality': (m.Scope scope)=>debugCheckHasDirectionality,
'package:flutter/src/widgets/debug.dart@@debugWidgetBuilderValue': (m.Scope scope)=>debugWidgetBuilderValue,
'package:flutter/src/widgets/debug.dart@@debugCheckHasWidgetsLocalizations': (m.Scope scope)=>debugCheckHasWidgetsLocalizations,
'package:flutter/src/widgets/debug.dart@@debugCheckHasOverlay': (m.Scope scope)=>debugCheckHasOverlay,
'package:flutter/src/widgets/debug.dart@@debugAssertAllWidgetVarsUnset': (m.Scope scope)=>debugAssertAllWidgetVarsUnset,

};
}