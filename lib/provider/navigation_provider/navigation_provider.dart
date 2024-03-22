import 'dart:developer';
import '../../config.dart';

class NavigationDrawerProvider with ChangeNotifier {
  bool isSublistOpen = false;
  bool isClickArrow = false;
  bool isInnerSublistOpen = false;
  int selectedSubIndex = -1;
  String? subList = "Dashboard",
      innerSubList = "Default",
      subInnerSubList;
  bool isHovered = false;
  String? image;
  bool _isCollapsed = false;

  bool get isCollapsed => _isCollapsed;

  void toggleIsCollapsed() {
    _isCollapsed = !isCollapsed;
    notifyListeners();
  }

  onHovered() {
    isHovered = !isHovered;
    notifyListeners();
  }

  onSelectSublist(SubList data, context) {
    if (data.subTitle == appFonts.dashboards ||
        data.subTitle == appFonts.widget ||
        data.subTitle == appFonts.pageLayout ||
        data.subTitle == appFonts.project ||
        data.subTitle == appFonts.ecommerce ||
        data.subTitle == appFonts.chat ||
        data.subTitle == appFonts.users ||
        data.subTitle == appFonts.forms ||
        data.subTitle == appFonts.tables ||
        data.subTitle == appFonts.uiKits ||
        data.subTitle == appFonts.bonusUI ||
        data.subTitle == appFonts.animation ||
        data.subTitle == appFonts.icons ||
        data.subTitle == appFonts.buttons ||
        data.subTitle == appFonts.chat ||
        data.subTitle == appFonts.other ||
        data.subTitle == appFonts.gallery ||
        data.subTitle == appFonts.blog ||
        data.subTitle == appFonts.jobSearch ||
        data.subTitle == appFonts.learning ||
        data.subTitle == appFonts.maps ||
        data.subTitle == appFonts.editors) {
      subList = data.subTitle;
      isSublistOpen = true;
      notifyListeners();
    } else {
      subList = data.subTitle;
      notifyListeners();
    }
    route.pushNamed(context, data.route);
    notifyListeners();
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
      isClickArrow = true;
      isInnerSublistOpen = !isInnerSublistOpen;
      notifyListeners();
    } else {
      isClickArrow = true;
      innerSubList = subName;
      notifyListeners();
    }
    notifyListeners();
  }

  onSelectSubInnerSubList(subName) {
    if (subName == appFonts.invoicesOne ||
        subName == appFonts.invoicesThree ||
        subName == appFonts.invoicesTwo ||
        subName == appFonts.invoicesFour ||
        subName == appFonts.invoicesFive ||
        subName == appFonts.invoicesSix ||
        subName == appFonts.formValidation ||
        subName == appFonts.baseInput) {
      subInnerSubList = subName;
      isClickArrow = true;

    } else {
      isClickArrow = true;
      subInnerSubList = subName;
    }
    notifyListeners();
  }
}
