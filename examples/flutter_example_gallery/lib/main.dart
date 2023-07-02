import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_gallery/flutter_plugin_gallery.dart';

void main() async {
  if (defaultTargetPlatform != TargetPlatform.linux &&
      defaultTargetPlatform != TargetPlatform.windows &&
      defaultTargetPlatform != TargetPlatform.macOS) {
    WidgetsFlutterBinding.ensureInitialized();

    FlutterError.onError = (errorDetails) {
      FlutterError.dumpErrorToConsole(errorDetails);
    };
    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      FlutterError.dumpErrorToConsole(
          FlutterErrorDetails(exception: error, stack: stack));
      return true;
    };
  }

  runApp(const GalleryApp());
}
