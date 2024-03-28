import '../../../config.dart';

class NavigationListCollapsedLayout extends StatefulWidget {
  const NavigationListCollapsedLayout({super.key});
  @override
  State<NavigationListCollapsedLayout> createState() =>
      _NavigationListCollapsedLayoutState();
}

class _NavigationListCollapsedLayoutState
    extends State<NavigationListCollapsedLayout>
    with SingleTickerProviderStateMixin {
  // Animation controller
  late final AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 950),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
              padding: const EdgeInsets.all(Insets.i9),
              height: Sizes.s38,
              width: Sizes.s38,
              //decoration box for category icon
              decoration: NavigationWidget().decorNavContainer(context),
              //mouse hover effect and animation in category icon
              child: NavigationWidget().valueListen(
                  navigation, controller, navigation.turnsTween, context))
        ]).paddingSymmetric(horizontal: Insets.i25, vertical: Insets.i20),
        Divider(
            height: Sizes.s1,
            color: appColor(context).appTheme.white.withOpacity(0.20)),
        Expanded(
            //scrolling behavior set
            child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                    child: Column(children: [
                  ...appArray.navigationList
                      .asMap()
                      .entries
                      //Navigation main name list layout
                      .map((e) => NavigationListLayout(data: e.value))
                ]).paddingOnly(bottom: Insets.i30))))
      ]);
    });
  }
}
