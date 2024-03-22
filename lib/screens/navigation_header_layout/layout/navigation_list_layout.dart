import '../../../config.dart';

class NavigationListLayout extends StatelessWidget {
  final DashboardModel data;

  const NavigationListLayout({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: Insets.i10, vertical: Insets.i6),
              //decoration for name display container
              decoration: NavigationWidget().decorNavContainer(context),
              //main name display in list
              child: Text(language(context, data.title.toString()),
                  style: appCss.dmOutfitSemiBold14
                      .textColor(appColor(context).appTheme.white)
                      .letterSpace(0.4)))
          .paddingOnly(bottom: Insets.i12, top: Insets.i25),
      //sublist layout
      ...data.subList!.asMap().entries.map((e) => NavigationDrawerList(
            data: e.value,
          ))
    ]).paddingOnly(top: Insets.i6, left: Insets.i20, right: Insets.i20);
  }
}
