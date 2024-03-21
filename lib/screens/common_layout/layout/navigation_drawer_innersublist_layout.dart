import 'package:mofi/screens/common_layout/layout/navigation_widget.dart';

import '../../../config.dart';
import '../../../plugin_list.dart';

class NavigationDrawerInnerSublistLayout extends StatelessWidget {
  final InnerList? data;

  const NavigationDrawerInnerSublistLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context1, navigation, child) {
      return TimelineTile(
          nodeAlign: TimelineNodeAlign.start,
          contents:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //In submenu list name display
            Text(language(context, data!.menuSub!.toString()),
                    style: appCss.dmOutfitMedium12
                        .textColor(appColor(context).appTheme.drawerColor)
                        .letterSpace(0.8))
                .paddingOnly(
                    top: Insets.i10, bottom: Insets.i10, left: Insets.i10),
            //sublist in under Inner list that time display arrow icon
            data!.subInnerList!.isNotEmpty
                ? Container(
                    padding: const EdgeInsets.symmetric(vertical: Insets.i10),
                    //arrow icon
                    child: NavigationWidget().arrowScale(context))
                : Container()
          ]),
          node: TimelineNode(
              overlap: true,
              //svg display
              indicator: SvgPicture.asset(navigation.isClickArrow
                      ? svgAssets.iconDrawerWhite
                      : svgAssets.iconDrawerBlack)
                  .paddingOnly(left: 22),
              //line connector
              startConnector: SolidLineConnector(
                  color: appColor(context).appTheme.drawerColor),
              endConnector: SolidLineConnector(
                  color: appColor(context).appTheme.drawerColor)));
    });
  }
}
