import 'package:flutter/src/widgets/shortcuts.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/platform_menu_bar.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/shortcuts.dart@KeySet@#as':
        (m.Scope scope, target) => () => target as KeySet,
    'package:flutter/src/widgets/shortcuts.dart@KeySet@#is':
        (m.Scope scope, target) => () => target is KeySet,
    'package:flutter/src/widgets/shortcuts.dart@KeySet@hashCode':
        (m.Scope scope, KeySet target) => target.hashCode,
    'package:flutter/src/widgets/shortcuts.dart@KeySet@keys':
        (m.Scope scope, KeySet target) => target.keys,
    'package:flutter/src/widgets/shortcuts.dart@KeySet@': (m.Scope scope) =>
        <T extends KeyboardKey>(key1, [T? key2, T? key3, T? key4]) {
          if (key2 == null && key3 == null && key4 == null) {
            return KeySet<T>(key1);
          }
          if (key3 == null && key4 == null) {
            return KeySet<T>(key1, key2!);
          }
          if (key4 == null) {
            return KeySet<T>(key1, key2!, key3!);
          }
          return KeySet<T>(key1, key2!, key3!, key4!);
        },
    'package:flutter/src/widgets/shortcuts.dart@KeySet@fromSet':
        (m.Scope scope) => KeySet.fromSet,
    'package:flutter/src/widgets/shortcuts.dart@KeySet@==':
        (m.Scope scope, KeySet target) => (other) => target == other,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutActivator@#as':
        (m.Scope scope, target) => () => target as ShortcutActivator,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutActivator@#is':
        (m.Scope scope, target) => () => target is ShortcutActivator,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutActivator@triggers':
        (m.Scope scope, ShortcutActivator target) => target.triggers,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutActivator@accepts':
        (m.Scope scope, ShortcutActivator target) => target.accepts,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutActivator@isActivatedBy':
        (m.Scope scope) => ShortcutActivator.isActivatedBy,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutActivator@debugDescribeKeys':
        (m.Scope scope, ShortcutActivator target) => target.debugDescribeKeys,
    'package:flutter/src/widgets/shortcuts.dart@LogicalKeySet@#as':
        (m.Scope scope, target) => () => target as LogicalKeySet,
    'package:flutter/src/widgets/shortcuts.dart@LogicalKeySet@#is':
        (m.Scope scope, target) => () => target is LogicalKeySet,
    'package:flutter/src/widgets/shortcuts.dart@LogicalKeySet@triggers':
        (m.Scope scope, LogicalKeySet target) => target.triggers,
    'package:flutter/src/widgets/shortcuts.dart@LogicalKeySet@':
        (m.Scope scope) => (key1,
                [LogicalKeyboardKey? key2,
                LogicalKeyboardKey? key3,
                LogicalKeyboardKey? key4]) {
              if (key2 == null && key3 == null && key4 == null) {
                return LogicalKeySet(key1);
              }
              if (key3 == null && key4 == null) {
                return LogicalKeySet(key1, key2!);
              }
              if (key4 == null) {
                return LogicalKeySet(key1, key2!, key3!);
              }
              return LogicalKeySet(key1, key2!, key3!, key4!);
            },
    'package:flutter/src/widgets/shortcuts.dart@LogicalKeySet@fromSet':
        (m.Scope scope) => LogicalKeySet.fromSet,
    'package:flutter/src/widgets/shortcuts.dart@LogicalKeySet@accepts':
        (m.Scope scope, LogicalKeySet target) => target.accepts,
    'package:flutter/src/widgets/shortcuts.dart@LogicalKeySet@debugDescribeKeys':
        (m.Scope scope, LogicalKeySet target) => target.debugDescribeKeys,
    'package:flutter/src/widgets/shortcuts.dart@LogicalKeySet@debugFillProperties':
        (m.Scope scope, LogicalKeySet target) => target.debugFillProperties,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutMapProperty@#as':
        (m.Scope scope, target) => () => target as ShortcutMapProperty,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutMapProperty@#is':
        (m.Scope scope, target) => () => target is ShortcutMapProperty,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutMapProperty@value':
        (m.Scope scope, ShortcutMapProperty target) => target.value,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutMapProperty@':
        (m.Scope scope) =>
            (name, value, {defaultValue, description, level, showName}) {
              return ShortcutMapProperty(name, value,
                  defaultValue: defaultValue ?? kNoDefaultValue,
                  description: description,
                  level: level ?? DiagnosticLevel.info,
                  showName: showName ?? true);
            },
    'package:flutter/src/widgets/shortcuts.dart@ShortcutMapProperty@valueToString':
        (m.Scope scope, ShortcutMapProperty target) => target.valueToString,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@#as':
        (m.Scope scope, target) => () => target as SingleActivator,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@#is':
        (m.Scope scope, target) => () => target is SingleActivator,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@trigger':
        (m.Scope scope, SingleActivator target) => target.trigger,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@control':
        (m.Scope scope, SingleActivator target) => target.control,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@shift':
        (m.Scope scope, SingleActivator target) => target.shift,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@alt':
        (m.Scope scope, SingleActivator target) => target.alt,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@meta':
        (m.Scope scope, SingleActivator target) => target.meta,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@includeRepeats':
        (m.Scope scope, SingleActivator target) => target.includeRepeats,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@triggers':
        (m.Scope scope, SingleActivator target) => target.triggers,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@':
        (m.Scope scope) =>
            (trigger, {alt, control, includeRepeats, meta, shift}) {
              return SingleActivator(trigger,
                  alt: alt ?? false,
                  control: control ?? false,
                  includeRepeats: includeRepeats ?? true,
                  meta: meta ?? false,
                  shift: shift ?? false);
            },
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@accepts':
        (m.Scope scope, SingleActivator target) => target.accepts,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@serializeForMenu':
        (m.Scope scope, SingleActivator target) => target.serializeForMenu,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@debugDescribeKeys':
        (m.Scope scope, SingleActivator target) => target.debugDescribeKeys,
    'package:flutter/src/widgets/shortcuts.dart@SingleActivator@debugFillProperties':
        (m.Scope scope, SingleActivator target) => target.debugFillProperties,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@#as':
        (m.Scope scope, target) => () => target as CharacterActivator,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@#is':
        (m.Scope scope, target) => () => target is CharacterActivator,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@alt':
        (m.Scope scope, CharacterActivator target) => target.alt,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@control':
        (m.Scope scope, CharacterActivator target) => target.control,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@meta':
        (m.Scope scope, CharacterActivator target) => target.meta,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@includeRepeats':
        (m.Scope scope, CharacterActivator target) => target.includeRepeats,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@character':
        (m.Scope scope, CharacterActivator target) => target.character,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@triggers':
        (m.Scope scope, CharacterActivator target) => target.triggers,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@':
        (m.Scope scope) => (character, {alt, control, includeRepeats, meta}) {
              return CharacterActivator(character,
                  alt: alt ?? false,
                  control: control ?? false,
                  includeRepeats: includeRepeats ?? true,
                  meta: meta ?? false);
            },
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@accepts':
        (m.Scope scope, CharacterActivator target) => target.accepts,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@debugDescribeKeys':
        (m.Scope scope, CharacterActivator target) => target.debugDescribeKeys,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@serializeForMenu':
        (m.Scope scope, CharacterActivator target) => target.serializeForMenu,
    'package:flutter/src/widgets/shortcuts.dart@CharacterActivator@debugFillProperties':
        (m.Scope scope, CharacterActivator target) =>
            target.debugFillProperties,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutManager@#as':
        (m.Scope scope, target) => () => target as ShortcutManager,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutManager@#is':
        (m.Scope scope, target) => () => target is ShortcutManager,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutManager@modal':
        (m.Scope scope, ShortcutManager target) => target.modal,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutManager@shortcuts':
        (m.Scope scope, ShortcutManager target) => target.shortcuts,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutManager@shortcuts:set':
        (m.Scope scope, ShortcutManager target) =>
            (other) => target.shortcuts = other,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutManager@':
        (m.Scope scope) => ({modal, shortcuts}) {
              return ShortcutManager(
                  modal: modal ?? false,
                  shortcuts: shortcuts ?? const <ShortcutActivator, Intent>{});
            },
    'package:flutter/src/widgets/shortcuts.dart@ShortcutManager@handleKeypress':
        (m.Scope scope, ShortcutManager target) => target.handleKeypress,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutManager@debugFillProperties':
        (m.Scope scope, ShortcutManager target) => target.debugFillProperties,
    'package:flutter/src/widgets/shortcuts.dart@Shortcuts@#as':
        (m.Scope scope, target) => () => target as Shortcuts,
    'package:flutter/src/widgets/shortcuts.dart@Shortcuts@#is':
        (m.Scope scope, target) => () => target is Shortcuts,
    'package:flutter/src/widgets/shortcuts.dart@Shortcuts@manager':
        (m.Scope scope, Shortcuts target) => target.manager,
    'package:flutter/src/widgets/shortcuts.dart@Shortcuts@child':
        (m.Scope scope, Shortcuts target) => target.child,
    'package:flutter/src/widgets/shortcuts.dart@Shortcuts@debugLabel':
        (m.Scope scope, Shortcuts target) => target.debugLabel,
    'package:flutter/src/widgets/shortcuts.dart@Shortcuts@shortcuts':
        (m.Scope scope, Shortcuts target) => target.shortcuts,
    'package:flutter/src/widgets/shortcuts.dart@Shortcuts@': (m.Scope scope) =>
        ({child, debugLabel, key, shortcuts}) {
          return Shortcuts(
              child: child,
              debugLabel: debugLabel,
              key: key,
              shortcuts: shortcuts);
        },
    'package:flutter/src/widgets/shortcuts.dart@Shortcuts@manager':
        (m.Scope scope) => Shortcuts.manager,
    'package:flutter/src/widgets/shortcuts.dart@Shortcuts@createState':
        (m.Scope scope, Shortcuts target) => target.createState,
    'package:flutter/src/widgets/shortcuts.dart@Shortcuts@debugFillProperties':
        (m.Scope scope, Shortcuts target) => target.debugFillProperties,
    'package:flutter/src/widgets/shortcuts.dart@CallbackShortcuts@#as':
        (m.Scope scope, target) => () => target as CallbackShortcuts,
    'package:flutter/src/widgets/shortcuts.dart@CallbackShortcuts@#is':
        (m.Scope scope, target) => () => target is CallbackShortcuts,
    'package:flutter/src/widgets/shortcuts.dart@CallbackShortcuts@bindings':
        (m.Scope scope, CallbackShortcuts target) => target.bindings,
    'package:flutter/src/widgets/shortcuts.dart@CallbackShortcuts@child':
        (m.Scope scope, CallbackShortcuts target) => target.child,
    'package:flutter/src/widgets/shortcuts.dart@CallbackShortcuts@':
        (m.Scope scope) => ({bindings, child, key}) {
              return CallbackShortcuts(
                  bindings: bindings, child: child, key: key);
            },
    'package:flutter/src/widgets/shortcuts.dart@CallbackShortcuts@build':
        (m.Scope scope, CallbackShortcuts target) => target.build,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistryEntry@#as':
        (m.Scope scope, target) => () => target as ShortcutRegistryEntry,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistryEntry@#is':
        (m.Scope scope, target) => () => target is ShortcutRegistryEntry,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistryEntry@registry':
        (m.Scope scope, ShortcutRegistryEntry target) => target.registry,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistryEntry@replaceAll':
        (m.Scope scope, ShortcutRegistryEntry target) => target.replaceAll,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistryEntry@dispose':
        (m.Scope scope, ShortcutRegistryEntry target) => target.dispose,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistry@#as':
        (m.Scope scope, target) => () => target as ShortcutRegistry,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistry@#is':
        (m.Scope scope, target) => () => target is ShortcutRegistry,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistry@shortcuts':
        (m.Scope scope, ShortcutRegistry target) => target.shortcuts,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistry@':
        (m.Scope scope) => () {
              return ShortcutRegistry();
            },
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistry@dispose':
        (m.Scope scope, ShortcutRegistry target) => target.dispose,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistry@addAll':
        (m.Scope scope, ShortcutRegistry target) => target.addAll,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistry@of':
        (m.Scope scope) => ShortcutRegistry.of,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistry@maybeOf':
        (m.Scope scope) => ShortcutRegistry.maybeOf,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistrar@#as':
        (m.Scope scope, target) => () => target as ShortcutRegistrar,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistrar@#is':
        (m.Scope scope, target) => () => target is ShortcutRegistrar,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistrar@child':
        (m.Scope scope, ShortcutRegistrar target) => target.child,
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistrar@':
        (m.Scope scope) => ({child, key}) {
              return ShortcutRegistrar(child: child, key: key);
            },
    'package:flutter/src/widgets/shortcuts.dart@ShortcutRegistrar@createState':
        (m.Scope scope, ShortcutRegistrar target) => target.createState,
  };
}
