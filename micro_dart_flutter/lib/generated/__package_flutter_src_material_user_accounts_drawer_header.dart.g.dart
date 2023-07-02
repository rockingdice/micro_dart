import 'package:flutter/src/material/user_accounts_drawer_header.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/drawer_header.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@#as': (m.Scope scope, target)=>()=>target as UserAccountsDrawerHeader,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@#is': (m.Scope scope, target)=>()=>target is UserAccountsDrawerHeader,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@decoration': (m.Scope scope, UserAccountsDrawerHeader target)=>target.decoration,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@margin': (m.Scope scope, UserAccountsDrawerHeader target)=>target.margin,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@currentAccountPicture': (m.Scope scope, UserAccountsDrawerHeader target)=>target.currentAccountPicture,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@otherAccountsPictures': (m.Scope scope, UserAccountsDrawerHeader target)=>target.otherAccountsPictures,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@currentAccountPictureSize': (m.Scope scope, UserAccountsDrawerHeader target)=>target.currentAccountPictureSize,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@otherAccountsPicturesSize': (m.Scope scope, UserAccountsDrawerHeader target)=>target.otherAccountsPicturesSize,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@accountName': (m.Scope scope, UserAccountsDrawerHeader target)=>target.accountName,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@accountEmail': (m.Scope scope, UserAccountsDrawerHeader target)=>target.accountEmail,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@onDetailsPressed': (m.Scope scope, UserAccountsDrawerHeader target)=>target.onDetailsPressed,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@arrowColor': (m.Scope scope, UserAccountsDrawerHeader target)=>target.arrowColor,
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@': (m.Scope scope)=>({ accountEmail,  accountName,  arrowColor,  currentAccountPicture,  currentAccountPictureSize,  decoration,  key,  margin,  onDetailsPressed,  otherAccountsPictures,  otherAccountsPicturesSize}){
void onDetailsPressedProxy() {
 engine.callFunctionPointer(scope, onDetailsPressed!,[], {});
}

return UserAccountsDrawerHeader(accountEmail:accountEmail, accountName:accountName, arrowColor:arrowColor ?? Colors.white, currentAccountPicture:currentAccountPicture, currentAccountPictureSize:currentAccountPictureSize ?? const Size.square(72.0), decoration:decoration, key:key, margin:margin ?? const EdgeInsets.only(bottom: 8.0), onDetailsPressed:onDetailsPressed == null ? null :onDetailsPressedProxy, otherAccountsPictures:otherAccountsPictures, otherAccountsPicturesSize:otherAccountsPicturesSize ?? const Size.square(40.0));
},
'package:flutter/src/material/user_accounts_drawer_header.dart@UserAccountsDrawerHeader@createState': (m.Scope scope, UserAccountsDrawerHeader target)=>target.createState,

};
}