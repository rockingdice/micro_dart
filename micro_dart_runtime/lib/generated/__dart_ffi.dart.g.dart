import 'dart:ffi';
import 'dart:isolate';
import 'dart:typed_data';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'dart:ffi@@nullptr': (m.Scope scope)=>nullptr,
'dart:ffi@Pointer@#as': (m.Scope scope, target)=>()=>target as Pointer,
'dart:ffi@Pointer@#is': (m.Scope scope, target)=>()=>target is Pointer,
'dart:ffi@Pointer@address': (m.Scope scope, Pointer target)=>target.address,
'dart:ffi@Pointer@hashCode': (m.Scope scope, Pointer target)=>target.hashCode,
'dart:ffi@Pointer@fromAddress': (m.Scope scope)=>Pointer.fromAddress,
'dart:ffi@Pointer@fromFunction': (m.Scope scope)=>Pointer.fromFunction,
'dart:ffi@Pointer@cast': (m.Scope scope, Pointer target)=>target.cast,
'dart:ffi@Pointer@==': (m.Scope scope, Pointer target)=>(other)=> target == other,
'dart:ffi@Array@#as': (m.Scope scope, target)=>()=>target as Array,
'dart:ffi@Array@#is': (m.Scope scope, target)=>()=>target is Array,
'dart:ffi@Array@': (m.Scope scope)=>Array,
'dart:ffi@Array@multi': (m.Scope scope)=>Array.multi,
'dart:ffi@Dart_CObject@#as': (m.Scope scope, target)=>()=>target as Dart_CObject,
'dart:ffi@Dart_CObject@#is': (m.Scope scope, target)=>()=>target is Dart_CObject,
'dart:ffi@Dart_CObject@': (m.Scope scope)=>(){
return Dart_CObject();
},
'dart:ffi@NativeApi@#as': (m.Scope scope, target)=>()=>target as NativeApi,
'dart:ffi@NativeApi@#is': (m.Scope scope, target)=>()=>target is NativeApi,
'dart:ffi@NativeApi@majorVersion': (m.Scope scope)=>NativeApi.majorVersion,
'dart:ffi@NativeApi@minorVersion': (m.Scope scope)=>NativeApi.minorVersion,
'dart:ffi@NativeApi@postCObject': (m.Scope scope)=>NativeApi.postCObject,
'dart:ffi@NativeApi@newNativePort': (m.Scope scope)=>NativeApi.newNativePort,
'dart:ffi@NativeApi@closeNativePort': (m.Scope scope)=>NativeApi.closeNativePort,
'dart:ffi@NativeApi@initializeApiDLData': (m.Scope scope)=>NativeApi.initializeApiDLData,
'dart:ffi@FfiNative@#as': (m.Scope scope, target)=>()=>target as FfiNative,
'dart:ffi@FfiNative@#is': (m.Scope scope, target)=>()=>target is FfiNative,
'dart:ffi@FfiNative@nativeName': (m.Scope scope, FfiNative target)=>target.nativeName,
'dart:ffi@FfiNative@isLeaf': (m.Scope scope, FfiNative target)=>target.isLeaf,
'dart:ffi@FfiNative@': (m.Scope scope)=>FfiNative,
'dart:ffi@Native@#as': (m.Scope scope, target)=>()=>target as Native,
'dart:ffi@Native@#is': (m.Scope scope, target)=>()=>target is Native,
'dart:ffi@Native@symbol': (m.Scope scope, Native target)=>target.symbol,
'dart:ffi@Native@assetId': (m.Scope scope, Native target)=>target.assetId,
'dart:ffi@Native@isLeaf': (m.Scope scope, Native target)=>target.isLeaf,
'dart:ffi@Native@': (m.Scope scope)=><T>({ assetId,  isLeaf,  symbol}){
return Native(assetId:assetId, isLeaf:isLeaf ?? false, symbol:symbol);
},
'dart:ffi@DefaultAsset@#as': (m.Scope scope, target)=>()=>target as DefaultAsset,
'dart:ffi@DefaultAsset@#is': (m.Scope scope, target)=>()=>target is DefaultAsset,
'dart:ffi@DefaultAsset@id': (m.Scope scope, DefaultAsset target)=>target.id,
'dart:ffi@DefaultAsset@': (m.Scope scope)=>DefaultAsset,
'dart:ffi@@sizeOf': (m.Scope scope)=>sizeOf,
'dart:ffi@Abi@#as': (m.Scope scope, target)=>()=>target as Abi,
'dart:ffi@Abi@#is': (m.Scope scope, target)=>()=>target is Abi,
'dart:ffi@Abi@androidArm': (m.Scope scope)=>Abi.androidArm,
'dart:ffi@Abi@androidArm64': (m.Scope scope)=>Abi.androidArm64,
'dart:ffi@Abi@androidIA32': (m.Scope scope)=>Abi.androidIA32,
'dart:ffi@Abi@androidX64': (m.Scope scope)=>Abi.androidX64,
'dart:ffi@Abi@fuchsiaArm64': (m.Scope scope)=>Abi.fuchsiaArm64,
'dart:ffi@Abi@fuchsiaX64': (m.Scope scope)=>Abi.fuchsiaX64,
'dart:ffi@Abi@fuchsiaRiscv64': (m.Scope scope)=>Abi.fuchsiaRiscv64,
'dart:ffi@Abi@iosArm': (m.Scope scope)=>Abi.iosArm,
'dart:ffi@Abi@iosArm64': (m.Scope scope)=>Abi.iosArm64,
'dart:ffi@Abi@iosX64': (m.Scope scope)=>Abi.iosX64,
'dart:ffi@Abi@linuxArm': (m.Scope scope)=>Abi.linuxArm,
'dart:ffi@Abi@linuxArm64': (m.Scope scope)=>Abi.linuxArm64,
'dart:ffi@Abi@linuxIA32': (m.Scope scope)=>Abi.linuxIA32,
'dart:ffi@Abi@linuxX64': (m.Scope scope)=>Abi.linuxX64,
'dart:ffi@Abi@linuxRiscv32': (m.Scope scope)=>Abi.linuxRiscv32,
'dart:ffi@Abi@linuxRiscv64': (m.Scope scope)=>Abi.linuxRiscv64,
'dart:ffi@Abi@macosArm64': (m.Scope scope)=>Abi.macosArm64,
'dart:ffi@Abi@macosX64': (m.Scope scope)=>Abi.macosX64,
'dart:ffi@Abi@windowsArm64': (m.Scope scope)=>Abi.windowsArm64,
'dart:ffi@Abi@windowsIA32': (m.Scope scope)=>Abi.windowsIA32,
'dart:ffi@Abi@windowsX64': (m.Scope scope)=>Abi.windowsX64,
'dart:ffi@Abi@values': (m.Scope scope)=>Abi.values,
'dart:ffi@Abi@current': (m.Scope scope)=>Abi.current,
'dart:ffi@Abi@toString': (m.Scope scope, Abi target)=>target.toString,
'dart:ffi@AbiSpecificInteger@#as': (m.Scope scope, target)=>()=>target as AbiSpecificInteger,
'dart:ffi@AbiSpecificInteger@#is': (m.Scope scope, target)=>()=>target is AbiSpecificInteger,
'dart:ffi@AbiSpecificInteger@': (m.Scope scope)=>(){
return AbiSpecificInteger();
},
'dart:ffi@AbiSpecificIntegerMapping@#as': (m.Scope scope, target)=>()=>target as AbiSpecificIntegerMapping,
'dart:ffi@AbiSpecificIntegerMapping@#is': (m.Scope scope, target)=>()=>target is AbiSpecificIntegerMapping,
'dart:ffi@AbiSpecificIntegerMapping@mapping': (m.Scope scope, AbiSpecificIntegerMapping target)=>target.mapping,
'dart:ffi@AbiSpecificIntegerMapping@': (m.Scope scope)=>AbiSpecificIntegerMapping,
'dart:ffi@NativeType@#as': (m.Scope scope, target)=>()=>target as NativeType,
'dart:ffi@NativeType@#is': (m.Scope scope, target)=>()=>target is NativeType,
'dart:ffi@Opaque@#as': (m.Scope scope, target)=>()=>target as Opaque,
'dart:ffi@Opaque@#is': (m.Scope scope, target)=>()=>target is Opaque,
'dart:ffi@Int8@#as': (m.Scope scope, target)=>()=>target as Int8,
'dart:ffi@Int8@#is': (m.Scope scope, target)=>()=>target is Int8,
'dart:ffi@Int8@': (m.Scope scope)=>(){
return Int8();
},
'dart:ffi@Int16@#as': (m.Scope scope, target)=>()=>target as Int16,
'dart:ffi@Int16@#is': (m.Scope scope, target)=>()=>target is Int16,
'dart:ffi@Int16@': (m.Scope scope)=>(){
return Int16();
},
'dart:ffi@Int32@#as': (m.Scope scope, target)=>()=>target as Int32,
'dart:ffi@Int32@#is': (m.Scope scope, target)=>()=>target is Int32,
'dart:ffi@Int32@': (m.Scope scope)=>(){
return Int32();
},
'dart:ffi@Int64@#as': (m.Scope scope, target)=>()=>target as Int64,
'dart:ffi@Int64@#is': (m.Scope scope, target)=>()=>target is Int64,
'dart:ffi@Int64@': (m.Scope scope)=>(){
return Int64();
},
'dart:ffi@Uint8@#as': (m.Scope scope, target)=>()=>target as Uint8,
'dart:ffi@Uint8@#is': (m.Scope scope, target)=>()=>target is Uint8,
'dart:ffi@Uint8@': (m.Scope scope)=>(){
return Uint8();
},
'dart:ffi@Uint16@#as': (m.Scope scope, target)=>()=>target as Uint16,
'dart:ffi@Uint16@#is': (m.Scope scope, target)=>()=>target is Uint16,
'dart:ffi@Uint16@': (m.Scope scope)=>(){
return Uint16();
},
'dart:ffi@Uint32@#as': (m.Scope scope, target)=>()=>target as Uint32,
'dart:ffi@Uint32@#is': (m.Scope scope, target)=>()=>target is Uint32,
'dart:ffi@Uint32@': (m.Scope scope)=>(){
return Uint32();
},
'dart:ffi@Uint64@#as': (m.Scope scope, target)=>()=>target as Uint64,
'dart:ffi@Uint64@#is': (m.Scope scope, target)=>()=>target is Uint64,
'dart:ffi@Uint64@': (m.Scope scope)=>(){
return Uint64();
},
'dart:ffi@Float@#as': (m.Scope scope, target)=>()=>target as Float,
'dart:ffi@Float@#is': (m.Scope scope, target)=>()=>target is Float,
'dart:ffi@Float@': (m.Scope scope)=>(){
return Float();
},
'dart:ffi@Double@#as': (m.Scope scope, target)=>()=>target as Double,
'dart:ffi@Double@#is': (m.Scope scope, target)=>()=>target is Double,
'dart:ffi@Double@': (m.Scope scope)=>(){
return Double();
},
'dart:ffi@Bool@#as': (m.Scope scope, target)=>()=>target as Bool,
'dart:ffi@Bool@#is': (m.Scope scope, target)=>()=>target is Bool,
'dart:ffi@Bool@': (m.Scope scope)=>(){
return Bool();
},
'dart:ffi@Void@#as': (m.Scope scope, target)=>()=>target as Void,
'dart:ffi@Void@#is': (m.Scope scope, target)=>()=>target is Void,
'dart:ffi@Handle@#as': (m.Scope scope, target)=>()=>target as Handle,
'dart:ffi@Handle@#is': (m.Scope scope, target)=>()=>target is Handle,
'dart:ffi@NativeFunction@#as': (m.Scope scope, target)=>()=>target as NativeFunction,
'dart:ffi@NativeFunction@#is': (m.Scope scope, target)=>()=>target is NativeFunction,
'dart:ffi@VarArgs@#as': (m.Scope scope, target)=>()=>target as VarArgs,
'dart:ffi@VarArgs@#is': (m.Scope scope, target)=>()=>target is VarArgs,
'dart:ffi@Finalizable@#as': (m.Scope scope, target)=>()=>target as Finalizable,
'dart:ffi@Finalizable@#is': (m.Scope scope, target)=>()=>target is Finalizable,
'dart:ffi@NativeFinalizer@#as': (m.Scope scope, target)=>()=>target as NativeFinalizer,
'dart:ffi@NativeFinalizer@#is': (m.Scope scope, target)=>()=>target is NativeFinalizer,
'dart:ffi@NativeFinalizer@': (m.Scope scope)=>NativeFinalizer,
'dart:ffi@NativeFinalizer@attach': (m.Scope scope, NativeFinalizer target)=>target.attach,
'dart:ffi@NativeFinalizer@detach': (m.Scope scope, NativeFinalizer target)=>target.detach,
'dart:ffi@Allocator@#as': (m.Scope scope, target)=>()=>target as Allocator,
'dart:ffi@Allocator@#is': (m.Scope scope, target)=>()=>target is Allocator,
'dart:ffi@Allocator@allocate': (m.Scope scope, Allocator target)=>target.allocate,
'dart:ffi@Allocator@free': (m.Scope scope, Allocator target)=>target.free,
'dart:ffi@@unsized': (m.Scope scope)=>unsized,
'dart:ffi@DartRepresentationOf@#as': (m.Scope scope, target)=>()=>target as DartRepresentationOf,
'dart:ffi@DartRepresentationOf@#is': (m.Scope scope, target)=>()=>target is DartRepresentationOf,
'dart:ffi@DartRepresentationOf@': (m.Scope scope)=>DartRepresentationOf,
'dart:ffi@Unsized@#as': (m.Scope scope, target)=>()=>target as Unsized,
'dart:ffi@Unsized@#is': (m.Scope scope, target)=>()=>target is Unsized,
'dart:ffi@Unsized@': (m.Scope scope)=>(){
return Unsized();
},
'dart:ffi@Char@#as': (m.Scope scope, target)=>()=>target as Char,
'dart:ffi@Char@#is': (m.Scope scope, target)=>()=>target is Char,
'dart:ffi@Char@': (m.Scope scope)=>(){
return Char();
},
'dart:ffi@SignedChar@#as': (m.Scope scope, target)=>()=>target as SignedChar,
'dart:ffi@SignedChar@#is': (m.Scope scope, target)=>()=>target is SignedChar,
'dart:ffi@SignedChar@': (m.Scope scope)=>(){
return SignedChar();
},
'dart:ffi@UnsignedChar@#as': (m.Scope scope, target)=>()=>target as UnsignedChar,
'dart:ffi@UnsignedChar@#is': (m.Scope scope, target)=>()=>target is UnsignedChar,
'dart:ffi@UnsignedChar@': (m.Scope scope)=>(){
return UnsignedChar();
},
'dart:ffi@Short@#as': (m.Scope scope, target)=>()=>target as Short,
'dart:ffi@Short@#is': (m.Scope scope, target)=>()=>target is Short,
'dart:ffi@Short@': (m.Scope scope)=>(){
return Short();
},
'dart:ffi@UnsignedShort@#as': (m.Scope scope, target)=>()=>target as UnsignedShort,
'dart:ffi@UnsignedShort@#is': (m.Scope scope, target)=>()=>target is UnsignedShort,
'dart:ffi@UnsignedShort@': (m.Scope scope)=>(){
return UnsignedShort();
},
'dart:ffi@Int@#as': (m.Scope scope, target)=>()=>target as Int,
'dart:ffi@Int@#is': (m.Scope scope, target)=>()=>target is Int,
'dart:ffi@Int@': (m.Scope scope)=>(){
return Int();
},
'dart:ffi@UnsignedInt@#as': (m.Scope scope, target)=>()=>target as UnsignedInt,
'dart:ffi@UnsignedInt@#is': (m.Scope scope, target)=>()=>target is UnsignedInt,
'dart:ffi@UnsignedInt@': (m.Scope scope)=>(){
return UnsignedInt();
},
'dart:ffi@Long@#as': (m.Scope scope, target)=>()=>target as Long,
'dart:ffi@Long@#is': (m.Scope scope, target)=>()=>target is Long,
'dart:ffi@Long@': (m.Scope scope)=>(){
return Long();
},
'dart:ffi@UnsignedLong@#as': (m.Scope scope, target)=>()=>target as UnsignedLong,
'dart:ffi@UnsignedLong@#is': (m.Scope scope, target)=>()=>target is UnsignedLong,
'dart:ffi@UnsignedLong@': (m.Scope scope)=>(){
return UnsignedLong();
},
'dart:ffi@LongLong@#as': (m.Scope scope, target)=>()=>target as LongLong,
'dart:ffi@LongLong@#is': (m.Scope scope, target)=>()=>target is LongLong,
'dart:ffi@LongLong@': (m.Scope scope)=>(){
return LongLong();
},
'dart:ffi@UnsignedLongLong@#as': (m.Scope scope, target)=>()=>target as UnsignedLongLong,
'dart:ffi@UnsignedLongLong@#is': (m.Scope scope, target)=>()=>target is UnsignedLongLong,
'dart:ffi@UnsignedLongLong@': (m.Scope scope)=>(){
return UnsignedLongLong();
},
'dart:ffi@IntPtr@#as': (m.Scope scope, target)=>()=>target as IntPtr,
'dart:ffi@IntPtr@#is': (m.Scope scope, target)=>()=>target is IntPtr,
'dart:ffi@IntPtr@': (m.Scope scope)=>(){
return IntPtr();
},
'dart:ffi@UintPtr@#as': (m.Scope scope, target)=>()=>target as UintPtr,
'dart:ffi@UintPtr@#is': (m.Scope scope, target)=>()=>target is UintPtr,
'dart:ffi@UintPtr@': (m.Scope scope)=>(){
return UintPtr();
},
'dart:ffi@Size@#as': (m.Scope scope, target)=>()=>target as Size,
'dart:ffi@Size@#is': (m.Scope scope, target)=>()=>target is Size,
'dart:ffi@Size@': (m.Scope scope)=>(){
return Size();
},
'dart:ffi@WChar@#as': (m.Scope scope, target)=>()=>target as WChar,
'dart:ffi@WChar@#is': (m.Scope scope, target)=>()=>target is WChar,
'dart:ffi@WChar@': (m.Scope scope)=>(){
return WChar();
},
'dart:ffi@DynamicLibrary@#as': (m.Scope scope, target)=>()=>target as DynamicLibrary,
'dart:ffi@DynamicLibrary@#is': (m.Scope scope, target)=>()=>target is DynamicLibrary,
'dart:ffi@DynamicLibrary@hashCode': (m.Scope scope, DynamicLibrary target)=>target.hashCode,
'dart:ffi@DynamicLibrary@handle': (m.Scope scope, DynamicLibrary target)=>target.handle,
'dart:ffi@DynamicLibrary@process': (m.Scope scope)=>DynamicLibrary.process,
'dart:ffi@DynamicLibrary@executable': (m.Scope scope)=>DynamicLibrary.executable,
'dart:ffi@DynamicLibrary@open': (m.Scope scope)=>DynamicLibrary.open,
'dart:ffi@DynamicLibrary@lookup': (m.Scope scope, DynamicLibrary target)=>target.lookup,
'dart:ffi@DynamicLibrary@providesSymbol': (m.Scope scope, DynamicLibrary target)=>target.providesSymbol,
'dart:ffi@DynamicLibrary@==': (m.Scope scope, DynamicLibrary target)=>(other)=> target == other,
'dart:ffi@Struct@#as': (m.Scope scope, target)=>()=>target as Struct,
'dart:ffi@Struct@#is': (m.Scope scope, target)=>()=>target is Struct,
'dart:ffi@Packed@#as': (m.Scope scope, target)=>()=>target as Packed,
'dart:ffi@Packed@#is': (m.Scope scope, target)=>()=>target is Packed,
'dart:ffi@Packed@memberAlignment': (m.Scope scope, Packed target)=>target.memberAlignment,
'dart:ffi@Packed@': (m.Scope scope)=>Packed,
'dart:ffi@Union@#as': (m.Scope scope, target)=>()=>target as Union,
'dart:ffi@Union@#is': (m.Scope scope, target)=>()=>target is Union,

};
}