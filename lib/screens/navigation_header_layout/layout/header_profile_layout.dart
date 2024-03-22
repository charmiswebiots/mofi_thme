import '../../../config.dart';
import '../../../plugin_list.dart';

class HeaderProfileLayout extends StatelessWidget {
  const HeaderProfileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //header profile view layout
      Container(
          margin: const EdgeInsets.symmetric(vertical: Insets.i6),
          height: Sizes.s30,
          width: Sizes.s30,
          //profile image
          child: Image.asset(imageAssets.imageProfile, fit: BoxFit.scaleDown)),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //profile user name
        Text(language(context, appFonts.profileName),
            style: appCss.dmOutfitSemiBold14
                .textColor(appColor(context).appTheme.textColor)
                .letterSpace(0.7)),
        Row(children: [
          //user designation
          Text(language(context, appFonts.designation),
              style: appCss.dmOutfitSemiBold10
                  .textColor(appColor(context).appTheme.textColor)
                  .letterSpace(0.7)),
          //down arrow
          Container(
              padding: const EdgeInsets.all(Insets.i5),
              height: Sizes.s20,
              width: Sizes.s20,
              child: SvgPicture.asset(svgAssets.iconArrowDown,
                  colorFilter: ColorFilter.mode(
                      appColor(context).appTheme.textColor, BlendMode.srcIn)))
        ])
      ]).paddingOnly(left: Insets.i10, right: Insets.i30)
    ]);
  }
}
