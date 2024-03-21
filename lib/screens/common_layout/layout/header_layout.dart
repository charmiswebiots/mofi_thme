import 'package:mofi/screens/common_layout/layout/navigation_widget.dart';

import '../../../config.dart';

class HeaderLayout extends StatelessWidget {
  const HeaderLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context1, navigation, child) {
      return Container(
          color: Colors.white,

          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header in name list layout
                const HeaderNameListLayout(),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  //search view display
                  const SearchField(),
                  //header in icon list display
                  ...appArray.iconList!
                      .asMap()
                      .entries
                      .map((e) => NavigationWidget().headerIconLayout(context, appArray.iconList[e.key],
                          )),
                  //header profile view display
                  const HeaderProfileLayout()
                ]).paddingSymmetric(vertical: Insets.i18,horizontal: Insets.i30)
              ]));
    });
  }
}
