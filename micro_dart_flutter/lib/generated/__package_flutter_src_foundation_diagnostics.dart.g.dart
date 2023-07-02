import 'package:flutter/src/foundation/diagnostics.dart';
import 'dart:math';
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/constants.dart';
import 'package:flutter/src/foundation/debug.dart';
import 'package:flutter/src/foundation/math.dart' show clampDouble;
import 'package:flutter/src/foundation/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/foundation/diagnostics.dart@@sparseTextConfiguration':
        (m.Scope scope) => sparseTextConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@@dashedTextConfiguration':
        (m.Scope scope) => dashedTextConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@@denseTextConfiguration':
        (m.Scope scope) => denseTextConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@@transitionTextConfiguration':
        (m.Scope scope) => transitionTextConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@@errorTextConfiguration':
        (m.Scope scope) => errorTextConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@@whitespaceTextConfiguration':
        (m.Scope scope) => whitespaceTextConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@@flatTextConfiguration':
        (m.Scope scope) => flatTextConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@@singleLineTextConfiguration':
        (m.Scope scope) => singleLineTextConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@@errorPropertyTextConfiguration':
        (m.Scope scope) => errorPropertyTextConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@@shallowTextConfiguration':
        (m.Scope scope) => shallowTextConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@@kNoDefaultValue':
        (m.Scope scope) => kNoDefaultValue,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@#as':
        (m.Scope scope, target) => () => target as TextTreeConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@#is':
        (m.Scope scope, target) => () => target is TextTreeConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@prefixLineOne':
        (m.Scope scope, TextTreeConfiguration target) => target.prefixLineOne,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@suffixLineOne':
        (m.Scope scope, TextTreeConfiguration target) => target.suffixLineOne,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@prefixOtherLines':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.prefixOtherLines,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@prefixLastChildLineOne':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.prefixLastChildLineOne,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@prefixOtherLinesRootNode':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.prefixOtherLinesRootNode,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@propertyPrefixIfChildren':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.propertyPrefixIfChildren,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@propertyPrefixNoChildren':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.propertyPrefixNoChildren,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@linkCharacter':
        (m.Scope scope, TextTreeConfiguration target) => target.linkCharacter,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@childLinkSpace':
        (m.Scope scope, TextTreeConfiguration target) => target.childLinkSpace,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@lineBreak':
        (m.Scope scope, TextTreeConfiguration target) => target.lineBreak,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@lineBreakProperties':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.lineBreakProperties,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@beforeName':
        (m.Scope scope, TextTreeConfiguration target) => target.beforeName,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@afterName':
        (m.Scope scope, TextTreeConfiguration target) => target.afterName,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@afterDescriptionIfBody':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.afterDescriptionIfBody,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@afterDescription':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.afterDescription,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@beforeProperties':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.beforeProperties,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@afterProperties':
        (m.Scope scope, TextTreeConfiguration target) => target.afterProperties,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@mandatoryAfterProperties':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.mandatoryAfterProperties,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@propertySeparator':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.propertySeparator,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@bodyIndent':
        (m.Scope scope, TextTreeConfiguration target) => target.bodyIndent,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@showChildren':
        (m.Scope scope, TextTreeConfiguration target) => target.showChildren,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@addBlankLineIfNoChildren':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.addBlankLineIfNoChildren,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@isNameOnOwnLine':
        (m.Scope scope, TextTreeConfiguration target) => target.isNameOnOwnLine,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@footer':
        (m.Scope scope, TextTreeConfiguration target) => target.footer,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@mandatoryFooter':
        (m.Scope scope, TextTreeConfiguration target) => target.mandatoryFooter,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@isBlankLineBetweenPropertiesAndChildren':
        (m.Scope scope, TextTreeConfiguration target) =>
            target.isBlankLineBetweenPropertiesAndChildren,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeConfiguration@':
        (m.Scope scope) => (
                {addBlankLineIfNoChildren,
                afterDescription,
                afterDescriptionIfBody,
                afterName,
                afterProperties,
                beforeName,
                beforeProperties,
                bodyIndent,
                footer,
                isBlankLineBetweenPropertiesAndChildren,
                isNameOnOwnLine,
                lineBreak,
                lineBreakProperties,
                linkCharacter,
                mandatoryAfterProperties,
                mandatoryFooter,
                prefixLastChildLineOne,
                prefixLineOne,
                prefixOtherLines,
                prefixOtherLinesRootNode,
                propertyPrefixIfChildren,
                propertyPrefixNoChildren,
                propertySeparator,
                showChildren,
                suffixLineOne}) {
              return TextTreeConfiguration(
                  addBlankLineIfNoChildren: addBlankLineIfNoChildren ?? true,
                  afterDescription: afterDescription ?? '',
                  afterDescriptionIfBody: afterDescriptionIfBody ?? '',
                  afterName: afterName ?? ':',
                  afterProperties: afterProperties ?? '',
                  beforeName: beforeName ?? '',
                  beforeProperties: beforeProperties ?? '',
                  bodyIndent: bodyIndent ?? '',
                  footer: footer ?? '',
                  isBlankLineBetweenPropertiesAndChildren:
                      isBlankLineBetweenPropertiesAndChildren ?? true,
                  isNameOnOwnLine: isNameOnOwnLine ?? false,
                  lineBreak: lineBreak ?? '\n',
                  lineBreakProperties: lineBreakProperties ?? true,
                  linkCharacter: linkCharacter,
                  mandatoryAfterProperties: mandatoryAfterProperties ?? '',
                  mandatoryFooter: mandatoryFooter ?? '',
                  prefixLastChildLineOne: prefixLastChildLineOne,
                  prefixLineOne: prefixLineOne,
                  prefixOtherLines: prefixOtherLines,
                  prefixOtherLinesRootNode: prefixOtherLinesRootNode,
                  propertyPrefixIfChildren: propertyPrefixIfChildren,
                  propertyPrefixNoChildren: propertyPrefixNoChildren,
                  propertySeparator: propertySeparator ?? '',
                  showChildren: showChildren ?? true,
                  suffixLineOne: suffixLineOne ?? '');
            },
    'package:flutter/src/foundation/diagnostics.dart@TextTreeRenderer@#as':
        (m.Scope scope, target) => () => target as TextTreeRenderer,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeRenderer@#is':
        (m.Scope scope, target) => () => target is TextTreeRenderer,
    'package:flutter/src/foundation/diagnostics.dart@TextTreeRenderer@':
        (m.Scope scope) => (
                {maxDescendentsTruncatableNode,
                minLevel,
                wrapWidth,
                wrapWidthProperties}) {
              return TextTreeRenderer(
                  maxDescendentsTruncatableNode:
                      maxDescendentsTruncatableNode ?? -1,
                  minLevel: minLevel ?? DiagnosticLevel.debug,
                  wrapWidth: wrapWidth ?? 100,
                  wrapWidthProperties: wrapWidthProperties ?? 65);
            },
    'package:flutter/src/foundation/diagnostics.dart@TextTreeRenderer@render':
        (m.Scope scope, TextTreeRenderer target) => target.render,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@#as':
        (m.Scope scope, target) => () => target as DiagnosticsNode,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@#is':
        (m.Scope scope, target) => () => target is DiagnosticsNode,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@name':
        (m.Scope scope, DiagnosticsNode target) => target.name,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@showSeparator':
        (m.Scope scope, DiagnosticsNode target) => target.showSeparator,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@showName':
        (m.Scope scope, DiagnosticsNode target) => target.showName,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@linePrefix':
        (m.Scope scope, DiagnosticsNode target) => target.linePrefix,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@style':
        (m.Scope scope, DiagnosticsNode target) => target.style,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@level':
        (m.Scope scope, DiagnosticsNode target) => target.level,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@emptyBodyDescription':
        (m.Scope scope, DiagnosticsNode target) => target.emptyBodyDescription,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@value':
        (m.Scope scope, DiagnosticsNode target) => target.value,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@allowWrap':
        (m.Scope scope, DiagnosticsNode target) => target.allowWrap,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@allowNameWrap':
        (m.Scope scope, DiagnosticsNode target) => target.allowNameWrap,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@allowTruncate':
        (m.Scope scope, DiagnosticsNode target) => target.allowTruncate,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@textTreeConfiguration':
        (m.Scope scope, DiagnosticsNode target) => target.textTreeConfiguration,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@message':
        (m.Scope scope) => DiagnosticsNode.message,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@toDescription':
        (m.Scope scope, DiagnosticsNode target) => target.toDescription,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@isFiltered':
        (m.Scope scope, DiagnosticsNode target) => target.isFiltered,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@getProperties':
        (m.Scope scope, DiagnosticsNode target) => target.getProperties,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@getChildren':
        (m.Scope scope, DiagnosticsNode target) => target.getChildren,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@toTimelineArguments':
        (m.Scope scope, DiagnosticsNode target) => target.toTimelineArguments,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@toJsonMap':
        (m.Scope scope, DiagnosticsNode target) => target.toJsonMap,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@toJsonList':
        (m.Scope scope) => DiagnosticsNode.toJsonList,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@toString':
        (m.Scope scope, DiagnosticsNode target) => target.toString,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsNode@toStringDeep':
        (m.Scope scope, DiagnosticsNode target) => target.toStringDeep,
    'package:flutter/src/foundation/diagnostics.dart@MessageProperty@#as':
        (m.Scope scope, target) => () => target as MessageProperty,
    'package:flutter/src/foundation/diagnostics.dart@MessageProperty@#is':
        (m.Scope scope, target) => () => target is MessageProperty,
    'package:flutter/src/foundation/diagnostics.dart@MessageProperty@':
        (m.Scope scope) => (name, message, {level, style}) {
              return MessageProperty(name, message,
                  level: level ?? DiagnosticLevel.info,
                  style: style ?? DiagnosticsTreeStyle.singleLine);
            },
    'package:flutter/src/foundation/diagnostics.dart@StringProperty@#as':
        (m.Scope scope, target) => () => target as StringProperty,
    'package:flutter/src/foundation/diagnostics.dart@StringProperty@#is':
        (m.Scope scope, target) => () => target is StringProperty,
    'package:flutter/src/foundation/diagnostics.dart@StringProperty@quoted':
        (m.Scope scope, StringProperty target) => target.quoted,
    'package:flutter/src/foundation/diagnostics.dart@StringProperty@':
        (m.Scope scope) => (name, value,
                {defaultValue,
                description,
                ifEmpty,
                level,
                quoted,
                showName,
                style,
                tooltip}) {
              return StringProperty(name, value,
                  defaultValue: defaultValue ?? kNoDefaultValue,
                  description: description,
                  ifEmpty: ifEmpty,
                  level: level ?? DiagnosticLevel.info,
                  quoted: quoted ?? true,
                  showName: showName ?? true,
                  style: style ?? DiagnosticsTreeStyle.singleLine,
                  tooltip: tooltip);
            },
    'package:flutter/src/foundation/diagnostics.dart@StringProperty@toJsonMap':
        (m.Scope scope, StringProperty target) => target.toJsonMap,
    'package:flutter/src/foundation/diagnostics.dart@StringProperty@valueToString':
        (m.Scope scope, StringProperty target) => target.valueToString,
    'package:flutter/src/foundation/diagnostics.dart@DoubleProperty@#as':
        (m.Scope scope, target) => () => target as DoubleProperty,
    'package:flutter/src/foundation/diagnostics.dart@DoubleProperty@#is':
        (m.Scope scope, target) => () => target is DoubleProperty,
    'package:flutter/src/foundation/diagnostics.dart@DoubleProperty@':
        (m.Scope scope) => (name, value,
                {defaultValue, ifNull, level, showName, style, tooltip, unit}) {
              return DoubleProperty(name, value,
                  defaultValue: defaultValue ?? kNoDefaultValue,
                  ifNull: ifNull,
                  level: level ?? DiagnosticLevel.info,
                  showName: showName ?? true,
                  style: style ?? DiagnosticsTreeStyle.singleLine,
                  tooltip: tooltip,
                  unit: unit);
            },
    'package:flutter/src/foundation/diagnostics.dart@DoubleProperty@lazy':
        (m.Scope scope) => (name, computeValue,
                {defaultValue, ifNull, level, showName, tooltip, unit}) {
              double computeValueProxy() {
                return engine.callFunctionPointer(scope, computeValue!, [], {});
              }

              return DoubleProperty.lazy(name, computeValueProxy,
                  defaultValue: defaultValue ?? kNoDefaultValue,
                  ifNull: ifNull,
                  level: level ?? DiagnosticLevel.info,
                  showName: showName ?? true,
                  tooltip: tooltip,
                  unit: unit);
            },
    'package:flutter/src/foundation/diagnostics.dart@DoubleProperty@numberToString':
        (m.Scope scope, DoubleProperty target) => target.numberToString,
    'package:flutter/src/foundation/diagnostics.dart@IntProperty@#as':
        (m.Scope scope, target) => () => target as IntProperty,
    'package:flutter/src/foundation/diagnostics.dart@IntProperty@#is':
        (m.Scope scope, target) => () => target is IntProperty,
    'package:flutter/src/foundation/diagnostics.dart@IntProperty@':
        (m.Scope scope) => (name, value,
                {defaultValue, ifNull, level, showName, style, unit}) {
              return IntProperty(name, value,
                  defaultValue: defaultValue ?? kNoDefaultValue,
                  ifNull: ifNull,
                  level: level ?? DiagnosticLevel.info,
                  showName: showName ?? true,
                  style: style ?? DiagnosticsTreeStyle.singleLine,
                  unit: unit);
            },
    'package:flutter/src/foundation/diagnostics.dart@IntProperty@numberToString':
        (m.Scope scope, IntProperty target) => target.numberToString,
    'package:flutter/src/foundation/diagnostics.dart@PercentProperty@#as':
        (m.Scope scope, target) => () => target as PercentProperty,
    'package:flutter/src/foundation/diagnostics.dart@PercentProperty@#is':
        (m.Scope scope, target) => () => target is PercentProperty,
    'package:flutter/src/foundation/diagnostics.dart@PercentProperty@':
        (m.Scope scope) =>
            (name, fraction, {ifNull, level, showName, tooltip, unit}) {
              return PercentProperty(name, fraction,
                  ifNull: ifNull,
                  level: level ?? DiagnosticLevel.info,
                  showName: showName ?? true,
                  tooltip: tooltip,
                  unit: unit);
            },
    'package:flutter/src/foundation/diagnostics.dart@PercentProperty@valueToString':
        (m.Scope scope, PercentProperty target) => target.valueToString,
    'package:flutter/src/foundation/diagnostics.dart@PercentProperty@numberToString':
        (m.Scope scope, PercentProperty target) => target.numberToString,
    'package:flutter/src/foundation/diagnostics.dart@FlagProperty@#as':
        (m.Scope scope, target) => () => target as FlagProperty,
    'package:flutter/src/foundation/diagnostics.dart@FlagProperty@#is':
        (m.Scope scope, target) => () => target is FlagProperty,
    'package:flutter/src/foundation/diagnostics.dart@FlagProperty@ifTrue':
        (m.Scope scope, FlagProperty target) => target.ifTrue,
    'package:flutter/src/foundation/diagnostics.dart@FlagProperty@ifFalse':
        (m.Scope scope, FlagProperty target) => target.ifFalse,
    'package:flutter/src/foundation/diagnostics.dart@FlagProperty@showName':
        (m.Scope scope, FlagProperty target) => target.showName,
    'package:flutter/src/foundation/diagnostics.dart@FlagProperty@level':
        (m.Scope scope, FlagProperty target) => target.level,
    'package:flutter/src/foundation/diagnostics.dart@FlagProperty@':
        (m.Scope scope) =>
            (name, {defaultValue, ifFalse, ifTrue, level, showName, value}) {
              return FlagProperty(name,
                  defaultValue: defaultValue,
                  ifFalse: ifFalse,
                  ifTrue: ifTrue,
                  level: level ?? DiagnosticLevel.info,
                  showName: showName ?? false,
                  value: value);
            },
    'package:flutter/src/foundation/diagnostics.dart@FlagProperty@toJsonMap':
        (m.Scope scope, FlagProperty target) => target.toJsonMap,
    'package:flutter/src/foundation/diagnostics.dart@FlagProperty@valueToString':
        (m.Scope scope, FlagProperty target) => target.valueToString,
    'package:flutter/src/foundation/diagnostics.dart@IterableProperty@#as':
        (m.Scope scope, target) => () => target as IterableProperty,
    'package:flutter/src/foundation/diagnostics.dart@IterableProperty@#is':
        (m.Scope scope, target) => () => target is IterableProperty,
    'package:flutter/src/foundation/diagnostics.dart@IterableProperty@level':
        (m.Scope scope, IterableProperty target) => target.level,
    'package:flutter/src/foundation/diagnostics.dart@IterableProperty@':
        (m.Scope scope) => <T>(name, value,
                {defaultValue,
                ifEmpty,
                ifNull,
                level,
                showName,
                showSeparator,
                style}) {
              return IterableProperty(name, value,
                  defaultValue: defaultValue ?? kNoDefaultValue,
                  ifEmpty: ifEmpty ?? '[]',
                  ifNull: ifNull,
                  level: level ?? DiagnosticLevel.info,
                  showName: showName ?? true,
                  showSeparator: showSeparator ?? true,
                  style: style ?? DiagnosticsTreeStyle.singleLine);
            },
    'package:flutter/src/foundation/diagnostics.dart@IterableProperty@valueToString':
        (m.Scope scope, IterableProperty target) => target.valueToString,
    'package:flutter/src/foundation/diagnostics.dart@IterableProperty@toJsonMap':
        (m.Scope scope, IterableProperty target) => target.toJsonMap,
    'package:flutter/src/foundation/diagnostics.dart@EnumProperty@#as':
        (m.Scope scope, target) => () => target as EnumProperty,
    'package:flutter/src/foundation/diagnostics.dart@EnumProperty@#is':
        (m.Scope scope, target) => () => target is EnumProperty,
    'package:flutter/src/foundation/diagnostics.dart@EnumProperty@':
        (m.Scope scope) => <T>(name, value, {defaultValue, level}) {
              return EnumProperty(name, value,
                  defaultValue: defaultValue ?? kNoDefaultValue,
                  level: level ?? DiagnosticLevel.info);
            },
    'package:flutter/src/foundation/diagnostics.dart@EnumProperty@valueToString':
        (m.Scope scope, EnumProperty target) => target.valueToString,
    'package:flutter/src/foundation/diagnostics.dart@ObjectFlagProperty@#as':
        (m.Scope scope, target) => () => target as ObjectFlagProperty,
    'package:flutter/src/foundation/diagnostics.dart@ObjectFlagProperty@#is':
        (m.Scope scope, target) => () => target is ObjectFlagProperty,
    'package:flutter/src/foundation/diagnostics.dart@ObjectFlagProperty@ifPresent':
        (m.Scope scope, ObjectFlagProperty target) => target.ifPresent,
    'package:flutter/src/foundation/diagnostics.dart@ObjectFlagProperty@showName':
        (m.Scope scope, ObjectFlagProperty target) => target.showName,
    'package:flutter/src/foundation/diagnostics.dart@ObjectFlagProperty@level':
        (m.Scope scope, ObjectFlagProperty target) => target.level,
    'package:flutter/src/foundation/diagnostics.dart@ObjectFlagProperty@':
        (m.Scope scope) =>
            <T>(name, value, {ifNull, ifPresent, level, showName}) {
              return ObjectFlagProperty(name, value,
                  ifNull: ifNull,
                  ifPresent: ifPresent,
                  level: level ?? DiagnosticLevel.info,
                  showName: showName ?? false);
            },
    'package:flutter/src/foundation/diagnostics.dart@ObjectFlagProperty@has':
        (m.Scope scope) => ObjectFlagProperty.has,
    'package:flutter/src/foundation/diagnostics.dart@ObjectFlagProperty@valueToString':
        (m.Scope scope, ObjectFlagProperty target) => target.valueToString,
    'package:flutter/src/foundation/diagnostics.dart@ObjectFlagProperty@toJsonMap':
        (m.Scope scope, ObjectFlagProperty target) => target.toJsonMap,
    'package:flutter/src/foundation/diagnostics.dart@FlagsSummary@#as':
        (m.Scope scope, target) => () => target as FlagsSummary,
    'package:flutter/src/foundation/diagnostics.dart@FlagsSummary@#is':
        (m.Scope scope, target) => () => target is FlagsSummary,
    'package:flutter/src/foundation/diagnostics.dart@FlagsSummary@value':
        (m.Scope scope, FlagsSummary target) => target.value,
    'package:flutter/src/foundation/diagnostics.dart@FlagsSummary@level':
        (m.Scope scope, FlagsSummary target) => target.level,
    'package:flutter/src/foundation/diagnostics.dart@FlagsSummary@':
        (m.Scope scope) =>
            <T>(name, value, {ifEmpty, level, showName, showSeparator}) {
              return FlagsSummary(name, value,
                  ifEmpty: ifEmpty,
                  level: level ?? DiagnosticLevel.info,
                  showName: showName ?? true,
                  showSeparator: showSeparator ?? true);
            },
    'package:flutter/src/foundation/diagnostics.dart@FlagsSummary@valueToString':
        (m.Scope scope, FlagsSummary target) => target.valueToString,
    'package:flutter/src/foundation/diagnostics.dart@FlagsSummary@toJsonMap':
        (m.Scope scope, FlagsSummary target) => target.toJsonMap,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@#as':
        (m.Scope scope, target) => () => target as DiagnosticsProperty,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@#is':
        (m.Scope scope, target) => () => target is DiagnosticsProperty,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@expandableValue':
        (m.Scope scope, DiagnosticsProperty target) => target.expandableValue,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@allowWrap':
        (m.Scope scope, DiagnosticsProperty target) => target.allowWrap,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@allowNameWrap':
        (m.Scope scope, DiagnosticsProperty target) => target.allowNameWrap,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@ifNull':
        (m.Scope scope, DiagnosticsProperty target) => target.ifNull,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@ifEmpty':
        (m.Scope scope, DiagnosticsProperty target) => target.ifEmpty,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@tooltip':
        (m.Scope scope, DiagnosticsProperty target) => target.tooltip,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@missingIfNull':
        (m.Scope scope, DiagnosticsProperty target) => target.missingIfNull,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@defaultValue':
        (m.Scope scope, DiagnosticsProperty target) => target.defaultValue,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@propertyType':
        (m.Scope scope, DiagnosticsProperty target) => target.propertyType,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@value':
        (m.Scope scope, DiagnosticsProperty target) => target.value,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@exception':
        (m.Scope scope, DiagnosticsProperty target) => target.exception,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@isInteresting':
        (m.Scope scope, DiagnosticsProperty target) => target.isInteresting,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@level':
        (m.Scope scope, DiagnosticsProperty target) => target.level,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@':
        (m.Scope scope) => <T>(name, value,
                {allowNameWrap,
                allowWrap,
                defaultValue,
                description,
                expandableValue,
                ifEmpty,
                ifNull,
                level,
                linePrefix,
                missingIfNull,
                showName,
                showSeparator,
                style,
                tooltip}) {
              return DiagnosticsProperty(name, value,
                  allowNameWrap: allowNameWrap ?? true,
                  allowWrap: allowWrap ?? true,
                  defaultValue: defaultValue ?? kNoDefaultValue,
                  description: description,
                  expandableValue: expandableValue ?? false,
                  ifEmpty: ifEmpty,
                  ifNull: ifNull,
                  level: level ?? DiagnosticLevel.info,
                  linePrefix: linePrefix,
                  missingIfNull: missingIfNull ?? false,
                  showName: showName ?? true,
                  showSeparator: showSeparator ?? true,
                  style: style ?? DiagnosticsTreeStyle.singleLine,
                  tooltip: tooltip);
            },
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@lazy':
        (m.Scope scope) => (name, computeValue,
                {allowNameWrap,
                allowWrap,
                defaultValue,
                description,
                expandableValue,
                ifEmpty,
                ifNull,
                level,
                missingIfNull,
                showName,
                showSeparator,
                style,
                tooltip}) {
              T computeValueProxy<T>() {
                return engine.callFunctionPointer(scope, computeValue!, [], {});
              }

              return DiagnosticsProperty.lazy(name, computeValueProxy,
                  allowNameWrap: allowNameWrap ?? true,
                  allowWrap: allowWrap ?? true,
                  defaultValue: defaultValue ?? kNoDefaultValue,
                  description: description,
                  expandableValue: expandableValue ?? false,
                  ifEmpty: ifEmpty,
                  ifNull: ifNull,
                  level: level ?? DiagnosticLevel.info,
                  missingIfNull: missingIfNull ?? false,
                  showName: showName ?? true,
                  showSeparator: showSeparator ?? true,
                  style: style ?? DiagnosticsTreeStyle.singleLine,
                  tooltip: tooltip);
            },
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@toJsonMap':
        (m.Scope scope, DiagnosticsProperty target) => target.toJsonMap,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@valueToString':
        (m.Scope scope, DiagnosticsProperty target) => target.valueToString,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@toDescription':
        (m.Scope scope, DiagnosticsProperty target) => target.toDescription,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@getProperties':
        (m.Scope scope, DiagnosticsProperty target) => target.getProperties,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsProperty@getChildren':
        (m.Scope scope, DiagnosticsProperty target) => target.getChildren,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableNode@#as':
        (m.Scope scope, target) => () => target as DiagnosticableNode,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableNode@#is':
        (m.Scope scope, target) => () => target is DiagnosticableNode,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableNode@value':
        (m.Scope scope, DiagnosticableNode target) => target.value,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableNode@builder':
        (m.Scope scope, DiagnosticableNode target) => target.builder,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableNode@style':
        (m.Scope scope, DiagnosticableNode target) => target.style,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableNode@emptyBodyDescription':
        (m.Scope scope, DiagnosticableNode target) =>
            target.emptyBodyDescription,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableNode@':
        (m.Scope scope) => <T extends Diagnosticable>({name, style, value}) {
              return DiagnosticableNode<T>(
                  name: name, style: style, value: value);
            },
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableNode@getProperties':
        (m.Scope scope, DiagnosticableNode target) => target.getProperties,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableNode@getChildren':
        (m.Scope scope, DiagnosticableNode target) => target.getChildren,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableNode@toDescription':
        (m.Scope scope, DiagnosticableNode target) => target.toDescription,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableTreeNode@#as':
        (m.Scope scope, target) => () => target as DiagnosticableTreeNode,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableTreeNode@#is':
        (m.Scope scope, target) => () => target is DiagnosticableTreeNode,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableTreeNode@':
        (m.Scope scope) => ({name, style, value}) {
              return DiagnosticableTreeNode(
                  name: name, style: style, value: value);
            },
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableTreeNode@getChildren':
        (m.Scope scope, DiagnosticableTreeNode target) => target.getChildren,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticPropertiesBuilder@#as':
        (m.Scope scope, target) => () => target as DiagnosticPropertiesBuilder,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticPropertiesBuilder@#is':
        (m.Scope scope, target) => () => target is DiagnosticPropertiesBuilder,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticPropertiesBuilder@properties':
        (m.Scope scope, DiagnosticPropertiesBuilder target) =>
            target.properties,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticPropertiesBuilder@defaultDiagnosticsTreeStyle':
        (m.Scope scope, DiagnosticPropertiesBuilder target) =>
            target.defaultDiagnosticsTreeStyle,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticPropertiesBuilder@defaultDiagnosticsTreeStyle:set':
        (m.Scope scope, DiagnosticPropertiesBuilder target) =>
            (other) => target.defaultDiagnosticsTreeStyle = other,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticPropertiesBuilder@emptyBodyDescription':
        (m.Scope scope, DiagnosticPropertiesBuilder target) =>
            target.emptyBodyDescription,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticPropertiesBuilder@emptyBodyDescription:set':
        (m.Scope scope, DiagnosticPropertiesBuilder target) =>
            (other) => target.emptyBodyDescription = other,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticPropertiesBuilder@':
        (m.Scope scope) => () {
              return DiagnosticPropertiesBuilder();
            },
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticPropertiesBuilder@fromProperties':
        (m.Scope scope) => DiagnosticPropertiesBuilder.fromProperties,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticPropertiesBuilder@add':
        (m.Scope scope, DiagnosticPropertiesBuilder target) => target.add,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableTree@#as':
        (m.Scope scope, target) => () => target as DiagnosticableTree,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableTree@#is':
        (m.Scope scope, target) => () => target is DiagnosticableTree,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableTree@toStringShallow':
        (m.Scope scope, DiagnosticableTree target) => target.toStringShallow,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableTree@toStringDeep':
        (m.Scope scope, DiagnosticableTree target) => target.toStringDeep,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableTree@toStringShort':
        (m.Scope scope, DiagnosticableTree target) => target.toStringShort,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableTree@toDiagnosticsNode':
        (m.Scope scope, DiagnosticableTree target) => target.toDiagnosticsNode,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticableTree@debugDescribeChildren':
        (m.Scope scope, DiagnosticableTree target) =>
            target.debugDescribeChildren,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsBlock@#as':
        (m.Scope scope, target) => () => target as DiagnosticsBlock,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsBlock@#is':
        (m.Scope scope, target) => () => target is DiagnosticsBlock,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsBlock@level':
        (m.Scope scope, DiagnosticsBlock target) => target.level,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsBlock@value':
        (m.Scope scope, DiagnosticsBlock target) => target.value,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsBlock@allowTruncate':
        (m.Scope scope, DiagnosticsBlock target) => target.allowTruncate,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsBlock@':
        (m.Scope scope) => (
                {allowTruncate,
                children,
                description,
                level,
                linePrefix,
                name,
                properties,
                showName,
                showSeparator,
                style,
                value}) {
              return DiagnosticsBlock(
                  allowTruncate: allowTruncate ?? false,
                  children: children ?? const <DiagnosticsNode>[],
                  description: description,
                  level: level ?? DiagnosticLevel.info,
                  linePrefix: linePrefix,
                  name: name,
                  properties: properties ?? const <DiagnosticsNode>[],
                  showName: showName ?? true,
                  showSeparator: showSeparator ?? true,
                  style: style ?? DiagnosticsTreeStyle.whitespace,
                  value: value);
            },
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsBlock@getChildren':
        (m.Scope scope, DiagnosticsBlock target) => target.getChildren,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsBlock@getProperties':
        (m.Scope scope, DiagnosticsBlock target) => target.getProperties,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsBlock@toDescription':
        (m.Scope scope, DiagnosticsBlock target) => target.toDescription,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@#as':
        (m.Scope scope, target) =>
            () => target as DiagnosticsSerializationDelegate,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@#is':
        (m.Scope scope, target) =>
            () => target is DiagnosticsSerializationDelegate,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@subtreeDepth':
        (m.Scope scope, DiagnosticsSerializationDelegate target) =>
            target.subtreeDepth,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@includeProperties':
        (m.Scope scope, DiagnosticsSerializationDelegate target) =>
            target.includeProperties,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@expandPropertyValues':
        (m.Scope scope, DiagnosticsSerializationDelegate target) =>
            target.expandPropertyValues,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@':
        (m.Scope scope) => ({includeProperties, subtreeDepth}) {
              return DiagnosticsSerializationDelegate(
                  includeProperties: includeProperties,
                  subtreeDepth: subtreeDepth);
            },
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@additionalNodeProperties':
        (m.Scope scope, DiagnosticsSerializationDelegate target) =>
            target.additionalNodeProperties,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@filterChildren':
        (m.Scope scope, DiagnosticsSerializationDelegate target) =>
            target.filterChildren,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@filterProperties':
        (m.Scope scope, DiagnosticsSerializationDelegate target) =>
            target.filterProperties,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@truncateNodesList':
        (m.Scope scope, DiagnosticsSerializationDelegate target) =>
            target.truncateNodesList,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@delegateForNode':
        (m.Scope scope, DiagnosticsSerializationDelegate target) =>
            target.delegateForNode,
    'package:flutter/src/foundation/diagnostics.dart@DiagnosticsSerializationDelegate@copyWith':
        (m.Scope scope, DiagnosticsSerializationDelegate target) =>
            target.copyWith,
    'package:flutter/src/foundation/diagnostics.dart@@shortHash':
        (m.Scope scope) => shortHash,
    'package:flutter/src/foundation/diagnostics.dart@@describeIdentity':
        (m.Scope scope) => describeIdentity,
    'package:flutter/src/foundation/diagnostics.dart@@describeEnum':
        (m.Scope scope) => describeEnum,
  };
}
