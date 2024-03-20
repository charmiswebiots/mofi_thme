import 'package:mofi/screens/dashboard/layout/navigation_drawer_list.dart';
import '../../../config.dart';

class DashboardListLayout extends StatelessWidget {
  final int? index;
  final DashboardModel? data;

  const DashboardListLayout({super.key, this.index, this.data});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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

      ...data!.subList!.asMap().entries.map((e) => NavigationDrawerList(
            data: data!.subList![e.key],
          ))
    ]).paddingOnly(top: Insets.i10, left: Insets.i30, right: Insets.i30);
  }
}
