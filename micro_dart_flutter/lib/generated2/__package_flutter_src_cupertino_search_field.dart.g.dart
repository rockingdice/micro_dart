import 'package:flutter/src/cupertino/search_field.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/button.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:flutter/src/cupertino/text_field.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@#as': (m.Scope scope, target)=>()=>target as CupertinoSearchTextField,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@#is': (m.Scope scope, target)=>()=>target is CupertinoSearchTextField,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@controller': (m.Scope scope, CupertinoSearchTextField target)=>target.controller,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@onChanged': (m.Scope scope, CupertinoSearchTextField target)=>target.onChanged,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@onSubmitted': (m.Scope scope, CupertinoSearchTextField target)=>target.onSubmitted,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@style': (m.Scope scope, CupertinoSearchTextField target)=>target.style,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@placeholder': (m.Scope scope, CupertinoSearchTextField target)=>target.placeholder,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@placeholderStyle': (m.Scope scope, CupertinoSearchTextField target)=>target.placeholderStyle,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@decoration': (m.Scope scope, CupertinoSearchTextField target)=>target.decoration,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@backgroundColor': (m.Scope scope, CupertinoSearchTextField target)=>target.backgroundColor,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@borderRadius': (m.Scope scope, CupertinoSearchTextField target)=>target.borderRadius,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@keyboardType': (m.Scope scope, CupertinoSearchTextField target)=>target.keyboardType,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@padding': (m.Scope scope, CupertinoSearchTextField target)=>target.padding,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@itemColor': (m.Scope scope, CupertinoSearchTextField target)=>target.itemColor,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@itemSize': (m.Scope scope, CupertinoSearchTextField target)=>target.itemSize,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@prefixInsets': (m.Scope scope, CupertinoSearchTextField target)=>target.prefixInsets,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@prefixIcon': (m.Scope scope, CupertinoSearchTextField target)=>target.prefixIcon,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@suffixInsets': (m.Scope scope, CupertinoSearchTextField target)=>target.suffixInsets,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@suffixIcon': (m.Scope scope, CupertinoSearchTextField target)=>target.suffixIcon,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@suffixMode': (m.Scope scope, CupertinoSearchTextField target)=>target.suffixMode,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@onSuffixTap': (m.Scope scope, CupertinoSearchTextField target)=>target.onSuffixTap,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@restorationId': (m.Scope scope, CupertinoSearchTextField target)=>target.restorationId,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@focusNode': (m.Scope scope, CupertinoSearchTextField target)=>target.focusNode,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@autofocus': (m.Scope scope, CupertinoSearchTextField target)=>target.autofocus,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@onTap': (m.Scope scope, CupertinoSearchTextField target)=>target.onTap,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@autocorrect': (m.Scope scope, CupertinoSearchTextField target)=>target.autocorrect,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@smartQuotesType': (m.Scope scope, CupertinoSearchTextField target)=>target.smartQuotesType,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@smartDashesType': (m.Scope scope, CupertinoSearchTextField target)=>target.smartDashesType,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@enableIMEPersonalizedLearning': (m.Scope scope, CupertinoSearchTextField target)=>target.enableIMEPersonalizedLearning,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@enabled': (m.Scope scope, CupertinoSearchTextField target)=>target.enabled,
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@': (m.Scope scope)=>({ autocorrect,  autofocus,  backgroundColor,  borderRadius,  controller,  decoration,  enableIMEPersonalizedLearning,  enabled,  focusNode,  itemColor,  itemSize,  key,  keyboardType,  onChanged,  onSubmitted,  onSuffixTap,  onTap,  padding,  placeholder,  placeholderStyle,  prefixIcon,  prefixInsets,  restorationId,  smartDashesType,  smartQuotesType,  style,  suffixIcon,  suffixInsets,  suffixMode}){
void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onSubmittedProxy( value) {
 engine.callFunctionPointer(scope, onSubmitted!,[value], {});
}

void onSuffixTapProxy() {
 engine.callFunctionPointer(scope, onSuffixTap!,[], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return CupertinoSearchTextField(autocorrect:autocorrect ?? true, autofocus:autofocus ?? false, backgroundColor:backgroundColor, borderRadius:borderRadius, controller:controller, decoration:decoration, enableIMEPersonalizedLearning:enableIMEPersonalizedLearning ?? true, enabled:enabled, focusNode:focusNode, itemColor:itemColor ?? CupertinoColors.secondaryLabel, itemSize:itemSize ?? 20.0, key:key, keyboardType:keyboardType ?? TextInputType.text, onChanged:onChanged == null ? null :onChangedProxy, onSubmitted:onSubmitted == null ? null :onSubmittedProxy, onSuffixTap:onSuffixTap == null ? null :onSuffixTapProxy, onTap:onTap == null ? null :onTapProxy, padding:padding ?? const EdgeInsetsDirectional.fromSTEB(5.5, 8, 5.5, 8), placeholder:placeholder, placeholderStyle:placeholderStyle, prefixIcon:prefixIcon ?? const Icon(CupertinoIcons.search), prefixInsets:prefixInsets ?? const EdgeInsetsDirectional.fromSTEB(6, 0, 0, 3), restorationId:restorationId, smartDashesType:smartDashesType, smartQuotesType:smartQuotesType, style:style, suffixIcon:suffixIcon ?? const Icon(CupertinoIcons.xmark_circle_fill), suffixInsets:suffixInsets ?? const EdgeInsetsDirectional.fromSTEB(0, 0, 5, 2), suffixMode:suffixMode ?? OverlayVisibilityMode.editing);
},
'package:flutter/src/cupertino/search_field.dart@CupertinoSearchTextField@createState': (m.Scope scope, CupertinoSearchTextField target)=>target.createState,

};
}