import '../../../config.dart';
import '../../../plugin_list.dart';

class HeaderNameListLayout extends StatelessWidget {
  const HeaderNameListLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context1, navigation, child) {
      //header name listing flow of pages
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //main page name display
        Text(language(context, "${navigation.subList}"),
                style: appCss.dmOutfitSemiBold20
                    .textColor(appColor(context).appTheme.textColor)
                    .letterSpace(0.7))
            .paddingSymmetric(vertical: Insets.i5, horizontal: Insets.i10),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //home icon display
          SizedBox(
              height: Sizes.s16,
              width: Sizes.s16,
              child: SvgPicture.asset(svgAssets.iconHome,
                  fit: BoxFit.scaleDown,
                  colorFilter: ColorFilter.mode(
                      appColor(context).appTheme.textColor, BlendMode.srcIn))),
          //dash display
          Text(appFonts.dash),
          //main list name display
          Text(language(context, "${navigation.subList}"),
              style: appCss.dmOutfitSemiBold14
                  .textColor(appColor(context).appTheme.textColor)
                  .letterSpace(0.7)),
          //dash display
          Text(appFonts.dash),
          //inner list name display
          Text(language(context, "${navigation.innerSubList}"),
              style: appCss.dmOutfitSemiBold14
                  .textColor(appColor(context).appTheme.primaryColor)
                  .letterSpace(0.7))
        ]).paddingSymmetric(horizontal: Insets.i10)
      ]);
    });
  }
}
