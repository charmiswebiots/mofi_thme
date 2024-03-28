import '../../../config.dart';
import '../../../plugin_list.dart';

class NavigationDrawerInnerSubListLayout extends StatelessWidget {
  final SubInnerList? data;

  const NavigationDrawerInnerSubListLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context1, navigation, child) {
      return TimelineTile(
          nodeAlign: TimelineNodeAlign.start,
          contents: Column(children: [
            //Inner list name display
            Text(language(context, data!.subInnerListTitle.toString()),
                    style: appCss.dmOutfitMedium12
                        .textColor(navigation.isClickArrow &&
                                navigation.subInnerSubList ==
                                    data!.subInnerListTitle
                            ? appColor(context).appTheme.white
                            : appColor(context).appTheme.drawerColor)
                        .letterSpace(0.8))
                .paddingOnly(
                    top: Insets.i10, bottom: Insets.i10, left: Insets.i20)
          ]),
          node: TimelineNode(
              overlap: true,
              //inner list circle view display
              indicator: Container(
                      height: Sizes.s5,
                      width: Sizes.s5,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: navigation.isClickArrow &&
                                  navigation.subInnerSubList ==
                                      data!.subInnerListTitle
                              ? appColor(context).appTheme.white
                              : appColor(context).appTheme.drawerColor))
                  .paddingOnly(left: Sizes.s38),
              //line connector
              startConnector: SolidLineConnector(
                  color: appColor(context).appTheme.drawerColor),
              endConnector: SolidLineConnector(
                  color: appColor(context).appTheme.drawerColor)));
    });
  }
}
