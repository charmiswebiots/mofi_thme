import '../../../config.dart';
import '../../../plugin_list.dart';

class NavigationDrawerSubList extends StatelessWidget {
  final SubList? data;
  const NavigationDrawerSubList({super.key,  this.data});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: Insets.i10),
            child: Transform.scale(
                scale: 0.8,
                child: SvgPicture.asset(data!.icon.toString(),
                    fit: BoxFit.scaleDown,
                    colorFilter: ColorFilter.mode(
                        appColor(context).appTheme.white, BlendMode.srcIn)))),
        const HSpace(Sizes.s5),
        Text(language(context, data!.subTitle.toString()),
            style: appCss.dmOutfitMedium14
                .textColor(appColor(context).appTheme.white)
                .letterSpace(0.5))
      ]),
      data!.innerList!.isNotEmpty
          ? Container(
              padding: const EdgeInsets.symmetric(vertical: Insets.i10),
              child: Transform.scale(
                  scale: 0.5, // Adjust the scale factor as needed
                  child: SvgPicture.asset(svgAssets.iconArrowForward,
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(
                          appColor(context).appTheme.white, BlendMode.srcIn))))
          : Container()
    ]);
  }
}
