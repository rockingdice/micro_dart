import 'dart:io';
import 'dart:isolate';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:build_resolvers/src/analysis_driver.dart';
import 'package:build_resolvers/src/sdk_summary.dart';
import 'package:build_resolvers/src/build_asset_uri_resolver.dart';
import 'package:package_config/package_config.dart';

import 'package:analyzer/src/clients/build_resolvers/build_resolvers.dart';
import 'package:analyzer/src/summary2/package_bundle_format.dart';
import 'package:analyzer/src/summary/summary_sdk.dart';
import 'package:pool/pool.dart';

void main() async {
  // var sdkSummaryPath = await defaultSdkSummaryGenerator();
  // var sdkBundle = PackageBundleReader( File(sdkSummaryPath).readAsBytesSync());
  // var sdk = SummaryBasedDartSdk.forBundle(sdkBundle);

  // final uriResolver = BuildAssetUriResolver();

  // var rootPath = Directory(".").absolute.parent.parent.absolute.path;

  // final packageConfig =
  //     await loadPackageConfig();
  // var analysisOptions = AnalysisOptionsImpl();
  // var driver = await analysisDriver(uriResolver, analysisOptions,
  //     await defaultSdkSummaryGenerator(), packageConfig);

  // final publicSdkUris =
  //   driver.sdkLibraryUris.where((e) => !e.path.startsWith('_'));
  // final sdkElementList = publicSdkUris.map((uri) async{
  //    final result = await driver.currentSession
  //           .getLibraryByUri(uri.toString()) as LibraryElementResult;
  //       return result.element;
  // }).toList();
}

Stream<LibraryElement> sdkLibraries(
    AnalysisDriverForPackageBuild driver, Pool pool) {
  final loadLibraries = Future.sync(() {
    final publicSdkUris =
        driver.sdkLibraryUris.where((e) => !e.path.startsWith('_'));

    return Future.wait(publicSdkUris.map((uri) {
      return pool.withResource(() async {
        final result = await driver.currentSession
            .getLibraryByUri(uri.toString()) as LibraryElementResult;
        return result.element;
      });
    }));
  });

  return Stream.fromFuture(loadLibraries).expand((libraries) => libraries);
}
