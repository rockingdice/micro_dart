import 'package:flutter/src/material/theme_data.dart';
import 'dart:ui' show Color,lerpDouble;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/material/action_buttons.dart';
import 'package:flutter/src/material/action_icons_theme.dart';
import 'package:flutter/src/material/app_bar_theme.dart';
import 'package:flutter/src/material/badge_theme.dart';
import 'package:flutter/src/material/banner_theme.dart';
import 'package:flutter/src/material/bottom_app_bar_theme.dart';
import 'package:flutter/src/material/bottom_navigation_bar_theme.dart';
import 'package:flutter/src/material/bottom_sheet_theme.dart';
import 'package:flutter/src/material/button_bar_theme.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/card_theme.dart';
import 'package:flutter/src/material/checkbox_theme.dart';
import 'package:flutter/src/material/chip_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/data_table_theme.dart';
import 'package:flutter/src/material/date_picker_theme.dart';
import 'package:flutter/src/material/dialog_theme.dart';
import 'package:flutter/src/material/divider_theme.dart';
import 'package:flutter/src/material/drawer_theme.dart';
import 'package:flutter/src/material/dropdown_menu_theme.dart';
import 'package:flutter/src/material/elevated_button_theme.dart';
import 'package:flutter/src/material/expansion_tile_theme.dart';
import 'package:flutter/src/material/filled_button_theme.dart';
import 'package:flutter/src/material/floating_action_button_theme.dart';
import 'package:flutter/src/material/icon_button_theme.dart';
import 'package:flutter/src/material/ink_ripple.dart';
import 'package:flutter/src/material/ink_sparkle.dart';
import 'package:flutter/src/material/ink_splash.dart';
import 'package:flutter/src/material/ink_well.dart' show InteractiveInkFeatureFactory;
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/list_tile_theme.dart';
import 'package:flutter/src/material/menu_bar_theme.dart';
import 'package:flutter/src/material/menu_button_theme.dart';
import 'package:flutter/src/material/menu_theme.dart';
import 'package:flutter/src/material/navigation_bar_theme.dart';
import 'package:flutter/src/material/navigation_drawer_theme.dart';
import 'package:flutter/src/material/navigation_rail_theme.dart';
import 'package:flutter/src/material/outlined_button_theme.dart';
import 'package:flutter/src/material/page_transitions_theme.dart';
import 'package:flutter/src/material/popup_menu_theme.dart';
import 'package:flutter/src/material/progress_indicator_theme.dart';
import 'package:flutter/src/material/radio_theme.dart';
import 'package:flutter/src/material/scrollbar_theme.dart';
import 'package:flutter/src/material/search_bar_theme.dart';
import 'package:flutter/src/material/search_view_theme.dart';
import 'package:flutter/src/material/segmented_button_theme.dart';
import 'package:flutter/src/material/slider_theme.dart';
import 'package:flutter/src/material/snack_bar_theme.dart';
import 'package:flutter/src/material/switch_theme.dart';
import 'package:flutter/src/material/tab_bar_theme.dart';
import 'package:flutter/src/material/text_button_theme.dart';
import 'package:flutter/src/material/text_selection_theme.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/time_picker_theme.dart';
import 'package:flutter/src/material/toggle_buttons_theme.dart';
import 'package:flutter/src/material/tooltip_theme.dart';
import 'package:flutter/src/material/typography.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/theme_data.dart@ThemeExtension@#as': (m.Scope scope, target)=>()=>target as ThemeExtension,
'package:flutter/src/material/theme_data.dart@ThemeExtension@#is': (m.Scope scope, target)=>()=>target is ThemeExtension,
'package:flutter/src/material/theme_data.dart@ThemeExtension@type': (m.Scope scope, ThemeExtension target)=>target.type,
'package:flutter/src/material/theme_data.dart@ThemeExtension@copyWith': (m.Scope scope, ThemeExtension target)=>target.copyWith,
'package:flutter/src/material/theme_data.dart@ThemeExtension@lerp': (m.Scope scope, ThemeExtension target)=>target.lerp,
'package:flutter/src/material/theme_data.dart@ThemeData@#as': (m.Scope scope, target)=>()=>target as ThemeData,
'package:flutter/src/material/theme_data.dart@ThemeData@#is': (m.Scope scope, target)=>()=>target is ThemeData,
'package:flutter/src/material/theme_data.dart@ThemeData@applyElevationOverlayColor': (m.Scope scope, ThemeData target)=>target.applyElevationOverlayColor,
'package:flutter/src/material/theme_data.dart@ThemeData@cupertinoOverrideTheme': (m.Scope scope, ThemeData target)=>target.cupertinoOverrideTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@extensions': (m.Scope scope, ThemeData target)=>target.extensions,
'package:flutter/src/material/theme_data.dart@ThemeData@inputDecorationTheme': (m.Scope scope, ThemeData target)=>target.inputDecorationTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@materialTapTargetSize': (m.Scope scope, ThemeData target)=>target.materialTapTargetSize,
'package:flutter/src/material/theme_data.dart@ThemeData@pageTransitionsTheme': (m.Scope scope, ThemeData target)=>target.pageTransitionsTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@platform': (m.Scope scope, ThemeData target)=>target.platform,
'package:flutter/src/material/theme_data.dart@ThemeData@scrollbarTheme': (m.Scope scope, ThemeData target)=>target.scrollbarTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@splashFactory': (m.Scope scope, ThemeData target)=>target.splashFactory,
'package:flutter/src/material/theme_data.dart@ThemeData@useMaterial3': (m.Scope scope, ThemeData target)=>target.useMaterial3,
'package:flutter/src/material/theme_data.dart@ThemeData@visualDensity': (m.Scope scope, ThemeData target)=>target.visualDensity,
'package:flutter/src/material/theme_data.dart@ThemeData@canvasColor': (m.Scope scope, ThemeData target)=>target.canvasColor,
'package:flutter/src/material/theme_data.dart@ThemeData@cardColor': (m.Scope scope, ThemeData target)=>target.cardColor,
'package:flutter/src/material/theme_data.dart@ThemeData@colorScheme': (m.Scope scope, ThemeData target)=>target.colorScheme,
'package:flutter/src/material/theme_data.dart@ThemeData@dialogBackgroundColor': (m.Scope scope, ThemeData target)=>target.dialogBackgroundColor,
'package:flutter/src/material/theme_data.dart@ThemeData@disabledColor': (m.Scope scope, ThemeData target)=>target.disabledColor,
'package:flutter/src/material/theme_data.dart@ThemeData@dividerColor': (m.Scope scope, ThemeData target)=>target.dividerColor,
'package:flutter/src/material/theme_data.dart@ThemeData@focusColor': (m.Scope scope, ThemeData target)=>target.focusColor,
'package:flutter/src/material/theme_data.dart@ThemeData@highlightColor': (m.Scope scope, ThemeData target)=>target.highlightColor,
'package:flutter/src/material/theme_data.dart@ThemeData@hintColor': (m.Scope scope, ThemeData target)=>target.hintColor,
'package:flutter/src/material/theme_data.dart@ThemeData@hoverColor': (m.Scope scope, ThemeData target)=>target.hoverColor,
'package:flutter/src/material/theme_data.dart@ThemeData@indicatorColor': (m.Scope scope, ThemeData target)=>target.indicatorColor,
'package:flutter/src/material/theme_data.dart@ThemeData@primaryColor': (m.Scope scope, ThemeData target)=>target.primaryColor,
'package:flutter/src/material/theme_data.dart@ThemeData@primaryColorDark': (m.Scope scope, ThemeData target)=>target.primaryColorDark,
'package:flutter/src/material/theme_data.dart@ThemeData@primaryColorLight': (m.Scope scope, ThemeData target)=>target.primaryColorLight,
'package:flutter/src/material/theme_data.dart@ThemeData@scaffoldBackgroundColor': (m.Scope scope, ThemeData target)=>target.scaffoldBackgroundColor,
'package:flutter/src/material/theme_data.dart@ThemeData@secondaryHeaderColor': (m.Scope scope, ThemeData target)=>target.secondaryHeaderColor,
'package:flutter/src/material/theme_data.dart@ThemeData@shadowColor': (m.Scope scope, ThemeData target)=>target.shadowColor,
'package:flutter/src/material/theme_data.dart@ThemeData@splashColor': (m.Scope scope, ThemeData target)=>target.splashColor,
'package:flutter/src/material/theme_data.dart@ThemeData@unselectedWidgetColor': (m.Scope scope, ThemeData target)=>target.unselectedWidgetColor,
'package:flutter/src/material/theme_data.dart@ThemeData@iconTheme': (m.Scope scope, ThemeData target)=>target.iconTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@primaryIconTheme': (m.Scope scope, ThemeData target)=>target.primaryIconTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@primaryTextTheme': (m.Scope scope, ThemeData target)=>target.primaryTextTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@textTheme': (m.Scope scope, ThemeData target)=>target.textTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@typography': (m.Scope scope, ThemeData target)=>target.typography,
'package:flutter/src/material/theme_data.dart@ThemeData@actionIconTheme': (m.Scope scope, ThemeData target)=>target.actionIconTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@appBarTheme': (m.Scope scope, ThemeData target)=>target.appBarTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@badgeTheme': (m.Scope scope, ThemeData target)=>target.badgeTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@bannerTheme': (m.Scope scope, ThemeData target)=>target.bannerTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@bottomAppBarTheme': (m.Scope scope, ThemeData target)=>target.bottomAppBarTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@bottomNavigationBarTheme': (m.Scope scope, ThemeData target)=>target.bottomNavigationBarTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@bottomSheetTheme': (m.Scope scope, ThemeData target)=>target.bottomSheetTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@buttonBarTheme': (m.Scope scope, ThemeData target)=>target.buttonBarTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@buttonTheme': (m.Scope scope, ThemeData target)=>target.buttonTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@cardTheme': (m.Scope scope, ThemeData target)=>target.cardTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@checkboxTheme': (m.Scope scope, ThemeData target)=>target.checkboxTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@chipTheme': (m.Scope scope, ThemeData target)=>target.chipTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@dataTableTheme': (m.Scope scope, ThemeData target)=>target.dataTableTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@datePickerTheme': (m.Scope scope, ThemeData target)=>target.datePickerTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@dialogTheme': (m.Scope scope, ThemeData target)=>target.dialogTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@dividerTheme': (m.Scope scope, ThemeData target)=>target.dividerTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@drawerTheme': (m.Scope scope, ThemeData target)=>target.drawerTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@dropdownMenuTheme': (m.Scope scope, ThemeData target)=>target.dropdownMenuTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@elevatedButtonTheme': (m.Scope scope, ThemeData target)=>target.elevatedButtonTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@expansionTileTheme': (m.Scope scope, ThemeData target)=>target.expansionTileTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@filledButtonTheme': (m.Scope scope, ThemeData target)=>target.filledButtonTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@floatingActionButtonTheme': (m.Scope scope, ThemeData target)=>target.floatingActionButtonTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@iconButtonTheme': (m.Scope scope, ThemeData target)=>target.iconButtonTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@listTileTheme': (m.Scope scope, ThemeData target)=>target.listTileTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@menuBarTheme': (m.Scope scope, ThemeData target)=>target.menuBarTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@menuButtonTheme': (m.Scope scope, ThemeData target)=>target.menuButtonTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@menuTheme': (m.Scope scope, ThemeData target)=>target.menuTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@navigationBarTheme': (m.Scope scope, ThemeData target)=>target.navigationBarTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@navigationDrawerTheme': (m.Scope scope, ThemeData target)=>target.navigationDrawerTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@navigationRailTheme': (m.Scope scope, ThemeData target)=>target.navigationRailTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@outlinedButtonTheme': (m.Scope scope, ThemeData target)=>target.outlinedButtonTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@popupMenuTheme': (m.Scope scope, ThemeData target)=>target.popupMenuTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@progressIndicatorTheme': (m.Scope scope, ThemeData target)=>target.progressIndicatorTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@radioTheme': (m.Scope scope, ThemeData target)=>target.radioTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@searchBarTheme': (m.Scope scope, ThemeData target)=>target.searchBarTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@searchViewTheme': (m.Scope scope, ThemeData target)=>target.searchViewTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@segmentedButtonTheme': (m.Scope scope, ThemeData target)=>target.segmentedButtonTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@sliderTheme': (m.Scope scope, ThemeData target)=>target.sliderTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@snackBarTheme': (m.Scope scope, ThemeData target)=>target.snackBarTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@switchTheme': (m.Scope scope, ThemeData target)=>target.switchTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@tabBarTheme': (m.Scope scope, ThemeData target)=>target.tabBarTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@textButtonTheme': (m.Scope scope, ThemeData target)=>target.textButtonTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@textSelectionTheme': (m.Scope scope, ThemeData target)=>target.textSelectionTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@timePickerTheme': (m.Scope scope, ThemeData target)=>target.timePickerTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@toggleButtonsTheme': (m.Scope scope, ThemeData target)=>target.toggleButtonsTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@tooltipTheme': (m.Scope scope, ThemeData target)=>target.tooltipTheme,
'package:flutter/src/material/theme_data.dart@ThemeData@androidOverscrollIndicator': (m.Scope scope, ThemeData target)=>target.androidOverscrollIndicator,
'package:flutter/src/material/theme_data.dart@ThemeData@brightness': (m.Scope scope, ThemeData target)=>target.brightness,
'package:flutter/src/material/theme_data.dart@ThemeData@hashCode': (m.Scope scope, ThemeData target)=>target.hashCode,
'package:flutter/src/material/theme_data.dart@ThemeData@': (m.Scope scope)=>({ actionIconTheme,  androidOverscrollIndicator,  appBarTheme,  applyElevationOverlayColor,  backgroundColor,  badgeTheme,  bannerTheme,  bottomAppBarColor,  bottomAppBarTheme,  bottomNavigationBarTheme,  bottomSheetTheme,  brightness,  buttonBarTheme,  buttonTheme,  canvasColor,  cardColor,  cardTheme,  checkboxTheme,  chipTheme,  colorScheme,  colorSchemeSeed,  cupertinoOverrideTheme,  dataTableTheme,  datePickerTheme,  dialogBackgroundColor,  dialogTheme,  disabledColor,  dividerColor,  dividerTheme,  drawerTheme,  dropdownMenuTheme,  elevatedButtonTheme,  errorColor,  expansionTileTheme,  extensions,  filledButtonTheme,  fixTextFieldOutlineLabel,  floatingActionButtonTheme,  focusColor,  fontFamily,  fontFamilyFallback,  highlightColor,  hintColor,  hoverColor,  iconButtonTheme,  iconTheme,  indicatorColor,  inputDecorationTheme,  listTileTheme,  materialTapTargetSize,  menuBarTheme,  menuButtonTheme,  menuTheme,  navigationBarTheme,  navigationDrawerTheme,  navigationRailTheme,  outlinedButtonTheme,  package,  pageTransitionsTheme,  platform,  popupMenuTheme,  primaryColor,  primaryColorBrightness,  primaryColorDark,  primaryColorLight,  primaryIconTheme,  primarySwatch,  primaryTextTheme,  progressIndicatorTheme,  radioTheme,  scaffoldBackgroundColor,  scrollbarTheme,  searchBarTheme,  searchViewTheme,  secondaryHeaderColor,  segmentedButtonTheme,  selectedRowColor,  shadowColor,  sliderTheme,  snackBarTheme,  splashColor,  splashFactory,  switchTheme,  tabBarTheme,  textButtonTheme,  textSelectionTheme,  textTheme,  timePickerTheme,  toggleButtonsTheme,  toggleableActiveColor,  tooltipTheme,  typography,  unselectedWidgetColor,  useMaterial3,  visualDensity}){
return ThemeData(actionIconTheme:actionIconTheme, androidOverscrollIndicator:androidOverscrollIndicator, appBarTheme:appBarTheme, applyElevationOverlayColor:applyElevationOverlayColor, backgroundColor:backgroundColor, badgeTheme:badgeTheme, bannerTheme:bannerTheme, bottomAppBarColor:bottomAppBarColor, bottomAppBarTheme:bottomAppBarTheme, bottomNavigationBarTheme:bottomNavigationBarTheme, bottomSheetTheme:bottomSheetTheme, brightness:brightness, buttonBarTheme:buttonBarTheme, buttonTheme:buttonTheme, canvasColor:canvasColor, cardColor:cardColor, cardTheme:cardTheme, checkboxTheme:checkboxTheme, chipTheme:chipTheme, colorScheme:colorScheme, colorSchemeSeed:colorSchemeSeed, cupertinoOverrideTheme:cupertinoOverrideTheme, dataTableTheme:dataTableTheme, datePickerTheme:datePickerTheme, dialogBackgroundColor:dialogBackgroundColor, dialogTheme:dialogTheme, disabledColor:disabledColor, dividerColor:dividerColor, dividerTheme:dividerTheme, drawerTheme:drawerTheme, dropdownMenuTheme:dropdownMenuTheme, elevatedButtonTheme:elevatedButtonTheme, errorColor:errorColor, expansionTileTheme:expansionTileTheme, extensions:extensions, filledButtonTheme:filledButtonTheme, fixTextFieldOutlineLabel:fixTextFieldOutlineLabel, floatingActionButtonTheme:floatingActionButtonTheme, focusColor:focusColor, fontFamily:fontFamily, fontFamilyFallback:fontFamilyFallback, highlightColor:highlightColor, hintColor:hintColor, hoverColor:hoverColor, iconButtonTheme:iconButtonTheme, iconTheme:iconTheme, indicatorColor:indicatorColor, inputDecorationTheme:inputDecorationTheme, listTileTheme:listTileTheme, materialTapTargetSize:materialTapTargetSize, menuBarTheme:menuBarTheme, menuButtonTheme:menuButtonTheme, menuTheme:menuTheme, navigationBarTheme:navigationBarTheme, navigationDrawerTheme:navigationDrawerTheme, navigationRailTheme:navigationRailTheme, outlinedButtonTheme:outlinedButtonTheme, package:package, pageTransitionsTheme:pageTransitionsTheme, platform:platform, popupMenuTheme:popupMenuTheme, primaryColor:primaryColor, primaryColorBrightness:primaryColorBrightness, primaryColorDark:primaryColorDark, primaryColorLight:primaryColorLight, primaryIconTheme:primaryIconTheme, primarySwatch:primarySwatch, primaryTextTheme:primaryTextTheme, progressIndicatorTheme:progressIndicatorTheme, radioTheme:radioTheme, scaffoldBackgroundColor:scaffoldBackgroundColor, scrollbarTheme:scrollbarTheme, searchBarTheme:searchBarTheme, searchViewTheme:searchViewTheme, secondaryHeaderColor:secondaryHeaderColor, segmentedButtonTheme:segmentedButtonTheme, selectedRowColor:selectedRowColor, shadowColor:shadowColor, sliderTheme:sliderTheme, snackBarTheme:snackBarTheme, splashColor:splashColor, splashFactory:splashFactory, switchTheme:switchTheme, tabBarTheme:tabBarTheme, textButtonTheme:textButtonTheme, textSelectionTheme:textSelectionTheme, textTheme:textTheme, timePickerTheme:timePickerTheme, toggleButtonsTheme:toggleButtonsTheme, toggleableActiveColor:toggleableActiveColor, tooltipTheme:tooltipTheme, typography:typography, unselectedWidgetColor:unselectedWidgetColor, useMaterial3:useMaterial3, visualDensity:visualDensity);
},
'package:flutter/src/material/theme_data.dart@ThemeData@raw': (m.Scope scope)=>ThemeData.raw,
'package:flutter/src/material/theme_data.dart@ThemeData@from': (m.Scope scope)=>ThemeData.from,
'package:flutter/src/material/theme_data.dart@ThemeData@light': (m.Scope scope)=>ThemeData.light,
'package:flutter/src/material/theme_data.dart@ThemeData@dark': (m.Scope scope)=>ThemeData.dark,
'package:flutter/src/material/theme_data.dart@ThemeData@fallback': (m.Scope scope)=>ThemeData.fallback,
'package:flutter/src/material/theme_data.dart@ThemeData@extension': (m.Scope scope, ThemeData target)=>target.extension,
'package:flutter/src/material/theme_data.dart@ThemeData@copyWith': (m.Scope scope, ThemeData target)=>target.copyWith,
'package:flutter/src/material/theme_data.dart@ThemeData@localize': (m.Scope scope)=>ThemeData.localize,
'package:flutter/src/material/theme_data.dart@ThemeData@estimateBrightnessForColor': (m.Scope scope)=>ThemeData.estimateBrightnessForColor,
'package:flutter/src/material/theme_data.dart@ThemeData@lerp': (m.Scope scope)=>ThemeData.lerp,
'package:flutter/src/material/theme_data.dart@ThemeData@==': (m.Scope scope, ThemeData target)=>(other)=> target == other,
'package:flutter/src/material/theme_data.dart@ThemeData@debugFillProperties': (m.Scope scope, ThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/theme_data.dart@MaterialBasedCupertinoThemeData@#as': (m.Scope scope, target)=>()=>target as MaterialBasedCupertinoThemeData,
'package:flutter/src/material/theme_data.dart@MaterialBasedCupertinoThemeData@#is': (m.Scope scope, target)=>()=>target is MaterialBasedCupertinoThemeData,
'package:flutter/src/material/theme_data.dart@MaterialBasedCupertinoThemeData@brightness': (m.Scope scope, MaterialBasedCupertinoThemeData target)=>target.brightness,
'package:flutter/src/material/theme_data.dart@MaterialBasedCupertinoThemeData@primaryColor': (m.Scope scope, MaterialBasedCupertinoThemeData target)=>target.primaryColor,
'package:flutter/src/material/theme_data.dart@MaterialBasedCupertinoThemeData@primaryContrastingColor': (m.Scope scope, MaterialBasedCupertinoThemeData target)=>target.primaryContrastingColor,
'package:flutter/src/material/theme_data.dart@MaterialBasedCupertinoThemeData@scaffoldBackgroundColor': (m.Scope scope, MaterialBasedCupertinoThemeData target)=>target.scaffoldBackgroundColor,
'package:flutter/src/material/theme_data.dart@MaterialBasedCupertinoThemeData@': (m.Scope scope)=>MaterialBasedCupertinoThemeData,
'package:flutter/src/material/theme_data.dart@MaterialBasedCupertinoThemeData@copyWith': (m.Scope scope, MaterialBasedCupertinoThemeData target)=>target.copyWith,
'package:flutter/src/material/theme_data.dart@MaterialBasedCupertinoThemeData@resolveFrom': (m.Scope scope, MaterialBasedCupertinoThemeData target)=>target.resolveFrom,
'package:flutter/src/material/theme_data.dart@VisualDensity@#as': (m.Scope scope, target)=>()=>target as VisualDensity,
'package:flutter/src/material/theme_data.dart@VisualDensity@#is': (m.Scope scope, target)=>()=>target is VisualDensity,
'package:flutter/src/material/theme_data.dart@VisualDensity@minimumDensity': (m.Scope scope)=>VisualDensity.minimumDensity,
'package:flutter/src/material/theme_data.dart@VisualDensity@maximumDensity': (m.Scope scope)=>VisualDensity.maximumDensity,
'package:flutter/src/material/theme_data.dart@VisualDensity@standard': (m.Scope scope)=>VisualDensity.standard,
'package:flutter/src/material/theme_data.dart@VisualDensity@comfortable': (m.Scope scope)=>VisualDensity.comfortable,
'package:flutter/src/material/theme_data.dart@VisualDensity@compact': (m.Scope scope)=>VisualDensity.compact,
'package:flutter/src/material/theme_data.dart@VisualDensity@horizontal': (m.Scope scope, VisualDensity target)=>target.horizontal,
'package:flutter/src/material/theme_data.dart@VisualDensity@vertical': (m.Scope scope, VisualDensity target)=>target.vertical,
'package:flutter/src/material/theme_data.dart@VisualDensity@adaptivePlatformDensity': (m.Scope scope)=>VisualDensity.adaptivePlatformDensity,
'package:flutter/src/material/theme_data.dart@VisualDensity@baseSizeAdjustment': (m.Scope scope, VisualDensity target)=>target.baseSizeAdjustment,
'package:flutter/src/material/theme_data.dart@VisualDensity@hashCode': (m.Scope scope, VisualDensity target)=>target.hashCode,
'package:flutter/src/material/theme_data.dart@VisualDensity@': (m.Scope scope)=>({ horizontal,  vertical}){
return VisualDensity(horizontal:horizontal ?? 0.0, vertical:vertical ?? 0.0);
},
'package:flutter/src/material/theme_data.dart@VisualDensity@defaultDensityForPlatform': (m.Scope scope)=>VisualDensity.defaultDensityForPlatform,
'package:flutter/src/material/theme_data.dart@VisualDensity@copyWith': (m.Scope scope, VisualDensity target)=>target.copyWith,
'package:flutter/src/material/theme_data.dart@VisualDensity@lerp': (m.Scope scope)=>VisualDensity.lerp,
'package:flutter/src/material/theme_data.dart@VisualDensity@effectiveConstraints': (m.Scope scope, VisualDensity target)=>target.effectiveConstraints,
'package:flutter/src/material/theme_data.dart@VisualDensity@==': (m.Scope scope, VisualDensity target)=>(other)=> target == other,
'package:flutter/src/material/theme_data.dart@VisualDensity@debugFillProperties': (m.Scope scope, VisualDensity target)=>target.debugFillProperties,
'package:flutter/src/material/theme_data.dart@VisualDensity@toStringShort': (m.Scope scope, VisualDensity target)=>target.toStringShort,

};
}