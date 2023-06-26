import 'package:flutter/src/widgets/text.dart';
import 'dart:ui' show TextHeightBehavior;
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/default_selection_style.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/selection_container.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/text.dart@DefaultTextStyle@#as': (m.Scope scope, target)=>()=>target as DefaultTextStyle,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@#is': (m.Scope scope, target)=>()=>target is DefaultTextStyle,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@style': (m.Scope scope, DefaultTextStyle target)=>target.style,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@textAlign': (m.Scope scope, DefaultTextStyle target)=>target.textAlign,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@softWrap': (m.Scope scope, DefaultTextStyle target)=>target.softWrap,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@overflow': (m.Scope scope, DefaultTextStyle target)=>target.overflow,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@maxLines': (m.Scope scope, DefaultTextStyle target)=>target.maxLines,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@textWidthBasis': (m.Scope scope, DefaultTextStyle target)=>target.textWidthBasis,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@textHeightBehavior': (m.Scope scope, DefaultTextStyle target)=>target.textHeightBehavior,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@': (m.Scope scope)=>DefaultTextStyle,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@fallback': (m.Scope scope)=>DefaultTextStyle.fallback,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@merge': (m.Scope scope)=>DefaultTextStyle.merge,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@of': (m.Scope scope)=>DefaultTextStyle.of,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@updateShouldNotify': (m.Scope scope, DefaultTextStyle target)=>target.updateShouldNotify,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@wrap': (m.Scope scope, DefaultTextStyle target)=>target.wrap,
'package:flutter/src/widgets/text.dart@DefaultTextStyle@debugFillProperties': (m.Scope scope, DefaultTextStyle target)=>target.debugFillProperties,
'package:flutter/src/widgets/text.dart@DefaultTextHeightBehavior@#as': (m.Scope scope, target)=>()=>target as DefaultTextHeightBehavior,
'package:flutter/src/widgets/text.dart@DefaultTextHeightBehavior@#is': (m.Scope scope, target)=>()=>target is DefaultTextHeightBehavior,
'package:flutter/src/widgets/text.dart@DefaultTextHeightBehavior@textHeightBehavior': (m.Scope scope, DefaultTextHeightBehavior target)=>target.textHeightBehavior,
'package:flutter/src/widgets/text.dart@DefaultTextHeightBehavior@': (m.Scope scope)=>DefaultTextHeightBehavior,
'package:flutter/src/widgets/text.dart@DefaultTextHeightBehavior@maybeOf': (m.Scope scope)=>DefaultTextHeightBehavior.maybeOf,
'package:flutter/src/widgets/text.dart@DefaultTextHeightBehavior@of': (m.Scope scope)=>DefaultTextHeightBehavior.of,
'package:flutter/src/widgets/text.dart@DefaultTextHeightBehavior@updateShouldNotify': (m.Scope scope, DefaultTextHeightBehavior target)=>target.updateShouldNotify,
'package:flutter/src/widgets/text.dart@DefaultTextHeightBehavior@wrap': (m.Scope scope, DefaultTextHeightBehavior target)=>target.wrap,
'package:flutter/src/widgets/text.dart@DefaultTextHeightBehavior@debugFillProperties': (m.Scope scope, DefaultTextHeightBehavior target)=>target.debugFillProperties,
'package:flutter/src/widgets/text.dart@Text@#as': (m.Scope scope, target)=>()=>target as Text,
'package:flutter/src/widgets/text.dart@Text@#is': (m.Scope scope, target)=>()=>target is Text,
'package:flutter/src/widgets/text.dart@Text@data': (m.Scope scope, Text target)=>target.data,
'package:flutter/src/widgets/text.dart@Text@textSpan': (m.Scope scope, Text target)=>target.textSpan,
'package:flutter/src/widgets/text.dart@Text@style': (m.Scope scope, Text target)=>target.style,
'package:flutter/src/widgets/text.dart@Text@strutStyle': (m.Scope scope, Text target)=>target.strutStyle,
'package:flutter/src/widgets/text.dart@Text@textAlign': (m.Scope scope, Text target)=>target.textAlign,
'package:flutter/src/widgets/text.dart@Text@textDirection': (m.Scope scope, Text target)=>target.textDirection,
'package:flutter/src/widgets/text.dart@Text@locale': (m.Scope scope, Text target)=>target.locale,
'package:flutter/src/widgets/text.dart@Text@softWrap': (m.Scope scope, Text target)=>target.softWrap,
'package:flutter/src/widgets/text.dart@Text@overflow': (m.Scope scope, Text target)=>target.overflow,
'package:flutter/src/widgets/text.dart@Text@textScaleFactor': (m.Scope scope, Text target)=>target.textScaleFactor,
'package:flutter/src/widgets/text.dart@Text@maxLines': (m.Scope scope, Text target)=>target.maxLines,
'package:flutter/src/widgets/text.dart@Text@semanticsLabel': (m.Scope scope, Text target)=>target.semanticsLabel,
'package:flutter/src/widgets/text.dart@Text@textWidthBasis': (m.Scope scope, Text target)=>target.textWidthBasis,
'package:flutter/src/widgets/text.dart@Text@textHeightBehavior': (m.Scope scope, Text target)=>target.textHeightBehavior,
'package:flutter/src/widgets/text.dart@Text@selectionColor': (m.Scope scope, Text target)=>target.selectionColor,
'package:flutter/src/widgets/text.dart@Text@': (m.Scope scope)=>Text,
'package:flutter/src/widgets/text.dart@Text@rich': (m.Scope scope)=>Text.rich,
'package:flutter/src/widgets/text.dart@Text@build': (m.Scope scope, Text target)=>target.build,
'package:flutter/src/widgets/text.dart@Text@debugFillProperties': (m.Scope scope, Text target)=>target.debugFillProperties,

};
}