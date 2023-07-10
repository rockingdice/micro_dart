import 'package:flutter/src/cupertino/list_tile.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@#as': (m.Scope scope, target)=>()=>target as CupertinoListTile,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@#is': (m.Scope scope, target)=>()=>target is CupertinoListTile,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@title': (m.Scope scope, CupertinoListTile target)=>target.title,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@subtitle': (m.Scope scope, CupertinoListTile target)=>target.subtitle,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@additionalInfo': (m.Scope scope, CupertinoListTile target)=>target.additionalInfo,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@leading': (m.Scope scope, CupertinoListTile target)=>target.leading,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@trailing': (m.Scope scope, CupertinoListTile target)=>target.trailing,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@onTap': (m.Scope scope, CupertinoListTile target)=>target.onTap,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@backgroundColor': (m.Scope scope, CupertinoListTile target)=>target.backgroundColor,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@backgroundColorActivated': (m.Scope scope, CupertinoListTile target)=>target.backgroundColorActivated,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@padding': (m.Scope scope, CupertinoListTile target)=>target.padding,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@leadingSize': (m.Scope scope, CupertinoListTile target)=>target.leadingSize,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@leadingToTitle': (m.Scope scope, CupertinoListTile target)=>target.leadingToTitle,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@': (m.Scope scope)=>({ additionalInfo,  backgroundColor,  backgroundColorActivated,  key,  leading,  leadingSize,  leadingToTitle,  onTap,  padding,  subtitle,  title,  trailing}){
FutureOr onTapProxy() async{
return await engine.callFunctionPointerAsync(scope, onTap!,[], {});
}

return CupertinoListTile(additionalInfo:additionalInfo, backgroundColor:backgroundColor, backgroundColorActivated:backgroundColorActivated, key:key, leading:leading, leadingSize:leadingSize ?? 28.0, leadingToTitle:leadingToTitle ?? 16.0, onTap:onTap == null ? null :onTapProxy, padding:padding, subtitle:subtitle, title:title, trailing:trailing);
},
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@notched': (m.Scope scope)=>({ additionalInfo,  backgroundColor,  backgroundColorActivated,  key,  leading,  leadingSize,  leadingToTitle,  onTap,  padding,  subtitle,  title,  trailing}){
FutureOr onTapProxy() async{
return await engine.callFunctionPointerAsync(scope, onTap!,[], {});
}

return CupertinoListTile.notched(additionalInfo:additionalInfo, backgroundColor:backgroundColor, backgroundColorActivated:backgroundColorActivated, key:key, leading:leading, leadingSize:leadingSize ?? 30.0, leadingToTitle:leadingToTitle ?? 12.0, onTap:onTap == null ? null :onTapProxy, padding:padding, subtitle:subtitle, title:title, trailing:trailing);
},
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTile@createState': (m.Scope scope, CupertinoListTile target)=>target.createState,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTileChevron@#as': (m.Scope scope, target)=>()=>target as CupertinoListTileChevron,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTileChevron@#is': (m.Scope scope, target)=>()=>target is CupertinoListTileChevron,
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTileChevron@': (m.Scope scope)=>({ key}){
return CupertinoListTileChevron(key:key);
},
'package:flutter/src/cupertino/list_tile.dart@CupertinoListTileChevron@build': (m.Scope scope, CupertinoListTileChevron target)=>target.build,

};
}