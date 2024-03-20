import 'dart:developer';
import '../../config.dart';

class NavigationDrawerProvider with ChangeNotifier {
  bool isSublistOpen = false;
  bool isInnerSublistOpen = false;
  int selectedSubIndex = -1;
  String? subList = "Default Dashboard", innerSubList;
  bool isHovered = false;
  String? image;

  onHovered() {
    isHovered = !isHovered;
    notifyListeners();
  }

  onSelectSublist(title) {
    if (title == appFonts.dashboards ||
        title == appFonts.widget ||
        title == appFonts.pageLayout ||
        title == appFonts.project ||
        title == appFonts.ecommerce ||
        title == appFonts.chat ||
        title == appFonts.users ||
        title == appFonts.forms ||
        title == appFonts.tables ||
        title == appFonts.uiKits ||
        title == appFonts.bonusUI ||
        title == appFonts.animation ||
        title == appFonts.icons ||
        title == appFonts.buttons ||
        title == appFonts.chat ||
        title == appFonts.other) {
      subList = title;
      isSublistOpen = !isSublistOpen;
      notifyListeners();
    }
  }

  onSelectInnerSubList(subName) {
    if (subName == appFonts.invoices ||
        subName == appFonts.formControls ||
        subName == appFonts.formWidget ||
        subName == appFonts.formLayout ||
        subName == appFonts.errorPage ||
        subName == appFonts.authentication ||
        subName == appFonts.comingSoon ||
        subName == appFonts.emailTemplates) {
      innerSubList = subName;
      isInnerSublistOpen = !isInnerSublistOpen;
      notifyListeners();
    }
  }

  //selected page list
  onSelectedListPage(dynamic data, BuildContext context) {
    log("data  ${data}");
    /*if (data['subtitle'] == appFonts.createAccount){
      route.pushNamed(context, data['route'], arg: true);
    } else {
      route.pushNamed(context, data['route']);
    }*/
  }
}
