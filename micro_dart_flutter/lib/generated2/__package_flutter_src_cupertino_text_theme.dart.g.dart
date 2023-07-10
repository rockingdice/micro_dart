import 'package:flutter/src/cupertino/text_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@#as': (m.Scope scope, target)=>()=>target as CupertinoTextThemeData,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@#is': (m.Scope scope, target)=>()=>target is CupertinoTextThemeData,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@textStyle': (m.Scope scope, CupertinoTextThemeData target)=>target.textStyle,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@actionTextStyle': (m.Scope scope, CupertinoTextThemeData target)=>target.actionTextStyle,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@tabLabelTextStyle': (m.Scope scope, CupertinoTextThemeData target)=>target.tabLabelTextStyle,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@navTitleTextStyle': (m.Scope scope, CupertinoTextThemeData target)=>target.navTitleTextStyle,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@navLargeTitleTextStyle': (m.Scope scope, CupertinoTextThemeData target)=>target.navLargeTitleTextStyle,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@navActionTextStyle': (m.Scope scope, CupertinoTextThemeData target)=>target.navActionTextStyle,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@pickerTextStyle': (m.Scope scope, CupertinoTextThemeData target)=>target.pickerTextStyle,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@dateTimePickerTextStyle': (m.Scope scope, CupertinoTextThemeData target)=>target.dateTimePickerTextStyle,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@hashCode': (m.Scope scope, CupertinoTextThemeData target)=>target.hashCode,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@': (m.Scope scope)=>({ actionTextStyle,  dateTimePickerTextStyle,  navActionTextStyle,  navLargeTitleTextStyle,  navTitleTextStyle,  pickerTextStyle,  primaryColor,  tabLabelTextStyle,  textStyle}){
return CupertinoTextThemeData(actionTextStyle:actionTextStyle, dateTimePickerTextStyle:dateTimePickerTextStyle, navActionTextStyle:navActionTextStyle, navLargeTitleTextStyle:navLargeTitleTextStyle, navTitleTextStyle:navTitleTextStyle, pickerTextStyle:pickerTextStyle, primaryColor:primaryColor ?? CupertinoColors.systemBlue, tabLabelTextStyle:tabLabelTextStyle, textStyle:textStyle);
},
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@resolveFrom': (m.Scope scope, CupertinoTextThemeData target)=>target.resolveFrom,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@copyWith': (m.Scope scope, CupertinoTextThemeData target)=>target.copyWith,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@debugFillProperties': (m.Scope scope, CupertinoTextThemeData target)=>target.debugFillProperties,
'package:flutter/src/cupertino/text_theme.dart@CupertinoTextThemeData@==': (m.Scope scope, CupertinoTextThemeData target)=>(other)=> target == other,

};
}