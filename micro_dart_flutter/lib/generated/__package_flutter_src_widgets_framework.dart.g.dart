import 'package:flutter/src/widgets/framework.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/inherited_model.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/widget_inspector.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:micro_dart_runtime/runtime/bridge.dart';

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/framework.dart@ObjectKey@#as':
        (m.Scope scope, target) => () => target as ObjectKey,
    'package:flutter/src/widgets/framework.dart@ObjectKey@#is':
        (m.Scope scope, target) => () => target is ObjectKey,
    'package:flutter/src/widgets/framework.dart@ObjectKey@value':
        (m.Scope scope, ObjectKey target) => target.value,
    'package:flutter/src/widgets/framework.dart@ObjectKey@hashCode':
        (m.Scope scope, ObjectKey target) => target.hashCode,
    'package:flutter/src/widgets/framework.dart@ObjectKey@': (m.Scope scope) =>
        (value) {
          return ObjectKey(value);
        },
    'package:flutter/src/widgets/framework.dart@ObjectKey@==':
        (m.Scope scope, ObjectKey target) => (other) => target == other,
    'package:flutter/src/widgets/framework.dart@ObjectKey@toString':
        (m.Scope scope, ObjectKey target) => target.toString,
    'package:flutter/src/widgets/framework.dart@GlobalKey@#as':
        (m.Scope scope, target) => () => target as GlobalKey,
    'package:flutter/src/widgets/framework.dart@GlobalKey@#is':
        (m.Scope scope, target) => () => target is GlobalKey,
    'package:flutter/src/widgets/framework.dart@GlobalKey@currentContext':
        (m.Scope scope, GlobalKey target) => target.currentContext,
    'package:flutter/src/widgets/framework.dart@GlobalKey@currentWidget':
        (m.Scope scope, GlobalKey target) => target.currentWidget,
    'package:flutter/src/widgets/framework.dart@GlobalKey@currentState':
        (m.Scope scope, GlobalKey target) => target.currentState,
    'package:flutter/src/widgets/framework.dart@GlobalKey@': (m.Scope scope) =>
        <T>({debugLabel}) {
          return GlobalKey(debugLabel: debugLabel);
        },
    'package:flutter/src/widgets/framework.dart@LabeledGlobalKey@#as':
        (m.Scope scope, target) => () => target as LabeledGlobalKey,
    'package:flutter/src/widgets/framework.dart@LabeledGlobalKey@#is':
        (m.Scope scope, target) => () => target is LabeledGlobalKey,
    'package:flutter/src/widgets/framework.dart@LabeledGlobalKey@':
        (m.Scope scope) => <T>(_debugLabel) {
              return LabeledGlobalKey(_debugLabel);
            },
    'package:flutter/src/widgets/framework.dart@LabeledGlobalKey@toString':
        (m.Scope scope, LabeledGlobalKey target) => target.toString,
    'package:flutter/src/widgets/framework.dart@GlobalObjectKey@#as':
        (m.Scope scope, target) => () => target as GlobalObjectKey,
    'package:flutter/src/widgets/framework.dart@GlobalObjectKey@#is':
        (m.Scope scope, target) => () => target is GlobalObjectKey,
    'package:flutter/src/widgets/framework.dart@GlobalObjectKey@value':
        (m.Scope scope, GlobalObjectKey target) => target.value,
    'package:flutter/src/widgets/framework.dart@GlobalObjectKey@hashCode':
        (m.Scope scope, GlobalObjectKey target) => target.hashCode,
    'package:flutter/src/widgets/framework.dart@GlobalObjectKey@':
        (m.Scope scope) => <T>(value) {
              return GlobalObjectKey(value);
            },
    'package:flutter/src/widgets/framework.dart@GlobalObjectKey@==':
        (m.Scope scope, GlobalObjectKey target) => (other) => target == other,
    'package:flutter/src/widgets/framework.dart@GlobalObjectKey@toString':
        (m.Scope scope, GlobalObjectKey target) => target.toString,
    'package:flutter/src/widgets/framework.dart@Widget@#as':
        (m.Scope scope, target) => () => target as Widget,
    'package:flutter/src/widgets/framework.dart@Widget@#is':
        (m.Scope scope, target) => () => target is Widget,
    'package:flutter/src/widgets/framework.dart@Widget@key':
        (m.Scope scope, Widget target) => target.key,
    'package:flutter/src/widgets/framework.dart@Widget@hashCode':
        (m.Scope scope, Widget target) => target.hashCode,
    'package:flutter/src/widgets/framework.dart@Widget@createElement':
        (m.Scope scope, Widget target) => target.createElement,
    'package:flutter/src/widgets/framework.dart@Widget@toStringShort':
        (m.Scope scope, Widget target) => target.toStringShort,
    'package:flutter/src/widgets/framework.dart@Widget@debugFillProperties':
        (m.Scope scope, Widget target) => target.debugFillProperties,
    'package:flutter/src/widgets/framework.dart@Widget@==':
        (m.Scope scope, Widget target) => (other) => target == other,
    'package:flutter/src/widgets/framework.dart@Widget@canUpdate':
        (m.Scope scope) => Widget.canUpdate,
    'package:flutter/src/widgets/framework.dart@StatelessWidget@#as':
        (m.Scope scope, target) => () => target as StatelessWidget,
    'package:flutter/src/widgets/framework.dart@StatelessWidget@#is':
        (m.Scope scope, target) => () => target is StatelessWidget,
    'package:flutter/src/widgets/framework.dart@StatelessWidget@createElement':
        (m.Scope scope, StatelessWidget target) => target.createElement,
    'package:flutter/src/widgets/framework.dart@StatelessWidget@build':
        (m.Scope scope, StatelessWidget target) => target.build,
    'package:flutter/src/widgets/framework.dart@StatefulWidget@#as':
        (m.Scope scope, target) => () => target as StatefulWidget,
    'package:flutter/src/widgets/framework.dart@StatefulWidget@#is':
        (m.Scope scope, target) => () => target is StatefulWidget,
    'package:flutter/src/widgets/framework.dart@StatefulWidget@createElement':
        (m.Scope scope, StatefulWidget target) => target.createElement,
    'package:flutter/src/widgets/framework.dart@StatefulWidget@createState':
        (m.Scope scope, StatefulWidget target) => target.createState,
    'package:flutter/src/widgets/framework.dart@State@#as':
        (m.Scope scope, target) => () => target as State,
    'package:flutter/src/widgets/framework.dart@State@#is':
        (m.Scope scope, target) => () => target is State,
    'package:flutter/src/widgets/framework.dart@State@widget':
        (m.Scope scope, State target) => target.widget,
    'package:flutter/src/widgets/framework.dart@State@context':
        (m.Scope scope, State target) => target.context,
    'package:flutter/src/widgets/framework.dart@State@mounted':
        (m.Scope scope, State target) => target.mounted,
    'package:flutter/src/widgets/framework.dart@State@initState':
        (m.Scope scope, State target) => target.initState,
    'package:flutter/src/widgets/framework.dart@State@didUpdateWidget':
        (m.Scope scope, State target) => target.didUpdateWidget,
    'package:flutter/src/widgets/framework.dart@State@reassemble':
        (m.Scope scope, State target) => target.reassemble,
    'package:flutter/src/widgets/framework.dart@State@setState':
        (m.Scope scope, State target) => (fn) {
              void fnProxy() {
                engine.callFunctionPointer(scope, fn!, [], {});
              }

              target.setState(fnProxy);
            },
    'package:flutter/src/widgets/framework.dart@State@deactivate':
        (m.Scope scope, State target) => target.deactivate,
    'package:flutter/src/widgets/framework.dart@State@activate':
        (m.Scope scope, State target) => target.activate,
    'package:flutter/src/widgets/framework.dart@State@dispose':
        (m.Scope scope, State target) => target.dispose,
    'package:flutter/src/widgets/framework.dart@State@build':
        (m.Scope scope, State target) => target.build,
    'package:flutter/src/widgets/framework.dart@State@didChangeDependencies':
        (m.Scope scope, State target) => target.didChangeDependencies,
    'package:flutter/src/widgets/framework.dart@State@debugFillProperties':
        (m.Scope scope, State target) => target.debugFillProperties,
    'package:flutter/src/widgets/framework.dart@ProxyWidget@#as':
        (m.Scope scope, target) => () => target as ProxyWidget,
    'package:flutter/src/widgets/framework.dart@ProxyWidget@#is':
        (m.Scope scope, target) => () => target is ProxyWidget,
    'package:flutter/src/widgets/framework.dart@ProxyWidget@child':
        (m.Scope scope, ProxyWidget target) => target.child,
    'package:flutter/src/widgets/framework.dart@ParentDataWidget@#as':
        (m.Scope scope, target) => () => target as ParentDataWidget,
    'package:flutter/src/widgets/framework.dart@ParentDataWidget@#is':
        (m.Scope scope, target) => () => target is ParentDataWidget,
    'package:flutter/src/widgets/framework.dart@ParentDataWidget@debugTypicalAncestorWidgetClass':
        (m.Scope scope, ParentDataWidget target) =>
            target.debugTypicalAncestorWidgetClass,
    'package:flutter/src/widgets/framework.dart@ParentDataWidget@createElement':
        (m.Scope scope, ParentDataWidget target) => target.createElement,
    'package:flutter/src/widgets/framework.dart@ParentDataWidget@debugIsValidRenderObject':
        (m.Scope scope, ParentDataWidget target) =>
            target.debugIsValidRenderObject,
    'package:flutter/src/widgets/framework.dart@ParentDataWidget@applyParentData':
        (m.Scope scope, ParentDataWidget target) => target.applyParentData,
    'package:flutter/src/widgets/framework.dart@ParentDataWidget@debugCanApplyOutOfTurn':
        (m.Scope scope, ParentDataWidget target) =>
            target.debugCanApplyOutOfTurn,
    'package:flutter/src/widgets/framework.dart@InheritedWidget@#as':
        (m.Scope scope, target) => () => target as InheritedWidget,
    'package:flutter/src/widgets/framework.dart@InheritedWidget@#is':
        (m.Scope scope, target) => () => target is InheritedWidget,
    'package:flutter/src/widgets/framework.dart@InheritedWidget@createElement':
        (m.Scope scope, InheritedWidget target) => target.createElement,
    'package:flutter/src/widgets/framework.dart@InheritedWidget@updateShouldNotify':
        (m.Scope scope, InheritedWidget target) => target.updateShouldNotify,
    'package:flutter/src/widgets/framework.dart@RenderObjectWidget@#as':
        (m.Scope scope, target) => () => target as RenderObjectWidget,
    'package:flutter/src/widgets/framework.dart@RenderObjectWidget@#is':
        (m.Scope scope, target) => () => target is RenderObjectWidget,
    'package:flutter/src/widgets/framework.dart@RenderObjectWidget@createElement':
        (m.Scope scope, RenderObjectWidget target) => target.createElement,
    'package:flutter/src/widgets/framework.dart@RenderObjectWidget@createRenderObject':
        (m.Scope scope, RenderObjectWidget target) => target.createRenderObject,
    'package:flutter/src/widgets/framework.dart@RenderObjectWidget@updateRenderObject':
        (m.Scope scope, RenderObjectWidget target) => target.updateRenderObject,
    'package:flutter/src/widgets/framework.dart@RenderObjectWidget@didUnmountRenderObject':
        (m.Scope scope, RenderObjectWidget target) =>
            target.didUnmountRenderObject,
    'package:flutter/src/widgets/framework.dart@LeafRenderObjectWidget@#as':
        (m.Scope scope, target) => () => target as LeafRenderObjectWidget,
    'package:flutter/src/widgets/framework.dart@LeafRenderObjectWidget@#is':
        (m.Scope scope, target) => () => target is LeafRenderObjectWidget,
    'package:flutter/src/widgets/framework.dart@LeafRenderObjectWidget@createElement':
        (m.Scope scope, LeafRenderObjectWidget target) => target.createElement,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectWidget@#as':
        (m.Scope scope, target) =>
            () => target as SingleChildRenderObjectWidget,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectWidget@#is':
        (m.Scope scope, target) =>
            () => target is SingleChildRenderObjectWidget,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectWidget@child':
        (m.Scope scope, SingleChildRenderObjectWidget target) => target.child,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectWidget@createElement':
        (m.Scope scope, SingleChildRenderObjectWidget target) =>
            target.createElement,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectWidget@#as':
        (m.Scope scope, target) => () => target as MultiChildRenderObjectWidget,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectWidget@#is':
        (m.Scope scope, target) => () => target is MultiChildRenderObjectWidget,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectWidget@children':
        (m.Scope scope, MultiChildRenderObjectWidget target) => target.children,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectWidget@createElement':
        (m.Scope scope, MultiChildRenderObjectWidget target) =>
            target.createElement,
    'package:flutter/src/widgets/framework.dart@BuildContext@#as':
        (m.Scope scope, target) => () => target as BuildContext,
    'package:flutter/src/widgets/framework.dart@BuildContext@#is':
        (m.Scope scope, target) => () => target is BuildContext,
    'package:flutter/src/widgets/framework.dart@BuildContext@widget':
        (m.Scope scope, BuildContext target) => target.widget,
    'package:flutter/src/widgets/framework.dart@BuildContext@owner':
        (m.Scope scope, BuildContext target) => target.owner,
    'package:flutter/src/widgets/framework.dart@BuildContext@mounted':
        (m.Scope scope, BuildContext target) => target.mounted,
    'package:flutter/src/widgets/framework.dart@BuildContext@debugDoingBuild':
        (m.Scope scope, BuildContext target) => target.debugDoingBuild,
    'package:flutter/src/widgets/framework.dart@BuildContext@size':
        (m.Scope scope, BuildContext target) => target.size,
    'package:flutter/src/widgets/framework.dart@BuildContext@findRenderObject':
        (m.Scope scope, BuildContext target) => target.findRenderObject,
    'package:flutter/src/widgets/framework.dart@BuildContext@dependOnInheritedElement':
        (m.Scope scope, BuildContext target) => target.dependOnInheritedElement,
    'package:flutter/src/widgets/framework.dart@BuildContext@dependOnInheritedWidgetOfExactType':
        (m.Scope scope, BuildContext target) =>
            target.dependOnInheritedWidgetOfExactType,
    'package:flutter/src/widgets/framework.dart@BuildContext@getInheritedWidgetOfExactType':
        (m.Scope scope, BuildContext target) =>
            target.getInheritedWidgetOfExactType,
    'package:flutter/src/widgets/framework.dart@BuildContext@getElementForInheritedWidgetOfExactType':
        (m.Scope scope, BuildContext target) =>
            target.getElementForInheritedWidgetOfExactType,
    'package:flutter/src/widgets/framework.dart@BuildContext@findAncestorWidgetOfExactType':
        (m.Scope scope, BuildContext target) =>
            target.findAncestorWidgetOfExactType,
    'package:flutter/src/widgets/framework.dart@BuildContext@findAncestorStateOfType':
        (m.Scope scope, BuildContext target) => target.findAncestorStateOfType,
    'package:flutter/src/widgets/framework.dart@BuildContext@findRootAncestorStateOfType':
        (m.Scope scope, BuildContext target) =>
            target.findRootAncestorStateOfType,
    'package:flutter/src/widgets/framework.dart@BuildContext@findAncestorRenderObjectOfType':
        (m.Scope scope, BuildContext target) =>
            target.findAncestorRenderObjectOfType,
    'package:flutter/src/widgets/framework.dart@BuildContext@visitAncestorElements':
        (m.Scope scope, BuildContext target) => (visitor) {
              bool visitorProxy(element) {
                return engine
                    .callFunctionPointer(scope, visitor!, [element], {});
              }

              target.visitAncestorElements(visitorProxy);
            },
    'package:flutter/src/widgets/framework.dart@BuildContext@visitChildElements':
        (m.Scope scope, BuildContext target) => (visitor) {
              void visitorProxy(element) {
                engine.callFunctionPointer(scope, visitor!, [element], {});
              }

              target.visitChildElements(visitorProxy);
            },
    'package:flutter/src/widgets/framework.dart@BuildContext@dispatchNotification':
        (m.Scope scope, BuildContext target) => target.dispatchNotification,
    'package:flutter/src/widgets/framework.dart@BuildContext@describeElement':
        (m.Scope scope, BuildContext target) => target.describeElement,
    'package:flutter/src/widgets/framework.dart@BuildContext@describeWidget':
        (m.Scope scope, BuildContext target) => target.describeWidget,
    'package:flutter/src/widgets/framework.dart@BuildContext@describeMissingAncestor':
        (m.Scope scope, BuildContext target) => target.describeMissingAncestor,
    'package:flutter/src/widgets/framework.dart@BuildContext@describeOwnershipChain':
        (m.Scope scope, BuildContext target) => target.describeOwnershipChain,
    'package:flutter/src/widgets/framework.dart@BuildOwner@#as':
        (m.Scope scope, target) => () => target as BuildOwner,
    'package:flutter/src/widgets/framework.dart@BuildOwner@#is':
        (m.Scope scope, target) => () => target is BuildOwner,
    'package:flutter/src/widgets/framework.dart@BuildOwner@onBuildScheduled':
        (m.Scope scope, BuildOwner target) => target.onBuildScheduled,
    'package:flutter/src/widgets/framework.dart@BuildOwner@onBuildScheduled:set':
        (m.Scope scope, BuildOwner target) =>
            (other) => target.onBuildScheduled = other,
    'package:flutter/src/widgets/framework.dart@BuildOwner@focusManager':
        (m.Scope scope, BuildOwner target) => target.focusManager,
    'package:flutter/src/widgets/framework.dart@BuildOwner@focusManager:set':
        (m.Scope scope, BuildOwner target) =>
            (other) => target.focusManager = other,
    'package:flutter/src/widgets/framework.dart@BuildOwner@debugBuilding':
        (m.Scope scope, BuildOwner target) => target.debugBuilding,
    'package:flutter/src/widgets/framework.dart@BuildOwner@globalKeyCount':
        (m.Scope scope, BuildOwner target) => target.globalKeyCount,
    'package:flutter/src/widgets/framework.dart@BuildOwner@': (m.Scope scope) =>
        ({focusManager, onBuildScheduled}) {
          void onBuildScheduledProxy() {
            engine.callFunctionPointer(scope, onBuildScheduled!, [], {});
          }

          return BuildOwner(
              focusManager: focusManager,
              onBuildScheduled:
                  onBuildScheduled == null ? null : onBuildScheduledProxy);
        },
    'package:flutter/src/widgets/framework.dart@BuildOwner@scheduleBuildFor':
        (m.Scope scope, BuildOwner target) => target.scheduleBuildFor,
    'package:flutter/src/widgets/framework.dart@BuildOwner@lockState':
        (m.Scope scope, BuildOwner target) => (callback) {
              void callbackProxy() {
                engine.callFunctionPointer(scope, callback!, [], {});
              }

              target.lockState(callbackProxy);
            },
    'package:flutter/src/widgets/framework.dart@BuildOwner@buildScope':
        (m.Scope scope, BuildOwner target) =>
            (context, [m.FunctionPointer? callback]) {
              if (callback == null) {
                target.buildScope(context);
                return;
              }
              void callbackProxy() {
                engine.callFunctionPointer(scope, callback!, [], {});
              }

              target.buildScope(context, callbackProxy);
              return;
            },
    'package:flutter/src/widgets/framework.dart@BuildOwner@finalizeTree':
        (m.Scope scope, BuildOwner target) => target.finalizeTree,
    'package:flutter/src/widgets/framework.dart@BuildOwner@reassemble':
        (m.Scope scope, BuildOwner target) => target.reassemble,
    'package:flutter/src/widgets/framework.dart@Element@#as':
        (m.Scope scope, target) => () => target as Element,
    'package:flutter/src/widgets/framework.dart@Element@#is':
        (m.Scope scope, target) => () => target is Element,
    'package:flutter/src/widgets/framework.dart@Element@slot':
        (m.Scope scope, Element target) => target.slot,
    'package:flutter/src/widgets/framework.dart@Element@depth':
        (m.Scope scope, Element target) => target.depth,
    'package:flutter/src/widgets/framework.dart@Element@widget':
        (m.Scope scope, Element target) => target.widget,
    'package:flutter/src/widgets/framework.dart@Element@mounted':
        (m.Scope scope, Element target) => target.mounted,
    'package:flutter/src/widgets/framework.dart@Element@debugIsDefunct':
        (m.Scope scope, Element target) => target.debugIsDefunct,
    'package:flutter/src/widgets/framework.dart@Element@debugIsActive':
        (m.Scope scope, Element target) => target.debugIsActive,
    'package:flutter/src/widgets/framework.dart@Element@owner':
        (m.Scope scope, Element target) => target.owner,
    'package:flutter/src/widgets/framework.dart@Element@renderObject':
        (m.Scope scope, Element target) => target.renderObject,
    'package:flutter/src/widgets/framework.dart@Element@size':
        (m.Scope scope, Element target) => target.size,
    'package:flutter/src/widgets/framework.dart@Element@dirty':
        (m.Scope scope, Element target) => target.dirty,
    'package:flutter/src/widgets/framework.dart@Element@==':
        (m.Scope scope, Element target) => (other) => target == other,
    'package:flutter/src/widgets/framework.dart@Element@reassemble':
        (m.Scope scope, Element target) => target.reassemble,
    'package:flutter/src/widgets/framework.dart@Element@describeMissingAncestor':
        (m.Scope scope, Element target) => target.describeMissingAncestor,
    'package:flutter/src/widgets/framework.dart@Element@describeElements':
        (m.Scope scope) => Element.describeElements,
    'package:flutter/src/widgets/framework.dart@Element@describeElement':
        (m.Scope scope, Element target) => target.describeElement,
    'package:flutter/src/widgets/framework.dart@Element@describeWidget':
        (m.Scope scope, Element target) => target.describeWidget,
    'package:flutter/src/widgets/framework.dart@Element@describeOwnershipChain':
        (m.Scope scope, Element target) => target.describeOwnershipChain,
    'package:flutter/src/widgets/framework.dart@Element@visitChildren':
        (m.Scope scope, Element target) => (visitor) {
              void visitorProxy(element) {
                engine.callFunctionPointer(scope, visitor!, [element], {});
              }

              target.visitChildren(visitorProxy);
            },
    'package:flutter/src/widgets/framework.dart@Element@debugVisitOnstageChildren':
        (m.Scope scope, Element target) => (visitor) {
              void visitorProxy(element) {
                engine.callFunctionPointer(scope, visitor!, [element], {});
              }

              target.debugVisitOnstageChildren(visitorProxy);
            },
    'package:flutter/src/widgets/framework.dart@Element@visitChildElements':
        (m.Scope scope, Element target) => (visitor) {
              void visitorProxy(element) {
                engine.callFunctionPointer(scope, visitor!, [element], {});
              }

              target.visitChildElements(visitorProxy);
            },
    'package:flutter/src/widgets/framework.dart@Element@updateChild':
        (m.Scope scope, Element target) => target.updateChild,
    'package:flutter/src/widgets/framework.dart@Element@mount':
        (m.Scope scope, Element target) => target.mount,
    'package:flutter/src/widgets/framework.dart@Element@update':
        (m.Scope scope, Element target) => target.update,
    'package:flutter/src/widgets/framework.dart@Element@updateSlotForChild':
        (m.Scope scope, Element target) => target.updateSlotForChild,
    'package:flutter/src/widgets/framework.dart@Element@detachRenderObject':
        (m.Scope scope, Element target) => target.detachRenderObject,
    'package:flutter/src/widgets/framework.dart@Element@attachRenderObject':
        (m.Scope scope, Element target) => target.attachRenderObject,
    'package:flutter/src/widgets/framework.dart@Element@inflateWidget':
        (m.Scope scope, Element target) => target.inflateWidget,
    'package:flutter/src/widgets/framework.dart@Element@deactivateChild':
        (m.Scope scope, Element target) => target.deactivateChild,
    'package:flutter/src/widgets/framework.dart@Element@forgetChild':
        (m.Scope scope, Element target) => target.forgetChild,
    'package:flutter/src/widgets/framework.dart@Element@activate':
        (m.Scope scope, Element target) => target.activate,
    'package:flutter/src/widgets/framework.dart@Element@deactivate':
        (m.Scope scope, Element target) => target.deactivate,
    'package:flutter/src/widgets/framework.dart@Element@debugDeactivated':
        (m.Scope scope, Element target) => target.debugDeactivated,
    'package:flutter/src/widgets/framework.dart@Element@unmount':
        (m.Scope scope, Element target) => target.unmount,
    'package:flutter/src/widgets/framework.dart@Element@findRenderObject':
        (m.Scope scope, Element target) => target.findRenderObject,
    'package:flutter/src/widgets/framework.dart@Element@doesDependOnInheritedElement':
        (m.Scope scope, Element target) => target.doesDependOnInheritedElement,
    'package:flutter/src/widgets/framework.dart@Element@dependOnInheritedElement':
        (m.Scope scope, Element target) => target.dependOnInheritedElement,
    'package:flutter/src/widgets/framework.dart@Element@dependOnInheritedWidgetOfExactType':
        (m.Scope scope, Element target) =>
            target.dependOnInheritedWidgetOfExactType,
    'package:flutter/src/widgets/framework.dart@Element@getInheritedWidgetOfExactType':
        (m.Scope scope, Element target) => target.getInheritedWidgetOfExactType,
    'package:flutter/src/widgets/framework.dart@Element@getElementForInheritedWidgetOfExactType':
        (m.Scope scope, Element target) =>
            target.getElementForInheritedWidgetOfExactType,
    'package:flutter/src/widgets/framework.dart@Element@attachNotificationTree':
        (m.Scope scope, Element target) => target.attachNotificationTree,
    'package:flutter/src/widgets/framework.dart@Element@findAncestorWidgetOfExactType':
        (m.Scope scope, Element target) => target.findAncestorWidgetOfExactType,
    'package:flutter/src/widgets/framework.dart@Element@findAncestorStateOfType':
        (m.Scope scope, Element target) => target.findAncestorStateOfType,
    'package:flutter/src/widgets/framework.dart@Element@findRootAncestorStateOfType':
        (m.Scope scope, Element target) => target.findRootAncestorStateOfType,
    'package:flutter/src/widgets/framework.dart@Element@findAncestorRenderObjectOfType':
        (m.Scope scope, Element target) =>
            target.findAncestorRenderObjectOfType,
    'package:flutter/src/widgets/framework.dart@Element@visitAncestorElements':
        (m.Scope scope, Element target) => (visitor) {
              bool visitorProxy(element) {
                return engine
                    .callFunctionPointer(scope, visitor!, [element], {});
              }

              target.visitAncestorElements(visitorProxy);
            },
    'package:flutter/src/widgets/framework.dart@Element@didChangeDependencies':
        (m.Scope scope, Element target) => target.didChangeDependencies,
    'package:flutter/src/widgets/framework.dart@Element@debugGetCreatorChain':
        (m.Scope scope, Element target) => target.debugGetCreatorChain,
    'package:flutter/src/widgets/framework.dart@Element@debugGetDiagnosticChain':
        (m.Scope scope, Element target) => target.debugGetDiagnosticChain,
    'package:flutter/src/widgets/framework.dart@Element@dispatchNotification':
        (m.Scope scope, Element target) => target.dispatchNotification,
    'package:flutter/src/widgets/framework.dart@Element@toStringShort':
        (m.Scope scope, Element target) => target.toStringShort,
    'package:flutter/src/widgets/framework.dart@Element@toDiagnosticsNode':
        (m.Scope scope, Element target) => target.toDiagnosticsNode,
    'package:flutter/src/widgets/framework.dart@Element@debugFillProperties':
        (m.Scope scope, Element target) => target.debugFillProperties,
    'package:flutter/src/widgets/framework.dart@Element@debugDescribeChildren':
        (m.Scope scope, Element target) => target.debugDescribeChildren,
    'package:flutter/src/widgets/framework.dart@Element@markNeedsBuild':
        (m.Scope scope, Element target) => target.markNeedsBuild,
    'package:flutter/src/widgets/framework.dart@Element@rebuild':
        (m.Scope scope, Element target) => target.rebuild,
    'package:flutter/src/widgets/framework.dart@Element@performRebuild':
        (m.Scope scope, Element target) => target.performRebuild,
    'package:flutter/src/widgets/framework.dart@ErrorWidget@#as':
        (m.Scope scope, target) => () => target as ErrorWidget,
    'package:flutter/src/widgets/framework.dart@ErrorWidget@#is':
        (m.Scope scope, target) => () => target is ErrorWidget,
    'package:flutter/src/widgets/framework.dart@ErrorWidget@builder':
        (m.Scope scope) => ErrorWidget.builder,
    'package:flutter/src/widgets/framework.dart@ErrorWidget@builder:set':
        (m.Scope scope) => (other) => ErrorWidget.builder = other,
    'package:flutter/src/widgets/framework.dart@ErrorWidget@message':
        (m.Scope scope, ErrorWidget target) => target.message,
    'package:flutter/src/widgets/framework.dart@ErrorWidget@':
        (m.Scope scope) => (exception) {
              return ErrorWidget(exception);
            },
    'package:flutter/src/widgets/framework.dart@ErrorWidget@withDetails':
        (m.Scope scope) => ErrorWidget.withDetails,
    'package:flutter/src/widgets/framework.dart@ErrorWidget@createRenderObject':
        (m.Scope scope, ErrorWidget target) => target.createRenderObject,
    'package:flutter/src/widgets/framework.dart@ErrorWidget@debugFillProperties':
        (m.Scope scope, ErrorWidget target) => target.debugFillProperties,
    'package:flutter/src/widgets/framework.dart@ComponentElement@#as':
        (m.Scope scope, target) => () => target as ComponentElement,
    'package:flutter/src/widgets/framework.dart@ComponentElement@#is':
        (m.Scope scope, target) => () => target is ComponentElement,
    'package:flutter/src/widgets/framework.dart@ComponentElement@debugDoingBuild':
        (m.Scope scope, ComponentElement target) => target.debugDoingBuild,
    'package:flutter/src/widgets/framework.dart@ComponentElement@mount':
        (m.Scope scope, ComponentElement target) => target.mount,
    'package:flutter/src/widgets/framework.dart@ComponentElement@performRebuild':
        (m.Scope scope, ComponentElement target) => target.performRebuild,
    'package:flutter/src/widgets/framework.dart@ComponentElement@build':
        (m.Scope scope, ComponentElement target) => target.build,
    'package:flutter/src/widgets/framework.dart@ComponentElement@visitChildren':
        (m.Scope scope, ComponentElement target) => (visitor) {
              void visitorProxy(element) {
                engine.callFunctionPointer(scope, visitor!, [element], {});
              }

              target.visitChildren(visitorProxy);
            },
    'package:flutter/src/widgets/framework.dart@ComponentElement@forgetChild':
        (m.Scope scope, ComponentElement target) => target.forgetChild,
    'package:flutter/src/widgets/framework.dart@StatelessElement@#as':
        (m.Scope scope, target) => () => target as StatelessElement,
    'package:flutter/src/widgets/framework.dart@StatelessElement@#is':
        (m.Scope scope, target) => () => target is StatelessElement,
    'package:flutter/src/widgets/framework.dart@StatelessElement@':
        (m.Scope scope) => (widget) {
              return StatelessElement(widget);
            },
    'package:flutter/src/widgets/framework.dart@StatelessElement@build':
        (m.Scope scope, StatelessElement target) => target.build,
    'package:flutter/src/widgets/framework.dart@StatelessElement@update':
        (m.Scope scope, StatelessElement target) => target.update,
    'package:flutter/src/widgets/framework.dart@StatefulElement@#as':
        (m.Scope scope, target) => () => target as StatefulElement,
    'package:flutter/src/widgets/framework.dart@StatefulElement@#is':
        (m.Scope scope, target) => () => target is StatefulElement,
    'package:flutter/src/widgets/framework.dart@StatefulElement@state':
        (m.Scope scope, StatefulElement target) => target.state,
    'package:flutter/src/widgets/framework.dart@StatefulElement@':
        (m.Scope scope) => (widget) {
              return StatefulElement(widget);
            },
    'package:flutter/src/widgets/framework.dart@StatefulElement@build':
        (m.Scope scope, StatefulElement target) => target.build,
    'package:flutter/src/widgets/framework.dart@StatefulElement@reassemble':
        (m.Scope scope, StatefulElement target) => target.reassemble,
    'package:flutter/src/widgets/framework.dart@StatefulElement@performRebuild':
        (m.Scope scope, StatefulElement target) => target.performRebuild,
    'package:flutter/src/widgets/framework.dart@StatefulElement@update':
        (m.Scope scope, StatefulElement target) => target.update,
    'package:flutter/src/widgets/framework.dart@StatefulElement@activate':
        (m.Scope scope, StatefulElement target) => target.activate,
    'package:flutter/src/widgets/framework.dart@StatefulElement@deactivate':
        (m.Scope scope, StatefulElement target) => target.deactivate,
    'package:flutter/src/widgets/framework.dart@StatefulElement@unmount':
        (m.Scope scope, StatefulElement target) => target.unmount,
    'package:flutter/src/widgets/framework.dart@StatefulElement@dependOnInheritedElement':
        (m.Scope scope, StatefulElement target) =>
            target.dependOnInheritedElement,
    'package:flutter/src/widgets/framework.dart@StatefulElement@didChangeDependencies':
        (m.Scope scope, StatefulElement target) => target.didChangeDependencies,
    'package:flutter/src/widgets/framework.dart@StatefulElement@toDiagnosticsNode':
        (m.Scope scope, StatefulElement target) => target.toDiagnosticsNode,
    'package:flutter/src/widgets/framework.dart@StatefulElement@debugFillProperties':
        (m.Scope scope, StatefulElement target) => target.debugFillProperties,
    'package:flutter/src/widgets/framework.dart@ProxyElement@#as':
        (m.Scope scope, target) => () => target as ProxyElement,
    'package:flutter/src/widgets/framework.dart@ProxyElement@#is':
        (m.Scope scope, target) => () => target is ProxyElement,
    'package:flutter/src/widgets/framework.dart@ProxyElement@build':
        (m.Scope scope, ProxyElement target) => target.build,
    'package:flutter/src/widgets/framework.dart@ProxyElement@update':
        (m.Scope scope, ProxyElement target) => target.update,
    'package:flutter/src/widgets/framework.dart@ProxyElement@updated':
        (m.Scope scope, ProxyElement target) => target.updated,
    'package:flutter/src/widgets/framework.dart@ProxyElement@notifyClients':
        (m.Scope scope, ProxyElement target) => target.notifyClients,
    'package:flutter/src/widgets/framework.dart@ParentDataElement@#as':
        (m.Scope scope, target) => () => target as ParentDataElement,
    'package:flutter/src/widgets/framework.dart@ParentDataElement@#is':
        (m.Scope scope, target) => () => target is ParentDataElement,
    'package:flutter/src/widgets/framework.dart@ParentDataElement@':
        (m.Scope scope) => <T>(widget) {
              return ParentDataElement(widget);
            },
    'package:flutter/src/widgets/framework.dart@ParentDataElement@applyWidgetOutOfTurn':
        (m.Scope scope, ParentDataElement target) =>
            target.applyWidgetOutOfTurn,
    'package:flutter/src/widgets/framework.dart@ParentDataElement@notifyClients':
        (m.Scope scope, ParentDataElement target) => target.notifyClients,
    'package:flutter/src/widgets/framework.dart@InheritedElement@#as':
        (m.Scope scope, target) => () => target as InheritedElement,
    'package:flutter/src/widgets/framework.dart@InheritedElement@#is':
        (m.Scope scope, target) => () => target is InheritedElement,
    'package:flutter/src/widgets/framework.dart@InheritedElement@':
        (m.Scope scope) => (widget) {
              return InheritedElement(widget);
            },
    'package:flutter/src/widgets/framework.dart@InheritedElement@debugDeactivated':
        (m.Scope scope, InheritedElement target) => target.debugDeactivated,
    'package:flutter/src/widgets/framework.dart@InheritedElement@getDependencies':
        (m.Scope scope, InheritedElement target) => target.getDependencies,
    'package:flutter/src/widgets/framework.dart@InheritedElement@setDependencies':
        (m.Scope scope, InheritedElement target) => target.setDependencies,
    'package:flutter/src/widgets/framework.dart@InheritedElement@updateDependencies':
        (m.Scope scope, InheritedElement target) => target.updateDependencies,
    'package:flutter/src/widgets/framework.dart@InheritedElement@notifyDependent':
        (m.Scope scope, InheritedElement target) => target.notifyDependent,
    'package:flutter/src/widgets/framework.dart@InheritedElement@updated':
        (m.Scope scope, InheritedElement target) => target.updated,
    'package:flutter/src/widgets/framework.dart@InheritedElement@notifyClients':
        (m.Scope scope, InheritedElement target) => target.notifyClients,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@#as':
        (m.Scope scope, target) => () => target as RenderObjectElement,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@#is':
        (m.Scope scope, target) => () => target is RenderObjectElement,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@renderObject':
        (m.Scope scope, RenderObjectElement target) => target.renderObject,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@debugDoingBuild':
        (m.Scope scope, RenderObjectElement target) => target.debugDoingBuild,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@mount':
        (m.Scope scope, RenderObjectElement target) => target.mount,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@update':
        (m.Scope scope, RenderObjectElement target) => target.update,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@performRebuild':
        (m.Scope scope, RenderObjectElement target) => target.performRebuild,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@updateChildren':
        (m.Scope scope, RenderObjectElement target) => target.updateChildren,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@deactivate':
        (m.Scope scope, RenderObjectElement target) => target.deactivate,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@unmount':
        (m.Scope scope, RenderObjectElement target) => target.unmount,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@attachRenderObject':
        (m.Scope scope, RenderObjectElement target) =>
            target.attachRenderObject,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@detachRenderObject':
        (m.Scope scope, RenderObjectElement target) =>
            target.detachRenderObject,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@insertRenderObjectChild':
        (m.Scope scope, RenderObjectElement target) =>
            target.insertRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@moveRenderObjectChild':
        (m.Scope scope, RenderObjectElement target) =>
            target.moveRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@removeRenderObjectChild':
        (m.Scope scope, RenderObjectElement target) =>
            target.removeRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@RenderObjectElement@debugFillProperties':
        (m.Scope scope, RenderObjectElement target) =>
            target.debugFillProperties,
    'package:flutter/src/widgets/framework.dart@RootRenderObjectElement@#as':
        (m.Scope scope, target) => () => target as RootRenderObjectElement,
    'package:flutter/src/widgets/framework.dart@RootRenderObjectElement@#is':
        (m.Scope scope, target) => () => target is RootRenderObjectElement,
    'package:flutter/src/widgets/framework.dart@LeafRenderObjectElement@#as':
        (m.Scope scope, target) => () => target as LeafRenderObjectElement,
    'package:flutter/src/widgets/framework.dart@LeafRenderObjectElement@#is':
        (m.Scope scope, target) => () => target is LeafRenderObjectElement,
    'package:flutter/src/widgets/framework.dart@LeafRenderObjectElement@':
        (m.Scope scope) => (widget) {
              return LeafRenderObjectElement(widget);
            },
    'package:flutter/src/widgets/framework.dart@LeafRenderObjectElement@forgetChild':
        (m.Scope scope, LeafRenderObjectElement target) => target.forgetChild,
    'package:flutter/src/widgets/framework.dart@LeafRenderObjectElement@insertRenderObjectChild':
        (m.Scope scope, LeafRenderObjectElement target) =>
            target.insertRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@LeafRenderObjectElement@moveRenderObjectChild':
        (m.Scope scope, LeafRenderObjectElement target) =>
            target.moveRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@LeafRenderObjectElement@removeRenderObjectChild':
        (m.Scope scope, LeafRenderObjectElement target) =>
            target.removeRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@LeafRenderObjectElement@debugDescribeChildren':
        (m.Scope scope, LeafRenderObjectElement target) =>
            target.debugDescribeChildren,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectElement@#as':
        (m.Scope scope, target) =>
            () => target as SingleChildRenderObjectElement,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectElement@#is':
        (m.Scope scope, target) =>
            () => target is SingleChildRenderObjectElement,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectElement@':
        (m.Scope scope) => (widget) {
              return SingleChildRenderObjectElement(widget);
            },
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectElement@visitChildren':
        (m.Scope scope, SingleChildRenderObjectElement target) => (visitor) {
              void visitorProxy(element) {
                engine.callFunctionPointer(scope, visitor!, [element], {});
              }

              target.visitChildren(visitorProxy);
            },
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectElement@forgetChild':
        (m.Scope scope, SingleChildRenderObjectElement target) =>
            target.forgetChild,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectElement@mount':
        (m.Scope scope, SingleChildRenderObjectElement target) => target.mount,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectElement@update':
        (m.Scope scope, SingleChildRenderObjectElement target) => target.update,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectElement@insertRenderObjectChild':
        (m.Scope scope, SingleChildRenderObjectElement target) =>
            target.insertRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectElement@moveRenderObjectChild':
        (m.Scope scope, SingleChildRenderObjectElement target) =>
            target.moveRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@SingleChildRenderObjectElement@removeRenderObjectChild':
        (m.Scope scope, SingleChildRenderObjectElement target) =>
            target.removeRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@#as':
        (m.Scope scope, target) =>
            () => target as MultiChildRenderObjectElement,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@#is':
        (m.Scope scope, target) =>
            () => target is MultiChildRenderObjectElement,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@renderObject':
        (m.Scope scope, MultiChildRenderObjectElement target) =>
            target.renderObject,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@children':
        (m.Scope scope, MultiChildRenderObjectElement target) =>
            target.children,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@':
        (m.Scope scope) => (widget) {
              return MultiChildRenderObjectElement(widget);
            },
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@insertRenderObjectChild':
        (m.Scope scope, MultiChildRenderObjectElement target) =>
            target.insertRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@moveRenderObjectChild':
        (m.Scope scope, MultiChildRenderObjectElement target) =>
            target.moveRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@removeRenderObjectChild':
        (m.Scope scope, MultiChildRenderObjectElement target) =>
            target.removeRenderObjectChild,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@visitChildren':
        (m.Scope scope, MultiChildRenderObjectElement target) => (visitor) {
              void visitorProxy(element) {
                engine.callFunctionPointer(scope, visitor!, [element], {});
              }

              target.visitChildren(visitorProxy);
            },
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@forgetChild':
        (m.Scope scope, MultiChildRenderObjectElement target) =>
            target.forgetChild,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@inflateWidget':
        (m.Scope scope, MultiChildRenderObjectElement target) =>
            target.inflateWidget,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@mount':
        (m.Scope scope, MultiChildRenderObjectElement target) => target.mount,
    'package:flutter/src/widgets/framework.dart@MultiChildRenderObjectElement@update':
        (m.Scope scope, MultiChildRenderObjectElement target) => target.update,
    'package:flutter/src/widgets/framework.dart@DebugCreator@#as':
        (m.Scope scope, target) => () => target as DebugCreator,
    'package:flutter/src/widgets/framework.dart@DebugCreator@#is':
        (m.Scope scope, target) => () => target is DebugCreator,
    'package:flutter/src/widgets/framework.dart@DebugCreator@element':
        (m.Scope scope, DebugCreator target) => target.element,
    'package:flutter/src/widgets/framework.dart@DebugCreator@':
        (m.Scope scope) => (element) {
              return DebugCreator(element);
            },
    'package:flutter/src/widgets/framework.dart@DebugCreator@toString':
        (m.Scope scope, DebugCreator target) => target.toString,
    'package:flutter/src/widgets/framework.dart@IndexedSlot@#as':
        (m.Scope scope, target) => () => target as IndexedSlot,
    'package:flutter/src/widgets/framework.dart@IndexedSlot@#is':
        (m.Scope scope, target) => () => target is IndexedSlot,
    'package:flutter/src/widgets/framework.dart@IndexedSlot@value':
        (m.Scope scope, IndexedSlot target) => target.value,
    'package:flutter/src/widgets/framework.dart@IndexedSlot@index':
        (m.Scope scope, IndexedSlot target) => target.index,
    'package:flutter/src/widgets/framework.dart@IndexedSlot@hashCode':
        (m.Scope scope, IndexedSlot target) => target.hashCode,
    'package:flutter/src/widgets/framework.dart@IndexedSlot@':
        (m.Scope scope) => <T extends Element?>(index, value) {
              return IndexedSlot<T>(index, value);
            },
    'package:flutter/src/widgets/framework.dart@IndexedSlot@==':
        (m.Scope scope, IndexedSlot target) => (other) => target == other,
    'package:flutter/src/widgets/framework.dart@StatelessWidget@':
        (m.Scope scope) => ({Key? key}) {
              return $StatelessWidget(key: key);
            },
    'package:flutter/src/widgets/framework.dart@StatefulWidget@':
        (m.Scope scope) => ({Key? key}) {
              return $StatefulWidget(key: key);
            },
    'package:flutter/src/widgets/framework.dart@State@': (m.Scope scope) =>
        ({Key? key}) {
          return $State();
        }
  };
}

class $StatelessWidget extends StatelessWidget with InstanceBridge {
  $StatelessWidget({Key? key}) : super(key: key);
  @override
  final m.TypeRef bridgeType = const m.TypeRef(
      "package:flutter/src/widgets/framework.dart", "StatelessWidget", true);

  @override
  Widget build(BuildContext context) {
    return child!.engine
        .callFunction(this, type.getNameKey("build"), [context], {});
  }
}

class $StatefulWidget extends StatefulWidget with InstanceBridge {
  $StatefulWidget({Key? key}) : super(key: key);
  @override
  final m.TypeRef bridgeType = const m.TypeRef(
      "package:flutter/src/widgets/framework.dart", "StatefulWidget", true);

  @override
  State<StatefulWidget> createState() {
    return child!.engine
        .callFunction(this, type.getNameKey("createState"), [], {});
  }
}

class $State extends State with InstanceBridge {
  @override
  final m.TypeRef bridgeType = const m.TypeRef(
      "package:flutter/src/widgets/framework.dart", "State", true);

  @override
  Widget build(BuildContext context) {
    return child!.engine
        .callFunction(this, type.getNameKey("build"), [context], {});
  }
}
