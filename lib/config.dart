import 'config.dart';
export 'package:flutter/material.dart';
export 'helper/helper_path_list.dart';
export 'package:mofi/widget/widget_path_list.dart';
export '../common/common_path_list.dart';
export 'package:mofi/provider/provider_path_list.dart';
export 'package:mofi/model/model_pathlist.dart';
export 'package:mofi/screens/screens_path_list.dart';
export 'package:mofi/routes/index.dart';

NavigationClass route = NavigationClass();
AppArray appArray = AppArray();
AppCss appCss = AppCss();
AppFonts appFonts = AppFonts();
Validation validation = Validation();

Map<VisualDisplaySize, double> screenWidthFetch(screenDimension) =>
    MonitorWidthSize.getSizeFlexibilityMapping(screenDimension ?? "");

Map<VisualDisplaySize, DisplayCategory> screenWidthName(screenLayout) =>
    MonitorWidthSize.getGetDisplayFromText(screenLayout ?? "");

VisualDisplaySize isDisplaySize(BuildContext context) {
  VisualDisplaySize displaySize = MediaQueryUtils.getVisualDisplaySize(context);
  return displaySize;
}

//language
String language(context, text) {
  return AppLocalizations.of(context)!.translate(text);
}