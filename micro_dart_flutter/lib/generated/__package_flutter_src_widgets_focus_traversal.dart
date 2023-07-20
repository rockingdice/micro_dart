// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scrollable.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/widgets/focus_traversal.dart',
  {
    'WidgetOrderTraversalPolicy.': _WidgetOrderTraversalPolicy__$,
    'ReadingOrderTraversalPolicy.': _ReadingOrderTraversalPolicy__$,
    'NumericFocusOrder.': _NumericFocusOrder__$,
    'LexicalFocusOrder.': _LexicalFocusOrder__$,
    'OrderedTraversalPolicy.': _OrderedTraversalPolicy__$,
    'FocusTraversalOrder.': _FocusTraversalOrder__$,
    'FocusTraversalOrder.of': _FocusTraversalOrder_of$,
    'FocusTraversalOrder.maybeOf': _FocusTraversalOrder_maybeOf$,
    'FocusTraversalGroup.': _FocusTraversalGroup__$,
    'FocusTraversalGroup.maybeOfNode': _FocusTraversalGroup_maybeOfNode$,
    'FocusTraversalGroup.of': _FocusTraversalGroup_of$,
    'FocusTraversalGroup.maybeOf': _FocusTraversalGroup_maybeOf$,
    'RequestFocusIntent.': _RequestFocusIntent__$,
    'RequestFocusAction.': _RequestFocusAction__$,
    'NextFocusIntent.': _NextFocusIntent__$,
    'NextFocusAction.': _NextFocusAction__$,
    'PreviousFocusIntent.': _PreviousFocusIntent__$,
    'PreviousFocusAction.': _PreviousFocusAction__$,
    'DirectionalFocusIntent.': _DirectionalFocusIntent__$,
    'DirectionalFocusAction.': _DirectionalFocusAction__$,
    'DirectionalFocusAction.forTextField':
        _DirectionalFocusAction_forTextField_$,
    'ExcludeFocusTraversal.': _ExcludeFocusTraversal__$,
    'TraversalDirection.up': _TraversalDirection_up$,
    'TraversalDirection.right': _TraversalDirection_right$,
    'TraversalDirection.down': _TraversalDirection_down$,
    'TraversalDirection.left': _TraversalDirection_left$,
    'TraversalDirection.values': _TraversalDirection_values$,
    'TraversalEdgeBehavior.closedLoop': _TraversalEdgeBehavior_closedLoop$,
    'TraversalEdgeBehavior.leaveFlutterView':
        _TraversalEdgeBehavior_leaveFlutterView$,
    'TraversalEdgeBehavior.values': _TraversalEdgeBehavior_values$,
  },
  {},
  {
    'FocusTraversalPolicy': m.ClassMirror(
      'FocusTraversalPolicy',
      {
        '#as': FocusTraversalPolicy_as$,
        '#is': FocusTraversalPolicy_is$,
        'findFirstFocus': _FocusTraversalPolicy_findFirstFocus$,
        'findLastFocus': _FocusTraversalPolicy_findLastFocus$,
        'findFirstFocusInDirection':
            _FocusTraversalPolicy_findFirstFocusInDirection$,
        'invalidateScopeData': _FocusTraversalPolicy_invalidateScopeData$,
        'changedScope': _FocusTraversalPolicy_changedScope$,
        'next': _FocusTraversalPolicy_next$,
        'previous': _FocusTraversalPolicy_previous$,
        'inDirection': _FocusTraversalPolicy_inDirection$,
        'sortDescendants': _FocusTraversalPolicy_sortDescendants$,
      },
      {},
    ),
    'WidgetOrderTraversalPolicy': m.ClassMirror(
      'WidgetOrderTraversalPolicy',
      {
        '#as': WidgetOrderTraversalPolicy_as$,
        '#is': WidgetOrderTraversalPolicy_is$,
        'sortDescendants': _WidgetOrderTraversalPolicy_sortDescendants$,
      },
      {},
    ),
    'ReadingOrderTraversalPolicy': m.ClassMirror(
      'ReadingOrderTraversalPolicy',
      {
        '#as': ReadingOrderTraversalPolicy_as$,
        '#is': ReadingOrderTraversalPolicy_is$,
        'sortDescendants': _ReadingOrderTraversalPolicy_sortDescendants$,
      },
      {},
    ),
    'FocusOrder': m.ClassMirror(
      'FocusOrder',
      {
        '#as': FocusOrder_as$,
        '#is': FocusOrder_is$,
        'compareTo': _FocusOrder_compareTo$,
        'doCompare': _FocusOrder_doCompare$,
      },
      {},
    ),
    'NumericFocusOrder': m.ClassMirror(
      'NumericFocusOrder',
      {
        '#as': NumericFocusOrder_as$,
        '#is': NumericFocusOrder_is$,
        'order': _NumericFocusOrder_order$,
        'doCompare': _NumericFocusOrder_doCompare$,
        'debugFillProperties': _NumericFocusOrder_debugFillProperties$,
      },
      {},
    ),
    'LexicalFocusOrder': m.ClassMirror(
      'LexicalFocusOrder',
      {
        '#as': LexicalFocusOrder_as$,
        '#is': LexicalFocusOrder_is$,
        'order': _LexicalFocusOrder_order$,
        'doCompare': _LexicalFocusOrder_doCompare$,
        'debugFillProperties': _LexicalFocusOrder_debugFillProperties$,
      },
      {},
    ),
    'OrderedTraversalPolicy': m.ClassMirror(
      'OrderedTraversalPolicy',
      {
        '#as': OrderedTraversalPolicy_as$,
        '#is': OrderedTraversalPolicy_is$,
        'secondary': _OrderedTraversalPolicy_secondary$,
        'sortDescendants': _OrderedTraversalPolicy_sortDescendants$,
      },
      {},
    ),
    'FocusTraversalOrder': m.ClassMirror(
      'FocusTraversalOrder',
      {
        '#as': FocusTraversalOrder_as$,
        '#is': FocusTraversalOrder_is$,
        'order': _FocusTraversalOrder_order$,
        'updateShouldNotify': _FocusTraversalOrder_updateShouldNotify$,
        'debugFillProperties': _FocusTraversalOrder_debugFillProperties$,
      },
      {},
    ),
    'FocusTraversalGroup': m.ClassMirror(
      'FocusTraversalGroup',
      {
        '#as': FocusTraversalGroup_as$,
        '#is': FocusTraversalGroup_is$,
        'policy': _FocusTraversalGroup_policy$,
        'descendantsAreFocusable':
            _FocusTraversalGroup_descendantsAreFocusable$,
        'descendantsAreTraversable':
            _FocusTraversalGroup_descendantsAreTraversable$,
        'child': _FocusTraversalGroup_child$,
        'createState': _FocusTraversalGroup_createState$,
        'debugFillProperties': _FocusTraversalGroup_debugFillProperties$,
      },
      {},
    ),
    'RequestFocusIntent': m.ClassMirror(
      'RequestFocusIntent',
      {
        '#as': RequestFocusIntent_as$,
        '#is': RequestFocusIntent_is$,
        'focusNode': _RequestFocusIntent_focusNode$,
      },
      {},
    ),
    'RequestFocusAction': m.ClassMirror(
      'RequestFocusAction',
      {
        '#as': RequestFocusAction_as$,
        '#is': RequestFocusAction_is$,
        'invoke': _RequestFocusAction_invoke$,
      },
      {},
    ),
    'NextFocusIntent': m.ClassMirror(
      'NextFocusIntent',
      {
        '#as': NextFocusIntent_as$,
        '#is': NextFocusIntent_is$,
      },
      {},
    ),
    'NextFocusAction': m.ClassMirror(
      'NextFocusAction',
      {
        '#as': NextFocusAction_as$,
        '#is': NextFocusAction_is$,
        'invoke': _NextFocusAction_invoke$,
        'toKeyEventResult': _NextFocusAction_toKeyEventResult$,
      },
      {},
    ),
    'PreviousFocusIntent': m.ClassMirror(
      'PreviousFocusIntent',
      {
        '#as': PreviousFocusIntent_as$,
        '#is': PreviousFocusIntent_is$,
      },
      {},
    ),
    'PreviousFocusAction': m.ClassMirror(
      'PreviousFocusAction',
      {
        '#as': PreviousFocusAction_as$,
        '#is': PreviousFocusAction_is$,
        'invoke': _PreviousFocusAction_invoke$,
        'toKeyEventResult': _PreviousFocusAction_toKeyEventResult$,
      },
      {},
    ),
    'DirectionalFocusIntent': m.ClassMirror(
      'DirectionalFocusIntent',
      {
        '#as': DirectionalFocusIntent_as$,
        '#is': DirectionalFocusIntent_is$,
        'direction': _DirectionalFocusIntent_direction$,
        'ignoreTextFields': _DirectionalFocusIntent_ignoreTextFields$,
        'debugFillProperties': _DirectionalFocusIntent_debugFillProperties$,
      },
      {},
    ),
    'DirectionalFocusAction': m.ClassMirror(
      'DirectionalFocusAction',
      {
        '#as': DirectionalFocusAction_as$,
        '#is': DirectionalFocusAction_is$,
        'invoke': _DirectionalFocusAction_invoke$,
      },
      {},
    ),
    'ExcludeFocusTraversal': m.ClassMirror(
      'ExcludeFocusTraversal',
      {
        '#as': ExcludeFocusTraversal_as$,
        '#is': ExcludeFocusTraversal_is$,
        'excluding': _ExcludeFocusTraversal_excluding$,
        'child': _ExcludeFocusTraversal_child$,
        'build': _ExcludeFocusTraversal_build$,
      },
      {},
    ),
    'TraversalDirection': m.ClassMirror(
      'TraversalDirection',
      {},
      {},
    ),
    'TraversalEdgeBehavior': m.ClassMirror(
      'TraversalEdgeBehavior',
      {},
      {},
    ),
  },
);
Function FocusTraversalPolicy_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as FocusTraversalPolicy;
Function FocusTraversalPolicy_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is FocusTraversalPolicy;
Function _FocusTraversalPolicy_findFirstFocus$(
  m.Scope scope$,
  FocusTraversalPolicy target$,
) =>
    target$.findFirstFocus;
Function _FocusTraversalPolicy_findLastFocus$(
  m.Scope scope$,
  FocusTraversalPolicy target$,
) =>
    target$.findLastFocus;
Function _FocusTraversalPolicy_findFirstFocusInDirection$(
  m.Scope scope$,
  FocusTraversalPolicy target$,
) =>
    target$.findFirstFocusInDirection;
Function _FocusTraversalPolicy_invalidateScopeData$(
  m.Scope scope$,
  FocusTraversalPolicy target$,
) =>
    target$.invalidateScopeData;
Function _FocusTraversalPolicy_changedScope$(
  m.Scope scope$,
  FocusTraversalPolicy target$,
) =>
    target$.changedScope;
Function _FocusTraversalPolicy_next$(
  m.Scope scope$,
  FocusTraversalPolicy target$,
) =>
    target$.next;
Function _FocusTraversalPolicy_previous$(
  m.Scope scope$,
  FocusTraversalPolicy target$,
) =>
    target$.previous;
Function _FocusTraversalPolicy_inDirection$(
  m.Scope scope$,
  FocusTraversalPolicy target$,
) =>
    target$.inDirection;
Function _FocusTraversalPolicy_sortDescendants$(
  m.Scope scope$,
  FocusTraversalPolicy target$,
) =>
    target$.sortDescendants;
Function WidgetOrderTraversalPolicy_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as WidgetOrderTraversalPolicy;
Function WidgetOrderTraversalPolicy_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is WidgetOrderTraversalPolicy;
Function _WidgetOrderTraversalPolicy__$(m.Scope scope$) => () {
      return WidgetOrderTraversalPolicy();
    };
Function _WidgetOrderTraversalPolicy_sortDescendants$(
  m.Scope scope$,
  WidgetOrderTraversalPolicy target$,
) =>
    target$.sortDescendants;
Function ReadingOrderTraversalPolicy_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ReadingOrderTraversalPolicy;
Function ReadingOrderTraversalPolicy_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ReadingOrderTraversalPolicy;
Function _ReadingOrderTraversalPolicy__$(m.Scope scope$) => () {
      return ReadingOrderTraversalPolicy();
    };
Function _ReadingOrderTraversalPolicy_sortDescendants$(
  m.Scope scope$,
  ReadingOrderTraversalPolicy target$,
) =>
    target$.sortDescendants;
Function FocusOrder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as FocusOrder;
Function FocusOrder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is FocusOrder;
Function _FocusOrder_compareTo$(
  m.Scope scope$,
  FocusOrder target$,
) =>
    target$.compareTo;
Function _FocusOrder_doCompare$(
  m.Scope scope$,
  FocusOrder target$,
) =>
    target$.doCompare;
Function NumericFocusOrder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as NumericFocusOrder;
Function NumericFocusOrder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is NumericFocusOrder;
Function _NumericFocusOrder_order$(
  m.Scope scope$,
  NumericFocusOrder target$,
) =>
    () {
      return target$.order;
    };
Function _NumericFocusOrder__$(m.Scope scope$) => (double order) {
      return NumericFocusOrder(order);
    };
Function _NumericFocusOrder_doCompare$(
  m.Scope scope$,
  NumericFocusOrder target$,
) =>
    target$.doCompare;
Function _NumericFocusOrder_debugFillProperties$(
  m.Scope scope$,
  NumericFocusOrder target$,
) =>
    target$.debugFillProperties;
Function LexicalFocusOrder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as LexicalFocusOrder;
Function LexicalFocusOrder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is LexicalFocusOrder;
Function _LexicalFocusOrder_order$(
  m.Scope scope$,
  LexicalFocusOrder target$,
) =>
    () {
      return target$.order;
    };
Function _LexicalFocusOrder__$(m.Scope scope$) => (String order) {
      return LexicalFocusOrder(order);
    };
Function _LexicalFocusOrder_doCompare$(
  m.Scope scope$,
  LexicalFocusOrder target$,
) =>
    target$.doCompare;
Function _LexicalFocusOrder_debugFillProperties$(
  m.Scope scope$,
  LexicalFocusOrder target$,
) =>
    target$.debugFillProperties;
Function OrderedTraversalPolicy_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as OrderedTraversalPolicy;
Function OrderedTraversalPolicy_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is OrderedTraversalPolicy;
Function _OrderedTraversalPolicy_secondary$(
  m.Scope scope$,
  OrderedTraversalPolicy target$,
) =>
    () {
      return target$.secondary;
    };
Function _OrderedTraversalPolicy__$(m.Scope scope$) =>
    ({FocusTraversalPolicy? secondary}) {
      return OrderedTraversalPolicy(secondary: secondary);
    };
Function _OrderedTraversalPolicy_sortDescendants$(
  m.Scope scope$,
  OrderedTraversalPolicy target$,
) =>
    target$.sortDescendants;
Function FocusTraversalOrder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as FocusTraversalOrder;
Function FocusTraversalOrder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is FocusTraversalOrder;
Function _FocusTraversalOrder_order$(
  m.Scope scope$,
  FocusTraversalOrder target$,
) =>
    () {
      return target$.order;
    };
Function _FocusTraversalOrder__$(m.Scope scope$) => ({
      Key? key,
      required FocusOrder order,
      required Widget child,
    }) {
      return FocusTraversalOrder(
        child: child,
        key: key,
        order: order,
      );
    };
Function _FocusTraversalOrder_of$(m.Scope scope$) => FocusTraversalOrder.of;
Function _FocusTraversalOrder_maybeOf$(m.Scope scope$) =>
    FocusTraversalOrder.maybeOf;
Function _FocusTraversalOrder_updateShouldNotify$(
  m.Scope scope$,
  FocusTraversalOrder target$,
) =>
    target$.updateShouldNotify;
Function _FocusTraversalOrder_debugFillProperties$(
  m.Scope scope$,
  FocusTraversalOrder target$,
) =>
    target$.debugFillProperties;
Function FocusTraversalGroup_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as FocusTraversalGroup;
Function FocusTraversalGroup_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is FocusTraversalGroup;
Function _FocusTraversalGroup_policy$(
  m.Scope scope$,
  FocusTraversalGroup target$,
) =>
    () {
      return target$.policy;
    };
Function _FocusTraversalGroup_descendantsAreFocusable$(
  m.Scope scope$,
  FocusTraversalGroup target$,
) =>
    () {
      return target$.descendantsAreFocusable;
    };
Function _FocusTraversalGroup_descendantsAreTraversable$(
  m.Scope scope$,
  FocusTraversalGroup target$,
) =>
    () {
      return target$.descendantsAreTraversable;
    };
Function _FocusTraversalGroup_child$(
  m.Scope scope$,
  FocusTraversalGroup target$,
) =>
    () {
      return target$.child;
    };
Function _FocusTraversalGroup__$(m.Scope scope$) => ({
      Key? key,
      FocusTraversalPolicy? policy,
      bool? descendantsAreFocusable,
      bool? descendantsAreTraversable,
      required Widget child,
    }) {
      return FocusTraversalGroup(
        child: child,
        descendantsAreFocusable: descendantsAreFocusable ?? true,
        descendantsAreTraversable: descendantsAreTraversable ?? true,
        key: key,
        policy: policy,
      );
    };
Function _FocusTraversalGroup_maybeOfNode$(m.Scope scope$) =>
    FocusTraversalGroup.maybeOfNode;
Function _FocusTraversalGroup_of$(m.Scope scope$) => FocusTraversalGroup.of;
Function _FocusTraversalGroup_maybeOf$(m.Scope scope$) =>
    FocusTraversalGroup.maybeOf;
Function _FocusTraversalGroup_createState$(
  m.Scope scope$,
  FocusTraversalGroup target$,
) =>
    target$.createState;
Function _FocusTraversalGroup_debugFillProperties$(
  m.Scope scope$,
  FocusTraversalGroup target$,
) =>
    target$.debugFillProperties;
Function RequestFocusIntent_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as RequestFocusIntent;
Function RequestFocusIntent_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is RequestFocusIntent;
Function _RequestFocusIntent_focusNode$(
  m.Scope scope$,
  RequestFocusIntent target$,
) =>
    () {
      return target$.focusNode;
    };
Function _RequestFocusIntent__$(m.Scope scope$) => (FocusNode focusNode) {
      return RequestFocusIntent(focusNode);
    };
Function RequestFocusAction_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as RequestFocusAction;
Function RequestFocusAction_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is RequestFocusAction;
Function _RequestFocusAction__$(m.Scope scope$) => () {
      return RequestFocusAction();
    };
Function _RequestFocusAction_invoke$(
  m.Scope scope$,
  RequestFocusAction target$,
) =>
    target$.invoke;
Function NextFocusIntent_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as NextFocusIntent;
Function NextFocusIntent_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is NextFocusIntent;
Function _NextFocusIntent__$(m.Scope scope$) => () {
      return NextFocusIntent();
    };
Function NextFocusAction_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as NextFocusAction;
Function NextFocusAction_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is NextFocusAction;
Function _NextFocusAction__$(m.Scope scope$) => () {
      return NextFocusAction();
    };
Function _NextFocusAction_invoke$(
  m.Scope scope$,
  NextFocusAction target$,
) =>
    target$.invoke;
Function _NextFocusAction_toKeyEventResult$(
  m.Scope scope$,
  NextFocusAction target$,
) =>
    target$.toKeyEventResult;
Function PreviousFocusIntent_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as PreviousFocusIntent;
Function PreviousFocusIntent_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is PreviousFocusIntent;
Function _PreviousFocusIntent__$(m.Scope scope$) => () {
      return PreviousFocusIntent();
    };
Function PreviousFocusAction_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as PreviousFocusAction;
Function PreviousFocusAction_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is PreviousFocusAction;
Function _PreviousFocusAction__$(m.Scope scope$) => () {
      return PreviousFocusAction();
    };
Function _PreviousFocusAction_invoke$(
  m.Scope scope$,
  PreviousFocusAction target$,
) =>
    target$.invoke;
Function _PreviousFocusAction_toKeyEventResult$(
  m.Scope scope$,
  PreviousFocusAction target$,
) =>
    target$.toKeyEventResult;
Function DirectionalFocusIntent_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as DirectionalFocusIntent;
Function DirectionalFocusIntent_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is DirectionalFocusIntent;
Function _DirectionalFocusIntent_direction$(
  m.Scope scope$,
  DirectionalFocusIntent target$,
) =>
    () {
      return target$.direction;
    };
Function _DirectionalFocusIntent_ignoreTextFields$(
  m.Scope scope$,
  DirectionalFocusIntent target$,
) =>
    () {
      return target$.ignoreTextFields;
    };
Function _DirectionalFocusIntent__$(m.Scope scope$) => (
      TraversalDirection direction, {
      bool? ignoreTextFields,
    }) {
      return DirectionalFocusIntent(
        direction,
        ignoreTextFields: ignoreTextFields ?? true,
      );
    };
Function _DirectionalFocusIntent_debugFillProperties$(
  m.Scope scope$,
  DirectionalFocusIntent target$,
) =>
    target$.debugFillProperties;
Function DirectionalFocusAction_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as DirectionalFocusAction;
Function DirectionalFocusAction_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is DirectionalFocusAction;
Function _DirectionalFocusAction__$(m.Scope scope$) => () {
      return DirectionalFocusAction();
    };
Function _DirectionalFocusAction_forTextField_$(m.Scope scope$) =>
    DirectionalFocusAction.forTextField;
Function _DirectionalFocusAction_invoke$(
  m.Scope scope$,
  DirectionalFocusAction target$,
) =>
    target$.invoke;
Function ExcludeFocusTraversal_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ExcludeFocusTraversal;
Function ExcludeFocusTraversal_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ExcludeFocusTraversal;
Function _ExcludeFocusTraversal_excluding$(
  m.Scope scope$,
  ExcludeFocusTraversal target$,
) =>
    () {
      return target$.excluding;
    };
Function _ExcludeFocusTraversal_child$(
  m.Scope scope$,
  ExcludeFocusTraversal target$,
) =>
    () {
      return target$.child;
    };
Function _ExcludeFocusTraversal__$(m.Scope scope$) => ({
      Key? key,
      bool? excluding,
      required Widget child,
    }) {
      return ExcludeFocusTraversal(
        child: child,
        excluding: excluding ?? true,
        key: key,
      );
    };
Function _ExcludeFocusTraversal_build$(
  m.Scope scope$,
  ExcludeFocusTraversal target$,
) =>
    target$.build;
Function _TraversalDirection_up$(m.Scope scope$) => () => TraversalDirection.up;
Function _TraversalDirection_right$(m.Scope scope$) =>
    () => TraversalDirection.right;
Function _TraversalDirection_down$(m.Scope scope$) =>
    () => TraversalDirection.down;
Function _TraversalDirection_left$(m.Scope scope$) =>
    () => TraversalDirection.left;
Function _TraversalDirection_values$(m.Scope scope$) =>
    () => TraversalDirection.values;
Function _TraversalEdgeBehavior_closedLoop$(m.Scope scope$) =>
    () => TraversalEdgeBehavior.closedLoop;
Function _TraversalEdgeBehavior_leaveFlutterView$(m.Scope scope$) =>
    () => TraversalEdgeBehavior.leaveFlutterView;
Function _TraversalEdgeBehavior_values$(m.Scope scope$) =>
    () => TraversalEdgeBehavior.values;
