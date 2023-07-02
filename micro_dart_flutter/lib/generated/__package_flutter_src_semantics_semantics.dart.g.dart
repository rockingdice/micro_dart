import 'package:flutter/src/semantics/semantics.dart';
import 'dart:math';
import 'dart:ui';
import 'dart:ui' show Offset,Rect,SemanticsAction,SemanticsFlag,StringAttribute,TextDirection;
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart' show MatrixUtils,TransformProperty;
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/semantics/binding.dart' show SemanticsBinding;
import 'package:flutter/src/semantics/semantics_event.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/semantics/semantics.dart@SemanticsTag@#as': (m.Scope scope, target)=>()=>target as SemanticsTag,
'package:flutter/src/semantics/semantics.dart@SemanticsTag@#is': (m.Scope scope, target)=>()=>target is SemanticsTag,
'package:flutter/src/semantics/semantics.dart@SemanticsTag@name': (m.Scope scope, SemanticsTag target)=>target.name,
'package:flutter/src/semantics/semantics.dart@SemanticsTag@': (m.Scope scope)=>( name){
return SemanticsTag(name);
},
'package:flutter/src/semantics/semantics.dart@SemanticsTag@toString': (m.Scope scope, SemanticsTag target)=>target.toString,
'package:flutter/src/semantics/semantics.dart@ChildSemanticsConfigurationsResult@#as': (m.Scope scope, target)=>()=>target as ChildSemanticsConfigurationsResult,
'package:flutter/src/semantics/semantics.dart@ChildSemanticsConfigurationsResult@#is': (m.Scope scope, target)=>()=>target is ChildSemanticsConfigurationsResult,
'package:flutter/src/semantics/semantics.dart@ChildSemanticsConfigurationsResult@mergeUp': (m.Scope scope, ChildSemanticsConfigurationsResult target)=>target.mergeUp,
'package:flutter/src/semantics/semantics.dart@ChildSemanticsConfigurationsResult@siblingMergeGroups': (m.Scope scope, ChildSemanticsConfigurationsResult target)=>target.siblingMergeGroups,
'package:flutter/src/semantics/semantics.dart@ChildSemanticsConfigurationsResultBuilder@#as': (m.Scope scope, target)=>()=>target as ChildSemanticsConfigurationsResultBuilder,
'package:flutter/src/semantics/semantics.dart@ChildSemanticsConfigurationsResultBuilder@#is': (m.Scope scope, target)=>()=>target is ChildSemanticsConfigurationsResultBuilder,
'package:flutter/src/semantics/semantics.dart@ChildSemanticsConfigurationsResultBuilder@': (m.Scope scope)=>(){
return ChildSemanticsConfigurationsResultBuilder();
},
'package:flutter/src/semantics/semantics.dart@ChildSemanticsConfigurationsResultBuilder@markAsMergeUp': (m.Scope scope, ChildSemanticsConfigurationsResultBuilder target)=>target.markAsMergeUp,
'package:flutter/src/semantics/semantics.dart@ChildSemanticsConfigurationsResultBuilder@markAsSiblingMergeGroup': (m.Scope scope, ChildSemanticsConfigurationsResultBuilder target)=>target.markAsSiblingMergeGroup,
'package:flutter/src/semantics/semantics.dart@ChildSemanticsConfigurationsResultBuilder@build': (m.Scope scope, ChildSemanticsConfigurationsResultBuilder target)=>target.build,
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@#as': (m.Scope scope, target)=>()=>target as CustomSemanticsAction,
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@#is': (m.Scope scope, target)=>()=>target is CustomSemanticsAction,
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@label': (m.Scope scope, CustomSemanticsAction target)=>target.label,
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@hint': (m.Scope scope, CustomSemanticsAction target)=>target.hint,
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@action': (m.Scope scope, CustomSemanticsAction target)=>target.action,
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@hashCode': (m.Scope scope, CustomSemanticsAction target)=>target.hashCode,
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@': (m.Scope scope)=>({ label}){
return CustomSemanticsAction(label:label);
},
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@overridingAction': (m.Scope scope)=>CustomSemanticsAction.overridingAction,
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@==': (m.Scope scope, CustomSemanticsAction target)=>(other)=> target == other,
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@toString': (m.Scope scope, CustomSemanticsAction target)=>target.toString,
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@getIdentifier': (m.Scope scope)=>CustomSemanticsAction.getIdentifier,
'package:flutter/src/semantics/semantics.dart@CustomSemanticsAction@getAction': (m.Scope scope)=>CustomSemanticsAction.getAction,
'package:flutter/src/semantics/semantics.dart@AttributedString@#as': (m.Scope scope, target)=>()=>target as AttributedString,
'package:flutter/src/semantics/semantics.dart@AttributedString@#is': (m.Scope scope, target)=>()=>target is AttributedString,
'package:flutter/src/semantics/semantics.dart@AttributedString@string': (m.Scope scope, AttributedString target)=>target.string,
'package:flutter/src/semantics/semantics.dart@AttributedString@attributes': (m.Scope scope, AttributedString target)=>target.attributes,
'package:flutter/src/semantics/semantics.dart@AttributedString@hashCode': (m.Scope scope, AttributedString target)=>target.hashCode,
'package:flutter/src/semantics/semantics.dart@AttributedString@': (m.Scope scope)=>( string, { attributes}){
return AttributedString(string, attributes:attributes ?? const <StringAttribute>[]);
},
'package:flutter/src/semantics/semantics.dart@AttributedString@+': (m.Scope scope, AttributedString target)=>(other)=> target + other,
'package:flutter/src/semantics/semantics.dart@AttributedString@==': (m.Scope scope, AttributedString target)=>(other)=> target == other,
'package:flutter/src/semantics/semantics.dart@AttributedString@toString': (m.Scope scope, AttributedString target)=>target.toString,
'package:flutter/src/semantics/semantics.dart@AttributedStringProperty@#as': (m.Scope scope, target)=>()=>target as AttributedStringProperty,
'package:flutter/src/semantics/semantics.dart@AttributedStringProperty@#is': (m.Scope scope, target)=>()=>target is AttributedStringProperty,
'package:flutter/src/semantics/semantics.dart@AttributedStringProperty@showWhenEmpty': (m.Scope scope, AttributedStringProperty target)=>target.showWhenEmpty,
'package:flutter/src/semantics/semantics.dart@AttributedStringProperty@isInteresting': (m.Scope scope, AttributedStringProperty target)=>target.isInteresting,
'package:flutter/src/semantics/semantics.dart@AttributedStringProperty@': (m.Scope scope)=>( name,  value, { defaultValue,  description,  level,  showName,  showWhenEmpty}){
return AttributedStringProperty(name, value, defaultValue:defaultValue ?? kNoDefaultValue, description:description, level:level ?? DiagnosticLevel.info, showName:showName ?? true, showWhenEmpty:showWhenEmpty ?? false);
},
'package:flutter/src/semantics/semantics.dart@AttributedStringProperty@valueToString': (m.Scope scope, AttributedStringProperty target)=>target.valueToString,
'package:flutter/src/semantics/semantics.dart@SemanticsData@#as': (m.Scope scope, target)=>()=>target as SemanticsData,
'package:flutter/src/semantics/semantics.dart@SemanticsData@#is': (m.Scope scope, target)=>()=>target is SemanticsData,
'package:flutter/src/semantics/semantics.dart@SemanticsData@flags': (m.Scope scope, SemanticsData target)=>target.flags,
'package:flutter/src/semantics/semantics.dart@SemanticsData@actions': (m.Scope scope, SemanticsData target)=>target.actions,
'package:flutter/src/semantics/semantics.dart@SemanticsData@attributedLabel': (m.Scope scope, SemanticsData target)=>target.attributedLabel,
'package:flutter/src/semantics/semantics.dart@SemanticsData@attributedValue': (m.Scope scope, SemanticsData target)=>target.attributedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsData@attributedIncreasedValue': (m.Scope scope, SemanticsData target)=>target.attributedIncreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsData@attributedDecreasedValue': (m.Scope scope, SemanticsData target)=>target.attributedDecreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsData@attributedHint': (m.Scope scope, SemanticsData target)=>target.attributedHint,
'package:flutter/src/semantics/semantics.dart@SemanticsData@tooltip': (m.Scope scope, SemanticsData target)=>target.tooltip,
'package:flutter/src/semantics/semantics.dart@SemanticsData@textDirection': (m.Scope scope, SemanticsData target)=>target.textDirection,
'package:flutter/src/semantics/semantics.dart@SemanticsData@textSelection': (m.Scope scope, SemanticsData target)=>target.textSelection,
'package:flutter/src/semantics/semantics.dart@SemanticsData@scrollChildCount': (m.Scope scope, SemanticsData target)=>target.scrollChildCount,
'package:flutter/src/semantics/semantics.dart@SemanticsData@scrollIndex': (m.Scope scope, SemanticsData target)=>target.scrollIndex,
'package:flutter/src/semantics/semantics.dart@SemanticsData@scrollPosition': (m.Scope scope, SemanticsData target)=>target.scrollPosition,
'package:flutter/src/semantics/semantics.dart@SemanticsData@scrollExtentMax': (m.Scope scope, SemanticsData target)=>target.scrollExtentMax,
'package:flutter/src/semantics/semantics.dart@SemanticsData@scrollExtentMin': (m.Scope scope, SemanticsData target)=>target.scrollExtentMin,
'package:flutter/src/semantics/semantics.dart@SemanticsData@platformViewId': (m.Scope scope, SemanticsData target)=>target.platformViewId,
'package:flutter/src/semantics/semantics.dart@SemanticsData@maxValueLength': (m.Scope scope, SemanticsData target)=>target.maxValueLength,
'package:flutter/src/semantics/semantics.dart@SemanticsData@currentValueLength': (m.Scope scope, SemanticsData target)=>target.currentValueLength,
'package:flutter/src/semantics/semantics.dart@SemanticsData@rect': (m.Scope scope, SemanticsData target)=>target.rect,
'package:flutter/src/semantics/semantics.dart@SemanticsData@tags': (m.Scope scope, SemanticsData target)=>target.tags,
'package:flutter/src/semantics/semantics.dart@SemanticsData@transform': (m.Scope scope, SemanticsData target)=>target.transform,
'package:flutter/src/semantics/semantics.dart@SemanticsData@elevation': (m.Scope scope, SemanticsData target)=>target.elevation,
'package:flutter/src/semantics/semantics.dart@SemanticsData@thickness': (m.Scope scope, SemanticsData target)=>target.thickness,
'package:flutter/src/semantics/semantics.dart@SemanticsData@customSemanticsActionIds': (m.Scope scope, SemanticsData target)=>target.customSemanticsActionIds,
'package:flutter/src/semantics/semantics.dart@SemanticsData@label': (m.Scope scope, SemanticsData target)=>target.label,
'package:flutter/src/semantics/semantics.dart@SemanticsData@value': (m.Scope scope, SemanticsData target)=>target.value,
'package:flutter/src/semantics/semantics.dart@SemanticsData@increasedValue': (m.Scope scope, SemanticsData target)=>target.increasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsData@decreasedValue': (m.Scope scope, SemanticsData target)=>target.decreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsData@hint': (m.Scope scope, SemanticsData target)=>target.hint,
'package:flutter/src/semantics/semantics.dart@SemanticsData@hashCode': (m.Scope scope, SemanticsData target)=>target.hashCode,
'package:flutter/src/semantics/semantics.dart@SemanticsData@': (m.Scope scope)=>({ actions,  attributedDecreasedValue,  attributedHint,  attributedIncreasedValue,  attributedLabel,  attributedValue,  currentValueLength,  customSemanticsActionIds,  elevation,  flags,  maxValueLength,  platformViewId,  rect,  scrollChildCount,  scrollExtentMax,  scrollExtentMin,  scrollIndex,  scrollPosition,  tags,  textDirection,  textSelection,  thickness,  tooltip,  transform}){
return SemanticsData(actions:actions, attributedDecreasedValue:attributedDecreasedValue, attributedHint:attributedHint, attributedIncreasedValue:attributedIncreasedValue, attributedLabel:attributedLabel, attributedValue:attributedValue, currentValueLength:currentValueLength, customSemanticsActionIds:customSemanticsActionIds, elevation:elevation, flags:flags, maxValueLength:maxValueLength, platformViewId:platformViewId, rect:rect, scrollChildCount:scrollChildCount, scrollExtentMax:scrollExtentMax, scrollExtentMin:scrollExtentMin, scrollIndex:scrollIndex, scrollPosition:scrollPosition, tags:tags, textDirection:textDirection, textSelection:textSelection, thickness:thickness, tooltip:tooltip, transform:transform);
},
'package:flutter/src/semantics/semantics.dart@SemanticsData@hasFlag': (m.Scope scope, SemanticsData target)=>target.hasFlag,
'package:flutter/src/semantics/semantics.dart@SemanticsData@hasAction': (m.Scope scope, SemanticsData target)=>target.hasAction,
'package:flutter/src/semantics/semantics.dart@SemanticsData@toStringShort': (m.Scope scope, SemanticsData target)=>target.toStringShort,
'package:flutter/src/semantics/semantics.dart@SemanticsData@debugFillProperties': (m.Scope scope, SemanticsData target)=>target.debugFillProperties,
'package:flutter/src/semantics/semantics.dart@SemanticsData@==': (m.Scope scope, SemanticsData target)=>(other)=> target == other,
'package:flutter/src/semantics/semantics.dart@SemanticsHintOverrides@#as': (m.Scope scope, target)=>()=>target as SemanticsHintOverrides,
'package:flutter/src/semantics/semantics.dart@SemanticsHintOverrides@#is': (m.Scope scope, target)=>()=>target is SemanticsHintOverrides,
'package:flutter/src/semantics/semantics.dart@SemanticsHintOverrides@onTapHint': (m.Scope scope, SemanticsHintOverrides target)=>target.onTapHint,
'package:flutter/src/semantics/semantics.dart@SemanticsHintOverrides@onLongPressHint': (m.Scope scope, SemanticsHintOverrides target)=>target.onLongPressHint,
'package:flutter/src/semantics/semantics.dart@SemanticsHintOverrides@isNotEmpty': (m.Scope scope, SemanticsHintOverrides target)=>target.isNotEmpty,
'package:flutter/src/semantics/semantics.dart@SemanticsHintOverrides@hashCode': (m.Scope scope, SemanticsHintOverrides target)=>target.hashCode,
'package:flutter/src/semantics/semantics.dart@SemanticsHintOverrides@': (m.Scope scope)=>({ onLongPressHint,  onTapHint}){
return SemanticsHintOverrides(onLongPressHint:onLongPressHint, onTapHint:onTapHint);
},
'package:flutter/src/semantics/semantics.dart@SemanticsHintOverrides@==': (m.Scope scope, SemanticsHintOverrides target)=>(other)=> target == other,
'package:flutter/src/semantics/semantics.dart@SemanticsHintOverrides@debugFillProperties': (m.Scope scope, SemanticsHintOverrides target)=>target.debugFillProperties,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@#as': (m.Scope scope, target)=>()=>target as SemanticsProperties,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@#is': (m.Scope scope, target)=>()=>target is SemanticsProperties,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@enabled': (m.Scope scope, SemanticsProperties target)=>target.enabled,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@checked': (m.Scope scope, SemanticsProperties target)=>target.checked,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@mixed': (m.Scope scope, SemanticsProperties target)=>target.mixed,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@toggled': (m.Scope scope, SemanticsProperties target)=>target.toggled,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@selected': (m.Scope scope, SemanticsProperties target)=>target.selected,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@button': (m.Scope scope, SemanticsProperties target)=>target.button,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@link': (m.Scope scope, SemanticsProperties target)=>target.link,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@header': (m.Scope scope, SemanticsProperties target)=>target.header,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@textField': (m.Scope scope, SemanticsProperties target)=>target.textField,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@slider': (m.Scope scope, SemanticsProperties target)=>target.slider,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@keyboardKey': (m.Scope scope, SemanticsProperties target)=>target.keyboardKey,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@readOnly': (m.Scope scope, SemanticsProperties target)=>target.readOnly,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@focusable': (m.Scope scope, SemanticsProperties target)=>target.focusable,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@focused': (m.Scope scope, SemanticsProperties target)=>target.focused,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@inMutuallyExclusiveGroup': (m.Scope scope, SemanticsProperties target)=>target.inMutuallyExclusiveGroup,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@hidden': (m.Scope scope, SemanticsProperties target)=>target.hidden,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@obscured': (m.Scope scope, SemanticsProperties target)=>target.obscured,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@multiline': (m.Scope scope, SemanticsProperties target)=>target.multiline,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@scopesRoute': (m.Scope scope, SemanticsProperties target)=>target.scopesRoute,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@namesRoute': (m.Scope scope, SemanticsProperties target)=>target.namesRoute,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@image': (m.Scope scope, SemanticsProperties target)=>target.image,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@liveRegion': (m.Scope scope, SemanticsProperties target)=>target.liveRegion,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@maxValueLength': (m.Scope scope, SemanticsProperties target)=>target.maxValueLength,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@currentValueLength': (m.Scope scope, SemanticsProperties target)=>target.currentValueLength,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@label': (m.Scope scope, SemanticsProperties target)=>target.label,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@attributedLabel': (m.Scope scope, SemanticsProperties target)=>target.attributedLabel,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@value': (m.Scope scope, SemanticsProperties target)=>target.value,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@attributedValue': (m.Scope scope, SemanticsProperties target)=>target.attributedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@increasedValue': (m.Scope scope, SemanticsProperties target)=>target.increasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@attributedIncreasedValue': (m.Scope scope, SemanticsProperties target)=>target.attributedIncreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@decreasedValue': (m.Scope scope, SemanticsProperties target)=>target.decreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@attributedDecreasedValue': (m.Scope scope, SemanticsProperties target)=>target.attributedDecreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@hint': (m.Scope scope, SemanticsProperties target)=>target.hint,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@attributedHint': (m.Scope scope, SemanticsProperties target)=>target.attributedHint,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@tooltip': (m.Scope scope, SemanticsProperties target)=>target.tooltip,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@hintOverrides': (m.Scope scope, SemanticsProperties target)=>target.hintOverrides,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@textDirection': (m.Scope scope, SemanticsProperties target)=>target.textDirection,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@sortKey': (m.Scope scope, SemanticsProperties target)=>target.sortKey,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@tagForChildren': (m.Scope scope, SemanticsProperties target)=>target.tagForChildren,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onTap': (m.Scope scope, SemanticsProperties target)=>target.onTap,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onLongPress': (m.Scope scope, SemanticsProperties target)=>target.onLongPress,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onScrollLeft': (m.Scope scope, SemanticsProperties target)=>target.onScrollLeft,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onScrollRight': (m.Scope scope, SemanticsProperties target)=>target.onScrollRight,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onScrollUp': (m.Scope scope, SemanticsProperties target)=>target.onScrollUp,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onScrollDown': (m.Scope scope, SemanticsProperties target)=>target.onScrollDown,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onIncrease': (m.Scope scope, SemanticsProperties target)=>target.onIncrease,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onDecrease': (m.Scope scope, SemanticsProperties target)=>target.onDecrease,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onCopy': (m.Scope scope, SemanticsProperties target)=>target.onCopy,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onCut': (m.Scope scope, SemanticsProperties target)=>target.onCut,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onPaste': (m.Scope scope, SemanticsProperties target)=>target.onPaste,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onMoveCursorForwardByCharacter': (m.Scope scope, SemanticsProperties target)=>target.onMoveCursorForwardByCharacter,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onMoveCursorBackwardByCharacter': (m.Scope scope, SemanticsProperties target)=>target.onMoveCursorBackwardByCharacter,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onMoveCursorForwardByWord': (m.Scope scope, SemanticsProperties target)=>target.onMoveCursorForwardByWord,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onMoveCursorBackwardByWord': (m.Scope scope, SemanticsProperties target)=>target.onMoveCursorBackwardByWord,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onSetSelection': (m.Scope scope, SemanticsProperties target)=>target.onSetSelection,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onSetText': (m.Scope scope, SemanticsProperties target)=>target.onSetText,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onDidGainAccessibilityFocus': (m.Scope scope, SemanticsProperties target)=>target.onDidGainAccessibilityFocus,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onDidLoseAccessibilityFocus': (m.Scope scope, SemanticsProperties target)=>target.onDidLoseAccessibilityFocus,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@onDismiss': (m.Scope scope, SemanticsProperties target)=>target.onDismiss,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@customSemanticsActions': (m.Scope scope, SemanticsProperties target)=>target.customSemanticsActions,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@': (m.Scope scope)=>({ attributedDecreasedValue,  attributedHint,  attributedIncreasedValue,  attributedLabel,  attributedValue,  button,  checked,  currentValueLength,  customSemanticsActions,  decreasedValue,  enabled,  focusable,  focused,  header,  hidden,  hint,  hintOverrides,  image,  inMutuallyExclusiveGroup,  increasedValue,  keyboardKey,  label,  link,  liveRegion,  maxValueLength,  mixed,  multiline,  namesRoute,  obscured,  onCopy,  onCut,  onDecrease,  onDidGainAccessibilityFocus,  onDidLoseAccessibilityFocus,  onDismiss,  onIncrease,  onLongPress,  onMoveCursorBackwardByCharacter,  onMoveCursorBackwardByWord,  onMoveCursorForwardByCharacter,  onMoveCursorForwardByWord,  onPaste,  onScrollDown,  onScrollLeft,  onScrollRight,  onScrollUp,  onSetSelection,  onSetText,  onTap,  readOnly,  scopesRoute,  selected,  slider,  sortKey,  tagForChildren,  textDirection,  textField,  toggled,  tooltip,  value}){
void onCopyProxy() {
 engine.callFunctionPointer(scope, onCopy!,[], {});
}

void onCutProxy() {
 engine.callFunctionPointer(scope, onCut!,[], {});
}

void onDecreaseProxy() {
 engine.callFunctionPointer(scope, onDecrease!,[], {});
}

void onDidGainAccessibilityFocusProxy() {
 engine.callFunctionPointer(scope, onDidGainAccessibilityFocus!,[], {});
}

void onDidLoseAccessibilityFocusProxy() {
 engine.callFunctionPointer(scope, onDidLoseAccessibilityFocus!,[], {});
}

void onDismissProxy() {
 engine.callFunctionPointer(scope, onDismiss!,[], {});
}

void onIncreaseProxy() {
 engine.callFunctionPointer(scope, onIncrease!,[], {});
}

void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onMoveCursorBackwardByCharacterProxy( extendSelection) {
 engine.callFunctionPointer(scope, onMoveCursorBackwardByCharacter!,[extendSelection], {});
}

void onMoveCursorBackwardByWordProxy( extendSelection) {
 engine.callFunctionPointer(scope, onMoveCursorBackwardByWord!,[extendSelection], {});
}

void onMoveCursorForwardByCharacterProxy( extendSelection) {
 engine.callFunctionPointer(scope, onMoveCursorForwardByCharacter!,[extendSelection], {});
}

void onMoveCursorForwardByWordProxy( extendSelection) {
 engine.callFunctionPointer(scope, onMoveCursorForwardByWord!,[extendSelection], {});
}

void onPasteProxy() {
 engine.callFunctionPointer(scope, onPaste!,[], {});
}

void onScrollDownProxy() {
 engine.callFunctionPointer(scope, onScrollDown!,[], {});
}

void onScrollLeftProxy() {
 engine.callFunctionPointer(scope, onScrollLeft!,[], {});
}

void onScrollRightProxy() {
 engine.callFunctionPointer(scope, onScrollRight!,[], {});
}

void onScrollUpProxy() {
 engine.callFunctionPointer(scope, onScrollUp!,[], {});
}

void onSetSelectionProxy( selection) {
 engine.callFunctionPointer(scope, onSetSelection!,[selection], {});
}

void onSetTextProxy( text) {
 engine.callFunctionPointer(scope, onSetText!,[text], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return SemanticsProperties(attributedDecreasedValue:attributedDecreasedValue, attributedHint:attributedHint, attributedIncreasedValue:attributedIncreasedValue, attributedLabel:attributedLabel, attributedValue:attributedValue, button:button, checked:checked, currentValueLength:currentValueLength, customSemanticsActions:customSemanticsActions, decreasedValue:decreasedValue, enabled:enabled, focusable:focusable, focused:focused, header:header, hidden:hidden, hint:hint, hintOverrides:hintOverrides, image:image, inMutuallyExclusiveGroup:inMutuallyExclusiveGroup, increasedValue:increasedValue, keyboardKey:keyboardKey, label:label, link:link, liveRegion:liveRegion, maxValueLength:maxValueLength, mixed:mixed, multiline:multiline, namesRoute:namesRoute, obscured:obscured, onCopy:onCopy == null ? null :onCopyProxy, onCut:onCut == null ? null :onCutProxy, onDecrease:onDecrease == null ? null :onDecreaseProxy, onDidGainAccessibilityFocus:onDidGainAccessibilityFocus == null ? null :onDidGainAccessibilityFocusProxy, onDidLoseAccessibilityFocus:onDidLoseAccessibilityFocus == null ? null :onDidLoseAccessibilityFocusProxy, onDismiss:onDismiss == null ? null :onDismissProxy, onIncrease:onIncrease == null ? null :onIncreaseProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onMoveCursorBackwardByCharacter:onMoveCursorBackwardByCharacter == null ? null :onMoveCursorBackwardByCharacterProxy, onMoveCursorBackwardByWord:onMoveCursorBackwardByWord == null ? null :onMoveCursorBackwardByWordProxy, onMoveCursorForwardByCharacter:onMoveCursorForwardByCharacter == null ? null :onMoveCursorForwardByCharacterProxy, onMoveCursorForwardByWord:onMoveCursorForwardByWord == null ? null :onMoveCursorForwardByWordProxy, onPaste:onPaste == null ? null :onPasteProxy, onScrollDown:onScrollDown == null ? null :onScrollDownProxy, onScrollLeft:onScrollLeft == null ? null :onScrollLeftProxy, onScrollRight:onScrollRight == null ? null :onScrollRightProxy, onScrollUp:onScrollUp == null ? null :onScrollUpProxy, onSetSelection:onSetSelection == null ? null :onSetSelectionProxy, onSetText:onSetText == null ? null :onSetTextProxy, onTap:onTap == null ? null :onTapProxy, readOnly:readOnly, scopesRoute:scopesRoute, selected:selected, slider:slider, sortKey:sortKey, tagForChildren:tagForChildren, textDirection:textDirection, textField:textField, toggled:toggled, tooltip:tooltip, value:value);
},
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@debugFillProperties': (m.Scope scope, SemanticsProperties target)=>target.debugFillProperties,
'package:flutter/src/semantics/semantics.dart@SemanticsProperties@toStringShort': (m.Scope scope, SemanticsProperties target)=>target.toStringShort,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@#as': (m.Scope scope, target)=>()=>target as SemanticsNode,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@#is': (m.Scope scope, target)=>()=>target is SemanticsNode,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@key': (m.Scope scope, SemanticsNode target)=>target.key,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@parentSemanticsClipRect': (m.Scope scope, SemanticsNode target)=>target.parentSemanticsClipRect,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@parentSemanticsClipRect:set': (m.Scope scope, SemanticsNode target)=>(other)=>target.parentSemanticsClipRect=other,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@parentPaintClipRect': (m.Scope scope, SemanticsNode target)=>target.parentPaintClipRect,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@parentPaintClipRect:set': (m.Scope scope, SemanticsNode target)=>(other)=>target.parentPaintClipRect=other,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@elevationAdjustment': (m.Scope scope, SemanticsNode target)=>target.elevationAdjustment,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@elevationAdjustment:set': (m.Scope scope, SemanticsNode target)=>(other)=>target.elevationAdjustment=other,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@indexInParent': (m.Scope scope, SemanticsNode target)=>target.indexInParent,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@indexInParent:set': (m.Scope scope, SemanticsNode target)=>(other)=>target.indexInParent=other,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@tags': (m.Scope scope, SemanticsNode target)=>target.tags,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@tags:set': (m.Scope scope, SemanticsNode target)=>(other)=>target.tags=other,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@id': (m.Scope scope, SemanticsNode target)=>target.id,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@transform': (m.Scope scope, SemanticsNode target)=>target.transform,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@transform:set': (m.Scope scope, SemanticsNode target)=>(other)=>target.transform=other,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@rect': (m.Scope scope, SemanticsNode target)=>target.rect,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@rect:set': (m.Scope scope, SemanticsNode target)=>(other)=>target.rect=other,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@isInvisible': (m.Scope scope, SemanticsNode target)=>target.isInvisible,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@isMergedIntoParent': (m.Scope scope, SemanticsNode target)=>target.isMergedIntoParent,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@isMergedIntoParent:set': (m.Scope scope, SemanticsNode target)=>(other)=>target.isMergedIntoParent=other,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@isPartOfNodeMerging': (m.Scope scope, SemanticsNode target)=>target.isPartOfNodeMerging,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@mergeAllDescendantsIntoThisNode': (m.Scope scope, SemanticsNode target)=>target.mergeAllDescendantsIntoThisNode,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@hasChildren': (m.Scope scope, SemanticsNode target)=>target.hasChildren,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@childrenCount': (m.Scope scope, SemanticsNode target)=>target.childrenCount,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@owner': (m.Scope scope, SemanticsNode target)=>target.owner,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@parent': (m.Scope scope, SemanticsNode target)=>target.parent,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@label': (m.Scope scope, SemanticsNode target)=>target.label,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@attributedLabel': (m.Scope scope, SemanticsNode target)=>target.attributedLabel,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@value': (m.Scope scope, SemanticsNode target)=>target.value,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@attributedValue': (m.Scope scope, SemanticsNode target)=>target.attributedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@increasedValue': (m.Scope scope, SemanticsNode target)=>target.increasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@attributedIncreasedValue': (m.Scope scope, SemanticsNode target)=>target.attributedIncreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@decreasedValue': (m.Scope scope, SemanticsNode target)=>target.decreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@attributedDecreasedValue': (m.Scope scope, SemanticsNode target)=>target.attributedDecreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@hint': (m.Scope scope, SemanticsNode target)=>target.hint,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@attributedHint': (m.Scope scope, SemanticsNode target)=>target.attributedHint,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@tooltip': (m.Scope scope, SemanticsNode target)=>target.tooltip,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@elevation': (m.Scope scope, SemanticsNode target)=>target.elevation,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@thickness': (m.Scope scope, SemanticsNode target)=>target.thickness,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@hintOverrides': (m.Scope scope, SemanticsNode target)=>target.hintOverrides,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@textDirection': (m.Scope scope, SemanticsNode target)=>target.textDirection,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@sortKey': (m.Scope scope, SemanticsNode target)=>target.sortKey,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@textSelection': (m.Scope scope, SemanticsNode target)=>target.textSelection,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@isMultiline': (m.Scope scope, SemanticsNode target)=>target.isMultiline,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@scrollChildCount': (m.Scope scope, SemanticsNode target)=>target.scrollChildCount,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@scrollIndex': (m.Scope scope, SemanticsNode target)=>target.scrollIndex,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@scrollPosition': (m.Scope scope, SemanticsNode target)=>target.scrollPosition,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@scrollExtentMax': (m.Scope scope, SemanticsNode target)=>target.scrollExtentMax,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@scrollExtentMin': (m.Scope scope, SemanticsNode target)=>target.scrollExtentMin,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@platformViewId': (m.Scope scope, SemanticsNode target)=>target.platformViewId,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@maxValueLength': (m.Scope scope, SemanticsNode target)=>target.maxValueLength,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@currentValueLength': (m.Scope scope, SemanticsNode target)=>target.currentValueLength,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@': (m.Scope scope)=>({ key,  showOnScreen}){
void showOnScreenProxy() {
 engine.callFunctionPointer(scope, showOnScreen!,[], {});
}

return SemanticsNode(key:key, showOnScreen:showOnScreen == null ? null :showOnScreenProxy);
},
'package:flutter/src/semantics/semantics.dart@SemanticsNode@root': (m.Scope scope)=>({ key,  owner,  showOnScreen}){
void showOnScreenProxy() {
 engine.callFunctionPointer(scope, showOnScreen!,[], {});
}

return SemanticsNode.root(key:key, owner:owner, showOnScreen:showOnScreen == null ? null :showOnScreenProxy);
},
'package:flutter/src/semantics/semantics.dart@SemanticsNode@visitChildren': (m.Scope scope, SemanticsNode target)=>( visitor){
bool visitorProxy( node) {
return  engine.callFunctionPointer(scope, visitor!,[node], {});
}

target.visitChildren(visitorProxy);
},
'package:flutter/src/semantics/semantics.dart@SemanticsNode@redepthChildren': (m.Scope scope, SemanticsNode target)=>target.redepthChildren,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@attach': (m.Scope scope, SemanticsNode target)=>target.attach,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@detach': (m.Scope scope, SemanticsNode target)=>target.detach,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@isTagged': (m.Scope scope, SemanticsNode target)=>target.isTagged,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@hasFlag': (m.Scope scope, SemanticsNode target)=>target.hasFlag,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@updateWith': (m.Scope scope, SemanticsNode target)=>target.updateWith,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@getSemanticsData': (m.Scope scope, SemanticsNode target)=>target.getSemanticsData,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@sendEvent': (m.Scope scope, SemanticsNode target)=>target.sendEvent,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@toStringShort': (m.Scope scope, SemanticsNode target)=>target.toStringShort,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@debugFillProperties': (m.Scope scope, SemanticsNode target)=>target.debugFillProperties,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@toStringDeep': (m.Scope scope, SemanticsNode target)=>target.toStringDeep,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@toDiagnosticsNode': (m.Scope scope, SemanticsNode target)=>target.toDiagnosticsNode,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@debugDescribeChildren': (m.Scope scope, SemanticsNode target)=>target.debugDescribeChildren,
'package:flutter/src/semantics/semantics.dart@SemanticsNode@debugListChildrenInOrder': (m.Scope scope, SemanticsNode target)=>target.debugListChildrenInOrder,
'package:flutter/src/semantics/semantics.dart@SemanticsOwner@#as': (m.Scope scope, target)=>()=>target as SemanticsOwner,
'package:flutter/src/semantics/semantics.dart@SemanticsOwner@#is': (m.Scope scope, target)=>()=>target is SemanticsOwner,
'package:flutter/src/semantics/semantics.dart@SemanticsOwner@onSemanticsUpdate': (m.Scope scope, SemanticsOwner target)=>target.onSemanticsUpdate,
'package:flutter/src/semantics/semantics.dart@SemanticsOwner@rootSemanticsNode': (m.Scope scope, SemanticsOwner target)=>target.rootSemanticsNode,
'package:flutter/src/semantics/semantics.dart@SemanticsOwner@': (m.Scope scope)=>({ onSemanticsUpdate}){
void onSemanticsUpdateProxy( update) {
 engine.callFunctionPointer(scope, onSemanticsUpdate!,[update], {});
}

return SemanticsOwner(onSemanticsUpdate:onSemanticsUpdateProxy);
},
'package:flutter/src/semantics/semantics.dart@SemanticsOwner@dispose': (m.Scope scope, SemanticsOwner target)=>target.dispose,
'package:flutter/src/semantics/semantics.dart@SemanticsOwner@sendSemanticsUpdate': (m.Scope scope, SemanticsOwner target)=>target.sendSemanticsUpdate,
'package:flutter/src/semantics/semantics.dart@SemanticsOwner@performAction': (m.Scope scope, SemanticsOwner target)=>target.performAction,
'package:flutter/src/semantics/semantics.dart@SemanticsOwner@performActionAt': (m.Scope scope, SemanticsOwner target)=>target.performActionAt,
'package:flutter/src/semantics/semantics.dart@SemanticsOwner@toString': (m.Scope scope, SemanticsOwner target)=>target.toString,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@#as': (m.Scope scope, target)=>()=>target as SemanticsConfiguration,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@#is': (m.Scope scope, target)=>()=>target is SemanticsConfiguration,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@explicitChildNodes': (m.Scope scope, SemanticsConfiguration target)=>target.explicitChildNodes,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@explicitChildNodes:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.explicitChildNodes=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isBlockingSemanticsOfPreviouslyPaintedNodes': (m.Scope scope, SemanticsConfiguration target)=>target.isBlockingSemanticsOfPreviouslyPaintedNodes,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isBlockingSemanticsOfPreviouslyPaintedNodes:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isBlockingSemanticsOfPreviouslyPaintedNodes=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isSemanticBoundary': (m.Scope scope, SemanticsConfiguration target)=>target.isSemanticBoundary,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isSemanticBoundary:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isSemanticBoundary=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@hasBeenAnnotated': (m.Scope scope, SemanticsConfiguration target)=>target.hasBeenAnnotated,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onTap': (m.Scope scope, SemanticsConfiguration target)=>target.onTap,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onTap:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onTap=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onLongPress': (m.Scope scope, SemanticsConfiguration target)=>target.onLongPress,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onLongPress:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onLongPress=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onScrollLeft': (m.Scope scope, SemanticsConfiguration target)=>target.onScrollLeft,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onScrollLeft:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onScrollLeft=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onDismiss': (m.Scope scope, SemanticsConfiguration target)=>target.onDismiss,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onDismiss:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onDismiss=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onScrollRight': (m.Scope scope, SemanticsConfiguration target)=>target.onScrollRight,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onScrollRight:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onScrollRight=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onScrollUp': (m.Scope scope, SemanticsConfiguration target)=>target.onScrollUp,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onScrollUp:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onScrollUp=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onScrollDown': (m.Scope scope, SemanticsConfiguration target)=>target.onScrollDown,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onScrollDown:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onScrollDown=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onIncrease': (m.Scope scope, SemanticsConfiguration target)=>target.onIncrease,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onIncrease:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onIncrease=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onDecrease': (m.Scope scope, SemanticsConfiguration target)=>target.onDecrease,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onDecrease:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onDecrease=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onCopy': (m.Scope scope, SemanticsConfiguration target)=>target.onCopy,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onCopy:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onCopy=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onCut': (m.Scope scope, SemanticsConfiguration target)=>target.onCut,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onCut:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onCut=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onPaste': (m.Scope scope, SemanticsConfiguration target)=>target.onPaste,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onPaste:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onPaste=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onShowOnScreen': (m.Scope scope, SemanticsConfiguration target)=>target.onShowOnScreen,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onShowOnScreen:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onShowOnScreen=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onMoveCursorForwardByCharacter': (m.Scope scope, SemanticsConfiguration target)=>target.onMoveCursorForwardByCharacter,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onMoveCursorForwardByCharacter:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onMoveCursorForwardByCharacter=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onMoveCursorBackwardByCharacter': (m.Scope scope, SemanticsConfiguration target)=>target.onMoveCursorBackwardByCharacter,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onMoveCursorBackwardByCharacter:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onMoveCursorBackwardByCharacter=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onMoveCursorForwardByWord': (m.Scope scope, SemanticsConfiguration target)=>target.onMoveCursorForwardByWord,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onMoveCursorForwardByWord:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onMoveCursorForwardByWord=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onMoveCursorBackwardByWord': (m.Scope scope, SemanticsConfiguration target)=>target.onMoveCursorBackwardByWord,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onMoveCursorBackwardByWord:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onMoveCursorBackwardByWord=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onSetSelection': (m.Scope scope, SemanticsConfiguration target)=>target.onSetSelection,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onSetSelection:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onSetSelection=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onSetText': (m.Scope scope, SemanticsConfiguration target)=>target.onSetText,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onSetText:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onSetText=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onDidGainAccessibilityFocus': (m.Scope scope, SemanticsConfiguration target)=>target.onDidGainAccessibilityFocus,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onDidGainAccessibilityFocus:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onDidGainAccessibilityFocus=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onDidLoseAccessibilityFocus': (m.Scope scope, SemanticsConfiguration target)=>target.onDidLoseAccessibilityFocus,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@onDidLoseAccessibilityFocus:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.onDidLoseAccessibilityFocus=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@childConfigurationsDelegate': (m.Scope scope, SemanticsConfiguration target)=>target.childConfigurationsDelegate,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@childConfigurationsDelegate:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.childConfigurationsDelegate=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@sortKey': (m.Scope scope, SemanticsConfiguration target)=>target.sortKey,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@sortKey:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.sortKey=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@indexInParent': (m.Scope scope, SemanticsConfiguration target)=>target.indexInParent,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@indexInParent:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.indexInParent=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scrollChildCount': (m.Scope scope, SemanticsConfiguration target)=>target.scrollChildCount,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scrollChildCount:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.scrollChildCount=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scrollIndex': (m.Scope scope, SemanticsConfiguration target)=>target.scrollIndex,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scrollIndex:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.scrollIndex=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@platformViewId': (m.Scope scope, SemanticsConfiguration target)=>target.platformViewId,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@platformViewId:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.platformViewId=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@maxValueLength': (m.Scope scope, SemanticsConfiguration target)=>target.maxValueLength,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@maxValueLength:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.maxValueLength=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@currentValueLength': (m.Scope scope, SemanticsConfiguration target)=>target.currentValueLength,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@currentValueLength:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.currentValueLength=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isMergingSemanticsOfDescendants': (m.Scope scope, SemanticsConfiguration target)=>target.isMergingSemanticsOfDescendants,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isMergingSemanticsOfDescendants:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isMergingSemanticsOfDescendants=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@customSemanticsActions': (m.Scope scope, SemanticsConfiguration target)=>target.customSemanticsActions,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@customSemanticsActions:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.customSemanticsActions=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@label': (m.Scope scope, SemanticsConfiguration target)=>target.label,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@label:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.label=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@attributedLabel': (m.Scope scope, SemanticsConfiguration target)=>target.attributedLabel,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@attributedLabel:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.attributedLabel=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@value': (m.Scope scope, SemanticsConfiguration target)=>target.value,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@value:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.value=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@attributedValue': (m.Scope scope, SemanticsConfiguration target)=>target.attributedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@attributedValue:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.attributedValue=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@increasedValue': (m.Scope scope, SemanticsConfiguration target)=>target.increasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@increasedValue:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.increasedValue=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@attributedIncreasedValue': (m.Scope scope, SemanticsConfiguration target)=>target.attributedIncreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@attributedIncreasedValue:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.attributedIncreasedValue=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@decreasedValue': (m.Scope scope, SemanticsConfiguration target)=>target.decreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@decreasedValue:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.decreasedValue=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@attributedDecreasedValue': (m.Scope scope, SemanticsConfiguration target)=>target.attributedDecreasedValue,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@attributedDecreasedValue:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.attributedDecreasedValue=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@hint': (m.Scope scope, SemanticsConfiguration target)=>target.hint,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@hint:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.hint=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@attributedHint': (m.Scope scope, SemanticsConfiguration target)=>target.attributedHint,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@attributedHint:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.attributedHint=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@tooltip': (m.Scope scope, SemanticsConfiguration target)=>target.tooltip,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@tooltip:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.tooltip=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@hintOverrides': (m.Scope scope, SemanticsConfiguration target)=>target.hintOverrides,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@hintOverrides:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.hintOverrides=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@elevation': (m.Scope scope, SemanticsConfiguration target)=>target.elevation,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@elevation:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.elevation=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@thickness': (m.Scope scope, SemanticsConfiguration target)=>target.thickness,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@thickness:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.thickness=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scopesRoute': (m.Scope scope, SemanticsConfiguration target)=>target.scopesRoute,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scopesRoute:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.scopesRoute=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@namesRoute': (m.Scope scope, SemanticsConfiguration target)=>target.namesRoute,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@namesRoute:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.namesRoute=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isImage': (m.Scope scope, SemanticsConfiguration target)=>target.isImage,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isImage:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isImage=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@liveRegion': (m.Scope scope, SemanticsConfiguration target)=>target.liveRegion,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@liveRegion:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.liveRegion=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@textDirection': (m.Scope scope, SemanticsConfiguration target)=>target.textDirection,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@textDirection:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.textDirection=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isSelected': (m.Scope scope, SemanticsConfiguration target)=>target.isSelected,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isSelected:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isSelected=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isEnabled': (m.Scope scope, SemanticsConfiguration target)=>target.isEnabled,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isEnabled:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isEnabled=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isChecked': (m.Scope scope, SemanticsConfiguration target)=>target.isChecked,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isChecked:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isChecked=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isCheckStateMixed': (m.Scope scope, SemanticsConfiguration target)=>target.isCheckStateMixed,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isCheckStateMixed:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isCheckStateMixed=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isToggled': (m.Scope scope, SemanticsConfiguration target)=>target.isToggled,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isToggled:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isToggled=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isInMutuallyExclusiveGroup': (m.Scope scope, SemanticsConfiguration target)=>target.isInMutuallyExclusiveGroup,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isInMutuallyExclusiveGroup:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isInMutuallyExclusiveGroup=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isFocusable': (m.Scope scope, SemanticsConfiguration target)=>target.isFocusable,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isFocusable:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isFocusable=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isFocused': (m.Scope scope, SemanticsConfiguration target)=>target.isFocused,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isFocused:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isFocused=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isButton': (m.Scope scope, SemanticsConfiguration target)=>target.isButton,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isButton:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isButton=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isLink': (m.Scope scope, SemanticsConfiguration target)=>target.isLink,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isLink:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isLink=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isHeader': (m.Scope scope, SemanticsConfiguration target)=>target.isHeader,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isHeader:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isHeader=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isSlider': (m.Scope scope, SemanticsConfiguration target)=>target.isSlider,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isSlider:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isSlider=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isKeyboardKey': (m.Scope scope, SemanticsConfiguration target)=>target.isKeyboardKey,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isKeyboardKey:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isKeyboardKey=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isHidden': (m.Scope scope, SemanticsConfiguration target)=>target.isHidden,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isHidden:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isHidden=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isTextField': (m.Scope scope, SemanticsConfiguration target)=>target.isTextField,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isTextField:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isTextField=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isReadOnly': (m.Scope scope, SemanticsConfiguration target)=>target.isReadOnly,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isReadOnly:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isReadOnly=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isObscured': (m.Scope scope, SemanticsConfiguration target)=>target.isObscured,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isObscured:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isObscured=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isMultiline': (m.Scope scope, SemanticsConfiguration target)=>target.isMultiline,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isMultiline:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.isMultiline=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@hasImplicitScrolling': (m.Scope scope, SemanticsConfiguration target)=>target.hasImplicitScrolling,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@hasImplicitScrolling:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.hasImplicitScrolling=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@textSelection': (m.Scope scope, SemanticsConfiguration target)=>target.textSelection,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@textSelection:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.textSelection=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scrollPosition': (m.Scope scope, SemanticsConfiguration target)=>target.scrollPosition,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scrollPosition:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.scrollPosition=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scrollExtentMax': (m.Scope scope, SemanticsConfiguration target)=>target.scrollExtentMax,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scrollExtentMax:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.scrollExtentMax=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scrollExtentMin': (m.Scope scope, SemanticsConfiguration target)=>target.scrollExtentMin,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@scrollExtentMin:set': (m.Scope scope, SemanticsConfiguration target)=>(other)=>target.scrollExtentMin=other,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@tagsForChildren': (m.Scope scope, SemanticsConfiguration target)=>target.tagsForChildren,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@': (m.Scope scope)=>(){
return SemanticsConfiguration();
},
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@getActionHandler': (m.Scope scope, SemanticsConfiguration target)=>target.getActionHandler,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@tagsChildrenWith': (m.Scope scope, SemanticsConfiguration target)=>target.tagsChildrenWith,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@addTagForChildren': (m.Scope scope, SemanticsConfiguration target)=>target.addTagForChildren,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@isCompatibleWith': (m.Scope scope, SemanticsConfiguration target)=>target.isCompatibleWith,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@absorb': (m.Scope scope, SemanticsConfiguration target)=>target.absorb,
'package:flutter/src/semantics/semantics.dart@SemanticsConfiguration@copy': (m.Scope scope, SemanticsConfiguration target)=>target.copy,
'package:flutter/src/semantics/semantics.dart@SemanticsSortKey@#as': (m.Scope scope, target)=>()=>target as SemanticsSortKey,
'package:flutter/src/semantics/semantics.dart@SemanticsSortKey@#is': (m.Scope scope, target)=>()=>target is SemanticsSortKey,
'package:flutter/src/semantics/semantics.dart@SemanticsSortKey@name': (m.Scope scope, SemanticsSortKey target)=>target.name,
'package:flutter/src/semantics/semantics.dart@SemanticsSortKey@compareTo': (m.Scope scope, SemanticsSortKey target)=>target.compareTo,
'package:flutter/src/semantics/semantics.dart@SemanticsSortKey@doCompare': (m.Scope scope, SemanticsSortKey target)=>target.doCompare,
'package:flutter/src/semantics/semantics.dart@SemanticsSortKey@debugFillProperties': (m.Scope scope, SemanticsSortKey target)=>target.debugFillProperties,
'package:flutter/src/semantics/semantics.dart@OrdinalSortKey@#as': (m.Scope scope, target)=>()=>target as OrdinalSortKey,
'package:flutter/src/semantics/semantics.dart@OrdinalSortKey@#is': (m.Scope scope, target)=>()=>target is OrdinalSortKey,
'package:flutter/src/semantics/semantics.dart@OrdinalSortKey@order': (m.Scope scope, OrdinalSortKey target)=>target.order,
'package:flutter/src/semantics/semantics.dart@OrdinalSortKey@': (m.Scope scope)=>( order, { name}){
return OrdinalSortKey(order, name:name);
},
'package:flutter/src/semantics/semantics.dart@OrdinalSortKey@doCompare': (m.Scope scope, OrdinalSortKey target)=>target.doCompare,
'package:flutter/src/semantics/semantics.dart@OrdinalSortKey@debugFillProperties': (m.Scope scope, OrdinalSortKey target)=>target.debugFillProperties,
'package:flutter/src/semantics/semantics.dart@@debugResetSemanticsIdCounter': (m.Scope scope)=>debugResetSemanticsIdCounter,

};
}