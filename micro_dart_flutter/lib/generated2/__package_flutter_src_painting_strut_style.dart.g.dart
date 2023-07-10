import 'package:flutter/src/painting/strut_style.dart';
import 'dart:ui' show TextLeadingDistribution;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/strut_style.dart@StrutStyle@#as': (m.Scope scope, target)=>()=>target as StrutStyle,
'package:flutter/src/painting/strut_style.dart@StrutStyle@#is': (m.Scope scope, target)=>()=>target is StrutStyle,
'package:flutter/src/painting/strut_style.dart@StrutStyle@disabled': (m.Scope scope)=>StrutStyle.disabled,
'package:flutter/src/painting/strut_style.dart@StrutStyle@fontFamily': (m.Scope scope, StrutStyle target)=>target.fontFamily,
'package:flutter/src/painting/strut_style.dart@StrutStyle@fontSize': (m.Scope scope, StrutStyle target)=>target.fontSize,
'package:flutter/src/painting/strut_style.dart@StrutStyle@height': (m.Scope scope, StrutStyle target)=>target.height,
'package:flutter/src/painting/strut_style.dart@StrutStyle@leadingDistribution': (m.Scope scope, StrutStyle target)=>target.leadingDistribution,
'package:flutter/src/painting/strut_style.dart@StrutStyle@fontWeight': (m.Scope scope, StrutStyle target)=>target.fontWeight,
'package:flutter/src/painting/strut_style.dart@StrutStyle@fontStyle': (m.Scope scope, StrutStyle target)=>target.fontStyle,
'package:flutter/src/painting/strut_style.dart@StrutStyle@leading': (m.Scope scope, StrutStyle target)=>target.leading,
'package:flutter/src/painting/strut_style.dart@StrutStyle@forceStrutHeight': (m.Scope scope, StrutStyle target)=>target.forceStrutHeight,
'package:flutter/src/painting/strut_style.dart@StrutStyle@debugLabel': (m.Scope scope, StrutStyle target)=>target.debugLabel,
'package:flutter/src/painting/strut_style.dart@StrutStyle@fontFamilyFallback': (m.Scope scope, StrutStyle target)=>target.fontFamilyFallback,
'package:flutter/src/painting/strut_style.dart@StrutStyle@hashCode': (m.Scope scope, StrutStyle target)=>target.hashCode,
'package:flutter/src/painting/strut_style.dart@StrutStyle@': (m.Scope scope)=>({ debugLabel,  fontFamily,  fontFamilyFallback,  fontSize,  fontStyle,  fontWeight,  forceStrutHeight,  height,  leading,  leadingDistribution,  package}){
return StrutStyle(debugLabel:debugLabel, fontFamily:fontFamily, fontFamilyFallback:fontFamilyFallback, fontSize:fontSize, fontStyle:fontStyle, fontWeight:fontWeight, forceStrutHeight:forceStrutHeight, height:height, leading:leading, leadingDistribution:leadingDistribution, package:package);
},
'package:flutter/src/painting/strut_style.dart@StrutStyle@fromTextStyle': (m.Scope scope)=>StrutStyle.fromTextStyle,
'package:flutter/src/painting/strut_style.dart@StrutStyle@compareTo': (m.Scope scope, StrutStyle target)=>target.compareTo,
'package:flutter/src/painting/strut_style.dart@StrutStyle@inheritFromTextStyle': (m.Scope scope, StrutStyle target)=>target.inheritFromTextStyle,
'package:flutter/src/painting/strut_style.dart@StrutStyle@==': (m.Scope scope, StrutStyle target)=>(other)=> target == other,
'package:flutter/src/painting/strut_style.dart@StrutStyle@toStringShort': (m.Scope scope, StrutStyle target)=>target.toStringShort,
'package:flutter/src/painting/strut_style.dart@StrutStyle@debugFillProperties': (m.Scope scope, StrutStyle target)=>target.debugFillProperties,

};
}