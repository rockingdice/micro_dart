import 'dart:io';
import 'dart:async';
import 'dart:collection' show HashMap,HashSet,Queue,ListQueue,MapBase,UnmodifiableMapView;
import 'dart:convert';
import 'dart:developer' hide log;
import 'dart:isolate';
import 'dart:math';
import 'dart:typed_data';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'dart:io@IOException@#as': (m.Scope scope, target)=>()=>target as IOException,
'dart:io@IOException@#is': (m.Scope scope, target)=>()=>target is IOException,
'dart:io@IOException@toString': (m.Scope scope, IOException target)=>target.toString,
'dart:io@OSError@#as': (m.Scope scope, target)=>()=>target as OSError,
'dart:io@OSError@#is': (m.Scope scope, target)=>()=>target is OSError,
'dart:io@OSError@noErrorCode': (m.Scope scope)=>OSError.noErrorCode,
'dart:io@OSError@message': (m.Scope scope, OSError target)=>target.message,
'dart:io@OSError@errorCode': (m.Scope scope, OSError target)=>target.errorCode,
'dart:io@OSError@': (m.Scope scope)=>([String? message, int? errorCode]){
if(message == null && errorCode == null){
return OSError();
}
if(errorCode == null){
return OSError(message!);
}
return OSError(message!, errorCode!);
},
'dart:io@OSError@toString': (m.Scope scope, OSError target)=>target.toString,
'dart:io@@zlib': (m.Scope scope)=>zlib,
'dart:io@@gzip': (m.Scope scope)=>gzip,
'dart:io@ZLibOption@#as': (m.Scope scope, target)=>()=>target as ZLibOption,
'dart:io@ZLibOption@#is': (m.Scope scope, target)=>()=>target is ZLibOption,
'dart:io@ZLibOption@minWindowBits': (m.Scope scope)=>ZLibOption.minWindowBits,
'dart:io@ZLibOption@maxWindowBits': (m.Scope scope)=>ZLibOption.maxWindowBits,
'dart:io@ZLibOption@defaultWindowBits': (m.Scope scope)=>ZLibOption.defaultWindowBits,
'dart:io@ZLibOption@minLevel': (m.Scope scope)=>ZLibOption.minLevel,
'dart:io@ZLibOption@maxLevel': (m.Scope scope)=>ZLibOption.maxLevel,
'dart:io@ZLibOption@defaultLevel': (m.Scope scope)=>ZLibOption.defaultLevel,
'dart:io@ZLibOption@minMemLevel': (m.Scope scope)=>ZLibOption.minMemLevel,
'dart:io@ZLibOption@maxMemLevel': (m.Scope scope)=>ZLibOption.maxMemLevel,
'dart:io@ZLibOption@defaultMemLevel': (m.Scope scope)=>ZLibOption.defaultMemLevel,
'dart:io@ZLibOption@strategyFiltered': (m.Scope scope)=>ZLibOption.strategyFiltered,
'dart:io@ZLibOption@strategyHuffmanOnly': (m.Scope scope)=>ZLibOption.strategyHuffmanOnly,
'dart:io@ZLibOption@strategyRle': (m.Scope scope)=>ZLibOption.strategyRle,
'dart:io@ZLibOption@strategyFixed': (m.Scope scope)=>ZLibOption.strategyFixed,
'dart:io@ZLibOption@strategyDefault': (m.Scope scope)=>ZLibOption.strategyDefault,
'dart:io@ZLibCodec@#as': (m.Scope scope, target)=>()=>target as ZLibCodec,
'dart:io@ZLibCodec@#is': (m.Scope scope, target)=>()=>target is ZLibCodec,
'dart:io@ZLibCodec@gzip': (m.Scope scope, ZLibCodec target)=>target.gzip,
'dart:io@ZLibCodec@level': (m.Scope scope, ZLibCodec target)=>target.level,
'dart:io@ZLibCodec@memLevel': (m.Scope scope, ZLibCodec target)=>target.memLevel,
'dart:io@ZLibCodec@strategy': (m.Scope scope, ZLibCodec target)=>target.strategy,
'dart:io@ZLibCodec@windowBits': (m.Scope scope, ZLibCodec target)=>target.windowBits,
'dart:io@ZLibCodec@raw': (m.Scope scope, ZLibCodec target)=>target.raw,
'dart:io@ZLibCodec@dictionary': (m.Scope scope, ZLibCodec target)=>target.dictionary,
'dart:io@ZLibCodec@encoder': (m.Scope scope, ZLibCodec target)=>target.encoder,
'dart:io@ZLibCodec@decoder': (m.Scope scope, ZLibCodec target)=>target.decoder,
'dart:io@ZLibCodec@': (m.Scope scope)=>({ dictionary,  gzip,  level,  memLevel,  raw,  strategy,  windowBits}){
return ZLibCodec(dictionary:dictionary, gzip:gzip ?? false, level:level ?? ZLibOption.defaultLevel, memLevel:memLevel ?? ZLibOption.defaultMemLevel, raw:raw ?? false, strategy:strategy ?? ZLibOption.strategyDefault, windowBits:windowBits ?? ZLibOption.defaultWindowBits);
},
'dart:io@GZipCodec@#as': (m.Scope scope, target)=>()=>target as GZipCodec,
'dart:io@GZipCodec@#is': (m.Scope scope, target)=>()=>target is GZipCodec,
'dart:io@GZipCodec@gzip': (m.Scope scope, GZipCodec target)=>target.gzip,
'dart:io@GZipCodec@level': (m.Scope scope, GZipCodec target)=>target.level,
'dart:io@GZipCodec@memLevel': (m.Scope scope, GZipCodec target)=>target.memLevel,
'dart:io@GZipCodec@strategy': (m.Scope scope, GZipCodec target)=>target.strategy,
'dart:io@GZipCodec@windowBits': (m.Scope scope, GZipCodec target)=>target.windowBits,
'dart:io@GZipCodec@dictionary': (m.Scope scope, GZipCodec target)=>target.dictionary,
'dart:io@GZipCodec@raw': (m.Scope scope, GZipCodec target)=>target.raw,
'dart:io@GZipCodec@encoder': (m.Scope scope, GZipCodec target)=>target.encoder,
'dart:io@GZipCodec@decoder': (m.Scope scope, GZipCodec target)=>target.decoder,
'dart:io@GZipCodec@': (m.Scope scope)=>({ dictionary,  gzip,  level,  memLevel,  raw,  strategy,  windowBits}){
return GZipCodec(dictionary:dictionary, gzip:gzip ?? true, level:level ?? ZLibOption.defaultLevel, memLevel:memLevel ?? ZLibOption.defaultMemLevel, raw:raw ?? false, strategy:strategy ?? ZLibOption.strategyDefault, windowBits:windowBits ?? ZLibOption.defaultWindowBits);
},
'dart:io@ZLibEncoder@#as': (m.Scope scope, target)=>()=>target as ZLibEncoder,
'dart:io@ZLibEncoder@#is': (m.Scope scope, target)=>()=>target is ZLibEncoder,
'dart:io@ZLibEncoder@gzip': (m.Scope scope, ZLibEncoder target)=>target.gzip,
'dart:io@ZLibEncoder@level': (m.Scope scope, ZLibEncoder target)=>target.level,
'dart:io@ZLibEncoder@memLevel': (m.Scope scope, ZLibEncoder target)=>target.memLevel,
'dart:io@ZLibEncoder@strategy': (m.Scope scope, ZLibEncoder target)=>target.strategy,
'dart:io@ZLibEncoder@windowBits': (m.Scope scope, ZLibEncoder target)=>target.windowBits,
'dart:io@ZLibEncoder@dictionary': (m.Scope scope, ZLibEncoder target)=>target.dictionary,
'dart:io@ZLibEncoder@raw': (m.Scope scope, ZLibEncoder target)=>target.raw,
'dart:io@ZLibEncoder@': (m.Scope scope)=>({ dictionary,  gzip,  level,  memLevel,  raw,  strategy,  windowBits}){
return ZLibEncoder(dictionary:dictionary, gzip:gzip ?? false, level:level ?? ZLibOption.defaultLevel, memLevel:memLevel ?? ZLibOption.defaultMemLevel, raw:raw ?? false, strategy:strategy ?? ZLibOption.strategyDefault, windowBits:windowBits ?? ZLibOption.defaultWindowBits);
},
'dart:io@ZLibEncoder@convert': (m.Scope scope, ZLibEncoder target)=>target.convert,
'dart:io@ZLibEncoder@startChunkedConversion': (m.Scope scope, ZLibEncoder target)=>target.startChunkedConversion,
'dart:io@ZLibDecoder@#as': (m.Scope scope, target)=>()=>target as ZLibDecoder,
'dart:io@ZLibDecoder@#is': (m.Scope scope, target)=>()=>target is ZLibDecoder,
'dart:io@ZLibDecoder@windowBits': (m.Scope scope, ZLibDecoder target)=>target.windowBits,
'dart:io@ZLibDecoder@dictionary': (m.Scope scope, ZLibDecoder target)=>target.dictionary,
'dart:io@ZLibDecoder@raw': (m.Scope scope, ZLibDecoder target)=>target.raw,
'dart:io@ZLibDecoder@': (m.Scope scope)=>({ dictionary,  raw,  windowBits}){
return ZLibDecoder(dictionary:dictionary, raw:raw ?? false, windowBits:windowBits ?? ZLibOption.defaultWindowBits);
},
'dart:io@ZLibDecoder@convert': (m.Scope scope, ZLibDecoder target)=>target.convert,
'dart:io@ZLibDecoder@startChunkedConversion': (m.Scope scope, ZLibDecoder target)=>target.startChunkedConversion,
'dart:io@RawZLibFilter@#as': (m.Scope scope, target)=>()=>target as RawZLibFilter,
'dart:io@RawZLibFilter@#is': (m.Scope scope, target)=>()=>target is RawZLibFilter,
'dart:io@RawZLibFilter@deflateFilter': (m.Scope scope)=>RawZLibFilter.deflateFilter,
'dart:io@RawZLibFilter@inflateFilter': (m.Scope scope)=>RawZLibFilter.inflateFilter,
'dart:io@RawZLibFilter@process': (m.Scope scope, RawZLibFilter target)=>target.process,
'dart:io@RawZLibFilter@processed': (m.Scope scope, RawZLibFilter target)=>target.processed,
'dart:io@Directory@#as': (m.Scope scope, target)=>()=>target as Directory,
'dart:io@Directory@#is': (m.Scope scope, target)=>()=>target is Directory,
'dart:io@Directory@path': (m.Scope scope, Directory target)=>target.path,
'dart:io@Directory@current': (m.Scope scope)=>Directory.current,
'dart:io@Directory@uri': (m.Scope scope, Directory target)=>target.uri,
'dart:io@Directory@current:set': (m.Scope scope)=>(other)=>Directory.current=other,
'dart:io@Directory@systemTemp': (m.Scope scope)=>Directory.systemTemp,
'dart:io@Directory@absolute': (m.Scope scope, Directory target)=>target.absolute,
'dart:io@Directory@': (m.Scope scope)=>( path){
return Directory(path);
},
'dart:io@Directory@fromRawPath': (m.Scope scope)=>Directory.fromRawPath,
'dart:io@Directory@fromUri': (m.Scope scope)=>Directory.fromUri,
'dart:io@Directory@create': (m.Scope scope, Directory target)=>target.create,
'dart:io@Directory@createSync': (m.Scope scope, Directory target)=>target.createSync,
'dart:io@Directory@createTemp': (m.Scope scope, Directory target)=>target.createTemp,
'dart:io@Directory@createTempSync': (m.Scope scope, Directory target)=>target.createTempSync,
'dart:io@Directory@resolveSymbolicLinks': (m.Scope scope, Directory target)=>target.resolveSymbolicLinks,
'dart:io@Directory@resolveSymbolicLinksSync': (m.Scope scope, Directory target)=>target.resolveSymbolicLinksSync,
'dart:io@Directory@rename': (m.Scope scope, Directory target)=>target.rename,
'dart:io@Directory@renameSync': (m.Scope scope, Directory target)=>target.renameSync,
'dart:io@Directory@list': (m.Scope scope, Directory target)=>target.list,
'dart:io@Directory@listSync': (m.Scope scope, Directory target)=>target.listSync,
'dart:io@Directory@toString': (m.Scope scope, Directory target)=>target.toString,
'dart:io@FileMode@#as': (m.Scope scope, target)=>()=>target as FileMode,
'dart:io@FileMode@#is': (m.Scope scope, target)=>()=>target is FileMode,
'dart:io@FileMode@read': (m.Scope scope)=>FileMode.read,
'dart:io@FileMode@write': (m.Scope scope)=>FileMode.write,
'dart:io@FileMode@append': (m.Scope scope)=>FileMode.append,
'dart:io@FileMode@writeOnly': (m.Scope scope)=>FileMode.writeOnly,
'dart:io@FileMode@writeOnlyAppend': (m.Scope scope)=>FileMode.writeOnlyAppend,
'dart:io@FileLock@#as': (m.Scope scope, target)=>()=>target as FileLock,
'dart:io@FileLock@#is': (m.Scope scope, target)=>()=>target is FileLock,
'dart:io@FileLock@shared': (m.Scope scope)=>FileLock.shared,
'dart:io@FileLock@exclusive': (m.Scope scope)=>FileLock.exclusive,
'dart:io@FileLock@blockingShared': (m.Scope scope)=>FileLock.blockingShared,
'dart:io@FileLock@blockingExclusive': (m.Scope scope)=>FileLock.blockingExclusive,
'dart:io@File@#as': (m.Scope scope, target)=>()=>target as File,
'dart:io@File@#is': (m.Scope scope, target)=>()=>target is File,
'dart:io@File@absolute': (m.Scope scope, File target)=>target.absolute,
'dart:io@File@path': (m.Scope scope, File target)=>target.path,
'dart:io@File@': (m.Scope scope)=>( path){
return File(path);
},
'dart:io@File@fromUri': (m.Scope scope)=>File.fromUri,
'dart:io@File@fromRawPath': (m.Scope scope)=>File.fromRawPath,
'dart:io@File@create': (m.Scope scope, File target)=>target.create,
'dart:io@File@createSync': (m.Scope scope, File target)=>target.createSync,
'dart:io@File@rename': (m.Scope scope, File target)=>target.rename,
'dart:io@File@renameSync': (m.Scope scope, File target)=>target.renameSync,
'dart:io@File@copy': (m.Scope scope, File target)=>target.copy,
'dart:io@File@copySync': (m.Scope scope, File target)=>target.copySync,
'dart:io@File@length': (m.Scope scope, File target)=>target.length,
'dart:io@File@lengthSync': (m.Scope scope, File target)=>target.lengthSync,
'dart:io@File@lastAccessed': (m.Scope scope, File target)=>target.lastAccessed,
'dart:io@File@lastAccessedSync': (m.Scope scope, File target)=>target.lastAccessedSync,
'dart:io@File@setLastAccessed': (m.Scope scope, File target)=>target.setLastAccessed,
'dart:io@File@setLastAccessedSync': (m.Scope scope, File target)=>target.setLastAccessedSync,
'dart:io@File@lastModified': (m.Scope scope, File target)=>target.lastModified,
'dart:io@File@lastModifiedSync': (m.Scope scope, File target)=>target.lastModifiedSync,
'dart:io@File@setLastModified': (m.Scope scope, File target)=>target.setLastModified,
'dart:io@File@setLastModifiedSync': (m.Scope scope, File target)=>target.setLastModifiedSync,
'dart:io@File@open': (m.Scope scope, File target)=>target.open,
'dart:io@File@openSync': (m.Scope scope, File target)=>target.openSync,
'dart:io@File@openRead': (m.Scope scope, File target)=>target.openRead,
'dart:io@File@openWrite': (m.Scope scope, File target)=>target.openWrite,
'dart:io@File@readAsBytes': (m.Scope scope, File target)=>target.readAsBytes,
'dart:io@File@readAsBytesSync': (m.Scope scope, File target)=>target.readAsBytesSync,
'dart:io@File@readAsString': (m.Scope scope, File target)=>target.readAsString,
'dart:io@File@readAsStringSync': (m.Scope scope, File target)=>target.readAsStringSync,
'dart:io@File@readAsLines': (m.Scope scope, File target)=>target.readAsLines,
'dart:io@File@readAsLinesSync': (m.Scope scope, File target)=>target.readAsLinesSync,
'dart:io@File@writeAsBytes': (m.Scope scope, File target)=>target.writeAsBytes,
'dart:io@File@writeAsBytesSync': (m.Scope scope, File target)=>target.writeAsBytesSync,
'dart:io@File@writeAsString': (m.Scope scope, File target)=>target.writeAsString,
'dart:io@File@writeAsStringSync': (m.Scope scope, File target)=>target.writeAsStringSync,
'dart:io@RandomAccessFile@#as': (m.Scope scope, target)=>()=>target as RandomAccessFile,
'dart:io@RandomAccessFile@#is': (m.Scope scope, target)=>()=>target is RandomAccessFile,
'dart:io@RandomAccessFile@path': (m.Scope scope, RandomAccessFile target)=>target.path,
'dart:io@RandomAccessFile@close': (m.Scope scope, RandomAccessFile target)=>target.close,
'dart:io@RandomAccessFile@closeSync': (m.Scope scope, RandomAccessFile target)=>target.closeSync,
'dart:io@RandomAccessFile@readByte': (m.Scope scope, RandomAccessFile target)=>target.readByte,
'dart:io@RandomAccessFile@readByteSync': (m.Scope scope, RandomAccessFile target)=>target.readByteSync,
'dart:io@RandomAccessFile@read': (m.Scope scope, RandomAccessFile target)=>target.read,
'dart:io@RandomAccessFile@readSync': (m.Scope scope, RandomAccessFile target)=>target.readSync,
'dart:io@RandomAccessFile@readInto': (m.Scope scope, RandomAccessFile target)=>target.readInto,
'dart:io@RandomAccessFile@readIntoSync': (m.Scope scope, RandomAccessFile target)=>target.readIntoSync,
'dart:io@RandomAccessFile@writeByte': (m.Scope scope, RandomAccessFile target)=>target.writeByte,
'dart:io@RandomAccessFile@writeByteSync': (m.Scope scope, RandomAccessFile target)=>target.writeByteSync,
'dart:io@RandomAccessFile@writeFrom': (m.Scope scope, RandomAccessFile target)=>target.writeFrom,
'dart:io@RandomAccessFile@writeFromSync': (m.Scope scope, RandomAccessFile target)=>target.writeFromSync,
'dart:io@RandomAccessFile@writeString': (m.Scope scope, RandomAccessFile target)=>target.writeString,
'dart:io@RandomAccessFile@writeStringSync': (m.Scope scope, RandomAccessFile target)=>target.writeStringSync,
'dart:io@RandomAccessFile@position': (m.Scope scope, RandomAccessFile target)=>target.position,
'dart:io@RandomAccessFile@positionSync': (m.Scope scope, RandomAccessFile target)=>target.positionSync,
'dart:io@RandomAccessFile@setPosition': (m.Scope scope, RandomAccessFile target)=>target.setPosition,
'dart:io@RandomAccessFile@setPositionSync': (m.Scope scope, RandomAccessFile target)=>target.setPositionSync,
'dart:io@RandomAccessFile@truncate': (m.Scope scope, RandomAccessFile target)=>target.truncate,
'dart:io@RandomAccessFile@truncateSync': (m.Scope scope, RandomAccessFile target)=>target.truncateSync,
'dart:io@RandomAccessFile@length': (m.Scope scope, RandomAccessFile target)=>target.length,
'dart:io@RandomAccessFile@lengthSync': (m.Scope scope, RandomAccessFile target)=>target.lengthSync,
'dart:io@RandomAccessFile@flush': (m.Scope scope, RandomAccessFile target)=>target.flush,
'dart:io@RandomAccessFile@flushSync': (m.Scope scope, RandomAccessFile target)=>target.flushSync,
'dart:io@RandomAccessFile@lock': (m.Scope scope, RandomAccessFile target)=>target.lock,
'dart:io@RandomAccessFile@lockSync': (m.Scope scope, RandomAccessFile target)=>target.lockSync,
'dart:io@RandomAccessFile@unlock': (m.Scope scope, RandomAccessFile target)=>target.unlock,
'dart:io@RandomAccessFile@unlockSync': (m.Scope scope, RandomAccessFile target)=>target.unlockSync,
'dart:io@RandomAccessFile@toString': (m.Scope scope, RandomAccessFile target)=>target.toString,
'dart:io@FileSystemException@#as': (m.Scope scope, target)=>()=>target as FileSystemException,
'dart:io@FileSystemException@#is': (m.Scope scope, target)=>()=>target is FileSystemException,
'dart:io@FileSystemException@message': (m.Scope scope, FileSystemException target)=>target.message,
'dart:io@FileSystemException@path': (m.Scope scope, FileSystemException target)=>target.path,
'dart:io@FileSystemException@osError': (m.Scope scope, FileSystemException target)=>target.osError,
'dart:io@FileSystemException@': (m.Scope scope)=>([String? message, String? path, OSError? osError]){
if(message == null && path == null && osError == null){
return FileSystemException();
}
if(path == null && osError == null){
return FileSystemException(message!);
}
if(osError == null){
return FileSystemException(message!, path!);
}
return FileSystemException(message!, path!, osError!);
},
'dart:io@FileSystemException@toString': (m.Scope scope, FileSystemException target)=>target.toString,
'dart:io@PathAccessException@#as': (m.Scope scope, target)=>()=>target as PathAccessException,
'dart:io@PathAccessException@#is': (m.Scope scope, target)=>()=>target is PathAccessException,
'dart:io@PathAccessException@': (m.Scope scope)=>( path,  osError, [String? message]){
if(message == null){
return PathAccessException(path, osError);
}
return PathAccessException(path, osError, message!);
},
'dart:io@PathAccessException@toString': (m.Scope scope, PathAccessException target)=>target.toString,
'dart:io@PathExistsException@#as': (m.Scope scope, target)=>()=>target as PathExistsException,
'dart:io@PathExistsException@#is': (m.Scope scope, target)=>()=>target is PathExistsException,
'dart:io@PathExistsException@': (m.Scope scope)=>( path,  osError, [String? message]){
if(message == null){
return PathExistsException(path, osError);
}
return PathExistsException(path, osError, message!);
},
'dart:io@PathExistsException@toString': (m.Scope scope, PathExistsException target)=>target.toString,
'dart:io@PathNotFoundException@#as': (m.Scope scope, target)=>()=>target as PathNotFoundException,
'dart:io@PathNotFoundException@#is': (m.Scope scope, target)=>()=>target is PathNotFoundException,
'dart:io@PathNotFoundException@': (m.Scope scope)=>( path,  osError, [String? message]){
if(message == null){
return PathNotFoundException(path, osError);
}
return PathNotFoundException(path, osError, message!);
},
'dart:io@PathNotFoundException@toString': (m.Scope scope, PathNotFoundException target)=>target.toString,
'dart:io@ReadPipe@#as': (m.Scope scope, target)=>()=>target as ReadPipe,
'dart:io@ReadPipe@#is': (m.Scope scope, target)=>()=>target is ReadPipe,
'dart:io@WritePipe@#as': (m.Scope scope, target)=>()=>target as WritePipe,
'dart:io@WritePipe@#is': (m.Scope scope, target)=>()=>target is WritePipe,
'dart:io@Pipe@#as': (m.Scope scope, target)=>()=>target as Pipe,
'dart:io@Pipe@#is': (m.Scope scope, target)=>()=>target is Pipe,
'dart:io@Pipe@read': (m.Scope scope, Pipe target)=>target.read,
'dart:io@Pipe@write': (m.Scope scope, Pipe target)=>target.write,
'dart:io@Pipe@createSync': (m.Scope scope)=>Pipe.createSync,
'dart:io@Pipe@create': (m.Scope scope)=>Pipe.create,
'dart:io@FileSystemEntityType@#as': (m.Scope scope, target)=>()=>target as FileSystemEntityType,
'dart:io@FileSystemEntityType@#is': (m.Scope scope, target)=>()=>target is FileSystemEntityType,
'dart:io@FileSystemEntityType@file': (m.Scope scope)=>FileSystemEntityType.file,
'dart:io@FileSystemEntityType@directory': (m.Scope scope)=>FileSystemEntityType.directory,
'dart:io@FileSystemEntityType@link': (m.Scope scope)=>FileSystemEntityType.link,
'dart:io@FileSystemEntityType@unixDomainSock': (m.Scope scope)=>FileSystemEntityType.unixDomainSock,
'dart:io@FileSystemEntityType@pipe': (m.Scope scope)=>FileSystemEntityType.pipe,
'dart:io@FileSystemEntityType@notFound': (m.Scope scope)=>FileSystemEntityType.notFound,
'dart:io@FileSystemEntityType@NOT_FOUND': (m.Scope scope)=>FileSystemEntityType.NOT_FOUND,
'dart:io@FileSystemEntityType@toString': (m.Scope scope, FileSystemEntityType target)=>target.toString,
'dart:io@FileStat@#as': (m.Scope scope, target)=>()=>target as FileStat,
'dart:io@FileStat@#is': (m.Scope scope, target)=>()=>target is FileStat,
'dart:io@FileStat@changed': (m.Scope scope, FileStat target)=>target.changed,
'dart:io@FileStat@modified': (m.Scope scope, FileStat target)=>target.modified,
'dart:io@FileStat@accessed': (m.Scope scope, FileStat target)=>target.accessed,
'dart:io@FileStat@type': (m.Scope scope, FileStat target)=>target.type,
'dart:io@FileStat@mode': (m.Scope scope, FileStat target)=>target.mode,
'dart:io@FileStat@size': (m.Scope scope, FileStat target)=>target.size,
'dart:io@FileStat@statSync': (m.Scope scope)=>FileStat.statSync,
'dart:io@FileStat@stat': (m.Scope scope)=>FileStat.stat,
'dart:io@FileStat@toString': (m.Scope scope, FileStat target)=>target.toString,
'dart:io@FileStat@modeString': (m.Scope scope, FileStat target)=>target.modeString,
'dart:io@FileSystemEntity@#as': (m.Scope scope, target)=>()=>target as FileSystemEntity,
'dart:io@FileSystemEntity@#is': (m.Scope scope, target)=>()=>target is FileSystemEntity,
'dart:io@FileSystemEntity@path': (m.Scope scope, FileSystemEntity target)=>target.path,
'dart:io@FileSystemEntity@uri': (m.Scope scope, FileSystemEntity target)=>target.uri,
'dart:io@FileSystemEntity@isAbsolute': (m.Scope scope, FileSystemEntity target)=>target.isAbsolute,
'dart:io@FileSystemEntity@absolute': (m.Scope scope, FileSystemEntity target)=>target.absolute,
'dart:io@FileSystemEntity@isWatchSupported': (m.Scope scope)=>FileSystemEntity.isWatchSupported,
'dart:io@FileSystemEntity@parent': (m.Scope scope, FileSystemEntity target)=>target.parent,
'dart:io@FileSystemEntity@exists': (m.Scope scope, FileSystemEntity target)=>target.exists,
'dart:io@FileSystemEntity@existsSync': (m.Scope scope, FileSystemEntity target)=>target.existsSync,
'dart:io@FileSystemEntity@rename': (m.Scope scope, FileSystemEntity target)=>target.rename,
'dart:io@FileSystemEntity@renameSync': (m.Scope scope, FileSystemEntity target)=>target.renameSync,
'dart:io@FileSystemEntity@resolveSymbolicLinks': (m.Scope scope, FileSystemEntity target)=>target.resolveSymbolicLinks,
'dart:io@FileSystemEntity@resolveSymbolicLinksSync': (m.Scope scope, FileSystemEntity target)=>target.resolveSymbolicLinksSync,
'dart:io@FileSystemEntity@stat': (m.Scope scope, FileSystemEntity target)=>target.stat,
'dart:io@FileSystemEntity@statSync': (m.Scope scope, FileSystemEntity target)=>target.statSync,
'dart:io@FileSystemEntity@delete': (m.Scope scope, FileSystemEntity target)=>target.delete,
'dart:io@FileSystemEntity@deleteSync': (m.Scope scope, FileSystemEntity target)=>target.deleteSync,
'dart:io@FileSystemEntity@watch': (m.Scope scope, FileSystemEntity target)=>target.watch,
'dart:io@FileSystemEntity@identical': (m.Scope scope)=>FileSystemEntity.identical,
'dart:io@FileSystemEntity@identicalSync': (m.Scope scope)=>FileSystemEntity.identicalSync,
'dart:io@FileSystemEntity@type': (m.Scope scope)=>FileSystemEntity.type,
'dart:io@FileSystemEntity@typeSync': (m.Scope scope)=>FileSystemEntity.typeSync,
'dart:io@FileSystemEntity@isLink': (m.Scope scope)=>FileSystemEntity.isLink,
'dart:io@FileSystemEntity@isFile': (m.Scope scope)=>FileSystemEntity.isFile,
'dart:io@FileSystemEntity@isDirectory': (m.Scope scope)=>FileSystemEntity.isDirectory,
'dart:io@FileSystemEntity@isLinkSync': (m.Scope scope)=>FileSystemEntity.isLinkSync,
'dart:io@FileSystemEntity@isFileSync': (m.Scope scope)=>FileSystemEntity.isFileSync,
'dart:io@FileSystemEntity@isDirectorySync': (m.Scope scope)=>FileSystemEntity.isDirectorySync,
'dart:io@FileSystemEntity@parentOf': (m.Scope scope)=>FileSystemEntity.parentOf,
'dart:io@FileSystemEvent@#as': (m.Scope scope, target)=>()=>target as FileSystemEvent,
'dart:io@FileSystemEvent@#is': (m.Scope scope, target)=>()=>target is FileSystemEvent,
'dart:io@FileSystemEvent@create': (m.Scope scope)=>FileSystemEvent.create,
'dart:io@FileSystemEvent@modify': (m.Scope scope)=>FileSystemEvent.modify,
'dart:io@FileSystemEvent@delete': (m.Scope scope)=>FileSystemEvent.delete,
'dart:io@FileSystemEvent@move': (m.Scope scope)=>FileSystemEvent.move,
'dart:io@FileSystemEvent@all': (m.Scope scope)=>FileSystemEvent.all,
'dart:io@FileSystemEvent@type': (m.Scope scope, FileSystemEvent target)=>target.type,
'dart:io@FileSystemEvent@path': (m.Scope scope, FileSystemEvent target)=>target.path,
'dart:io@FileSystemEvent@isDirectory': (m.Scope scope, FileSystemEvent target)=>target.isDirectory,
'dart:io@FileSystemCreateEvent@#as': (m.Scope scope, target)=>()=>target as FileSystemCreateEvent,
'dart:io@FileSystemCreateEvent@#is': (m.Scope scope, target)=>()=>target is FileSystemCreateEvent,
'dart:io@FileSystemCreateEvent@': (m.Scope scope)=>( path,  isDirectory){
return FileSystemCreateEvent(path, isDirectory);
},
'dart:io@FileSystemCreateEvent@toString': (m.Scope scope, FileSystemCreateEvent target)=>target.toString,
'dart:io@FileSystemModifyEvent@#as': (m.Scope scope, target)=>()=>target as FileSystemModifyEvent,
'dart:io@FileSystemModifyEvent@#is': (m.Scope scope, target)=>()=>target is FileSystemModifyEvent,
'dart:io@FileSystemModifyEvent@contentChanged': (m.Scope scope, FileSystemModifyEvent target)=>target.contentChanged,
'dart:io@FileSystemModifyEvent@': (m.Scope scope)=>( path,  isDirectory,  contentChanged){
return FileSystemModifyEvent(path, isDirectory, contentChanged);
},
'dart:io@FileSystemModifyEvent@toString': (m.Scope scope, FileSystemModifyEvent target)=>target.toString,
'dart:io@FileSystemDeleteEvent@#as': (m.Scope scope, target)=>()=>target as FileSystemDeleteEvent,
'dart:io@FileSystemDeleteEvent@#is': (m.Scope scope, target)=>()=>target is FileSystemDeleteEvent,
'dart:io@FileSystemDeleteEvent@': (m.Scope scope)=>( path,  isDirectory){
return FileSystemDeleteEvent(path, isDirectory);
},
'dart:io@FileSystemDeleteEvent@toString': (m.Scope scope, FileSystemDeleteEvent target)=>target.toString,
'dart:io@FileSystemMoveEvent@#as': (m.Scope scope, target)=>()=>target as FileSystemMoveEvent,
'dart:io@FileSystemMoveEvent@#is': (m.Scope scope, target)=>()=>target is FileSystemMoveEvent,
'dart:io@FileSystemMoveEvent@destination': (m.Scope scope, FileSystemMoveEvent target)=>target.destination,
'dart:io@FileSystemMoveEvent@': (m.Scope scope)=>( path,  isDirectory,  destination){
return FileSystemMoveEvent(path, isDirectory, destination);
},
'dart:io@FileSystemMoveEvent@toString': (m.Scope scope, FileSystemMoveEvent target)=>target.toString,
'dart:io@IOSink@#as': (m.Scope scope, target)=>()=>target as IOSink,
'dart:io@IOSink@#is': (m.Scope scope, target)=>()=>target is IOSink,
'dart:io@IOSink@encoding': (m.Scope scope, IOSink target)=>target.encoding,
'dart:io@IOSink@encoding:set': (m.Scope scope, IOSink target)=>(other)=>target.encoding=other,
'dart:io@IOSink@done': (m.Scope scope, IOSink target)=>target.done,
'dart:io@IOSink@': (m.Scope scope)=>( target, { encoding}){
return IOSink(target, encoding:encoding ?? utf8);
},
'dart:io@IOSink@add': (m.Scope scope, IOSink target)=>target.add,
'dart:io@IOSink@write': (m.Scope scope, IOSink target)=>target.write,
'dart:io@IOSink@writeAll': (m.Scope scope, IOSink target)=>target.writeAll,
'dart:io@IOSink@writeln': (m.Scope scope, IOSink target)=>target.writeln,
'dart:io@IOSink@writeCharCode': (m.Scope scope, IOSink target)=>target.writeCharCode,
'dart:io@IOSink@addError': (m.Scope scope, IOSink target)=>target.addError,
'dart:io@IOSink@addStream': (m.Scope scope, IOSink target)=>target.addStream,
'dart:io@IOSink@flush': (m.Scope scope, IOSink target)=>target.flush,
'dart:io@IOSink@close': (m.Scope scope, IOSink target)=>target.close,
'dart:io@Link@#as': (m.Scope scope, target)=>()=>target as Link,
'dart:io@Link@#is': (m.Scope scope, target)=>()=>target is Link,
'dart:io@Link@absolute': (m.Scope scope, Link target)=>target.absolute,
'dart:io@Link@': (m.Scope scope)=>( path){
return Link(path);
},
'dart:io@Link@fromRawPath': (m.Scope scope)=>Link.fromRawPath,
'dart:io@Link@fromUri': (m.Scope scope)=>Link.fromUri,
'dart:io@Link@create': (m.Scope scope, Link target)=>target.create,
'dart:io@Link@createSync': (m.Scope scope, Link target)=>target.createSync,
'dart:io@Link@updateSync': (m.Scope scope, Link target)=>target.updateSync,
'dart:io@Link@update': (m.Scope scope, Link target)=>target.update,
'dart:io@Link@resolveSymbolicLinks': (m.Scope scope, Link target)=>target.resolveSymbolicLinks,
'dart:io@Link@resolveSymbolicLinksSync': (m.Scope scope, Link target)=>target.resolveSymbolicLinksSync,
'dart:io@Link@rename': (m.Scope scope, Link target)=>target.rename,
'dart:io@Link@renameSync': (m.Scope scope, Link target)=>target.renameSync,
'dart:io@Link@target': (m.Scope scope, Link target)=>target.target,
'dart:io@Link@targetSync': (m.Scope scope, Link target)=>target.targetSync,
'dart:io@IOOverrides@#as': (m.Scope scope, target)=>()=>target as IOOverrides,
'dart:io@IOOverrides@#is': (m.Scope scope, target)=>()=>target is IOOverrides,
'dart:io@IOOverrides@current': (m.Scope scope)=>IOOverrides.current,
'dart:io@IOOverrides@global:set': (m.Scope scope)=>(other)=>IOOverrides.global=other,
'dart:io@IOOverrides@stdin': (m.Scope scope, IOOverrides target)=>target.stdin,
'dart:io@IOOverrides@stdout': (m.Scope scope, IOOverrides target)=>target.stdout,
'dart:io@IOOverrides@stderr': (m.Scope scope, IOOverrides target)=>target.stderr,
'dart:io@IOOverrides@runZoned': (m.Scope scope)=>( body, { createDirectory,  createFile,  createLink,  fsWatch,  fsWatchIsSupported,  fseGetType,  fseGetTypeSync,  fseIdentical,  fseIdenticalSync,  getCurrentDirectory,  getSystemTempDirectory,  serverSocketBind,  setCurrentDirectory,  socketConnect,  socketStartConnect,  stat,  statSync,  stderr,  stdin,  stdout}){
R bodyProxy<R>() {
return  engine.callFunctionPointer(scope, body!,[], {});
}

Directory createDirectoryProxy( $p0) {
return  engine.callFunctionPointer(scope, createDirectory!,[$p0], {});
}

File createFileProxy( $p0) {
return  engine.callFunctionPointer(scope, createFile!,[$p0], {});
}

Link createLinkProxy( $p0) {
return  engine.callFunctionPointer(scope, createLink!,[$p0], {});
}

Stream<FileSystemEvent> fsWatchProxy( $p0,  $p1,  $p2) {
return  engine.callFunctionPointer(scope, fsWatch!,[$p0, $p1, $p2], {});
}

bool fsWatchIsSupportedProxy() {
return  engine.callFunctionPointer(scope, fsWatchIsSupported!,[], {});
}

Future<FileSystemEntityType> fseGetTypeProxy( $p0,  $p1) async{
return await engine.callFunctionPointerAsync(scope, fseGetType!,[$p0, $p1], {});
}

FileSystemEntityType fseGetTypeSyncProxy( $p0,  $p1) {
return  engine.callFunctionPointer(scope, fseGetTypeSync!,[$p0, $p1], {});
}

Future<bool> fseIdenticalProxy( $p0,  $p1) async{
return await engine.callFunctionPointerAsync(scope, fseIdentical!,[$p0, $p1], {});
}

bool fseIdenticalSyncProxy( $p0,  $p1) {
return  engine.callFunctionPointer(scope, fseIdenticalSync!,[$p0, $p1], {});
}

Directory getCurrentDirectoryProxy() {
return  engine.callFunctionPointer(scope, getCurrentDirectory!,[], {});
}

Directory getSystemTempDirectoryProxy() {
return  engine.callFunctionPointer(scope, getSystemTempDirectory!,[], {});
}

Future<ServerSocket> serverSocketBindProxy( $p0,  $p1, { backlog,  shared,  v6Only}) async{
return await engine.callFunctionPointerAsync(scope, serverSocketBind!,[$p0, $p1], {'backlog':backlog, 'shared':shared, 'v6Only':v6Only});
}

void setCurrentDirectoryProxy( $p0) {
 engine.callFunctionPointer(scope, setCurrentDirectory!,[$p0], {});
}

Future<Socket> socketConnectProxy( $p0,  $p1, { sourceAddress,  sourcePort,  timeout}) async{
return await engine.callFunctionPointerAsync(scope, socketConnect!,[$p0, $p1], {'sourceAddress':sourceAddress, 'sourcePort':sourcePort, 'timeout':timeout});
}

Future<ConnectionTask<Socket>> socketStartConnectProxy( $p0,  $p1, { sourceAddress,  sourcePort}) async{
return await engine.callFunctionPointerAsync(scope, socketStartConnect!,[$p0, $p1], {'sourceAddress':sourceAddress, 'sourcePort':sourcePort});
}

Future<FileStat> statProxy( $p0) async{
return await engine.callFunctionPointerAsync(scope, stat!,[$p0], {});
}

FileStat statSyncProxy( $p0) {
return  engine.callFunctionPointer(scope, statSync!,[$p0], {});
}

Stdout stderrProxy() {
return  engine.callFunctionPointer(scope, stderr!,[], {});
}

Stdin stdinProxy() {
return  engine.callFunctionPointer(scope, stdin!,[], {});
}

Stdout stdoutProxy() {
return  engine.callFunctionPointer(scope, stdout!,[], {});
}

return IOOverrides.runZoned(bodyProxy, createDirectory:createDirectory == null ? null :createDirectoryProxy, createFile:createFile == null ? null :createFileProxy, createLink:createLink == null ? null :createLinkProxy, fsWatch:fsWatch == null ? null :fsWatchProxy, fsWatchIsSupported:fsWatchIsSupported == null ? null :fsWatchIsSupportedProxy, fseGetType:fseGetType == null ? null :fseGetTypeProxy, fseGetTypeSync:fseGetTypeSync == null ? null :fseGetTypeSyncProxy, fseIdentical:fseIdentical == null ? null :fseIdenticalProxy, fseIdenticalSync:fseIdenticalSync == null ? null :fseIdenticalSyncProxy, getCurrentDirectory:getCurrentDirectory == null ? null :getCurrentDirectoryProxy, getSystemTempDirectory:getSystemTempDirectory == null ? null :getSystemTempDirectoryProxy, serverSocketBind:serverSocketBind == null ? null :serverSocketBindProxy, setCurrentDirectory:setCurrentDirectory == null ? null :setCurrentDirectoryProxy, socketConnect:socketConnect == null ? null :socketConnectProxy, socketStartConnect:socketStartConnect == null ? null :socketStartConnectProxy, stat:stat == null ? null :statProxy, statSync:statSync == null ? null :statSyncProxy, stderr:stderr == null ? null :stderrProxy, stdin:stdin == null ? null :stdinProxy, stdout:stdout == null ? null :stdoutProxy);
},
'dart:io@IOOverrides@runWithIOOverrides': (m.Scope scope)=>( body,  overrides){
R bodyProxy<R>() {
return  engine.callFunctionPointer(scope, body!,[], {});
}

return IOOverrides.runWithIOOverrides(bodyProxy, overrides);
},
'dart:io@IOOverrides@createDirectory': (m.Scope scope, IOOverrides target)=>target.createDirectory,
'dart:io@IOOverrides@getCurrentDirectory': (m.Scope scope, IOOverrides target)=>target.getCurrentDirectory,
'dart:io@IOOverrides@setCurrentDirectory': (m.Scope scope, IOOverrides target)=>target.setCurrentDirectory,
'dart:io@IOOverrides@getSystemTempDirectory': (m.Scope scope, IOOverrides target)=>target.getSystemTempDirectory,
'dart:io@IOOverrides@createFile': (m.Scope scope, IOOverrides target)=>target.createFile,
'dart:io@IOOverrides@stat': (m.Scope scope, IOOverrides target)=>target.stat,
'dart:io@IOOverrides@statSync': (m.Scope scope, IOOverrides target)=>target.statSync,
'dart:io@IOOverrides@fseIdentical': (m.Scope scope, IOOverrides target)=>target.fseIdentical,
'dart:io@IOOverrides@fseIdenticalSync': (m.Scope scope, IOOverrides target)=>target.fseIdenticalSync,
'dart:io@IOOverrides@fseGetType': (m.Scope scope, IOOverrides target)=>target.fseGetType,
'dart:io@IOOverrides@fseGetTypeSync': (m.Scope scope, IOOverrides target)=>target.fseGetTypeSync,
'dart:io@IOOverrides@fsWatch': (m.Scope scope, IOOverrides target)=>target.fsWatch,
'dart:io@IOOverrides@fsWatchIsSupported': (m.Scope scope, IOOverrides target)=>target.fsWatchIsSupported,
'dart:io@IOOverrides@createLink': (m.Scope scope, IOOverrides target)=>target.createLink,
'dart:io@IOOverrides@socketConnect': (m.Scope scope, IOOverrides target)=>target.socketConnect,
'dart:io@IOOverrides@socketStartConnect': (m.Scope scope, IOOverrides target)=>target.socketStartConnect,
'dart:io@IOOverrides@serverSocketBind': (m.Scope scope, IOOverrides target)=>target.serverSocketBind,
'dart:io@Platform@#as': (m.Scope scope, target)=>()=>target as Platform,
'dart:io@Platform@#is': (m.Scope scope, target)=>()=>target is Platform,
'dart:io@Platform@isLinux': (m.Scope scope)=>Platform.isLinux,
'dart:io@Platform@isMacOS': (m.Scope scope)=>Platform.isMacOS,
'dart:io@Platform@isWindows': (m.Scope scope)=>Platform.isWindows,
'dart:io@Platform@isAndroid': (m.Scope scope)=>Platform.isAndroid,
'dart:io@Platform@isIOS': (m.Scope scope)=>Platform.isIOS,
'dart:io@Platform@isFuchsia': (m.Scope scope)=>Platform.isFuchsia,
'dart:io@Platform@numberOfProcessors': (m.Scope scope)=>Platform.numberOfProcessors,
'dart:io@Platform@pathSeparator': (m.Scope scope)=>Platform.pathSeparator,
'dart:io@Platform@localeName': (m.Scope scope)=>Platform.localeName,
'dart:io@Platform@operatingSystem': (m.Scope scope)=>Platform.operatingSystem,
'dart:io@Platform@operatingSystemVersion': (m.Scope scope)=>Platform.operatingSystemVersion,
'dart:io@Platform@localHostname': (m.Scope scope)=>Platform.localHostname,
'dart:io@Platform@environment': (m.Scope scope)=>Platform.environment,
'dart:io@Platform@executable': (m.Scope scope)=>Platform.executable,
'dart:io@Platform@resolvedExecutable': (m.Scope scope)=>Platform.resolvedExecutable,
'dart:io@Platform@script': (m.Scope scope)=>Platform.script,
'dart:io@Platform@executableArguments': (m.Scope scope)=>Platform.executableArguments,
'dart:io@Platform@packageConfig': (m.Scope scope)=>Platform.packageConfig,
'dart:io@Platform@version': (m.Scope scope)=>Platform.version,
'dart:io@Platform@': (m.Scope scope)=>(){
return Platform();
},
'dart:io@@exitCode:set': (m.Scope scope)=>(other)=>exitCode=other,
'dart:io@@exitCode': (m.Scope scope)=>exitCode,
'dart:io@@pid': (m.Scope scope)=>pid,
'dart:io@ProcessInfo@#as': (m.Scope scope, target)=>()=>target as ProcessInfo,
'dart:io@ProcessInfo@#is': (m.Scope scope, target)=>()=>target is ProcessInfo,
'dart:io@ProcessInfo@currentRss': (m.Scope scope)=>ProcessInfo.currentRss,
'dart:io@ProcessInfo@maxRss': (m.Scope scope)=>ProcessInfo.maxRss,
'dart:io@ProcessStartMode@#as': (m.Scope scope, target)=>()=>target as ProcessStartMode,
'dart:io@ProcessStartMode@#is': (m.Scope scope, target)=>()=>target is ProcessStartMode,
'dart:io@ProcessStartMode@normal': (m.Scope scope)=>ProcessStartMode.normal,
'dart:io@ProcessStartMode@inheritStdio': (m.Scope scope)=>ProcessStartMode.inheritStdio,
'dart:io@ProcessStartMode@detached': (m.Scope scope)=>ProcessStartMode.detached,
'dart:io@ProcessStartMode@detachedWithStdio': (m.Scope scope)=>ProcessStartMode.detachedWithStdio,
'dart:io@ProcessStartMode@values': (m.Scope scope)=>ProcessStartMode.values,
'dart:io@ProcessStartMode@toString': (m.Scope scope, ProcessStartMode target)=>target.toString,
'dart:io@Process@#as': (m.Scope scope, target)=>()=>target as Process,
'dart:io@Process@#is': (m.Scope scope, target)=>()=>target is Process,
'dart:io@Process@exitCode': (m.Scope scope, Process target)=>target.exitCode,
'dart:io@Process@stdout': (m.Scope scope, Process target)=>target.stdout,
'dart:io@Process@stderr': (m.Scope scope, Process target)=>target.stderr,
'dart:io@Process@stdin': (m.Scope scope, Process target)=>target.stdin,
'dart:io@Process@pid': (m.Scope scope, Process target)=>target.pid,
'dart:io@Process@start': (m.Scope scope)=>Process.start,
'dart:io@Process@run': (m.Scope scope)=>Process.run,
'dart:io@Process@runSync': (m.Scope scope)=>Process.runSync,
'dart:io@Process@killPid': (m.Scope scope)=>Process.killPid,
'dart:io@Process@kill': (m.Scope scope, Process target)=>target.kill,
'dart:io@ProcessResult@#as': (m.Scope scope, target)=>()=>target as ProcessResult,
'dart:io@ProcessResult@#is': (m.Scope scope, target)=>()=>target is ProcessResult,
'dart:io@ProcessResult@exitCode': (m.Scope scope, ProcessResult target)=>target.exitCode,
'dart:io@ProcessResult@stdout': (m.Scope scope, ProcessResult target)=>target.stdout,
'dart:io@ProcessResult@stderr': (m.Scope scope, ProcessResult target)=>target.stderr,
'dart:io@ProcessResult@pid': (m.Scope scope, ProcessResult target)=>target.pid,
'dart:io@ProcessResult@': (m.Scope scope)=>( pid,  exitCode,  stdout,  stderr){
return ProcessResult(pid, exitCode, stdout, stderr);
},
'dart:io@ProcessSignal@#as': (m.Scope scope, target)=>()=>target as ProcessSignal,
'dart:io@ProcessSignal@#is': (m.Scope scope, target)=>()=>target is ProcessSignal,
'dart:io@ProcessSignal@sighup': (m.Scope scope)=>ProcessSignal.sighup,
'dart:io@ProcessSignal@sigint': (m.Scope scope)=>ProcessSignal.sigint,
'dart:io@ProcessSignal@sigquit': (m.Scope scope)=>ProcessSignal.sigquit,
'dart:io@ProcessSignal@sigill': (m.Scope scope)=>ProcessSignal.sigill,
'dart:io@ProcessSignal@sigtrap': (m.Scope scope)=>ProcessSignal.sigtrap,
'dart:io@ProcessSignal@sigabrt': (m.Scope scope)=>ProcessSignal.sigabrt,
'dart:io@ProcessSignal@sigbus': (m.Scope scope)=>ProcessSignal.sigbus,
'dart:io@ProcessSignal@sigfpe': (m.Scope scope)=>ProcessSignal.sigfpe,
'dart:io@ProcessSignal@sigkill': (m.Scope scope)=>ProcessSignal.sigkill,
'dart:io@ProcessSignal@sigusr1': (m.Scope scope)=>ProcessSignal.sigusr1,
'dart:io@ProcessSignal@sigsegv': (m.Scope scope)=>ProcessSignal.sigsegv,
'dart:io@ProcessSignal@sigusr2': (m.Scope scope)=>ProcessSignal.sigusr2,
'dart:io@ProcessSignal@sigpipe': (m.Scope scope)=>ProcessSignal.sigpipe,
'dart:io@ProcessSignal@sigalrm': (m.Scope scope)=>ProcessSignal.sigalrm,
'dart:io@ProcessSignal@sigterm': (m.Scope scope)=>ProcessSignal.sigterm,
'dart:io@ProcessSignal@sigchld': (m.Scope scope)=>ProcessSignal.sigchld,
'dart:io@ProcessSignal@sigcont': (m.Scope scope)=>ProcessSignal.sigcont,
'dart:io@ProcessSignal@sigstop': (m.Scope scope)=>ProcessSignal.sigstop,
'dart:io@ProcessSignal@sigtstp': (m.Scope scope)=>ProcessSignal.sigtstp,
'dart:io@ProcessSignal@sigttin': (m.Scope scope)=>ProcessSignal.sigttin,
'dart:io@ProcessSignal@sigttou': (m.Scope scope)=>ProcessSignal.sigttou,
'dart:io@ProcessSignal@sigurg': (m.Scope scope)=>ProcessSignal.sigurg,
'dart:io@ProcessSignal@sigxcpu': (m.Scope scope)=>ProcessSignal.sigxcpu,
'dart:io@ProcessSignal@sigxfsz': (m.Scope scope)=>ProcessSignal.sigxfsz,
'dart:io@ProcessSignal@sigvtalrm': (m.Scope scope)=>ProcessSignal.sigvtalrm,
'dart:io@ProcessSignal@sigprof': (m.Scope scope)=>ProcessSignal.sigprof,
'dart:io@ProcessSignal@sigwinch': (m.Scope scope)=>ProcessSignal.sigwinch,
'dart:io@ProcessSignal@sigpoll': (m.Scope scope)=>ProcessSignal.sigpoll,
'dart:io@ProcessSignal@sigsys': (m.Scope scope)=>ProcessSignal.sigsys,
'dart:io@ProcessSignal@signalNumber': (m.Scope scope, ProcessSignal target)=>target.signalNumber,
'dart:io@ProcessSignal@name': (m.Scope scope, ProcessSignal target)=>target.name,
'dart:io@ProcessSignal@toString': (m.Scope scope, ProcessSignal target)=>target.toString,
'dart:io@ProcessSignal@watch': (m.Scope scope, ProcessSignal target)=>target.watch,
'dart:io@SignalException@#as': (m.Scope scope, target)=>()=>target as SignalException,
'dart:io@SignalException@#is': (m.Scope scope, target)=>()=>target is SignalException,
'dart:io@SignalException@message': (m.Scope scope, SignalException target)=>target.message,
'dart:io@SignalException@osError': (m.Scope scope, SignalException target)=>target.osError,
'dart:io@SignalException@': (m.Scope scope)=>( message, [dynamic osError]){
if(osError == null){
return SignalException(message);
}
return SignalException(message, osError);
},
'dart:io@SignalException@toString': (m.Scope scope, SignalException target)=>target.toString,
'dart:io@ProcessException@#as': (m.Scope scope, target)=>()=>target as ProcessException,
'dart:io@ProcessException@#is': (m.Scope scope, target)=>()=>target is ProcessException,
'dart:io@ProcessException@executable': (m.Scope scope, ProcessException target)=>target.executable,
'dart:io@ProcessException@arguments': (m.Scope scope, ProcessException target)=>target.arguments,
'dart:io@ProcessException@message': (m.Scope scope, ProcessException target)=>target.message,
'dart:io@ProcessException@errorCode': (m.Scope scope, ProcessException target)=>target.errorCode,
'dart:io@ProcessException@': (m.Scope scope)=>( executable,  arguments, [String? message, int? errorCode]){
if(message == null && errorCode == null){
return ProcessException(executable, arguments);
}
if(errorCode == null){
return ProcessException(executable, arguments, message!);
}
return ProcessException(executable, arguments, message!, errorCode!);
},
'dart:io@ProcessException@toString': (m.Scope scope, ProcessException target)=>target.toString,
'dart:io@@exit': (m.Scope scope)=>exit,
'dart:io@@sleep': (m.Scope scope)=>sleep,
'dart:io@SecureServerSocket@#as': (m.Scope scope, target)=>()=>target as SecureServerSocket,
'dart:io@SecureServerSocket@#is': (m.Scope scope, target)=>()=>target is SecureServerSocket,
'dart:io@SecureServerSocket@port': (m.Scope scope, SecureServerSocket target)=>target.port,
'dart:io@SecureServerSocket@address': (m.Scope scope, SecureServerSocket target)=>target.address,
'dart:io@SecureServerSocket@bind': (m.Scope scope)=>SecureServerSocket.bind,
'dart:io@SecureServerSocket@listen': (m.Scope scope, SecureServerSocket target)=>( onData, { cancelOnError,  onDone,  onError}){
void onDataProxy( socket) {
 engine.callFunctionPointer(scope, onData!,[socket], {});
}

void onDoneProxy() {
 engine.callFunctionPointer(scope, onDone!,[], {});
}

return target.listen(onDataProxy, cancelOnError:cancelOnError, onDone:onDone == null ? null :onDoneProxy, onError:onError);
},
'dart:io@SecureServerSocket@close': (m.Scope scope, SecureServerSocket target)=>target.close,
'dart:io@RawSecureServerSocket@#as': (m.Scope scope, target)=>()=>target as RawSecureServerSocket,
'dart:io@RawSecureServerSocket@#is': (m.Scope scope, target)=>()=>target is RawSecureServerSocket,
'dart:io@RawSecureServerSocket@requestClientCertificate': (m.Scope scope, RawSecureServerSocket target)=>target.requestClientCertificate,
'dart:io@RawSecureServerSocket@requireClientCertificate': (m.Scope scope, RawSecureServerSocket target)=>target.requireClientCertificate,
'dart:io@RawSecureServerSocket@supportedProtocols': (m.Scope scope, RawSecureServerSocket target)=>target.supportedProtocols,
'dart:io@RawSecureServerSocket@port': (m.Scope scope, RawSecureServerSocket target)=>target.port,
'dart:io@RawSecureServerSocket@address': (m.Scope scope, RawSecureServerSocket target)=>target.address,
'dart:io@RawSecureServerSocket@bind': (m.Scope scope)=>RawSecureServerSocket.bind,
'dart:io@RawSecureServerSocket@listen': (m.Scope scope, RawSecureServerSocket target)=>( onData, { cancelOnError,  onDone,  onError}){
void onDataProxy( s) {
 engine.callFunctionPointer(scope, onData!,[s], {});
}

void onDoneProxy() {
 engine.callFunctionPointer(scope, onDone!,[], {});
}

return target.listen(onDataProxy, cancelOnError:cancelOnError, onDone:onDone == null ? null :onDoneProxy, onError:onError);
},
'dart:io@RawSecureServerSocket@close': (m.Scope scope, RawSecureServerSocket target)=>target.close,
'dart:io@SecureSocket@#as': (m.Scope scope, target)=>()=>target as SecureSocket,
'dart:io@SecureSocket@#is': (m.Scope scope, target)=>()=>target is SecureSocket,
'dart:io@SecureSocket@peerCertificate': (m.Scope scope, SecureSocket target)=>target.peerCertificate,
'dart:io@SecureSocket@selectedProtocol': (m.Scope scope, SecureSocket target)=>target.selectedProtocol,
'dart:io@SecureSocket@connect': (m.Scope scope)=>( host,  port, { context,  keyLog,  onBadCertificate,  supportedProtocols,  timeout}){
void keyLogProxy( line) {
 engine.callFunctionPointer(scope, keyLog!,[line], {});
}

bool onBadCertificateProxy( certificate) {
return  engine.callFunctionPointer(scope, onBadCertificate!,[certificate], {});
}

return SecureSocket.connect(host, port, context:context, keyLog:keyLog == null ? null :keyLogProxy, onBadCertificate:onBadCertificate == null ? null :onBadCertificateProxy, supportedProtocols:supportedProtocols, timeout:timeout);
},
'dart:io@SecureSocket@startConnect': (m.Scope scope)=>( host,  port, { context,  keyLog,  onBadCertificate,  supportedProtocols}){
void keyLogProxy( line) {
 engine.callFunctionPointer(scope, keyLog!,[line], {});
}

bool onBadCertificateProxy( certificate) {
return  engine.callFunctionPointer(scope, onBadCertificate!,[certificate], {});
}

return SecureSocket.startConnect(host, port, context:context, keyLog:keyLog == null ? null :keyLogProxy, onBadCertificate:onBadCertificate == null ? null :onBadCertificateProxy, supportedProtocols:supportedProtocols);
},
'dart:io@SecureSocket@secure': (m.Scope scope)=>( socket, { context,  host,  keyLog,  onBadCertificate,  supportedProtocols}){
void keyLogProxy( line) {
 engine.callFunctionPointer(scope, keyLog!,[line], {});
}

bool onBadCertificateProxy( certificate) {
return  engine.callFunctionPointer(scope, onBadCertificate!,[certificate], {});
}

return SecureSocket.secure(socket, context:context, host:host, keyLog:keyLog == null ? null :keyLogProxy, onBadCertificate:onBadCertificate == null ? null :onBadCertificateProxy, supportedProtocols:supportedProtocols);
},
'dart:io@SecureSocket@secureServer': (m.Scope scope)=>SecureSocket.secureServer,
'dart:io@RawSecureSocket@#as': (m.Scope scope, target)=>()=>target as RawSecureSocket,
'dart:io@RawSecureSocket@#is': (m.Scope scope, target)=>()=>target is RawSecureSocket,
'dart:io@RawSecureSocket@peerCertificate': (m.Scope scope, RawSecureSocket target)=>target.peerCertificate,
'dart:io@RawSecureSocket@selectedProtocol': (m.Scope scope, RawSecureSocket target)=>target.selectedProtocol,
'dart:io@RawSecureSocket@connect': (m.Scope scope)=>( host,  port, { context,  keyLog,  onBadCertificate,  supportedProtocols,  timeout}){
void keyLogProxy( line) {
 engine.callFunctionPointer(scope, keyLog!,[line], {});
}

bool onBadCertificateProxy( certificate) {
return  engine.callFunctionPointer(scope, onBadCertificate!,[certificate], {});
}

return RawSecureSocket.connect(host, port, context:context, keyLog:keyLog == null ? null :keyLogProxy, onBadCertificate:onBadCertificate == null ? null :onBadCertificateProxy, supportedProtocols:supportedProtocols, timeout:timeout);
},
'dart:io@RawSecureSocket@startConnect': (m.Scope scope)=>( host,  port, { context,  keyLog,  onBadCertificate,  supportedProtocols}){
void keyLogProxy( line) {
 engine.callFunctionPointer(scope, keyLog!,[line], {});
}

bool onBadCertificateProxy( certificate) {
return  engine.callFunctionPointer(scope, onBadCertificate!,[certificate], {});
}

return RawSecureSocket.startConnect(host, port, context:context, keyLog:keyLog == null ? null :keyLogProxy, onBadCertificate:onBadCertificate == null ? null :onBadCertificateProxy, supportedProtocols:supportedProtocols);
},
'dart:io@RawSecureSocket@secure': (m.Scope scope)=>( socket, { context,  host,  keyLog,  onBadCertificate,  subscription,  supportedProtocols}){
void keyLogProxy( line) {
 engine.callFunctionPointer(scope, keyLog!,[line], {});
}

bool onBadCertificateProxy( certificate) {
return  engine.callFunctionPointer(scope, onBadCertificate!,[certificate], {});
}

return RawSecureSocket.secure(socket, context:context, host:host, keyLog:keyLog == null ? null :keyLogProxy, onBadCertificate:onBadCertificate == null ? null :onBadCertificateProxy, subscription:subscription, supportedProtocols:supportedProtocols);
},
'dart:io@RawSecureSocket@secureServer': (m.Scope scope)=>RawSecureSocket.secureServer,
'dart:io@X509Certificate@#as': (m.Scope scope, target)=>()=>target as X509Certificate,
'dart:io@X509Certificate@#is': (m.Scope scope, target)=>()=>target is X509Certificate,
'dart:io@X509Certificate@der': (m.Scope scope, X509Certificate target)=>target.der,
'dart:io@X509Certificate@pem': (m.Scope scope, X509Certificate target)=>target.pem,
'dart:io@X509Certificate@sha1': (m.Scope scope, X509Certificate target)=>target.sha1,
'dart:io@X509Certificate@subject': (m.Scope scope, X509Certificate target)=>target.subject,
'dart:io@X509Certificate@issuer': (m.Scope scope, X509Certificate target)=>target.issuer,
'dart:io@X509Certificate@startValidity': (m.Scope scope, X509Certificate target)=>target.startValidity,
'dart:io@X509Certificate@endValidity': (m.Scope scope, X509Certificate target)=>target.endValidity,
'dart:io@TlsException@#as': (m.Scope scope, target)=>()=>target as TlsException,
'dart:io@TlsException@#is': (m.Scope scope, target)=>()=>target is TlsException,
'dart:io@TlsException@type': (m.Scope scope, TlsException target)=>target.type,
'dart:io@TlsException@message': (m.Scope scope, TlsException target)=>target.message,
'dart:io@TlsException@osError': (m.Scope scope, TlsException target)=>target.osError,
'dart:io@TlsException@': (m.Scope scope)=>([String? message, OSError? osError]){
if(message == null && osError == null){
return TlsException();
}
if(osError == null){
return TlsException(message!);
}
return TlsException(message!, osError!);
},
'dart:io@TlsException@toString': (m.Scope scope, TlsException target)=>target.toString,
'dart:io@HandshakeException@#as': (m.Scope scope, target)=>()=>target as HandshakeException,
'dart:io@HandshakeException@#is': (m.Scope scope, target)=>()=>target is HandshakeException,
'dart:io@HandshakeException@': (m.Scope scope)=>([String? message, OSError? osError]){
if(message == null && osError == null){
return HandshakeException();
}
if(osError == null){
return HandshakeException(message!);
}
return HandshakeException(message!, osError!);
},
'dart:io@CertificateException@#as': (m.Scope scope, target)=>()=>target as CertificateException,
'dart:io@CertificateException@#is': (m.Scope scope, target)=>()=>target is CertificateException,
'dart:io@CertificateException@': (m.Scope scope)=>([String? message, OSError? osError]){
if(message == null && osError == null){
return CertificateException();
}
if(osError == null){
return CertificateException(message!);
}
return CertificateException(message!, osError!);
},
'dart:io@SecurityContext@#as': (m.Scope scope, target)=>()=>target as SecurityContext,
'dart:io@SecurityContext@#is': (m.Scope scope, target)=>()=>target is SecurityContext,
'dart:io@SecurityContext@allowLegacyUnsafeRenegotiation': (m.Scope scope, SecurityContext target)=>target.allowLegacyUnsafeRenegotiation,
'dart:io@SecurityContext@allowLegacyUnsafeRenegotiation:set': (m.Scope scope, SecurityContext target)=>(other)=>target.allowLegacyUnsafeRenegotiation=other,
'dart:io@SecurityContext@defaultContext': (m.Scope scope)=>SecurityContext.defaultContext,
'dart:io@SecurityContext@': (m.Scope scope)=>({ withTrustedRoots}){
return SecurityContext(withTrustedRoots:withTrustedRoots ?? false);
},
'dart:io@SecurityContext@usePrivateKey': (m.Scope scope, SecurityContext target)=>target.usePrivateKey,
'dart:io@SecurityContext@usePrivateKeyBytes': (m.Scope scope, SecurityContext target)=>target.usePrivateKeyBytes,
'dart:io@SecurityContext@setTrustedCertificates': (m.Scope scope, SecurityContext target)=>target.setTrustedCertificates,
'dart:io@SecurityContext@setTrustedCertificatesBytes': (m.Scope scope, SecurityContext target)=>target.setTrustedCertificatesBytes,
'dart:io@SecurityContext@useCertificateChain': (m.Scope scope, SecurityContext target)=>target.useCertificateChain,
'dart:io@SecurityContext@useCertificateChainBytes': (m.Scope scope, SecurityContext target)=>target.useCertificateChainBytes,
'dart:io@SecurityContext@setClientAuthorities': (m.Scope scope, SecurityContext target)=>target.setClientAuthorities,
'dart:io@SecurityContext@setClientAuthoritiesBytes': (m.Scope scope, SecurityContext target)=>target.setClientAuthoritiesBytes,
'dart:io@SecurityContext@setAlpnProtocols': (m.Scope scope, SecurityContext target)=>target.setAlpnProtocols,
'dart:io@InternetAddressType@#as': (m.Scope scope, target)=>()=>target as InternetAddressType,
'dart:io@InternetAddressType@#is': (m.Scope scope, target)=>()=>target is InternetAddressType,
'dart:io@InternetAddressType@IPv4': (m.Scope scope)=>InternetAddressType.IPv4,
'dart:io@InternetAddressType@IPv6': (m.Scope scope)=>InternetAddressType.IPv6,
'dart:io@InternetAddressType@unix': (m.Scope scope)=>InternetAddressType.unix,
'dart:io@InternetAddressType@any': (m.Scope scope)=>InternetAddressType.any,
'dart:io@InternetAddressType@name': (m.Scope scope, InternetAddressType target)=>target.name,
'dart:io@InternetAddressType@toString': (m.Scope scope, InternetAddressType target)=>target.toString,
'dart:io@InternetAddress@#as': (m.Scope scope, target)=>()=>target as InternetAddress,
'dart:io@InternetAddress@#is': (m.Scope scope, target)=>()=>target is InternetAddress,
'dart:io@InternetAddress@loopbackIPv4': (m.Scope scope)=>InternetAddress.loopbackIPv4,
'dart:io@InternetAddress@loopbackIPv6': (m.Scope scope)=>InternetAddress.loopbackIPv6,
'dart:io@InternetAddress@anyIPv4': (m.Scope scope)=>InternetAddress.anyIPv4,
'dart:io@InternetAddress@anyIPv6': (m.Scope scope)=>InternetAddress.anyIPv6,
'dart:io@InternetAddress@type': (m.Scope scope, InternetAddress target)=>target.type,
'dart:io@InternetAddress@address': (m.Scope scope, InternetAddress target)=>target.address,
'dart:io@InternetAddress@host': (m.Scope scope, InternetAddress target)=>target.host,
'dart:io@InternetAddress@rawAddress': (m.Scope scope, InternetAddress target)=>target.rawAddress,
'dart:io@InternetAddress@isLoopback': (m.Scope scope, InternetAddress target)=>target.isLoopback,
'dart:io@InternetAddress@isLinkLocal': (m.Scope scope, InternetAddress target)=>target.isLinkLocal,
'dart:io@InternetAddress@isMulticast': (m.Scope scope, InternetAddress target)=>target.isMulticast,
'dart:io@InternetAddress@': (m.Scope scope)=>( address, { type}){
return InternetAddress(address, type:type);
},
'dart:io@InternetAddress@fromRawAddress': (m.Scope scope)=>InternetAddress.fromRawAddress,
'dart:io@InternetAddress@reverse': (m.Scope scope, InternetAddress target)=>target.reverse,
'dart:io@InternetAddress@lookup': (m.Scope scope)=>InternetAddress.lookup,
'dart:io@InternetAddress@tryParse': (m.Scope scope)=>InternetAddress.tryParse,
'dart:io@NetworkInterface@#as': (m.Scope scope, target)=>()=>target as NetworkInterface,
'dart:io@NetworkInterface@#is': (m.Scope scope, target)=>()=>target is NetworkInterface,
'dart:io@NetworkInterface@name': (m.Scope scope, NetworkInterface target)=>target.name,
'dart:io@NetworkInterface@index': (m.Scope scope, NetworkInterface target)=>target.index,
'dart:io@NetworkInterface@addresses': (m.Scope scope, NetworkInterface target)=>target.addresses,
'dart:io@NetworkInterface@list': (m.Scope scope)=>NetworkInterface.list,
'dart:io@RawServerSocket@#as': (m.Scope scope, target)=>()=>target as RawServerSocket,
'dart:io@RawServerSocket@#is': (m.Scope scope, target)=>()=>target is RawServerSocket,
'dart:io@RawServerSocket@port': (m.Scope scope, RawServerSocket target)=>target.port,
'dart:io@RawServerSocket@address': (m.Scope scope, RawServerSocket target)=>target.address,
'dart:io@RawServerSocket@bind': (m.Scope scope)=>RawServerSocket.bind,
'dart:io@RawServerSocket@close': (m.Scope scope, RawServerSocket target)=>target.close,
'dart:io@ServerSocket@#as': (m.Scope scope, target)=>()=>target as ServerSocket,
'dart:io@ServerSocket@#is': (m.Scope scope, target)=>()=>target is ServerSocket,
'dart:io@ServerSocket@port': (m.Scope scope, ServerSocket target)=>target.port,
'dart:io@ServerSocket@address': (m.Scope scope, ServerSocket target)=>target.address,
'dart:io@ServerSocket@bind': (m.Scope scope)=>ServerSocket.bind,
'dart:io@ServerSocket@close': (m.Scope scope, ServerSocket target)=>target.close,
'dart:io@SocketDirection@#as': (m.Scope scope, target)=>()=>target as SocketDirection,
'dart:io@SocketDirection@#is': (m.Scope scope, target)=>()=>target is SocketDirection,
'dart:io@SocketDirection@receive': (m.Scope scope)=>SocketDirection.receive,
'dart:io@SocketDirection@send': (m.Scope scope)=>SocketDirection.send,
'dart:io@SocketDirection@both': (m.Scope scope)=>SocketDirection.both,
'dart:io@SocketOption@#as': (m.Scope scope, target)=>()=>target as SocketOption,
'dart:io@SocketOption@#is': (m.Scope scope, target)=>()=>target is SocketOption,
'dart:io@SocketOption@tcpNoDelay': (m.Scope scope)=>SocketOption.tcpNoDelay,
'dart:io@RawSocketOption@#as': (m.Scope scope, target)=>()=>target as RawSocketOption,
'dart:io@RawSocketOption@#is': (m.Scope scope, target)=>()=>target is RawSocketOption,
'dart:io@RawSocketOption@level': (m.Scope scope, RawSocketOption target)=>target.level,
'dart:io@RawSocketOption@option': (m.Scope scope, RawSocketOption target)=>target.option,
'dart:io@RawSocketOption@value': (m.Scope scope, RawSocketOption target)=>target.value,
'dart:io@RawSocketOption@levelSocket': (m.Scope scope)=>RawSocketOption.levelSocket,
'dart:io@RawSocketOption@levelIPv4': (m.Scope scope)=>RawSocketOption.levelIPv4,
'dart:io@RawSocketOption@IPv4MulticastInterface': (m.Scope scope)=>RawSocketOption.IPv4MulticastInterface,
'dart:io@RawSocketOption@levelIPv6': (m.Scope scope)=>RawSocketOption.levelIPv6,
'dart:io@RawSocketOption@IPv6MulticastInterface': (m.Scope scope)=>RawSocketOption.IPv6MulticastInterface,
'dart:io@RawSocketOption@levelTcp': (m.Scope scope)=>RawSocketOption.levelTcp,
'dart:io@RawSocketOption@levelUdp': (m.Scope scope)=>RawSocketOption.levelUdp,
'dart:io@RawSocketOption@': (m.Scope scope)=>( level,  option,  value){
return RawSocketOption(level, option, value);
},
'dart:io@RawSocketOption@fromInt': (m.Scope scope)=>RawSocketOption.fromInt,
'dart:io@RawSocketOption@fromBool': (m.Scope scope)=>RawSocketOption.fromBool,
'dart:io@RawSocketEvent@#as': (m.Scope scope, target)=>()=>target as RawSocketEvent,
'dart:io@RawSocketEvent@#is': (m.Scope scope, target)=>()=>target is RawSocketEvent,
'dart:io@RawSocketEvent@read': (m.Scope scope)=>RawSocketEvent.read,
'dart:io@RawSocketEvent@write': (m.Scope scope)=>RawSocketEvent.write,
'dart:io@RawSocketEvent@readClosed': (m.Scope scope)=>RawSocketEvent.readClosed,
'dart:io@RawSocketEvent@closed': (m.Scope scope)=>RawSocketEvent.closed,
'dart:io@RawSocketEvent@toString': (m.Scope scope, RawSocketEvent target)=>target.toString,
'dart:io@ConnectionTask@#as': (m.Scope scope, target)=>()=>target as ConnectionTask,
'dart:io@ConnectionTask@#is': (m.Scope scope, target)=>()=>target is ConnectionTask,
'dart:io@ConnectionTask@socket': (m.Scope scope, ConnectionTask target)=>target.socket,
'dart:io@ConnectionTask@cancel': (m.Scope scope, ConnectionTask target)=>target.cancel,
'dart:io@RawSocket@#as': (m.Scope scope, target)=>()=>target as RawSocket,
'dart:io@RawSocket@#is': (m.Scope scope, target)=>()=>target is RawSocket,
'dart:io@RawSocket@readEventsEnabled': (m.Scope scope, RawSocket target)=>target.readEventsEnabled,
'dart:io@RawSocket@readEventsEnabled:set': (m.Scope scope, RawSocket target)=>(other)=>target.readEventsEnabled=other,
'dart:io@RawSocket@writeEventsEnabled': (m.Scope scope, RawSocket target)=>target.writeEventsEnabled,
'dart:io@RawSocket@writeEventsEnabled:set': (m.Scope scope, RawSocket target)=>(other)=>target.writeEventsEnabled=other,
'dart:io@RawSocket@port': (m.Scope scope, RawSocket target)=>target.port,
'dart:io@RawSocket@remotePort': (m.Scope scope, RawSocket target)=>target.remotePort,
'dart:io@RawSocket@address': (m.Scope scope, RawSocket target)=>target.address,
'dart:io@RawSocket@remoteAddress': (m.Scope scope, RawSocket target)=>target.remoteAddress,
'dart:io@RawSocket@connect': (m.Scope scope)=>RawSocket.connect,
'dart:io@RawSocket@startConnect': (m.Scope scope)=>RawSocket.startConnect,
'dart:io@RawSocket@available': (m.Scope scope, RawSocket target)=>target.available,
'dart:io@RawSocket@read': (m.Scope scope, RawSocket target)=>target.read,
'dart:io@RawSocket@readMessage': (m.Scope scope, RawSocket target)=>target.readMessage,
'dart:io@RawSocket@write': (m.Scope scope, RawSocket target)=>target.write,
'dart:io@RawSocket@sendMessage': (m.Scope scope, RawSocket target)=>target.sendMessage,
'dart:io@RawSocket@close': (m.Scope scope, RawSocket target)=>target.close,
'dart:io@RawSocket@shutdown': (m.Scope scope, RawSocket target)=>target.shutdown,
'dart:io@RawSocket@setOption': (m.Scope scope, RawSocket target)=>target.setOption,
'dart:io@RawSocket@getRawOption': (m.Scope scope, RawSocket target)=>target.getRawOption,
'dart:io@RawSocket@setRawOption': (m.Scope scope, RawSocket target)=>target.setRawOption,
'dart:io@Socket@#as': (m.Scope scope, target)=>()=>target as Socket,
'dart:io@Socket@#is': (m.Scope scope, target)=>()=>target is Socket,
'dart:io@Socket@port': (m.Scope scope, Socket target)=>target.port,
'dart:io@Socket@remotePort': (m.Scope scope, Socket target)=>target.remotePort,
'dart:io@Socket@address': (m.Scope scope, Socket target)=>target.address,
'dart:io@Socket@remoteAddress': (m.Scope scope, Socket target)=>target.remoteAddress,
'dart:io@Socket@done': (m.Scope scope, Socket target)=>target.done,
'dart:io@Socket@connect': (m.Scope scope)=>Socket.connect,
'dart:io@Socket@startConnect': (m.Scope scope)=>Socket.startConnect,
'dart:io@Socket@destroy': (m.Scope scope, Socket target)=>target.destroy,
'dart:io@Socket@setOption': (m.Scope scope, Socket target)=>target.setOption,
'dart:io@Socket@getRawOption': (m.Scope scope, Socket target)=>target.getRawOption,
'dart:io@Socket@setRawOption': (m.Scope scope, Socket target)=>target.setRawOption,
'dart:io@Socket@close': (m.Scope scope, Socket target)=>target.close,
'dart:io@Datagram@#as': (m.Scope scope, target)=>()=>target as Datagram,
'dart:io@Datagram@#is': (m.Scope scope, target)=>()=>target is Datagram,
'dart:io@Datagram@data': (m.Scope scope, Datagram target)=>target.data,
'dart:io@Datagram@data:set': (m.Scope scope, Datagram target)=>(other)=>target.data=other,
'dart:io@Datagram@address': (m.Scope scope, Datagram target)=>target.address,
'dart:io@Datagram@address:set': (m.Scope scope, Datagram target)=>(other)=>target.address=other,
'dart:io@Datagram@port': (m.Scope scope, Datagram target)=>target.port,
'dart:io@Datagram@port:set': (m.Scope scope, Datagram target)=>(other)=>target.port=other,
'dart:io@Datagram@': (m.Scope scope)=>( data,  address,  port){
return Datagram(data, address, port);
},
'dart:io@ResourceHandle@#as': (m.Scope scope, target)=>()=>target as ResourceHandle,
'dart:io@ResourceHandle@#is': (m.Scope scope, target)=>()=>target is ResourceHandle,
'dart:io@ResourceHandle@fromFile': (m.Scope scope)=>ResourceHandle.fromFile,
'dart:io@ResourceHandle@fromSocket': (m.Scope scope)=>ResourceHandle.fromSocket,
'dart:io@ResourceHandle@fromRawSocket': (m.Scope scope)=>ResourceHandle.fromRawSocket,
'dart:io@ResourceHandle@fromRawDatagramSocket': (m.Scope scope)=>ResourceHandle.fromRawDatagramSocket,
'dart:io@ResourceHandle@fromStdin': (m.Scope scope)=>ResourceHandle.fromStdin,
'dart:io@ResourceHandle@fromStdout': (m.Scope scope)=>ResourceHandle.fromStdout,
'dart:io@ResourceHandle@fromReadPipe': (m.Scope scope)=>ResourceHandle.fromReadPipe,
'dart:io@ResourceHandle@fromWritePipe': (m.Scope scope)=>ResourceHandle.fromWritePipe,
'dart:io@ResourceHandle@toFile': (m.Scope scope, ResourceHandle target)=>target.toFile,
'dart:io@ResourceHandle@toSocket': (m.Scope scope, ResourceHandle target)=>target.toSocket,
'dart:io@ResourceHandle@toRawSocket': (m.Scope scope, ResourceHandle target)=>target.toRawSocket,
'dart:io@ResourceHandle@toRawDatagramSocket': (m.Scope scope, ResourceHandle target)=>target.toRawDatagramSocket,
'dart:io@ResourceHandle@toReadPipe': (m.Scope scope, ResourceHandle target)=>target.toReadPipe,
'dart:io@ResourceHandle@toWritePipe': (m.Scope scope, ResourceHandle target)=>target.toWritePipe,
'dart:io@SocketControlMessage@#as': (m.Scope scope, target)=>()=>target as SocketControlMessage,
'dart:io@SocketControlMessage@#is': (m.Scope scope, target)=>()=>target is SocketControlMessage,
'dart:io@SocketControlMessage@level': (m.Scope scope, SocketControlMessage target)=>target.level,
'dart:io@SocketControlMessage@type': (m.Scope scope, SocketControlMessage target)=>target.type,
'dart:io@SocketControlMessage@data': (m.Scope scope, SocketControlMessage target)=>target.data,
'dart:io@SocketControlMessage@fromHandles': (m.Scope scope)=>SocketControlMessage.fromHandles,
'dart:io@SocketControlMessage@extractHandles': (m.Scope scope, SocketControlMessage target)=>target.extractHandles,
'dart:io@SocketMessage@#as': (m.Scope scope, target)=>()=>target as SocketMessage,
'dart:io@SocketMessage@#is': (m.Scope scope, target)=>()=>target is SocketMessage,
'dart:io@SocketMessage@data': (m.Scope scope, SocketMessage target)=>target.data,
'dart:io@SocketMessage@controlMessages': (m.Scope scope, SocketMessage target)=>target.controlMessages,
'dart:io@SocketMessage@': (m.Scope scope)=>( data,  controlMessages){
return SocketMessage(data, controlMessages);
},
'dart:io@RawDatagramSocket@#as': (m.Scope scope, target)=>()=>target as RawDatagramSocket,
'dart:io@RawDatagramSocket@#is': (m.Scope scope, target)=>()=>target is RawDatagramSocket,
'dart:io@RawDatagramSocket@readEventsEnabled': (m.Scope scope, RawDatagramSocket target)=>target.readEventsEnabled,
'dart:io@RawDatagramSocket@readEventsEnabled:set': (m.Scope scope, RawDatagramSocket target)=>(other)=>target.readEventsEnabled=other,
'dart:io@RawDatagramSocket@writeEventsEnabled': (m.Scope scope, RawDatagramSocket target)=>target.writeEventsEnabled,
'dart:io@RawDatagramSocket@writeEventsEnabled:set': (m.Scope scope, RawDatagramSocket target)=>(other)=>target.writeEventsEnabled=other,
'dart:io@RawDatagramSocket@multicastLoopback': (m.Scope scope, RawDatagramSocket target)=>target.multicastLoopback,
'dart:io@RawDatagramSocket@multicastLoopback:set': (m.Scope scope, RawDatagramSocket target)=>(other)=>target.multicastLoopback=other,
'dart:io@RawDatagramSocket@multicastHops': (m.Scope scope, RawDatagramSocket target)=>target.multicastHops,
'dart:io@RawDatagramSocket@multicastHops:set': (m.Scope scope, RawDatagramSocket target)=>(other)=>target.multicastHops=other,
'dart:io@RawDatagramSocket@multicastInterface': (m.Scope scope, RawDatagramSocket target)=>target.multicastInterface,
'dart:io@RawDatagramSocket@multicastInterface:set': (m.Scope scope, RawDatagramSocket target)=>(other)=>target.multicastInterface=other,
'dart:io@RawDatagramSocket@broadcastEnabled': (m.Scope scope, RawDatagramSocket target)=>target.broadcastEnabled,
'dart:io@RawDatagramSocket@broadcastEnabled:set': (m.Scope scope, RawDatagramSocket target)=>(other)=>target.broadcastEnabled=other,
'dart:io@RawDatagramSocket@port': (m.Scope scope, RawDatagramSocket target)=>target.port,
'dart:io@RawDatagramSocket@address': (m.Scope scope, RawDatagramSocket target)=>target.address,
'dart:io@RawDatagramSocket@bind': (m.Scope scope)=>RawDatagramSocket.bind,
'dart:io@RawDatagramSocket@close': (m.Scope scope, RawDatagramSocket target)=>target.close,
'dart:io@RawDatagramSocket@send': (m.Scope scope, RawDatagramSocket target)=>target.send,
'dart:io@RawDatagramSocket@receive': (m.Scope scope, RawDatagramSocket target)=>target.receive,
'dart:io@RawDatagramSocket@joinMulticast': (m.Scope scope, RawDatagramSocket target)=>target.joinMulticast,
'dart:io@RawDatagramSocket@leaveMulticast': (m.Scope scope, RawDatagramSocket target)=>target.leaveMulticast,
'dart:io@RawDatagramSocket@getRawOption': (m.Scope scope, RawDatagramSocket target)=>target.getRawOption,
'dart:io@RawDatagramSocket@setRawOption': (m.Scope scope, RawDatagramSocket target)=>target.setRawOption,
'dart:io@SocketException@#as': (m.Scope scope, target)=>()=>target as SocketException,
'dart:io@SocketException@#is': (m.Scope scope, target)=>()=>target is SocketException,
'dart:io@SocketException@message': (m.Scope scope, SocketException target)=>target.message,
'dart:io@SocketException@osError': (m.Scope scope, SocketException target)=>target.osError,
'dart:io@SocketException@address': (m.Scope scope, SocketException target)=>target.address,
'dart:io@SocketException@port': (m.Scope scope, SocketException target)=>target.port,
'dart:io@SocketException@': (m.Scope scope)=>( message, { address,  osError,  port}){
return SocketException(message, address:address, osError:osError, port:port);
},
'dart:io@SocketException@closed': (m.Scope scope)=>SocketException.closed,
'dart:io@SocketException@toString': (m.Scope scope, SocketException target)=>target.toString,
'dart:io@@stdin': (m.Scope scope)=>stdin,
'dart:io@@stdout': (m.Scope scope)=>stdout,
'dart:io@@stderr': (m.Scope scope)=>stderr,
'dart:io@Stdin@#as': (m.Scope scope, target)=>()=>target as Stdin,
'dart:io@Stdin@#is': (m.Scope scope, target)=>()=>target is Stdin,
'dart:io@Stdin@echoMode': (m.Scope scope, Stdin target)=>target.echoMode,
'dart:io@Stdin@echoMode:set': (m.Scope scope, Stdin target)=>(other)=>target.echoMode=other,
'dart:io@Stdin@echoNewlineMode': (m.Scope scope, Stdin target)=>target.echoNewlineMode,
'dart:io@Stdin@echoNewlineMode:set': (m.Scope scope, Stdin target)=>(other)=>target.echoNewlineMode=other,
'dart:io@Stdin@lineMode': (m.Scope scope, Stdin target)=>target.lineMode,
'dart:io@Stdin@lineMode:set': (m.Scope scope, Stdin target)=>(other)=>target.lineMode=other,
'dart:io@Stdin@supportsAnsiEscapes': (m.Scope scope, Stdin target)=>target.supportsAnsiEscapes,
'dart:io@Stdin@hasTerminal': (m.Scope scope, Stdin target)=>target.hasTerminal,
'dart:io@Stdin@readLineSync': (m.Scope scope, Stdin target)=>target.readLineSync,
'dart:io@Stdin@readByteSync': (m.Scope scope, Stdin target)=>target.readByteSync,
'dart:io@Stdout@#as': (m.Scope scope, target)=>()=>target as Stdout,
'dart:io@Stdout@#is': (m.Scope scope, target)=>()=>target is Stdout,
'dart:io@Stdout@hasTerminal': (m.Scope scope, Stdout target)=>target.hasTerminal,
'dart:io@Stdout@terminalColumns': (m.Scope scope, Stdout target)=>target.terminalColumns,
'dart:io@Stdout@terminalLines': (m.Scope scope, Stdout target)=>target.terminalLines,
'dart:io@Stdout@supportsAnsiEscapes': (m.Scope scope, Stdout target)=>target.supportsAnsiEscapes,
'dart:io@Stdout@nonBlocking': (m.Scope scope, Stdout target)=>target.nonBlocking,
'dart:io@StdoutException@#as': (m.Scope scope, target)=>()=>target as StdoutException,
'dart:io@StdoutException@#is': (m.Scope scope, target)=>()=>target is StdoutException,
'dart:io@StdoutException@message': (m.Scope scope, StdoutException target)=>target.message,
'dart:io@StdoutException@osError': (m.Scope scope, StdoutException target)=>target.osError,
'dart:io@StdoutException@': (m.Scope scope)=>( message, [OSError? osError]){
if(osError == null){
return StdoutException(message);
}
return StdoutException(message, osError!);
},
'dart:io@StdoutException@toString': (m.Scope scope, StdoutException target)=>target.toString,
'dart:io@StdinException@#as': (m.Scope scope, target)=>()=>target as StdinException,
'dart:io@StdinException@#is': (m.Scope scope, target)=>()=>target is StdinException,
'dart:io@StdinException@message': (m.Scope scope, StdinException target)=>target.message,
'dart:io@StdinException@osError': (m.Scope scope, StdinException target)=>target.osError,
'dart:io@StdinException@': (m.Scope scope)=>( message, [OSError? osError]){
if(osError == null){
return StdinException(message);
}
return StdinException(message, osError!);
},
'dart:io@StdinException@toString': (m.Scope scope, StdinException target)=>target.toString,
'dart:io@StdioType@#as': (m.Scope scope, target)=>()=>target as StdioType,
'dart:io@StdioType@#is': (m.Scope scope, target)=>()=>target is StdioType,
'dart:io@StdioType@terminal': (m.Scope scope)=>StdioType.terminal,
'dart:io@StdioType@pipe': (m.Scope scope)=>StdioType.pipe,
'dart:io@StdioType@file': (m.Scope scope)=>StdioType.file,
'dart:io@StdioType@other': (m.Scope scope)=>StdioType.other,
'dart:io@StdioType@name': (m.Scope scope, StdioType target)=>target.name,
'dart:io@StdioType@toString': (m.Scope scope, StdioType target)=>target.toString,
'dart:io@@stdioType': (m.Scope scope)=>stdioType,
'dart:io@@systemEncoding': (m.Scope scope)=>systemEncoding,
'dart:io@SystemEncoding@#as': (m.Scope scope, target)=>()=>target as SystemEncoding,
'dart:io@SystemEncoding@#is': (m.Scope scope, target)=>()=>target is SystemEncoding,
'dart:io@SystemEncoding@name': (m.Scope scope, SystemEncoding target)=>target.name,
'dart:io@SystemEncoding@encoder': (m.Scope scope, SystemEncoding target)=>target.encoder,
'dart:io@SystemEncoding@decoder': (m.Scope scope, SystemEncoding target)=>target.decoder,
'dart:io@SystemEncoding@': (m.Scope scope)=>(){
return SystemEncoding();
},
'dart:io@SystemEncoding@encode': (m.Scope scope, SystemEncoding target)=>target.encode,
'dart:io@SystemEncoding@decode': (m.Scope scope, SystemEncoding target)=>target.decode,
'dart:io@RawSynchronousSocket@#as': (m.Scope scope, target)=>()=>target as RawSynchronousSocket,
'dart:io@RawSynchronousSocket@#is': (m.Scope scope, target)=>()=>target is RawSynchronousSocket,
'dart:io@RawSynchronousSocket@port': (m.Scope scope, RawSynchronousSocket target)=>target.port,
'dart:io@RawSynchronousSocket@remotePort': (m.Scope scope, RawSynchronousSocket target)=>target.remotePort,
'dart:io@RawSynchronousSocket@address': (m.Scope scope, RawSynchronousSocket target)=>target.address,
'dart:io@RawSynchronousSocket@remoteAddress': (m.Scope scope, RawSynchronousSocket target)=>target.remoteAddress,
'dart:io@RawSynchronousSocket@connectSync': (m.Scope scope)=>RawSynchronousSocket.connectSync,
'dart:io@RawSynchronousSocket@available': (m.Scope scope, RawSynchronousSocket target)=>target.available,
'dart:io@RawSynchronousSocket@closeSync': (m.Scope scope, RawSynchronousSocket target)=>target.closeSync,
'dart:io@RawSynchronousSocket@readIntoSync': (m.Scope scope, RawSynchronousSocket target)=>target.readIntoSync,
'dart:io@RawSynchronousSocket@readSync': (m.Scope scope, RawSynchronousSocket target)=>target.readSync,
'dart:io@RawSynchronousSocket@shutdown': (m.Scope scope, RawSynchronousSocket target)=>target.shutdown,
'dart:io@RawSynchronousSocket@writeFromSync': (m.Scope scope, RawSynchronousSocket target)=>target.writeFromSync,

};
}