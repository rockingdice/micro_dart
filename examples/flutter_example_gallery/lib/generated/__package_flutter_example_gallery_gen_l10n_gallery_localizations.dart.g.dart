import 'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import 'package:flutter_example_gallery/gen_l10n/gallery_localizations_en.dart';

import 'package:flutter_example_gallery/gen_l10n/gallery_localizations_zh.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@#as':
        (m.Scope scope, target) => () => target as GalleryLocalizations,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@#is':
        (m.Scope scope, target) => () => target is GalleryLocalizations,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@localeName':
        (m.Scope scope, GalleryLocalizations target) => target.localeName,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@delegate':
        (m.Scope scope) => GalleryLocalizations.delegate,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@localizationsDelegates':
        (m.Scope scope) => GalleryLocalizations.localizationsDelegates,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@supportedLocales':
        (m.Scope scope) => GalleryLocalizations.supportedLocales,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@deselect':
        (m.Scope scope, GalleryLocalizations target) => target.deselect,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@notSelected':
        (m.Scope scope, GalleryLocalizations target) => target.notSelected,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@select':
        (m.Scope scope, GalleryLocalizations target) => target.select,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@selectable':
        (m.Scope scope, GalleryLocalizations target) => target.selectable,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@selected':
        (m.Scope scope, GalleryLocalizations target) => target.selected,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@signIn':
        (m.Scope scope, GalleryLocalizations target) => target.signIn,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bannerDemoText':
        (m.Scope scope, GalleryLocalizations target) => target.bannerDemoText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bannerDemoResetText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bannerDemoResetText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bannerDemoMultipleText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bannerDemoMultipleText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bannerDemoLeadingText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bannerDemoLeadingText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dismiss':
        (m.Scope scope, GalleryLocalizations target) => target.dismiss,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@backToGallery':
        (m.Scope scope, GalleryLocalizations target) => target.backToGallery,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoExplore':
        (m.Scope scope, GalleryLocalizations target) => target.cardsDemoExplore,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoTappable':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoTappable,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoTravelDestinationTitle1':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoTravelDestinationTitle1,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoTravelDestinationDescription1':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoTravelDestinationDescription1,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoTravelDestinationCity1':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoTravelDestinationCity1,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoTravelDestinationLocation1':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoTravelDestinationLocation1,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoTravelDestinationTitle2':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoTravelDestinationTitle2,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoTravelDestinationDescription2':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoTravelDestinationDescription2,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoTravelDestinationCity2':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoTravelDestinationCity2,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoTravelDestinationLocation2':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoTravelDestinationLocation2,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoTravelDestinationTitle3':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoTravelDestinationTitle3,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoTravelDestinationDescription3':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoTravelDestinationDescription3,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@homeHeaderGallery':
        (m.Scope scope, GalleryLocalizations target) =>
            target.homeHeaderGallery,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@homeHeaderCategories':
        (m.Scope scope, GalleryLocalizations target) =>
            target.homeHeaderCategories,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyDescription':
        (m.Scope scope, GalleryLocalizations target) => target.rallyDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@replyDescription':
        (m.Scope scope, GalleryLocalizations target) => target.replyDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountDataChecking':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountDataChecking,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountDataHomeSavings':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountDataHomeSavings,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountDataCarSavings':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountDataCarSavings,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountDataVacation':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountDataVacation,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountDetailDataAnnualPercentageYield':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountDetailDataAnnualPercentageYield,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountDetailDataInterestRate':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountDetailDataInterestRate,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountDetailDataInterestYtd':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountDetailDataInterestYtd,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountDetailDataInterestPaidLastYear':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountDetailDataInterestPaidLastYear,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountDetailDataNextStatement':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountDetailDataNextStatement,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountDetailDataAccountOwner':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountDetailDataAccountOwner,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBillDetailTotalAmount':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyBillDetailTotalAmount,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBillDetailAmountPaid':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyBillDetailAmountPaid,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBillDetailAmountDue':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyBillDetailAmountDue,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBudgetCategoryCoffeeShops':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyBudgetCategoryCoffeeShops,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBudgetCategoryGroceries':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyBudgetCategoryGroceries,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBudgetCategoryRestaurants':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyBudgetCategoryRestaurants,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBudgetCategoryClothing':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyBudgetCategoryClothing,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBudgetDetailTotalCap':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyBudgetDetailTotalCap,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBudgetDetailAmountUsed':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyBudgetDetailAmountUsed,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBudgetDetailAmountLeft':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyBudgetDetailAmountLeft,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySettingsManageAccounts':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallySettingsManageAccounts,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySettingsTaxDocuments':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallySettingsTaxDocuments,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySettingsPasscodeAndTouchId':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallySettingsPasscodeAndTouchId,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySettingsNotifications':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallySettingsNotifications,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySettingsPersonalInformation':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallySettingsPersonalInformation,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySettingsPaperlessSettings':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallySettingsPaperlessSettings,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySettingsFindAtms':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallySettingsFindAtms,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySettingsHelp':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallySettingsHelp,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySettingsSignOut':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallySettingsSignOut,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountTotal':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountTotal,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBillsDue':
        (m.Scope scope, GalleryLocalizations target) => target.rallyBillsDue,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBudgetLeft':
        (m.Scope scope, GalleryLocalizations target) => target.rallyBudgetLeft,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccounts':
        (m.Scope scope, GalleryLocalizations target) => target.rallyAccounts,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBills':
        (m.Scope scope, GalleryLocalizations target) => target.rallyBills,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBudgets':
        (m.Scope scope, GalleryLocalizations target) => target.rallyBudgets,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAlerts':
        (m.Scope scope, GalleryLocalizations target) => target.rallyAlerts,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySeeAll':
        (m.Scope scope, GalleryLocalizations target) => target.rallySeeAll,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyFinanceLeft':
        (m.Scope scope, GalleryLocalizations target) => target.rallyFinanceLeft,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyTitleOverview':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyTitleOverview,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyTitleAccounts':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyTitleAccounts,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyTitleBills':
        (m.Scope scope, GalleryLocalizations target) => target.rallyTitleBills,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyTitleBudgets':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyTitleBudgets,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyTitleSettings':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyTitleSettings,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyLoginLoginToRally':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyLoginLoginToRally,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyLoginNoAccount':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyLoginNoAccount,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyLoginSignUp':
        (m.Scope scope, GalleryLocalizations target) => target.rallyLoginSignUp,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyLoginUsername':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyLoginUsername,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyLoginPassword':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyLoginPassword,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyLoginLabelLogin':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyLoginLabelLogin,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyLoginRememberMe':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyLoginRememberMe,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyLoginButtonLogin':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyLoginButtonLogin,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySeeAllAccounts':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallySeeAllAccounts,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySeeAllBills':
        (m.Scope scope, GalleryLocalizations target) => target.rallySeeAllBills,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallySeeAllBudgets':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallySeeAllBudgets,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneDescription':
        (m.Scope scope, GalleryLocalizations target) => target.craneDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@homeCategoryReference':
        (m.Scope scope, GalleryLocalizations target) =>
            target.homeCategoryReference,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoInvalidURL':
        (m.Scope scope, GalleryLocalizations target) => target.demoInvalidURL,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoOptionsTooltip':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoOptionsTooltip,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoInfoTooltip':
        (m.Scope scope, GalleryLocalizations target) => target.demoInfoTooltip,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCodeTooltip':
        (m.Scope scope, GalleryLocalizations target) => target.demoCodeTooltip,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDocumentationTooltip':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoDocumentationTooltip,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFullscreenTooltip':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFullscreenTooltip,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCodeViewerCopyAll':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCodeViewerCopyAll,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCodeViewerCopiedToClipboardMessage':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCodeViewerCopiedToClipboardMessage,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoOptionsFeatureTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoOptionsFeatureTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoOptionsFeatureDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoOptionsFeatureDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsTitle':
        (m.Scope scope, GalleryLocalizations target) => target.settingsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsButtonLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsButtonLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsButtonCloseLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsButtonCloseLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsSystemDefault':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsSystemDefault,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsTextScaling':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsTextScaling,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsTextScalingSmall':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsTextScalingSmall,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsTextScalingNormal':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsTextScalingNormal,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsTextScalingLarge':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsTextScalingLarge,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsTextScalingHuge':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsTextScalingHuge,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsTextDirection':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsTextDirection,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsTextDirectionLocaleBased':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsTextDirectionLocaleBased,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsTextDirectionLTR':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsTextDirectionLTR,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsTextDirectionRTL':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsTextDirectionRTL,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsLocale':
        (m.Scope scope, GalleryLocalizations target) => target.settingsLocale,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsPlatformMechanics':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsPlatformMechanics,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsTheme':
        (m.Scope scope, GalleryLocalizations target) => target.settingsTheme,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsDarkTheme':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsDarkTheme,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsLightTheme':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsLightTheme,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsSlowMotion':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsSlowMotion,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsAbout':
        (m.Scope scope, GalleryLocalizations target) => target.settingsAbout,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsFeedback':
        (m.Scope scope, GalleryLocalizations target) => target.settingsFeedback,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@settingsAttribution':
        (m.Scope scope, GalleryLocalizations target) =>
            target.settingsAttribution,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoAppBarTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoAppBarTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoAppBarSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoAppBarSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoAppBarDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoAppBarDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomAppBarTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomAppBarTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomAppBarSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomAppBarSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomAppBarDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomAppBarDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomAppBarNotch':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomAppBarNotch,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomAppBarPosition':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomAppBarPosition,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomAppBarPositionDockedEnd':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomAppBarPositionDockedEnd,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomAppBarPositionDockedCenter':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomAppBarPositionDockedCenter,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomAppBarPositionFloatingEnd':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomAppBarPositionFloatingEnd,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomAppBarPositionFloatingCenter':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomAppBarPositionFloatingCenter,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBannerTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoBannerTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBannerSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBannerSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBannerDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBannerDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomNavigationTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomNavigationTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomNavigationSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomNavigationSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomNavigationPersistentLabels':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomNavigationPersistentLabels,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomNavigationSelectedLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomNavigationSelectedLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomNavigationDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomNavigationDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoButtonTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoButtonTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoButtonSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoButtonSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextButtonTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextButtonTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextButtonDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextButtonDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoElevatedButtonTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoElevatedButtonTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoElevatedButtonDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoElevatedButtonDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoOutlinedButtonTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoOutlinedButtonTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoOutlinedButtonDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoOutlinedButtonDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoToggleButtonTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoToggleButtonTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoToggleButtonDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoToggleButtonDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFloatingButtonTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFloatingButtonTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFloatingButtonDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFloatingButtonDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCardTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoCardTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCardSubtitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoCardSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoChipTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoChipTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCardDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCardDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoChipSubtitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoChipSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoActionChipTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoActionChipTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoActionChipDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoActionChipDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoChoiceChipTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoChoiceChipTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoChoiceChipDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoChoiceChipDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFilterChipTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFilterChipTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFilterChipDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFilterChipDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoInputChipTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoInputChipTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoInputChipDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoInputChipDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDataTableTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoDataTableTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDataTableSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoDataTableSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDataTableDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoDataTableDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableHeader':
        (m.Scope scope, GalleryLocalizations target) => target.dataTableHeader,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableColumnDessert':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableColumnDessert,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableColumnCalories':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableColumnCalories,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableColumnFat':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableColumnFat,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableColumnCarbs':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableColumnCarbs,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableColumnProtein':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableColumnProtein,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableColumnSodium':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableColumnSodium,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableColumnCalcium':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableColumnCalcium,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableColumnIron':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableColumnIron,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowFrozenYogurt':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowFrozenYogurt,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowIceCreamSandwich':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowIceCreamSandwich,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowEclair':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowEclair,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowCupcake':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowCupcake,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowGingerbread':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowGingerbread,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowJellyBean':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowJellyBean,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowLollipop':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowLollipop,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowHoneycomb':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowHoneycomb,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowDonut':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowDonut,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowApplePie':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowApplePie,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDialogTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoDialogTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDialogSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoDialogSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoAlertDialogTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoAlertDialogTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoAlertDialogDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoAlertDialogDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoAlertTitleDialogTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoAlertTitleDialogTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSimpleDialogTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSimpleDialogTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSimpleDialogDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSimpleDialogDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDividerTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoDividerTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDividerSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoDividerSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDividerDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoDividerDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoVerticalDividerTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoVerticalDividerTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoGridListsTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoGridListsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoGridListsSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoGridListsSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoGridListsDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoGridListsDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoGridListsImageOnlyTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoGridListsImageOnlyTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoGridListsHeaderTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoGridListsHeaderTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoGridListsFooterTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoGridListsFooterTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSlidersTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoSlidersTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSlidersSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSlidersSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSlidersDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSlidersDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoRangeSlidersTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoRangeSlidersTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoRangeSlidersDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoRangeSlidersDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCustomSlidersTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCustomSlidersTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCustomSlidersDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCustomSlidersDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSlidersContinuousWithEditableNumericalValue':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSlidersContinuousWithEditableNumericalValue,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSlidersDiscrete':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSlidersDiscrete,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSlidersDiscreteSliderWithCustomTheme':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSlidersDiscreteSliderWithCustomTheme,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSlidersContinuousRangeSliderWithCustomTheme':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSlidersContinuousRangeSliderWithCustomTheme,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSlidersContinuous':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSlidersContinuous,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSlidersEditableNumericalValue':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSlidersEditableNumericalValue,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoContextMenuTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoContextMenuTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSectionedMenuTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSectionedMenuTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSimpleMenuTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSimpleMenuTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoChecklistMenuTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoChecklistMenuTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuSubtitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMenuDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuItemValueOne':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMenuItemValueOne,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuItemValueTwo':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMenuItemValueTwo,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuItemValueThree':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMenuItemValueThree,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuOne':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuOne,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuTwo':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuTwo,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuThree':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuThree,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuFour':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuFour,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuAnItemWithAContextMenuButton':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMenuAnItemWithAContextMenuButton,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuContextMenuItemOne':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMenuContextMenuItemOne,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuADisabledMenuItem':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMenuADisabledMenuItem,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuContextMenuItemThree':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMenuContextMenuItemThree,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuAnItemWithASectionedMenu':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMenuAnItemWithASectionedMenu,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuPreview':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuPreview,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuShare':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuShare,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuGetLink':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuGetLink,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuRemove':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuRemove,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationDrawerTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationDrawerTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationDrawerSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationDrawerSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationDrawerDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationDrawerDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationDrawerUserName':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationDrawerUserName,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationDrawerUserEmail':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationDrawerUserEmail,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationDrawerToPageOne':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationDrawerToPageOne,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationDrawerToPageTwo':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationDrawerToPageTwo,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationDrawerText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationDrawerText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationRailTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationRailTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationRailSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationRailSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationRailDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationRailDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationRailFirst':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationRailFirst,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationRailSecond':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationRailSecond,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoNavigationRailThird':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoNavigationRailThird,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuAnItemWithASimpleMenu':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMenuAnItemWithASimpleMenu,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuAnItemWithAChecklistMenu':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMenuAnItemWithAChecklistMenu,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFullscreenDialogTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFullscreenDialogTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFullscreenDialogDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFullscreenDialogDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoActivityIndicatorTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoActivityIndicatorTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoActivityIndicatorSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoActivityIndicatorSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoActivityIndicatorDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoActivityIndicatorDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoButtonsTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoButtonsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoButtonsSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoButtonsSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoButtonsDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoButtonsDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoContextMenuTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoContextMenuTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoContextMenuSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoContextMenuSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoContextMenuDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoContextMenuDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoContextMenuActionOne':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoContextMenuActionOne,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoContextMenuActionTwo':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoContextMenuActionTwo,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoContextMenuActionText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoContextMenuActionText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoAlertsTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoAlertsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoAlertsSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoAlertsSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoAlertTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoAlertTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoAlertDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoAlertDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoAlertWithTitleTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoAlertWithTitleTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoAlertButtonsTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoAlertButtonsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoAlertButtonsOnlyTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoAlertButtonsOnlyTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoActionSheetTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoActionSheetTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoActionSheetDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoActionSheetDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoNavigationBarTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoNavigationBarTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoNavigationBarSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoNavigationBarSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoNavigationBarDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoNavigationBarDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoPickerTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoPickerTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoPickerSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoPickerSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoPickerDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoPickerDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoPickerTimer':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoPickerTimer,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoPicker':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoPicker,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoPickerDate':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoPickerDate,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoPickerTime':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoPickerTime,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoPickerDateTime':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoPickerDateTime,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoPullToRefreshTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoPullToRefreshTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoPullToRefreshSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoPullToRefreshSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoPullToRefreshDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoPullToRefreshDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSegmentedControlTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSegmentedControlTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSegmentedControlSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSegmentedControlSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSegmentedControlDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSegmentedControlDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSliderTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSliderTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSliderSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSliderSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSliderDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSliderDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSwitchSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSwitchSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSwitchDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSwitchDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoTabBarTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoTabBarTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoTabBarSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoTabBarSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoTabBarDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoTabBarDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoTabBarHomeTab':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoTabBarHomeTab,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoTabBarChatTab':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoTabBarChatTab,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoTabBarProfileTab':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoTabBarProfileTab,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoTextFieldTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoTextFieldTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoTextFieldSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoTextFieldSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoTextFieldDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoTextFieldDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoTextFieldPIN':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoTextFieldPIN,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSearchTextFieldTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSearchTextFieldTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSearchTextFieldSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSearchTextFieldSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSearchTextFieldDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSearchTextFieldDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSearchTextFieldPlaceholder':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSearchTextFieldPlaceholder,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoScrollbarTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoScrollbarTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoScrollbarSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoScrollbarSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoScrollbarDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoScrollbarDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMotionTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoMotionTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMotionSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMotionSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoContainerTransformDemoInstructions':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoContainerTransformDemoInstructions,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisDemoInstructions':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisDemoInstructions,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedYAxisDemoInstructions':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedYAxisDemoInstructions,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisDemoInstructions':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisDemoInstructions,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeThroughDemoInstructions':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeThroughDemoInstructions,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeScaleDemoInstructions':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeScaleDemoInstructions,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoContainerTransformTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoContainerTransformTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoContainerTransformDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoContainerTransformDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoContainerTransformModalBottomSheetTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoContainerTransformModalBottomSheetTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoContainerTransformTypeFade':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoContainerTransformTypeFade,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoContainerTransformTypeFadeThrough':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoContainerTransformTypeFadeThrough,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMotionPlaceholderTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMotionPlaceholderTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMotionPlaceholderSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMotionPlaceholderSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMotionSmallPlaceholderSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMotionSmallPlaceholderSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMotionDetailsPageTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMotionDetailsPageTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMotionListTileTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoMotionListTileTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedAxisDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedAxisDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisBackButtonText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisBackButtonText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisNextButtonText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisNextButtonText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisCoursePageTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisCoursePageTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisCoursePageSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisCoursePageSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisArtsAndCraftsCourseTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisArtsAndCraftsCourseTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisBusinessCourseTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisBusinessCourseTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisIllustrationCourseTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisIllustrationCourseTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisDesignCourseTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisDesignCourseTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisCulinaryCourseTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisCulinaryCourseTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisBundledCourseSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisBundledCourseSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisIndividualCourseSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisIndividualCourseSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisSignInWelcomeText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisSignInWelcomeText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisSignInSubtitleText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisSignInSubtitleText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisSignInTextFieldLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisSignInTextFieldLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisForgotEmailButtonText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisForgotEmailButtonText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedXAxisCreateAccountButtonText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedXAxisCreateAccountButtonText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedYAxisTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedYAxisTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedYAxisAlbumCount':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedYAxisAlbumCount,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedYAxisAlphabeticalSortTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedYAxisAlphabeticalSortTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedYAxisRecentSortTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedYAxisRecentSortTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedYAxisAlbumTileTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedYAxisAlbumTileTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedYAxisAlbumTileSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedYAxisAlbumTileSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedYAxisAlbumTileDurationUnit':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedYAxisAlbumTileDurationUnit,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisSettingsPageTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisSettingsPageTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisBurgerRecipeTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisBurgerRecipeTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisBurgerRecipeDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisBurgerRecipeDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisSandwichRecipeTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisSandwichRecipeTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisSandwichRecipeDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisSandwichRecipeDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisDessertRecipeTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisDessertRecipeTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisDessertRecipeDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisDessertRecipeDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisShrimpPlateRecipeTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisShrimpPlateRecipeTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisShrimpPlateRecipeDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisShrimpPlateRecipeDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisCrabPlateRecipeTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisCrabPlateRecipeTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisCrabPlateRecipeDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisCrabPlateRecipeDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisBeefSandwichRecipeTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisBeefSandwichRecipeTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisBeefSandwichRecipeDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisBeefSandwichRecipeDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisSavedRecipesListTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisSavedRecipesListTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisProfileSettingLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisProfileSettingLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisNotificationSettingLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisNotificationSettingLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisPrivacySettingLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisPrivacySettingLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSharedZAxisHelpSettingLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSharedZAxisHelpSettingLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeThroughTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeThroughTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeThroughDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeThroughDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeThroughAlbumsDestination':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeThroughAlbumsDestination,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeThroughPhotosDestination':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeThroughPhotosDestination,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeThroughSearchDestination':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeThroughSearchDestination,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeThroughTextPlaceholder':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeThroughTextPlaceholder,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeScaleTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeScaleTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeScaleDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeScaleDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeScaleShowAlertDialogButton':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeScaleShowAlertDialogButton,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeScaleShowFabButton':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeScaleShowFabButton,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeScaleHideFabButton':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeScaleHideFabButton,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeScaleAlertDialogHeader':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeScaleAlertDialogHeader,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeScaleAlertDialogCancelButton':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeScaleAlertDialogCancelButton,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoFadeScaleAlertDialogDiscardButton':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoFadeScaleAlertDialogDiscardButton,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoColorsTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoColorsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoColorsSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoColorsSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoColorsDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoColorsDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTypographyTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTypographyTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTypographySubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTypographySubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTypographyDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTypographyDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demo2dTransformationsTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demo2dTransformationsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demo2dTransformationsSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demo2dTransformationsSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demo2dTransformationsDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demo2dTransformationsDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demo2dTransformationsResetTooltip':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demo2dTransformationsResetTooltip,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demo2dTransformationsEditTooltip':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demo2dTransformationsEditTooltip,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@buttonText':
        (m.Scope scope, GalleryLocalizations target) => target.buttonText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomSheetTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomSheetTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomSheetSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomSheetSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomSheetPersistentTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomSheetPersistentTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomSheetPersistentDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomSheetPersistentDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomSheetModalTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomSheetModalTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomSheetModalDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomSheetModalDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomSheetAddLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomSheetAddLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomSheetButtonText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomSheetButtonText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomSheetHeader':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomSheetHeader,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoListsTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoListsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoListsSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoListsSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoListsDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoListsDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoOneLineListsTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoOneLineListsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoLineListsTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTwoLineListsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoListsSecondary':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoListsSecondary,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoProgressIndicatorTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoProgressIndicatorTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoProgressIndicatorSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoProgressIndicatorSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCircularProgressIndicatorTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCircularProgressIndicatorTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCircularProgressIndicatorDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCircularProgressIndicatorDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoLinearProgressIndicatorTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoLinearProgressIndicatorTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoLinearProgressIndicatorDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoLinearProgressIndicatorDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoPickersTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoPickersTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoPickersSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoPickersSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDatePickerTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoDatePickerTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDatePickerDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoDatePickerDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTimePickerTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTimePickerTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTimePickerDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTimePickerDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDateRangePickerTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoDateRangePickerTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoDateRangePickerDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoDateRangePickerDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoPickersShowPicker':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoPickersShowPicker,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTabsTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoTabsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTabsScrollingTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTabsScrollingTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTabsNonScrollingTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTabsNonScrollingTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTabsSubtitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoTabsSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTabsDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTabsDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSnackbarsTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSnackbarsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSnackbarsSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSnackbarsSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSnackbarsDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSnackbarsDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSnackbarsButtonLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSnackbarsButtonLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSnackbarsText':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSnackbarsText,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSnackbarsActionButtonLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSnackbarsActionButtonLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSnackbarsAction':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSnackbarsAction,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSelectionControlsTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSelectionControlsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSelectionControlsSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSelectionControlsSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSelectionControlsCheckboxTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSelectionControlsCheckboxTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSelectionControlsCheckboxDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSelectionControlsCheckboxDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSelectionControlsRadioTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSelectionControlsRadioTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSelectionControlsRadioDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSelectionControlsRadioDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSelectionControlsSwitchTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSelectionControlsSwitchTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoSelectionControlsSwitchDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoSelectionControlsSwitchDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomTextFieldsTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomTextFieldsTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldShowPasswordLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldShowPasswordLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldHidePasswordLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldHidePasswordLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldFormErrors':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldFormErrors,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldNameRequired':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldNameRequired,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldOnlyAlphabeticalChars':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldOnlyAlphabeticalChars,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldEnterUSPhoneNumber':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldEnterUSPhoneNumber,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldEnterPassword':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldEnterPassword,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldPasswordsDoNotMatch':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldPasswordsDoNotMatch,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldWhatDoPeopleCallYou':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldWhatDoPeopleCallYou,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldNameField':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldNameField,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldWhereCanWeReachYou':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldWhereCanWeReachYou,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldPhoneNumber':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldPhoneNumber,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldYourEmailAddress':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldYourEmailAddress,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldEmail':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldEmail,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldTellUsAboutYourself':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldTellUsAboutYourself,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldKeepItShort':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldKeepItShort,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldLifeStory':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldLifeStory,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldSalary':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldSalary,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldUSD':
        (m.Scope scope, GalleryLocalizations target) => target.demoTextFieldUSD,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldNoMoreThan':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldNoMoreThan,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldPassword':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldPassword,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldRetypePassword':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldRetypePassword,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldSubmit':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldSubmit,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldRequiredField':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldRequiredField,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTooltipTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoTooltipTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTooltipSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTooltipSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTooltipDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTooltipDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTooltipInstructions':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTooltipInstructions,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomNavigationCommentsTab':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomNavigationCommentsTab,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomNavigationCalendarTab':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomNavigationCalendarTab,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomNavigationAccountTab':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomNavigationAccountTab,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomNavigationAlarmTab':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomNavigationAlarmTab,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomNavigationCameraTab':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomNavigationCameraTab,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@buttonTextCreate':
        (m.Scope scope, GalleryLocalizations target) => target.buttonTextCreate,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@chipTurnOnLights':
        (m.Scope scope, GalleryLocalizations target) => target.chipTurnOnLights,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@chipSmall':
        (m.Scope scope, GalleryLocalizations target) => target.chipSmall,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@chipMedium':
        (m.Scope scope, GalleryLocalizations target) => target.chipMedium,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@chipLarge':
        (m.Scope scope, GalleryLocalizations target) => target.chipLarge,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@chipElevator':
        (m.Scope scope, GalleryLocalizations target) => target.chipElevator,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@chipWasher':
        (m.Scope scope, GalleryLocalizations target) => target.chipWasher,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@chipFireplace':
        (m.Scope scope, GalleryLocalizations target) => target.chipFireplace,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@chipBiking':
        (m.Scope scope, GalleryLocalizations target) => target.chipBiking,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demo':
        (m.Scope scope, GalleryLocalizations target) => target.demo,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomAppBar':
        (m.Scope scope, GalleryLocalizations target) => target.bottomAppBar,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@loading':
        (m.Scope scope, GalleryLocalizations target) => target.loading,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogDiscardTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dialogDiscardTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogLocationTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dialogLocationTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogLocationDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dialogLocationDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogCancel':
        (m.Scope scope, GalleryLocalizations target) => target.dialogCancel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogDiscard':
        (m.Scope scope, GalleryLocalizations target) => target.dialogDiscard,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogDisagree':
        (m.Scope scope, GalleryLocalizations target) => target.dialogDisagree,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogAgree':
        (m.Scope scope, GalleryLocalizations target) => target.dialogAgree,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogSetBackup':
        (m.Scope scope, GalleryLocalizations target) => target.dialogSetBackup,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogAddAccount':
        (m.Scope scope, GalleryLocalizations target) => target.dialogAddAccount,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogShow':
        (m.Scope scope, GalleryLocalizations target) => target.dialogShow,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogFullscreenTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dialogFullscreenTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogFullscreenSave':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dialogFullscreenSave,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogFullscreenDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dialogFullscreenDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoButton':
        (m.Scope scope, GalleryLocalizations target) => target.cupertinoButton,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoButtonWithBackground':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoButtonWithBackground,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertCancel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertCancel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertDiscard':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertDiscard,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertLocationTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertLocationTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertLocationDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertLocationDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertAllow':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertAllow,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertDontAllow':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertDontAllow,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertFavoriteDessert':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertFavoriteDessert,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertDessertDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertDessertDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertCheesecake':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertCheesecake,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertTiramisu':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertTiramisu,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertApplePie':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertApplePie,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoAlertChocolateBrownie':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoAlertChocolateBrownie,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cupertinoShowAlert':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cupertinoShowAlert,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsRed':
        (m.Scope scope, GalleryLocalizations target) => target.colorsRed,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsPink':
        (m.Scope scope, GalleryLocalizations target) => target.colorsPink,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsPurple':
        (m.Scope scope, GalleryLocalizations target) => target.colorsPurple,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsDeepPurple':
        (m.Scope scope, GalleryLocalizations target) => target.colorsDeepPurple,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsIndigo':
        (m.Scope scope, GalleryLocalizations target) => target.colorsIndigo,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsBlue':
        (m.Scope scope, GalleryLocalizations target) => target.colorsBlue,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsLightBlue':
        (m.Scope scope, GalleryLocalizations target) => target.colorsLightBlue,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsCyan':
        (m.Scope scope, GalleryLocalizations target) => target.colorsCyan,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsTeal':
        (m.Scope scope, GalleryLocalizations target) => target.colorsTeal,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsGreen':
        (m.Scope scope, GalleryLocalizations target) => target.colorsGreen,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsLightGreen':
        (m.Scope scope, GalleryLocalizations target) => target.colorsLightGreen,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsLime':
        (m.Scope scope, GalleryLocalizations target) => target.colorsLime,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsYellow':
        (m.Scope scope, GalleryLocalizations target) => target.colorsYellow,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsAmber':
        (m.Scope scope, GalleryLocalizations target) => target.colorsAmber,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsOrange':
        (m.Scope scope, GalleryLocalizations target) => target.colorsOrange,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsDeepOrange':
        (m.Scope scope, GalleryLocalizations target) => target.colorsDeepOrange,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsBrown':
        (m.Scope scope, GalleryLocalizations target) => target.colorsBrown,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsGrey':
        (m.Scope scope, GalleryLocalizations target) => target.colorsGrey,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@colorsBlueGrey':
        (m.Scope scope, GalleryLocalizations target) => target.colorsBlueGrey,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeChennai':
        (m.Scope scope, GalleryLocalizations target) => target.placeChennai,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeTanjore':
        (m.Scope scope, GalleryLocalizations target) => target.placeTanjore,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeChettinad':
        (m.Scope scope, GalleryLocalizations target) => target.placeChettinad,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placePondicherry':
        (m.Scope scope, GalleryLocalizations target) => target.placePondicherry,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeFlowerMarket':
        (m.Scope scope, GalleryLocalizations target) =>
            target.placeFlowerMarket,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeBronzeWorks':
        (m.Scope scope, GalleryLocalizations target) => target.placeBronzeWorks,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeMarket':
        (m.Scope scope, GalleryLocalizations target) => target.placeMarket,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeThanjavurTemple':
        (m.Scope scope, GalleryLocalizations target) =>
            target.placeThanjavurTemple,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeSaltFarm':
        (m.Scope scope, GalleryLocalizations target) => target.placeSaltFarm,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeScooters':
        (m.Scope scope, GalleryLocalizations target) => target.placeScooters,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeSilkMaker':
        (m.Scope scope, GalleryLocalizations target) => target.placeSilkMaker,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeLunchPrep':
        (m.Scope scope, GalleryLocalizations target) => target.placeLunchPrep,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeBeach':
        (m.Scope scope, GalleryLocalizations target) => target.placeBeach,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@placeFisherman':
        (m.Scope scope, GalleryLocalizations target) => target.placeFisherman,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppTitle':
        (m.Scope scope, GalleryLocalizations target) => target.starterAppTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.starterAppDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppGenericButton':
        (m.Scope scope, GalleryLocalizations target) =>
            target.starterAppGenericButton,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppTooltipAdd':
        (m.Scope scope, GalleryLocalizations target) =>
            target.starterAppTooltipAdd,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppTooltipFavorite':
        (m.Scope scope, GalleryLocalizations target) =>
            target.starterAppTooltipFavorite,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppTooltipShare':
        (m.Scope scope, GalleryLocalizations target) =>
            target.starterAppTooltipShare,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppTooltipSearch':
        (m.Scope scope, GalleryLocalizations target) =>
            target.starterAppTooltipSearch,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppGenericTitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.starterAppGenericTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppGenericSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.starterAppGenericSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppGenericHeadline':
        (m.Scope scope, GalleryLocalizations target) =>
            target.starterAppGenericHeadline,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppGenericBody':
        (m.Scope scope, GalleryLocalizations target) =>
            target.starterAppGenericBody,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineMenuCaption':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineMenuCaption,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCategoryNameAll':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCategoryNameAll,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCategoryNameAccessories':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCategoryNameAccessories,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCategoryNameClothing':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCategoryNameClothing,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCategoryNameHome':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCategoryNameHome,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineLogoutButtonCaption':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineLogoutButtonCaption,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineLoginUsernameLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineLoginUsernameLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineLoginPasswordLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineLoginPasswordLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCancelButtonCaption':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCancelButtonCaption,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineNextButtonCaption':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineNextButtonCaption,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCartPageCaption':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCartPageCaption,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCartClearButtonCaption':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCartClearButtonCaption,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCartTotalCaption':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCartTotalCaption,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCartSubtotalCaption':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCartSubtotalCaption,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCartShippingCaption':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCartShippingCaption,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCartTaxCaption':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCartTaxCaption,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductVagabondSack':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductVagabondSack,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductStellaSunglasses':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductStellaSunglasses,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductWhitneyBelt':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductWhitneyBelt,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductGardenStrand':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductGardenStrand,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductStrutEarrings':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductStrutEarrings,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductVarsitySocks':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductVarsitySocks,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductWeaveKeyring':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductWeaveKeyring,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductGatsbyHat':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductGatsbyHat,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductShrugBag':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductShrugBag,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductGiltDeskTrio':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductGiltDeskTrio,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductCopperWireRack':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductCopperWireRack,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductSootheCeramicSet':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductSootheCeramicSet,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductHurrahsTeaSet':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductHurrahsTeaSet,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductBlueStoneMug':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductBlueStoneMug,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductRainwaterTray':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductRainwaterTray,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductChambrayNapkins':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductChambrayNapkins,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductSucculentPlanters':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductSucculentPlanters,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductQuartetTable':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductQuartetTable,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductKitchenQuattro':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductKitchenQuattro,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductClaySweater':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductClaySweater,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductSeaTunic':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductSeaTunic,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductPlasterTunic':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductPlasterTunic,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductWhitePinstripeShirt':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductWhitePinstripeShirt,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductChambrayShirt':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductChambrayShirt,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductSeabreezeSweater':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductSeabreezeSweater,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductGentryJacket':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductGentryJacket,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductNavyTrousers':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductNavyTrousers,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductWalterHenleyWhite':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductWalterHenleyWhite,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductSurfAndPerfShirt':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductSurfAndPerfShirt,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductGingerScarf':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductGingerScarf,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductRamonaCrossover':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductRamonaCrossover,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductClassicWhiteCollar':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductClassicWhiteCollar,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductCeriseScallopTee':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductCeriseScallopTee,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductShoulderRollsTee':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductShoulderRollsTee,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductGreySlouchTank':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductGreySlouchTank,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductSunshirtDress':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductSunshirtDress,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductFineLinesTee':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductFineLinesTee,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineTooltipSearch':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineTooltipSearch,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineTooltipSettings':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineTooltipSettings,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineTooltipOpenMenu':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineTooltipOpenMenu,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineTooltipCloseMenu':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineTooltipCloseMenu,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineTooltipCloseCart':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineTooltipCloseCart,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineScreenReaderProductAddToCart':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineScreenReaderProductAddToCart,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineTooltipRemoveItem':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineTooltipRemoveItem,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFormDiners':
        (m.Scope scope, GalleryLocalizations target) => target.craneFormDiners,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFormDate':
        (m.Scope scope, GalleryLocalizations target) => target.craneFormDate,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFormTime':
        (m.Scope scope, GalleryLocalizations target) => target.craneFormTime,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFormLocation':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFormLocation,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFormTravelers':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFormTravelers,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFormOrigin':
        (m.Scope scope, GalleryLocalizations target) => target.craneFormOrigin,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFormDestination':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFormDestination,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFormDates':
        (m.Scope scope, GalleryLocalizations target) => target.craneFormDates,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFlySubhead':
        (m.Scope scope, GalleryLocalizations target) => target.craneFlySubhead,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleepSubhead':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleepSubhead,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEatSubhead':
        (m.Scope scope, GalleryLocalizations target) => target.craneEatSubhead,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly0':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly0,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly1':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly1,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly2':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly2,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly3':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly3,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly4':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly4,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly5':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly5,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly6':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly6,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly7':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly7,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly8':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly8,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly9':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly9,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly10':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly10,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly11':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly11,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly12':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly12,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly13':
        (m.Scope scope, GalleryLocalizations target) => target.craneFly13,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep0':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep0,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep1':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep1,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep2':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep2,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep3':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep3,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep4':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep4,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep5':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep5,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep6':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep6,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep7':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep7,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep8':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep8,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep9':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep9,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep10':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep10,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep11':
        (m.Scope scope, GalleryLocalizations target) => target.craneSleep11,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat0':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat0,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat1':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat1,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat2':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat2,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat3':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat3,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat4':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat4,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat5':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat5,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat6':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat6,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat7':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat7,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat8':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat8,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat9':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat9,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat10':
        (m.Scope scope, GalleryLocalizations target) => target.craneEat10,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly0SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly0SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly1SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly1SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly2SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly2SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly3SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly3SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly4SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly4SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly5SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly5SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly6SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly6SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly7SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly7SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly8SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly8SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly9SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly9SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly10SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly10SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly11SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly11SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly12SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly12SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFly13SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFly13SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep0SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep0SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep1SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep1SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep2SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep2SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep3SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep3SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep4SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep4SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep5SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep5SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep6SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep6SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep7SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep7SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep8SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep8SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep9SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep9SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep10SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep10SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleep11SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleep11SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat0SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEat0SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat1SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEat1SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat2SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEat2SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat3SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEat3SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat4SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEat4SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat5SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEat5SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat6SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEat6SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat7SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEat7SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat8SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEat8SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat9SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEat9SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEat10SemanticLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEat10SemanticLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyMenuFrontPage':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyMenuFrontPage,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyMenuWorld':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyMenuWorld,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyMenuUS':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyMenuUS,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyMenuPolitics':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyMenuPolitics,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyMenuBusiness':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyMenuBusiness,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyMenuTech':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyMenuTech,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyMenuScience':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyMenuScience,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyMenuSports':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyMenuSports,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyMenuTravel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyMenuTravel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyMenuCulture':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyMenuCulture,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyTrendingTechDesign':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyTrendingTechDesign,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyTrendingReform':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyTrendingReform,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyTrendingHealthcareRevolution':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyTrendingHealthcareRevolution,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyTrendingGreenArmy':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyTrendingGreenArmy,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyTrendingStocks':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyTrendingStocks,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyLatestUpdates':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyLatestUpdates,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyHeadlineHealthcare':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyHeadlineHealthcare,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyHeadlineWar':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyHeadlineWar,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyHeadlineGasoline':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyHeadlineGasoline,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyHeadlineArmy':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyHeadlineArmy,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyHeadlineStocks':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyHeadlineStocks,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyHeadlineFabrics':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyHeadlineFabrics,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyHeadlineFeminists':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyHeadlineFeminists,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@fortnightlyHeadlineBees':
        (m.Scope scope, GalleryLocalizations target) =>
            target.fortnightlyHeadlineBees,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@replyInboxLabel':
        (m.Scope scope, GalleryLocalizations target) => target.replyInboxLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@replyStarredLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.replyStarredLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@replySentLabel':
        (m.Scope scope, GalleryLocalizations target) => target.replySentLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@replyTrashLabel':
        (m.Scope scope, GalleryLocalizations target) => target.replyTrashLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@replySpamLabel':
        (m.Scope scope, GalleryLocalizations target) => target.replySpamLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@replyDraftsLabel':
        (m.Scope scope, GalleryLocalizations target) => target.replyDraftsLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneFoldableLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTwoPaneFoldableLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneFoldableDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTwoPaneFoldableDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneSmallScreenLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTwoPaneSmallScreenLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneSmallScreenDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTwoPaneSmallScreenDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneTabletLabel':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTwoPaneTabletLabel,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneTabletDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTwoPaneTabletDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneTitle':
        (m.Scope scope, GalleryLocalizations target) => target.demoTwoPaneTitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneSubtitle':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTwoPaneSubtitle,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@splashSelectDemo':
        (m.Scope scope, GalleryLocalizations target) => target.splashSelectDemo,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneList':
        (m.Scope scope, GalleryLocalizations target) => target.demoTwoPaneList,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneDetails':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTwoPaneDetails,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneSelectItem':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTwoPaneSelectItem,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@of':
        (m.Scope scope) => GalleryLocalizations.of,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@githubRepo':
        (m.Scope scope, GalleryLocalizations target) => target.githubRepo,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@aboutDialogDescription':
        (m.Scope scope, GalleryLocalizations target) =>
            target.aboutDialogDescription,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoExploreSemantics':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoExploreSemantics,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@cardsDemoShareSemantics':
        (m.Scope scope, GalleryLocalizations target) =>
            target.cardsDemoShareSemantics,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAlertsMessageHeadsUpShopping':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAlertsMessageHeadsUpShopping,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAlertsMessageSpentOnRestaurants':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAlertsMessageSpentOnRestaurants,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAlertsMessageATMFees':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAlertsMessageATMFees,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAlertsMessageCheckingAccount':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAlertsMessageCheckingAccount,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAlertsMessageUnassignedTransactions':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAlertsMessageUnassignedTransactions,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyAccountAmount':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyAccountAmount,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBillAmount':
        (m.Scope scope, GalleryLocalizations target) => target.rallyBillAmount,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@rallyBudgetAmount':
        (m.Scope scope, GalleryLocalizations target) =>
            target.rallyBudgetAmount,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCodeViewerFailedToCopyToClipboardMessage':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCodeViewerFailedToCopyToClipboardMessage,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowWithSugar':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowWithSugar,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dataTableRowWithHoney':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dataTableRowWithHoney,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuSelected':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuSelected,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoMenuChecked':
        (m.Scope scope, GalleryLocalizations target) => target.demoMenuChecked,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSliderContinuous':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSliderContinuous,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoCupertinoSliderDiscrete':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoCupertinoSliderDiscrete,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoBottomSheetItem':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoBottomSheetItem,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTextFieldNameHasPhoneNumber':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTextFieldNameHasPhoneNumber,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@bottomNavigationContentPlaceholder':
        (m.Scope scope, GalleryLocalizations target) =>
            target.bottomNavigationContentPlaceholder,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@dialogSelectedOption':
        (m.Scope scope, GalleryLocalizations target) =>
            target.dialogSelectedOption,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@starterAppDrawerItem':
        (m.Scope scope, GalleryLocalizations target) =>
            target.starterAppDrawerItem,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductQuantity':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductQuantity,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineProductPrice':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineProductPrice,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineCartItemCount':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineCartItemCount,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineScreenReaderCart':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineScreenReaderCart,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@shrineScreenReaderRemoveProductButton':
        (m.Scope scope, GalleryLocalizations target) =>
            target.shrineScreenReaderRemoveProductButton,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneHours':
        (m.Scope scope, GalleryLocalizations target) => target.craneHours,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneMinutes':
        (m.Scope scope, GalleryLocalizations target) => target.craneMinutes,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFlightDuration':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneFlightDuration,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneFlyStops':
        (m.Scope scope, GalleryLocalizations target) => target.craneFlyStops,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneSleepProperties':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneSleepProperties,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@craneEatRestaurants':
        (m.Scope scope, GalleryLocalizations target) =>
            target.craneEatRestaurants,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneItem':
        (m.Scope scope, GalleryLocalizations target) => target.demoTwoPaneItem,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@GalleryLocalizations@demoTwoPaneItemDetails':
        (m.Scope scope, GalleryLocalizations target) =>
            target.demoTwoPaneItemDetails,
    'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart@@lookupGalleryLocalizations':
        (m.Scope scope) => lookupGalleryLocalizations,
  };
}
