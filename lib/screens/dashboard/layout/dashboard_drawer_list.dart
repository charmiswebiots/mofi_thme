import '../../../config.dart';
import '../../../plugin_list.dart';

class DashboardDrawerList extends StatelessWidget {
  const DashboardDrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: appColor(context).appTheme.sidebarColor,
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
                height: Sizes.s35,
                width: Sizes.s100,
                child:
                    Image.asset(imageAssets.logoDark, fit: BoxFit.scaleDown)),
            Container(
                height: Sizes.s38,
                width: Sizes.s38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.r6),
                    color: appColor(context).appTheme.containerColor),
                child: SvgPicture.asset(svgAssets.iconCategory,
                    fit: BoxFit.scaleDown,
                    colorFilter: ColorFilter.mode(
                        appColor(context).appTheme.white, BlendMode.srcIn)))
          ]).paddingSymmetric(horizontal: Insets.i25, vertical: Insets.i20),
          Divider(
              height: Sizes.s1,
              color: appColor(context).appTheme.white.withOpacity(0.20)),
          ...appArray.dashboardList
              .asMap()
              .entries
              .map((e) => DashboardListLayout(
                    index: e.key,
                    data: e.value,
                  ))
        ]));
  }
}
