import 'package:flutter_localizations/src/material_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_localizations/src/cupertino_localizations.dart';
import 'package:flutter_localizations/src/l10n/generated_material_localizations.dart';
import 'package:flutter_localizations/src/utils/date_localizations.dart';
import 'package:flutter_localizations/src/widgets_localizations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@#as': (m.Scope scope, target)=>()=>target as GlobalMaterialLocalizations,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@#is': (m.Scope scope, target)=>()=>target is GlobalMaterialLocalizations,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@delegate': (m.Scope scope)=>GlobalMaterialLocalizations.delegate,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@delegates': (m.Scope scope)=>GlobalMaterialLocalizations.delegates,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@narrowWeekdays': (m.Scope scope, GlobalMaterialLocalizations target)=>target.narrowWeekdays,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@firstDayOfWeekIndex': (m.Scope scope, GlobalMaterialLocalizations target)=>target.firstDayOfWeekIndex,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@dateRangeStartDateSemanticLabelRaw': (m.Scope scope, GlobalMaterialLocalizations target)=>target.dateRangeStartDateSemanticLabelRaw,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@dateRangeEndDateSemanticLabelRaw': (m.Scope scope, GlobalMaterialLocalizations target)=>target.dateRangeEndDateSemanticLabelRaw,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@scrimOnTapHintRaw': (m.Scope scope, GlobalMaterialLocalizations target)=>target.scrimOnTapHintRaw,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@aboutListTileTitleRaw': (m.Scope scope, GlobalMaterialLocalizations target)=>target.aboutListTileTitleRaw,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@pageRowsInfoTitleApproximateRaw': (m.Scope scope, GlobalMaterialLocalizations target)=>target.pageRowsInfoTitleApproximateRaw,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@pageRowsInfoTitleRaw': (m.Scope scope, GlobalMaterialLocalizations target)=>target.pageRowsInfoTitleRaw,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@tabLabelRaw': (m.Scope scope, GlobalMaterialLocalizations target)=>target.tabLabelRaw,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@selectedRowCountTitleZero': (m.Scope scope, GlobalMaterialLocalizations target)=>target.selectedRowCountTitleZero,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@selectedRowCountTitleOne': (m.Scope scope, GlobalMaterialLocalizations target)=>target.selectedRowCountTitleOne,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@selectedRowCountTitleTwo': (m.Scope scope, GlobalMaterialLocalizations target)=>target.selectedRowCountTitleTwo,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@selectedRowCountTitleFew': (m.Scope scope, GlobalMaterialLocalizations target)=>target.selectedRowCountTitleFew,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@selectedRowCountTitleMany': (m.Scope scope, GlobalMaterialLocalizations target)=>target.selectedRowCountTitleMany,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@selectedRowCountTitleOther': (m.Scope scope, GlobalMaterialLocalizations target)=>target.selectedRowCountTitleOther,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@timeOfDayFormatRaw': (m.Scope scope, GlobalMaterialLocalizations target)=>target.timeOfDayFormatRaw,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@licensesPackageDetailTextZero': (m.Scope scope, GlobalMaterialLocalizations target)=>target.licensesPackageDetailTextZero,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@licensesPackageDetailTextOne': (m.Scope scope, GlobalMaterialLocalizations target)=>target.licensesPackageDetailTextOne,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@licensesPackageDetailTextTwo': (m.Scope scope, GlobalMaterialLocalizations target)=>target.licensesPackageDetailTextTwo,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@licensesPackageDetailTextMany': (m.Scope scope, GlobalMaterialLocalizations target)=>target.licensesPackageDetailTextMany,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@licensesPackageDetailTextFew': (m.Scope scope, GlobalMaterialLocalizations target)=>target.licensesPackageDetailTextFew,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@licensesPackageDetailTextOther': (m.Scope scope, GlobalMaterialLocalizations target)=>target.licensesPackageDetailTextOther,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@remainingTextFieldCharacterCountZero': (m.Scope scope, GlobalMaterialLocalizations target)=>target.remainingTextFieldCharacterCountZero,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@remainingTextFieldCharacterCountOne': (m.Scope scope, GlobalMaterialLocalizations target)=>target.remainingTextFieldCharacterCountOne,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@remainingTextFieldCharacterCountTwo': (m.Scope scope, GlobalMaterialLocalizations target)=>target.remainingTextFieldCharacterCountTwo,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@remainingTextFieldCharacterCountMany': (m.Scope scope, GlobalMaterialLocalizations target)=>target.remainingTextFieldCharacterCountMany,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@remainingTextFieldCharacterCountFew': (m.Scope scope, GlobalMaterialLocalizations target)=>target.remainingTextFieldCharacterCountFew,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@remainingTextFieldCharacterCountOther': (m.Scope scope, GlobalMaterialLocalizations target)=>target.remainingTextFieldCharacterCountOther,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@scriptCategory': (m.Scope scope, GlobalMaterialLocalizations target)=>target.scriptCategory,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@formatHour': (m.Scope scope, GlobalMaterialLocalizations target)=>target.formatHour,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@formatMinute': (m.Scope scope, GlobalMaterialLocalizations target)=>target.formatMinute,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@formatYear': (m.Scope scope, GlobalMaterialLocalizations target)=>target.formatYear,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@formatCompactDate': (m.Scope scope, GlobalMaterialLocalizations target)=>target.formatCompactDate,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@formatShortDate': (m.Scope scope, GlobalMaterialLocalizations target)=>target.formatShortDate,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@formatMediumDate': (m.Scope scope, GlobalMaterialLocalizations target)=>target.formatMediumDate,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@formatFullDate': (m.Scope scope, GlobalMaterialLocalizations target)=>target.formatFullDate,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@formatMonthYear': (m.Scope scope, GlobalMaterialLocalizations target)=>target.formatMonthYear,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@formatShortMonthDay': (m.Scope scope, GlobalMaterialLocalizations target)=>target.formatShortMonthDay,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@parseCompactDate': (m.Scope scope, GlobalMaterialLocalizations target)=>target.parseCompactDate,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@formatDecimal': (m.Scope scope, GlobalMaterialLocalizations target)=>target.formatDecimal,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@formatTimeOfDay': (m.Scope scope, GlobalMaterialLocalizations target)=>target.formatTimeOfDay,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@dateRangeStartDateSemanticLabel': (m.Scope scope, GlobalMaterialLocalizations target)=>target.dateRangeStartDateSemanticLabel,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@dateRangeEndDateSemanticLabel': (m.Scope scope, GlobalMaterialLocalizations target)=>target.dateRangeEndDateSemanticLabel,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@scrimOnTapHint': (m.Scope scope, GlobalMaterialLocalizations target)=>target.scrimOnTapHint,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@aboutListTileTitle': (m.Scope scope, GlobalMaterialLocalizations target)=>target.aboutListTileTitle,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@pageRowsInfoTitle': (m.Scope scope, GlobalMaterialLocalizations target)=>target.pageRowsInfoTitle,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@tabLabel': (m.Scope scope, GlobalMaterialLocalizations target)=>target.tabLabel,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@selectedRowCountTitle': (m.Scope scope, GlobalMaterialLocalizations target)=>target.selectedRowCountTitle,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@timeOfDayFormat': (m.Scope scope, GlobalMaterialLocalizations target)=>target.timeOfDayFormat,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@licensesPackageDetailText': (m.Scope scope, GlobalMaterialLocalizations target)=>target.licensesPackageDetailText,
'package:flutter_localizations/src/material_localizations.dart@GlobalMaterialLocalizations@remainingTextFieldCharacterCount': (m.Scope scope, GlobalMaterialLocalizations target)=>target.remainingTextFieldCharacterCount,

};
}