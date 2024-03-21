import 'package:mofi/screens/common_layout/layout/navigation_widget.dart';

import '../../../config.dart';
import '../../../plugin_list.dart';

class NavigationListCollapsedLayout extends StatelessWidget {
  const NavigationListCollapsedLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context1, navigation, child) {
      return Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: Sizes.s35,
              width: Sizes.s100,
              child: Image.asset(imageAssets.logoDark, fit: BoxFit.scaleDown)),
          Container(
                  height: Sizes.s38,
                  width: Sizes.s38,
                  decoration: NavigationWidget().decorNavContainer(context),
                  child: SvgPicture.asset(svgAssets.iconCategory,
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(
                          appColor(context).appTheme.white, BlendMode.srcIn)))
              .inkWell(onTap: () => navigation.toggleIsCollapsed())
        ]).paddingSymmetric(horizontal: Insets.i25, vertical: Insets.i20),
        Divider(
            height: Sizes.s1,
            color: appColor(context).appTheme.white.withOpacity(0.20)),
        Expanded(
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              child: Column(children: [
                ...appArray.dashboardList
                    .asMap()
                    .entries
                    .map((e) => DashboardListLayout(data: e.value))
              ]).paddingOnly(bottom: Insets.i30),
            ),
          ),
        ),
      ]);
    });
  }
}
