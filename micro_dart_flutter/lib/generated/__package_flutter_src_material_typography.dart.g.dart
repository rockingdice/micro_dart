import 'package:flutter/src/material/typography.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/typography.dart@Typography@#as': (m.Scope scope, target)=>()=>target as Typography,
'package:flutter/src/material/typography.dart@Typography@#is': (m.Scope scope, target)=>()=>target is Typography,
'package:flutter/src/material/typography.dart@Typography@black': (m.Scope scope, Typography target)=>target.black,
'package:flutter/src/material/typography.dart@Typography@white': (m.Scope scope, Typography target)=>target.white,
'package:flutter/src/material/typography.dart@Typography@englishLike': (m.Scope scope, Typography target)=>target.englishLike,
'package:flutter/src/material/typography.dart@Typography@dense': (m.Scope scope, Typography target)=>target.dense,
'package:flutter/src/material/typography.dart@Typography@tall': (m.Scope scope, Typography target)=>target.tall,
'package:flutter/src/material/typography.dart@Typography@blackMountainView': (m.Scope scope)=>Typography.blackMountainView,
'package:flutter/src/material/typography.dart@Typography@whiteMountainView': (m.Scope scope)=>Typography.whiteMountainView,
'package:flutter/src/material/typography.dart@Typography@blackRedmond': (m.Scope scope)=>Typography.blackRedmond,
'package:flutter/src/material/typography.dart@Typography@whiteRedmond': (m.Scope scope)=>Typography.whiteRedmond,
'package:flutter/src/material/typography.dart@Typography@blackHelsinki': (m.Scope scope)=>Typography.blackHelsinki,
'package:flutter/src/material/typography.dart@Typography@whiteHelsinki': (m.Scope scope)=>Typography.whiteHelsinki,
'package:flutter/src/material/typography.dart@Typography@blackCupertino': (m.Scope scope)=>Typography.blackCupertino,
'package:flutter/src/material/typography.dart@Typography@whiteCupertino': (m.Scope scope)=>Typography.whiteCupertino,
'package:flutter/src/material/typography.dart@Typography@blackRedwoodCity': (m.Scope scope)=>Typography.blackRedwoodCity,
'package:flutter/src/material/typography.dart@Typography@whiteRedwoodCity': (m.Scope scope)=>Typography.whiteRedwoodCity,
'package:flutter/src/material/typography.dart@Typography@englishLike2014': (m.Scope scope)=>Typography.englishLike2014,
'package:flutter/src/material/typography.dart@Typography@englishLike2018': (m.Scope scope)=>Typography.englishLike2018,
'package:flutter/src/material/typography.dart@Typography@dense2014': (m.Scope scope)=>Typography.dense2014,
'package:flutter/src/material/typography.dart@Typography@dense2018': (m.Scope scope)=>Typography.dense2018,
'package:flutter/src/material/typography.dart@Typography@tall2014': (m.Scope scope)=>Typography.tall2014,
'package:flutter/src/material/typography.dart@Typography@tall2018': (m.Scope scope)=>Typography.tall2018,
'package:flutter/src/material/typography.dart@Typography@englishLike2021': (m.Scope scope)=>Typography.englishLike2021,
'package:flutter/src/material/typography.dart@Typography@dense2021': (m.Scope scope)=>Typography.dense2021,
'package:flutter/src/material/typography.dart@Typography@tall2021': (m.Scope scope)=>Typography.tall2021,
'package:flutter/src/material/typography.dart@Typography@hashCode': (m.Scope scope, Typography target)=>target.hashCode,
'package:flutter/src/material/typography.dart@Typography@': (m.Scope scope)=>({ black,  dense,  englishLike,  platform,  tall,  white}){
return Typography(black:black, dense:dense, englishLike:englishLike, platform:platform, tall:tall, white:white);
},
'package:flutter/src/material/typography.dart@Typography@material2014': (m.Scope scope)=>Typography.material2014,
'package:flutter/src/material/typography.dart@Typography@material2018': (m.Scope scope)=>Typography.material2018,
'package:flutter/src/material/typography.dart@Typography@material2021': (m.Scope scope)=>Typography.material2021,
'package:flutter/src/material/typography.dart@Typography@geometryThemeFor': (m.Scope scope, Typography target)=>target.geometryThemeFor,
'package:flutter/src/material/typography.dart@Typography@copyWith': (m.Scope scope, Typography target)=>target.copyWith,
'package:flutter/src/material/typography.dart@Typography@lerp': (m.Scope scope)=>Typography.lerp,
'package:flutter/src/material/typography.dart@Typography@==': (m.Scope scope, Typography target)=>(other)=> target == other,
'package:flutter/src/material/typography.dart@Typography@debugFillProperties': (m.Scope scope, Typography target)=>target.debugFillProperties,

};
}