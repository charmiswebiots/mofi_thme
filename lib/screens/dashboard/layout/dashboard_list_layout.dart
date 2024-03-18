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
              .paddingOnly(bottom: Insets.i10),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: data!.subList!.length,
            itemBuilder: (BuildContext context, int innerIndex) {
              return TimelineTile(
                nodeAlign: TimelineNodeAlign.start,
                contents: Text(
                  language(context, data!.subList![innerIndex].subTitle.toString()),
                  style: appCss.dmOutfitSemiBold12
                      .textColor(appColor(context).appTheme.white)
                      .letterSpace(0.7),
                ).paddingOnly(
                  top: Insets.i10,
                  bottom: Insets.i10,left: Insets.i10
                  // Remove left padding
                ),
                node: TimelineNode(
                  indicator: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                        child: Divider(
                          height: 0,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ).paddingOnly(left: 20),
                  startConnector: const SolidLineConnector(),
                  endConnector: const SolidLineConnector(),
                ),
              );
            },
          )

        ]).paddingOnly(top: Insets.i10, left: Insets.i30, right: Insets.i30));
  }
}
