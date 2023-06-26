import 'package:flutter/src/widgets/banner.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/banner.dart@BannerPainter@#as': (m.Scope scope, target)=>()=>target as BannerPainter,
'package:flutter/src/widgets/banner.dart@BannerPainter@#is': (m.Scope scope, target)=>()=>target is BannerPainter,
'package:flutter/src/widgets/banner.dart@BannerPainter@message': (m.Scope scope, BannerPainter target)=>target.message,
'package:flutter/src/widgets/banner.dart@BannerPainter@textDirection': (m.Scope scope, BannerPainter target)=>target.textDirection,
'package:flutter/src/widgets/banner.dart@BannerPainter@location': (m.Scope scope, BannerPainter target)=>target.location,
'package:flutter/src/widgets/banner.dart@BannerPainter@layoutDirection': (m.Scope scope, BannerPainter target)=>target.layoutDirection,
'package:flutter/src/widgets/banner.dart@BannerPainter@color': (m.Scope scope, BannerPainter target)=>target.color,
'package:flutter/src/widgets/banner.dart@BannerPainter@textStyle': (m.Scope scope, BannerPainter target)=>target.textStyle,
'package:flutter/src/widgets/banner.dart@BannerPainter@': (m.Scope scope)=>BannerPainter,
'package:flutter/src/widgets/banner.dart@BannerPainter@dispose': (m.Scope scope, BannerPainter target)=>target.dispose,
'package:flutter/src/widgets/banner.dart@BannerPainter@paint': (m.Scope scope, BannerPainter target)=>target.paint,
'package:flutter/src/widgets/banner.dart@BannerPainter@shouldRepaint': (m.Scope scope, BannerPainter target)=>target.shouldRepaint,
'package:flutter/src/widgets/banner.dart@BannerPainter@hitTest': (m.Scope scope, BannerPainter target)=>target.hitTest,
'package:flutter/src/widgets/banner.dart@Banner@#as': (m.Scope scope, target)=>()=>target as Banner,
'package:flutter/src/widgets/banner.dart@Banner@#is': (m.Scope scope, target)=>()=>target is Banner,
'package:flutter/src/widgets/banner.dart@Banner@child': (m.Scope scope, Banner target)=>target.child,
'package:flutter/src/widgets/banner.dart@Banner@message': (m.Scope scope, Banner target)=>target.message,
'package:flutter/src/widgets/banner.dart@Banner@textDirection': (m.Scope scope, Banner target)=>target.textDirection,
'package:flutter/src/widgets/banner.dart@Banner@location': (m.Scope scope, Banner target)=>target.location,
'package:flutter/src/widgets/banner.dart@Banner@layoutDirection': (m.Scope scope, Banner target)=>target.layoutDirection,
'package:flutter/src/widgets/banner.dart@Banner@color': (m.Scope scope, Banner target)=>target.color,
'package:flutter/src/widgets/banner.dart@Banner@textStyle': (m.Scope scope, Banner target)=>target.textStyle,
'package:flutter/src/widgets/banner.dart@Banner@': (m.Scope scope)=>Banner,
'package:flutter/src/widgets/banner.dart@Banner@build': (m.Scope scope, Banner target)=>target.build,
'package:flutter/src/widgets/banner.dart@Banner@debugFillProperties': (m.Scope scope, Banner target)=>target.debugFillProperties,
'package:flutter/src/widgets/banner.dart@CheckedModeBanner@#as': (m.Scope scope, target)=>()=>target as CheckedModeBanner,
'package:flutter/src/widgets/banner.dart@CheckedModeBanner@#is': (m.Scope scope, target)=>()=>target is CheckedModeBanner,
'package:flutter/src/widgets/banner.dart@CheckedModeBanner@child': (m.Scope scope, CheckedModeBanner target)=>target.child,
'package:flutter/src/widgets/banner.dart@CheckedModeBanner@': (m.Scope scope)=>CheckedModeBanner,
'package:flutter/src/widgets/banner.dart@CheckedModeBanner@build': (m.Scope scope, CheckedModeBanner target)=>target.build,
'package:flutter/src/widgets/banner.dart@CheckedModeBanner@debugFillProperties': (m.Scope scope, CheckedModeBanner target)=>target.debugFillProperties,

};
}