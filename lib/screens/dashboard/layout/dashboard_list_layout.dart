import 'package:mofi/common/extension/spacing.dart';
import 'package:mofi/routes/index.dart';

import '../../../config.dart';
import '../../../plugin_list.dart';

class DashboardListLayout extends StatelessWidget {
  final int? index;
  final DashboardModel? data;

  const DashboardListLayout({super.key, this.index, this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Insets.i10, vertical: Insets.i6),
                  decoration: BoxDecoration(
                      color: appColor(context).appTheme.containerColor,
                      borderRadius: BorderRadius.circular(AppRadius.r6)),
                  child: Text(language(context, data!.title.toString()),
                      style: appCss.dmOutfitSemiBold14
                          .textColor(appColor(context).appTheme.white)
                          .letterSpace(0.4)))
              .paddingOnly(bottom: Insets.i12, top: Insets.i25),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: data!.subList!.length,
            itemBuilder: (BuildContext context, int innerIndex) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: Insets.i10),
                        child: Transform.scale(
                          scale: 0.8,
                          child: SvgPicture.asset(
                            data!.subList![innerIndex].icon.toString(),
                            fit: BoxFit.scaleDown,
                            colorFilter: ColorFilter.mode(
                              appColor(context).appTheme.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                      const HSpace(Sizes.s10),
                      Text(
                        language(context,
                            data!.subList![innerIndex].subTitle.toString()),
                        style: appCss.dmOutfitMedium14
                            .textColor(appColor(context).appTheme.white)
                            .letterSpace(0.7),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: Insets.i10),
                    child: Transform.scale(
                      scale: 0.7, // Adjust the scale factor as needed
                      child: SvgPicture.asset(
                        svgAssets.iconArrowForward,
                        fit: BoxFit.scaleDown,
                        colorFilter: ColorFilter.mode(
                          appColor(context).appTheme.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ); /*TimelineTile(
                nodeAlign: TimelineNodeAlign.start,
                contents: Text(
                  language(
                      context, data!.subList![innerIndex].subTitle.toString()),
                  style: appCss.dmOutfitSemiBold12
                      .textColor(appColor(context).appTheme.white)
                      .letterSpace(0.7),
                ).paddingOnly(top: 10, bottom: 10, left: Insets.i10
                    // Remove left padding
                    ),
                node: TimelineNode(
                  overlap: true,
                  indicator: SvgPicture.asset(svgAssets.iconDrawerBlack)
                      .paddingOnly(left: 22),
                  startConnector: SolidLineConnector(
                      color: appColor(context).appTheme.drawerColor),
                  endConnector: SolidLineConnector(
                      color: appColor(context).appTheme.drawerColor),
                ),
              );*/
            },
          )
        ]).paddingOnly(top: Insets.i10, left: Insets.i30, right: Insets.i30));
  }
}
