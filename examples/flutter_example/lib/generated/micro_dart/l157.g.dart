import 'package:flutter/src/material/search.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/material/app_bar_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/search.dart@SearchDelegate@#as': (m.Scope scope, target)=>()=>target as SearchDelegate,
'package:flutter/src/material/search.dart@SearchDelegate@#is': (m.Scope scope, target)=>()=>target is SearchDelegate,
'package:flutter/src/material/search.dart@SearchDelegate@searchFieldLabel': (m.Scope scope, SearchDelegate target)=>target.searchFieldLabel,
'package:flutter/src/material/search.dart@SearchDelegate@searchFieldStyle': (m.Scope scope, SearchDelegate target)=>target.searchFieldStyle,
'package:flutter/src/material/search.dart@SearchDelegate@searchFieldDecorationTheme': (m.Scope scope, SearchDelegate target)=>target.searchFieldDecorationTheme,
'package:flutter/src/material/search.dart@SearchDelegate@keyboardType': (m.Scope scope, SearchDelegate target)=>target.keyboardType,
'package:flutter/src/material/search.dart@SearchDelegate@textInputAction': (m.Scope scope, SearchDelegate target)=>target.textInputAction,
'package:flutter/src/material/search.dart@SearchDelegate@query': (m.Scope scope, SearchDelegate target)=>target.query,
'package:flutter/src/material/search.dart@SearchDelegate@query:set': (m.Scope scope, SearchDelegate target)=>(other)=>target.query=other,
'package:flutter/src/material/search.dart@SearchDelegate@transitionAnimation': (m.Scope scope, SearchDelegate target)=>target.transitionAnimation,
'package:flutter/src/material/search.dart@SearchDelegate@buildSuggestions': (m.Scope scope, SearchDelegate target)=>target.buildSuggestions,
'package:flutter/src/material/search.dart@SearchDelegate@buildResults': (m.Scope scope, SearchDelegate target)=>target.buildResults,
'package:flutter/src/material/search.dart@SearchDelegate@buildLeading': (m.Scope scope, SearchDelegate target)=>target.buildLeading,
'package:flutter/src/material/search.dart@SearchDelegate@buildActions': (m.Scope scope, SearchDelegate target)=>target.buildActions,
'package:flutter/src/material/search.dart@SearchDelegate@buildBottom': (m.Scope scope, SearchDelegate target)=>target.buildBottom,
'package:flutter/src/material/search.dart@SearchDelegate@appBarTheme': (m.Scope scope, SearchDelegate target)=>target.appBarTheme,
'package:flutter/src/material/search.dart@SearchDelegate@showResults': (m.Scope scope, SearchDelegate target)=>target.showResults,
'package:flutter/src/material/search.dart@SearchDelegate@showSuggestions': (m.Scope scope, SearchDelegate target)=>target.showSuggestions,
'package:flutter/src/material/search.dart@SearchDelegate@close': (m.Scope scope, SearchDelegate target)=>target.close,
'package:flutter/src/material/search.dart@@showSearch': (m.Scope scope)=>showSearch,

};
}