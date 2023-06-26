import 'package:flutter/src/services/restoration.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/services/message_codecs.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/restoration.dart@RestorationManager@#as': (m.Scope scope, target)=>()=>target as RestorationManager,
'package:flutter/src/services/restoration.dart@RestorationManager@#is': (m.Scope scope, target)=>()=>target is RestorationManager,
'package:flutter/src/services/restoration.dart@RestorationManager@rootBucket': (m.Scope scope, RestorationManager target)=>target.rootBucket,
'package:flutter/src/services/restoration.dart@RestorationManager@isReplacing': (m.Scope scope, RestorationManager target)=>target.isReplacing,
'package:flutter/src/services/restoration.dart@RestorationManager@': (m.Scope scope)=>(){
return RestorationManager();
},
'package:flutter/src/services/restoration.dart@RestorationManager@initChannels': (m.Scope scope, RestorationManager target)=>target.initChannels,
'package:flutter/src/services/restoration.dart@RestorationManager@handleRestorationUpdateFromEngine': (m.Scope scope, RestorationManager target)=>target.handleRestorationUpdateFromEngine,
'package:flutter/src/services/restoration.dart@RestorationManager@sendToEngine': (m.Scope scope, RestorationManager target)=>target.sendToEngine,
'package:flutter/src/services/restoration.dart@RestorationManager@scheduleSerializationFor': (m.Scope scope, RestorationManager target)=>target.scheduleSerializationFor,
'package:flutter/src/services/restoration.dart@RestorationManager@unscheduleSerializationFor': (m.Scope scope, RestorationManager target)=>target.unscheduleSerializationFor,
'package:flutter/src/services/restoration.dart@RestorationManager@flushData': (m.Scope scope, RestorationManager target)=>target.flushData,
'package:flutter/src/services/restoration.dart@RestorationBucket@#as': (m.Scope scope, target)=>()=>target as RestorationBucket,
'package:flutter/src/services/restoration.dart@RestorationBucket@#is': (m.Scope scope, target)=>()=>target is RestorationBucket,
'package:flutter/src/services/restoration.dart@RestorationBucket@debugOwner': (m.Scope scope, RestorationBucket target)=>target.debugOwner,
'package:flutter/src/services/restoration.dart@RestorationBucket@isReplacing': (m.Scope scope, RestorationBucket target)=>target.isReplacing,
'package:flutter/src/services/restoration.dart@RestorationBucket@restorationId': (m.Scope scope, RestorationBucket target)=>target.restorationId,
'package:flutter/src/services/restoration.dart@RestorationBucket@empty': (m.Scope scope)=>RestorationBucket.empty,
'package:flutter/src/services/restoration.dart@RestorationBucket@root': (m.Scope scope)=>RestorationBucket.root,
'package:flutter/src/services/restoration.dart@RestorationBucket@child': (m.Scope scope)=>RestorationBucket.child,
'package:flutter/src/services/restoration.dart@RestorationBucket@read': (m.Scope scope, RestorationBucket target)=>target.read,
'package:flutter/src/services/restoration.dart@RestorationBucket@write': (m.Scope scope, RestorationBucket target)=>target.write,
'package:flutter/src/services/restoration.dart@RestorationBucket@remove': (m.Scope scope, RestorationBucket target)=>target.remove,
'package:flutter/src/services/restoration.dart@RestorationBucket@contains': (m.Scope scope, RestorationBucket target)=>target.contains,
'package:flutter/src/services/restoration.dart@RestorationBucket@claimChild': (m.Scope scope, RestorationBucket target)=>target.claimChild,
'package:flutter/src/services/restoration.dart@RestorationBucket@adoptChild': (m.Scope scope, RestorationBucket target)=>target.adoptChild,
'package:flutter/src/services/restoration.dart@RestorationBucket@finalize': (m.Scope scope, RestorationBucket target)=>target.finalize,
'package:flutter/src/services/restoration.dart@RestorationBucket@rename': (m.Scope scope, RestorationBucket target)=>target.rename,
'package:flutter/src/services/restoration.dart@RestorationBucket@dispose': (m.Scope scope, RestorationBucket target)=>target.dispose,
'package:flutter/src/services/restoration.dart@RestorationBucket@toString': (m.Scope scope, RestorationBucket target)=>target.toString,
'package:flutter/src/services/restoration.dart@@debugIsSerializableForRestoration': (m.Scope scope)=>debugIsSerializableForRestoration,

};
}