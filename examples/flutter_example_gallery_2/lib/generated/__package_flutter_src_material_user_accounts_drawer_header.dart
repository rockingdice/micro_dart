// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
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

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/material/user_accounts_drawer_header.dart',
  {'UserAccountsDrawerHeader.': _UserAccountsDrawerHeader__$},
  {},
  {},
);
Function _UserAccountsDrawerHeader__$(m.Scope scope$) => ({
      Key? key,
      Decoration? decoration,
      EdgeInsetsGeometry? margin,
      Widget? currentAccountPicture,
      List? otherAccountsPictures,
      Size? currentAccountPictureSize,
      Size? otherAccountsPicturesSize,
      required Widget? accountName,
      required Widget? accountEmail,
      m.FunctionPointer? onDetailsPressed,
      Color? arrowColor,
    }) {
      void onDetailsPressedProxy() => scope$.engine.callFunctionPointer(
            scope$,
            onDetailsPressed!,
            [],
            {},
          );
      return UserAccountsDrawerHeader(
        accountEmail: accountEmail,
        accountName: accountName,
        arrowColor: arrowColor ?? Colors.white,
        currentAccountPicture: currentAccountPicture,
        currentAccountPictureSize:
            currentAccountPictureSize ?? const Size.square(72.0),
        decoration: decoration,
        key: key,
        margin: margin ?? const EdgeInsets.only(bottom: 8.0),
        onDetailsPressed:
            onDetailsPressed == null ? null : onDetailsPressedProxy,
        otherAccountsPictures: otherAccountsPictures == null
            ? null
            : List.from(otherAccountsPictures),
        otherAccountsPicturesSize:
            otherAccountsPicturesSize ?? const Size.square(40.0),
      );
    };
