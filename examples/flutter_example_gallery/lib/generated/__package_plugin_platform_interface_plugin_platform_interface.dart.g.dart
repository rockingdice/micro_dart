import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:meta/meta.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:plugin_platform_interface/plugin_platform_interface.dart@PlatformInterface@#as': (m.Scope scope, target)=>()=>target as PlatformInterface,
'package:plugin_platform_interface/plugin_platform_interface.dart@PlatformInterface@#is': (m.Scope scope, target)=>()=>target is PlatformInterface,
'package:plugin_platform_interface/plugin_platform_interface.dart@PlatformInterface@verify': (m.Scope scope)=>PlatformInterface.verify,
'package:plugin_platform_interface/plugin_platform_interface.dart@PlatformInterface@verifyToken': (m.Scope scope)=>PlatformInterface.verifyToken,
'package:plugin_platform_interface/plugin_platform_interface.dart@MockPlatformInterfaceMixin@#as': (m.Scope scope, target)=>()=>target as MockPlatformInterfaceMixin,
'package:plugin_platform_interface/plugin_platform_interface.dart@MockPlatformInterfaceMixin@#is': (m.Scope scope, target)=>()=>target is MockPlatformInterfaceMixin,

};
}