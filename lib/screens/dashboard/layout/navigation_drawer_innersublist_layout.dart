import '../../../config.dart';
import '../../../plugin_list.dart';

class NavigationDrawerInnerSublistLayout extends StatelessWidget {
  final dynamic data;
  const NavigationDrawerInnerSublistLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
        nodeAlign: TimelineNodeAlign.start,
        contents: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(language(context, data.menuSub.toString()),
                    style: appCss.dmOutfitMedium12
                        .textColor(appColor(context).appTheme.drawerColor)
                        .letterSpace(0.8))
                .paddingOnly(top: 10, bottom: 10, left: Insets.i10),
            data.subInnerList!.isNotEmpty
                ? Container(
                    padding: const EdgeInsets.symmetric(vertical: Insets.i10),
                    child: Transform.scale(
                        scale: 0.5, // Adjust the scale factor as needed
                        child: SvgPicture.asset(svgAssets.iconArrowForward,
                            fit: BoxFit.scaleDown,
                            colorFilter: ColorFilter.mode(
                                appColor(context).appTheme.white,
                                BlendMode.srcIn))))
                : Container()
          ],
        ),
        node: TimelineNode(
            overlap: true,
            indicator: SvgPicture.asset(svgAssets.iconDrawerBlack)
                .paddingOnly(left: 22),
            startConnector: SolidLineConnector(
                color: appColor(context).appTheme.drawerColor),
            endConnector: SolidLineConnector(
                color: appColor(context).appTheme.drawerColor)));
  }
}
