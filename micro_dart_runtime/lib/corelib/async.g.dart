import 'dart:core';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'dart:async' as l0;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'dart:async@AsyncError@error': (l0.AsyncError target) => target.error,
    'dart:async@AsyncError@stackTrace': (l0.AsyncError target) =>
        target.stackTrace,
    'dart:async@AsyncError@': (List p, Map<String, dynamic> n) =>
        l0.AsyncError(p[0], p[1]),
    'dart:async@AsyncError@defaultStackTrace:static': () =>
        l0.AsyncError.defaultStackTrace,
    'dart:async@AsyncError@toString': (l0.AsyncError target) => target.toString,
    'dart:async@DeferredLibrary@libraryName': (l0.DeferredLibrary target) =>
        target.libraryName,
    'dart:async@DeferredLibrary@uri': (l0.DeferredLibrary target) => target.uri,
    'dart:async@DeferredLibrary@': (List p, Map<String, dynamic> n) =>
        l0.DeferredLibrary(p[0], uri: n['uri']),
    'dart:async@DeferredLibrary@load': (l0.DeferredLibrary target) =>
        target.load,
    'dart:async@DeferredLoadException@': (List p, Map<String, dynamic> n) =>
        l0.DeferredLoadException(p[0]),
    'dart:async@DeferredLoadException@toString':
        (l0.DeferredLoadException target) => target.toString,
    'dart:async@Future@value:static': () => l0.Future.value,
    'dart:async@Future@wait:static': () => l0.Future.wait,
    'dart:async@Future@any:static': () => l0.Future.any,
    'dart:async@Future@forEach:static': () => l0.Future.forEach,
    'dart:async@Future@doWhile:static': () => l0.Future.doWhile,
    'dart:async@Future@then': (Future target) => target.then,
    'dart:async@Future@catchError': (Future target) => target.catchError,
    'dart:async@Future@whenComplete': (Future target) => target.whenComplete,
    'dart:async@Future@asStream': (Future target) => target.asStream,
    'dart:async@Future@timeout': (Future target) => target.timeout,
    'dart:async@TimeoutException@message': (l0.TimeoutException target) =>
        target.message,
    'dart:async@TimeoutException@duration': (l0.TimeoutException target) =>
        target.duration,
    'dart:async@TimeoutException@': (List p, Map<String, dynamic> n) =>
        l0.TimeoutException(p[0], p[1]),
    'dart:async@TimeoutException@toString': (l0.TimeoutException target) =>
        target.toString,
    'dart:async@Completer@': () => l0.Completer(),
    'dart:async@Completer@future': (l0.Completer target) => target.future,
    'dart:async@Completer@isCompleted': (l0.Completer target) =>
        target.isCompleted,
    'dart:async@Completer@complete': (l0.Completer target) => target.complete,
    'dart:async@Completer@completeError': (l0.Completer target) =>
        target.completeError,
    'dart:async@@unawaited:static': () => l0.unawaited,
    'dart:async@@scheduleMicrotask:static': () => l0.scheduleMicrotask,
    'dart:async@Stream@isBroadcast': (Stream target) => target.isBroadcast,
    'dart:async@Stream@length': (Stream target) => target.length,
    'dart:async@Stream@isEmpty': (Stream target) => target.isEmpty,
    'dart:async@Stream@first': (Stream target) => target.first,
    'dart:async@Stream@last': (Stream target) => target.last,
    'dart:async@Stream@single': (Stream target) => target.single,
    'dart:async@Stream@castFrom:static': () => l0.Stream.castFrom,
    'dart:async@Stream@asBroadcastStream': (Stream target) =>
        target.asBroadcastStream,
    'dart:async@Stream@listen': (Stream target) => target.listen,
    'dart:async@Stream@where': (Stream target) => target.where,
    'dart:async@Stream@map': (Stream target) => target.map,
    'dart:async@Stream@asyncMap': (Stream target) => target.asyncMap,
    'dart:async@Stream@asyncExpand': (Stream target) => target.asyncExpand,
    'dart:async@Stream@handleError': (Stream target) => target.handleError,
    'dart:async@Stream@expand': (Stream target) => target.expand,
    'dart:async@Stream@pipe': (Stream target) => target.pipe,
    'dart:async@Stream@transform': (Stream target) => target.transform,
    'dart:async@Stream@reduce': (Stream target) => target.reduce,
    'dart:async@Stream@fold': (Stream target) => target.fold,
    'dart:async@Stream@join': (Stream target) => target.join,
    'dart:async@Stream@contains': (Stream target) => target.contains,
    'dart:async@Stream@forEach': (Stream target) => target.forEach,
    'dart:async@Stream@every': (Stream target) => target.every,
    'dart:async@Stream@any': (Stream target) => target.any,
    'dart:async@Stream@cast': (Stream target) => target.cast,
    'dart:async@Stream@toList': (Stream target) => target.toList,
    'dart:async@Stream@toSet': (Stream target) => target.toSet,
    'dart:async@Stream@drain': (Stream target) => target.drain,
    'dart:async@Stream@take': (Stream target) => target.take,
    'dart:async@Stream@takeWhile': (Stream target) => target.takeWhile,
    'dart:async@Stream@skip': (Stream target) => target.skip,
    'dart:async@Stream@skipWhile': (Stream target) => target.skipWhile,
    'dart:async@Stream@distinct': (Stream target) => target.distinct,
    'dart:async@Stream@firstWhere': (Stream target) => target.firstWhere,
    'dart:async@Stream@lastWhere': (Stream target) => target.lastWhere,
    'dart:async@Stream@singleWhere': (Stream target) => target.singleWhere,
    'dart:async@Stream@elementAt': (Stream target) => target.elementAt,
    'dart:async@Stream@timeout': (Stream target) => target.timeout,
    'dart:async@StreamSubscription@isPaused': (l0.StreamSubscription target) =>
        target.isPaused,
    'dart:async@StreamSubscription@cancel': (l0.StreamSubscription target) =>
        target.cancel,
    'dart:async@StreamSubscription@onData': (l0.StreamSubscription target) =>
        target.onData,
    'dart:async@StreamSubscription@onError': (l0.StreamSubscription target) =>
        target.onError,
    'dart:async@StreamSubscription@onDone': (l0.StreamSubscription target) =>
        target.onDone,
    'dart:async@StreamSubscription@pause': (l0.StreamSubscription target) =>
        target.pause,
    'dart:async@StreamSubscription@resume': (l0.StreamSubscription target) =>
        target.resume,
    'dart:async@StreamSubscription@asFuture': (l0.StreamSubscription target) =>
        target.asFuture,
    'dart:async@EventSink@add': (l0.EventSink target) => target.add,
    'dart:async@EventSink@addError': (l0.EventSink target) => target.addError,
    'dart:async@EventSink@close': (l0.EventSink target) => target.close,
    'dart:async@StreamView@isBroadcast': (l0.StreamView target) =>
        target.isBroadcast,
    'dart:async@StreamView@': (List p, Map<String, dynamic> n) =>
        l0.StreamView(p[0]),
    'dart:async@StreamView@asBroadcastStream': (l0.StreamView target) =>
        target.asBroadcastStream,
    'dart:async@StreamView@listen': (l0.StreamView target) => target.listen,
    'dart:async@StreamConsumer@addStream': (l0.StreamConsumer target) =>
        target.addStream,
    'dart:async@StreamConsumer@close': (l0.StreamConsumer target) =>
        target.close,
    'dart:async@StreamSink@done': (l0.StreamSink target) => target.done,
    'dart:async@StreamSink@close': (l0.StreamSink target) => target.close,
    'dart:async@StreamTransformer@castFrom:static': () =>
        l0.StreamTransformer.castFrom,
    'dart:async@StreamTransformer@bind': (l0.StreamTransformer target) =>
        target.bind,
    'dart:async@StreamTransformer@cast': (l0.StreamTransformer target) =>
        target.cast,
    'dart:async@StreamTransformerBase@cast':
        (l0.StreamTransformerBase target) => target.cast,
    'dart:async@StreamIterator@current': (l0.StreamIterator target) =>
        target.current,
    'dart:async@StreamIterator@moveNext': (l0.StreamIterator target) =>
        target.moveNext,
    'dart:async@StreamIterator@cancel': (l0.StreamIterator target) =>
        target.cancel,
    'dart:async@MultiStreamController@addSync':
        (l0.MultiStreamController target) => target.addSync,
    'dart:async@MultiStreamController@addErrorSync':
        (l0.MultiStreamController target) => target.addErrorSync,
    'dart:async@MultiStreamController@closeSync':
        (l0.MultiStreamController target) => target.closeSync,
    'dart:async@StreamController@onListen': (l0.StreamController target) =>
        target.onListen,
    'dart:async@StreamController@onListen:set':
        (l0.StreamController target, other) => target.onListen = other,
    'dart:async@StreamController@onPause': (l0.StreamController target) =>
        target.onPause,
    'dart:async@StreamController@onPause:set':
        (l0.StreamController target, other) => target.onPause = other,
    'dart:async@StreamController@onResume': (l0.StreamController target) =>
        target.onResume,
    'dart:async@StreamController@onResume:set':
        (l0.StreamController target, other) => target.onResume = other,
    'dart:async@StreamController@onCancel': (l0.StreamController target) =>
        target.onCancel,
    'dart:async@StreamController@onCancel:set':
        (l0.StreamController target, other) => target.onCancel = other,
    'dart:async@StreamController@stream': (l0.StreamController target) =>
        target.stream,
    'dart:async@StreamController@sink': (l0.StreamController target) =>
        target.sink,
    'dart:async@StreamController@isClosed': (l0.StreamController target) =>
        target.isClosed,
    'dart:async@StreamController@isPaused': (l0.StreamController target) =>
        target.isPaused,
    'dart:async@StreamController@hasListener': (l0.StreamController target) =>
        target.hasListener,
    'dart:async@StreamController@done': (l0.StreamController target) =>
        target.done,
    'dart:async@StreamController@add': (l0.StreamController target) =>
        target.add,
    'dart:async@StreamController@addError': (l0.StreamController target) =>
        target.addError,
    'dart:async@StreamController@close': (l0.StreamController target) =>
        target.close,
    'dart:async@StreamController@addStream': (l0.StreamController target) =>
        target.addStream,
    'dart:async@SynchronousStreamController@add':
        (l0.SynchronousStreamController target) => target.add,
    'dart:async@SynchronousStreamController@addError':
        (l0.SynchronousStreamController target) => target.addError,
    'dart:async@SynchronousStreamController@close':
        (l0.SynchronousStreamController target) => target.close,
    'dart:async@Timer@tick': (l0.Timer target) => target.tick,
    'dart:async@Timer@isActive': (l0.Timer target) => target.isActive,
    'dart:async@Timer@run:static': () => l0.Timer.run,
    'dart:async@Timer@cancel': (l0.Timer target) => target.cancel,
    'dart:async@ZoneSpecification@handleUncaughtError':
        (l0.ZoneSpecification target) => target.handleUncaughtError,
    'dart:async@ZoneSpecification@run': (l0.ZoneSpecification target) =>
        target.run,
    'dart:async@ZoneSpecification@runUnary': (l0.ZoneSpecification target) =>
        target.runUnary,
    'dart:async@ZoneSpecification@runBinary': (l0.ZoneSpecification target) =>
        target.runBinary,
    'dart:async@ZoneSpecification@registerCallback':
        (l0.ZoneSpecification target) => target.registerCallback,
    'dart:async@ZoneSpecification@registerUnaryCallback':
        (l0.ZoneSpecification target) => target.registerUnaryCallback,
    'dart:async@ZoneSpecification@registerBinaryCallback':
        (l0.ZoneSpecification target) => target.registerBinaryCallback,
    'dart:async@ZoneSpecification@errorCallback':
        (l0.ZoneSpecification target) => target.errorCallback,
    'dart:async@ZoneSpecification@scheduleMicrotask':
        (l0.ZoneSpecification target) => target.scheduleMicrotask,
    'dart:async@ZoneSpecification@createTimer': (l0.ZoneSpecification target) =>
        target.createTimer,
    'dart:async@ZoneSpecification@createPeriodicTimer':
        (l0.ZoneSpecification target) => target.createPeriodicTimer,
    'dart:async@ZoneSpecification@print': (l0.ZoneSpecification target) =>
        target.print,
    'dart:async@ZoneSpecification@fork': (l0.ZoneSpecification target) =>
        target.fork,
    'dart:async@ZoneDelegate@handleUncaughtError': (l0.ZoneDelegate target) =>
        target.handleUncaughtError,
    'dart:async@ZoneDelegate@run': (l0.ZoneDelegate target) => target.run,
    'dart:async@ZoneDelegate@runUnary': (l0.ZoneDelegate target) =>
        target.runUnary,
    'dart:async@ZoneDelegate@runBinary': (l0.ZoneDelegate target) =>
        target.runBinary,
    'dart:async@ZoneDelegate@registerCallback': (l0.ZoneDelegate target) =>
        target.registerCallback,
    'dart:async@ZoneDelegate@registerUnaryCallback': (l0.ZoneDelegate target) =>
        target.registerUnaryCallback,
    'dart:async@ZoneDelegate@registerBinaryCallback':
        (l0.ZoneDelegate target) => target.registerBinaryCallback,
    'dart:async@ZoneDelegate@errorCallback': (l0.ZoneDelegate target) =>
        target.errorCallback,
    'dart:async@ZoneDelegate@scheduleMicrotask': (l0.ZoneDelegate target) =>
        target.scheduleMicrotask,
    'dart:async@ZoneDelegate@createTimer': (l0.ZoneDelegate target) =>
        target.createTimer,
    'dart:async@ZoneDelegate@createPeriodicTimer': (l0.ZoneDelegate target) =>
        target.createPeriodicTimer,
    'dart:async@ZoneDelegate@print': (l0.ZoneDelegate target) => target.print,
    'dart:async@ZoneDelegate@fork': (l0.ZoneDelegate target) => target.fork,
    'dart:async@Zone@root:static': () => l0.Zone.root,
    'dart:async@Zone@current:static': () => l0.Zone.current,
    'dart:async@Zone@parent': (l0.Zone target) => target.parent,
    'dart:async@Zone@errorZone': (l0.Zone target) => target.errorZone,
    'dart:async@Zone@handleUncaughtError': (l0.Zone target) =>
        target.handleUncaughtError,
    'dart:async@Zone@inSameErrorZone': (l0.Zone target) =>
        target.inSameErrorZone,
    'dart:async@Zone@fork': (l0.Zone target) => target.fork,
    'dart:async@Zone@run': (l0.Zone target) => target.run,
    'dart:async@Zone@runUnary': (l0.Zone target) => target.runUnary,
    'dart:async@Zone@runBinary': (l0.Zone target) => target.runBinary,
    'dart:async@Zone@runGuarded': (l0.Zone target) => target.runGuarded,
    'dart:async@Zone@runUnaryGuarded': (l0.Zone target) =>
        target.runUnaryGuarded,
    'dart:async@Zone@runBinaryGuarded': (l0.Zone target) =>
        target.runBinaryGuarded,
    'dart:async@Zone@registerCallback': (l0.Zone target) =>
        target.registerCallback,
    'dart:async@Zone@registerUnaryCallback': (l0.Zone target) =>
        target.registerUnaryCallback,
    'dart:async@Zone@registerBinaryCallback': (l0.Zone target) =>
        target.registerBinaryCallback,
    'dart:async@Zone@bindCallback': (l0.Zone target) => target.bindCallback,
    'dart:async@Zone@bindUnaryCallback': (l0.Zone target) =>
        target.bindUnaryCallback,
    'dart:async@Zone@bindBinaryCallback': (l0.Zone target) =>
        target.bindBinaryCallback,
    'dart:async@Zone@bindCallbackGuarded': (l0.Zone target) =>
        target.bindCallbackGuarded,
    'dart:async@Zone@bindUnaryCallbackGuarded': (l0.Zone target) =>
        target.bindUnaryCallbackGuarded,
    'dart:async@Zone@bindBinaryCallbackGuarded': (l0.Zone target) =>
        target.bindBinaryCallbackGuarded,
    'dart:async@Zone@errorCallback': (l0.Zone target) => target.errorCallback,
    'dart:async@Zone@scheduleMicrotask': (l0.Zone target) =>
        target.scheduleMicrotask,
    'dart:async@Zone@createTimer': (l0.Zone target) => target.createTimer,
    'dart:async@Zone@createPeriodicTimer': (l0.Zone target) =>
        target.createPeriodicTimer,
    'dart:async@Zone@print': (l0.Zone target) => target.print,
    'dart:async@Zone@[]': (l0.Zone target, index) => target[index],
    'dart:async@@runZoned:static': () => l0.runZoned,
    'dart:async@@runZonedGuarded:static': () => l0.runZonedGuarded,
  };
}
