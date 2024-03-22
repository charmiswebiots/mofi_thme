
import '../../../config.dart';


class NavigationDrawerMainList extends StatelessWidget {
  const NavigationDrawerMainList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context1, navigation, child) {
      return Container(
        color: appColor(context).appTheme.sidebarColor,
        child: navigation.isCollapsed
        //navigation drawer in icon layout
            ? const NavigationListIsCollapsed()
        //navigation drawer in icon with name layout
            : const NavigationListCollapsedLayout(),
      );
    });
  }
}
