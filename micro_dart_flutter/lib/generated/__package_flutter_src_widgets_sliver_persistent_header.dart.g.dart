import 'package:flutter/src/widgets/sliver_persistent_header.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart' show TickerProvider;
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeaderDelegate@#as': (m.Scope scope, target)=>()=>target as SliverPersistentHeaderDelegate,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeaderDelegate@#is': (m.Scope scope, target)=>()=>target is SliverPersistentHeaderDelegate,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeaderDelegate@minExtent': (m.Scope scope, SliverPersistentHeaderDelegate target)=>target.minExtent,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeaderDelegate@maxExtent': (m.Scope scope, SliverPersistentHeaderDelegate target)=>target.maxExtent,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeaderDelegate@vsync': (m.Scope scope, SliverPersistentHeaderDelegate target)=>target.vsync,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeaderDelegate@snapConfiguration': (m.Scope scope, SliverPersistentHeaderDelegate target)=>target.snapConfiguration,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeaderDelegate@stretchConfiguration': (m.Scope scope, SliverPersistentHeaderDelegate target)=>target.stretchConfiguration,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeaderDelegate@showOnScreenConfiguration': (m.Scope scope, SliverPersistentHeaderDelegate target)=>target.showOnScreenConfiguration,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeaderDelegate@build': (m.Scope scope, SliverPersistentHeaderDelegate target)=>target.build,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeaderDelegate@shouldRebuild': (m.Scope scope, SliverPersistentHeaderDelegate target)=>target.shouldRebuild,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeader@#as': (m.Scope scope, target)=>()=>target as SliverPersistentHeader,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeader@#is': (m.Scope scope, target)=>()=>target is SliverPersistentHeader,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeader@delegate': (m.Scope scope, SliverPersistentHeader target)=>target.delegate,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeader@pinned': (m.Scope scope, SliverPersistentHeader target)=>target.pinned,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeader@floating': (m.Scope scope, SliverPersistentHeader target)=>target.floating,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeader@': (m.Scope scope)=>SliverPersistentHeader,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeader@build': (m.Scope scope, SliverPersistentHeader target)=>target.build,
'package:flutter/src/widgets/sliver_persistent_header.dart@SliverPersistentHeader@debugFillProperties': (m.Scope scope, SliverPersistentHeader target)=>target.debugFillProperties,

};
}