import '../../../config.dart';

class NavigationListIsCollapsed extends StatelessWidget {
  const NavigationListIsCollapsed({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context1, navigation, child) {
      return Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          //logo icon display
          SizedBox(
                  height: Sizes.s35,
                  width: Sizes.s50,
                  child:
                      Image.asset(imageAssets.logoIcon, fit: BoxFit.scaleDown))
              .inkWell(onTap: () => navigation.toggleIsCollapsed()),
        ]).paddingSymmetric(horizontal: Insets.i10, vertical: Insets.i20),
        //divider
        Divider(
            height: Sizes.s1,
            color: appColor(context).appTheme.white.withOpacity(0.20)),
        //list icon layout
        Expanded(
            child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
              child: Column(children: [
            //dashboard model list
            ...appArray.navigationList
                .asMap()
                .entries
                .map((e) => Column(children: [
                      //sublist model list
                      ...e.value.subList!
                          .asMap()
                          .entries
                          .map((e) => NavigationIconListLayout(data: e.value))
                    ]))
          ]).paddingOnly(bottom: Insets.i30)),
        ))
      ]);
    });
  }
}
