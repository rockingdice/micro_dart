import 'package:flutter/src/services/browser_context_menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/browser_context_menu.dart@BrowserContextMenu@#as': (m.Scope scope, target)=>()=>target as BrowserContextMenu,
'package:flutter/src/services/browser_context_menu.dart@BrowserContextMenu@#is': (m.Scope scope, target)=>()=>target is BrowserContextMenu,
'package:flutter/src/services/browser_context_menu.dart@BrowserContextMenu@enabled': (m.Scope scope)=>BrowserContextMenu.enabled,
'package:flutter/src/services/browser_context_menu.dart@BrowserContextMenu@disableContextMenu': (m.Scope scope)=>BrowserContextMenu.disableContextMenu,
'package:flutter/src/services/browser_context_menu.dart@BrowserContextMenu@enableContextMenu': (m.Scope scope)=>BrowserContextMenu.enableContextMenu,

};
}