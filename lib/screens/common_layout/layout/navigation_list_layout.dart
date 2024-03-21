import 'package:mofi/screens/common_layout/layout/navigation_widget.dart';

import '../../../config.dart';

class DashboardListLayout extends StatelessWidget {
  final DashboardModel data;

  const DashboardListLayout({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: Insets.i10, vertical: Insets.i6),
              decoration: NavigationWidget().decorNavContainer(context),
              child: Text(language(context, data.title.toString()),
                  style: appCss.dmOutfitSemiBold14
                      .textColor(appColor(context).appTheme.white)
                      .letterSpace(0.4)))
          .paddingOnly(bottom: Insets.i12, top: Insets.i25),
      ...data.subList!.asMap().entries.map((e) => NavigationDrawerList(
            data: e.value,
          ))
    ]).paddingOnly(top: Insets.i10, left: Insets.i30, right: Insets.i30);
  }
}
