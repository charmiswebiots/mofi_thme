import '../../../config.dart';
import '../../../plugin_list.dart';

class NavigationDrawerSubList extends StatelessWidget {
  final SubList? data;
  const NavigationDrawerSubList({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context1, navigation, child) {
      return ValueListenableBuilder(
          valueListenable: navigation.isOpen,
          builder: (context2, value, child) {
            return MouseRegion(
              onHover: (val) {
                navigation.isHover = true;
                navigation.isSelectedHover = data!.subTitle!;
                navigation.notifyListeners();
              },
              onExit: (exit) {
                navigation.isHover = false;
                navigation.notifyListeners();
              },
              child: Container(
                color: (navigation.subList == data!.subTitle)
                    ? appColor(context).appTheme.containerColor
                    : navigation.isHover &&
                    navigation
                        .isSelectedHover ==
                        data!.subTitle!?appColor(context).appTheme.containerColor:appColor(context).appTheme.sidebarColor,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: Insets.i10),
                            //sub list in icon display
                            child: Transform.scale(
                                scale: 0.8,
                                child: SvgPicture.asset(data!.icon.toString(),
                                    fit: BoxFit.scaleDown,
                                    colorFilter: ColorFilter.mode(
                                        appColor(context).appTheme.white,
                                        BlendMode.srcIn)))),
                        const HSpace(Sizes.s5),
                        //sublist name display layout
                        Text(language(context, data!.subTitle.toString()),
                            style: appCss.dmOutfitMedium14
                                .textColor(appColor(context).appTheme.white)
                                .letterSpace(0.5))
                      ]),
                      //in inner list data that time show arrow icon display
                      data!.innerList!.isNotEmpty
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: Insets.i10),
                              child: Transform.scale(
                                  scale:
                                      0.5, // Adjust the scale factor as needed
                                  child: SvgPicture.asset(
                                      svgAssets.iconArrowForward,
                                      fit: BoxFit.scaleDown,
                                      colorFilter: ColorFilter.mode(
                                          appColor(context).appTheme.white,
                                          BlendMode.srcIn))))
                          : Container()
                    ]).paddingOnly(
                    top: Insets.i6, left: Insets.i20, right: Insets.i20),
              ),
            );
          });
    });
  }
}
