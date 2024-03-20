import '../../../config.dart';
import '../../../plugin_list.dart';

class NavigationDrawerSubInnerSubLayout extends StatelessWidget {
  final dynamic data;

  const NavigationDrawerSubInnerSubLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context, navigation, child) {
      return InkWell(
          onTap: () => navigation.onSelectInnerSubList(data.menuSub),
          child: Column(children: [
            NavigationDrawerInnerSublistLayout(data: data),
            if (navigation.isInnerSublistOpen &&
                navigation.innerSubList == data.menuSub)
              
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.subInnerList!.length,
                    itemBuilder: (BuildContext context, int subInnerIndex) {
                      return TimelineTile(
                          nodeAlign: TimelineNodeAlign.start,
                          contents: Column(children: [
                            Text(language(
                                        context,
                                        data.subInnerList![subInnerIndex]
                                            .subInnerListTitle
                                            .toString()),
                                    style: appCss.dmOutfitMedium12
                                        .textColor(appColor(context)
                                            .appTheme
                                            .drawerColor)
                                        .letterSpace(0.8))
                                .paddingOnly(
                                    top: 10, bottom: 10, left: Insets.i20)
                          ]),
                          node: TimelineNode(
                              overlap: true,
                              indicator: Container(
                                      height: Sizes.s5,
                                      width: Sizes.s5,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: appColor(context)
                                              .appTheme
                                              .drawerColor))
                                  .paddingOnly(left: Sizes.s38),
                              startConnector: SolidLineConnector(
                                  color: appColor(context).appTheme.drawerColor),
                              endConnector: SolidLineConnector(
                                  color:
                                      appColor(context).appTheme.drawerColor)));
                    }),
              )
          ]));
    });
  }
}
