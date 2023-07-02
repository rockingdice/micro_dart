import 'package:flutter/src/services/system_channels.dart';
import 'dart:ui';
import 'package:flutter/src/services/message_codecs.dart';
import 'package:flutter/src/services/platform_channel.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/system_channels.dart@SystemChannels@#as': (m.Scope scope, target)=>()=>target as SystemChannels,
'package:flutter/src/services/system_channels.dart@SystemChannels@#is': (m.Scope scope, target)=>()=>target is SystemChannels,
'package:flutter/src/services/system_channels.dart@SystemChannels@navigation': (m.Scope scope)=>SystemChannels.navigation,
'package:flutter/src/services/system_channels.dart@SystemChannels@platform': (m.Scope scope)=>SystemChannels.platform,
'package:flutter/src/services/system_channels.dart@SystemChannels@textInput': (m.Scope scope)=>SystemChannels.textInput,
'package:flutter/src/services/system_channels.dart@SystemChannels@spellCheck': (m.Scope scope)=>SystemChannels.spellCheck,
'package:flutter/src/services/system_channels.dart@SystemChannels@undoManager': (m.Scope scope)=>SystemChannels.undoManager,
'package:flutter/src/services/system_channels.dart@SystemChannels@keyEvent': (m.Scope scope)=>SystemChannels.keyEvent,
'package:flutter/src/services/system_channels.dart@SystemChannels@lifecycle': (m.Scope scope)=>SystemChannels.lifecycle,
'package:flutter/src/services/system_channels.dart@SystemChannels@system': (m.Scope scope)=>SystemChannels.system,
'package:flutter/src/services/system_channels.dart@SystemChannels@accessibility': (m.Scope scope)=>SystemChannels.accessibility,
'package:flutter/src/services/system_channels.dart@SystemChannels@platform_views': (m.Scope scope)=>SystemChannels.platform_views,
'package:flutter/src/services/system_channels.dart@SystemChannels@skia': (m.Scope scope)=>SystemChannels.skia,
'package:flutter/src/services/system_channels.dart@SystemChannels@mouseCursor': (m.Scope scope)=>SystemChannels.mouseCursor,
'package:flutter/src/services/system_channels.dart@SystemChannels@restoration': (m.Scope scope)=>SystemChannels.restoration,
'package:flutter/src/services/system_channels.dart@SystemChannels@deferredComponent': (m.Scope scope)=>SystemChannels.deferredComponent,
'package:flutter/src/services/system_channels.dart@SystemChannels@localization': (m.Scope scope)=>SystemChannels.localization,
'package:flutter/src/services/system_channels.dart@SystemChannels@menu': (m.Scope scope)=>SystemChannels.menu,
'package:flutter/src/services/system_channels.dart@SystemChannels@contextMenu': (m.Scope scope)=>SystemChannels.contextMenu,

};
}