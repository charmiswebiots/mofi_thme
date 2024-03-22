import '../../../config.dart';
import '../../../plugin_list.dart';

class NavigationListCollapsedLayout extends StatefulWidget {
  const NavigationListCollapsedLayout({super.key});

  @override
  State<NavigationListCollapsedLayout> createState() =>
      _NavigationListCollapsedLayoutState();
}

class _NavigationListCollapsedLayoutState
    extends State<NavigationListCollapsedLayout>
    with SingleTickerProviderStateMixin {
  bool _isForward = true;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 900),
    vsync: this,
  )..repeat();

  final Tween<double> turnsTween = Tween<double>(
    begin: 0.0,
    end: 1.0,
  );

  @override
  void dispose() {
    _controller.dispose();
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
              child: RotationTransition(
                  turns: _controller.drive(turnsTween),
                  child: InkWell(
                      onTap: () {
                        if (_isForward) {
                          _controller.forward(from: 0.0);
                          navigation.toggleIsCollapsed();
                        } else {
                          _controller.reverse(from: 1.0); // Reverse animation
                        }
                        _isForward = !_isForward; // Toggle animation direction
                      },
                      child: SvgPicture.asset(svgAssets.iconCategory,
                          fit: BoxFit.scaleDown,
                          colorFilter: ColorFilter.mode(
                              appColor(context).appTheme.white,
                              BlendMode.srcIn)))))
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
