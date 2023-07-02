import 'package:flutter/src/widgets/image_icon.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:flutter/src/widgets/icon_theme.dart';
import 'package:flutter/src/widgets/icon_theme_data.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/image_icon.dart@ImageIcon@#as': (m.Scope scope, target)=>()=>target as ImageIcon,
'package:flutter/src/widgets/image_icon.dart@ImageIcon@#is': (m.Scope scope, target)=>()=>target is ImageIcon,
'package:flutter/src/widgets/image_icon.dart@ImageIcon@image': (m.Scope scope, ImageIcon target)=>target.image,
'package:flutter/src/widgets/image_icon.dart@ImageIcon@size': (m.Scope scope, ImageIcon target)=>target.size,
'package:flutter/src/widgets/image_icon.dart@ImageIcon@color': (m.Scope scope, ImageIcon target)=>target.color,
'package:flutter/src/widgets/image_icon.dart@ImageIcon@semanticLabel': (m.Scope scope, ImageIcon target)=>target.semanticLabel,
'package:flutter/src/widgets/image_icon.dart@ImageIcon@': (m.Scope scope)=>( image, { color,  key,  semanticLabel,  size}){
return ImageIcon(image, color:color, key:key, semanticLabel:semanticLabel, size:size);
},
'package:flutter/src/widgets/image_icon.dart@ImageIcon@build': (m.Scope scope, ImageIcon target)=>target.build,
'package:flutter/src/widgets/image_icon.dart@ImageIcon@debugFillProperties': (m.Scope scope, ImageIcon target)=>target.debugFillProperties,

};
}