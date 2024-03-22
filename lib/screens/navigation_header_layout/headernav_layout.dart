import '../../config.dart';

class HeaderNavLayout extends StatelessWidget {
  final Widget child;

  const HeaderNavLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context1, navigation, childData) {
      return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: appColor(context).appTheme.containerCircleColor,
            body: Row(children: [
          AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: navigation.isCollapsed
                  ? MediaQuery.of(context).size.width * 0.04
                  : MediaQuery.of(context).size.width * 0.13,
              //Navigation drawer
              child: const NavigationDrawerMainList()),
          Expanded(
              child: Column(children: [
            //header layout
            const HeaderLayout(),
            //layout call
            Expanded(
                child: SingleChildScrollView(
              child: child, // Pass the child widget here
            ))
          ]))
        ]));
      });
    });
  }
}
