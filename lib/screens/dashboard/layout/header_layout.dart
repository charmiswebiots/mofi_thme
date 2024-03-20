import 'package:flutter/cupertino.dart';

import '../../../config.dart';
import '../../../plugin_list.dart';

class HeaderLayout extends StatelessWidget {
  const HeaderLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context1, navigation, child) {
      return Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(language(context, "${navigation.subList}"),
                        style: appCss.dmOutfitSemiBold20
                            .textColor(appColor(context).appTheme.textColor)
                            .letterSpace(0.7))
                    .paddingSymmetric(
                        vertical: Insets.i5, horizontal: Insets.i8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Sizes.s16,
                      width: Sizes.s16,
                      child: SvgPicture.asset(svgAssets.iconHome,
                          fit: BoxFit.scaleDown,
                          colorFilter: ColorFilter.mode(
                              appColor(context).appTheme.textColor,
                              BlendMode.srcIn)),
                    ),
                    Text(" / "),
                    Text(language(context, "${navigation.subList}"),
                        style: appCss.dmOutfitSemiBold14
                            .textColor(appColor(context).appTheme.textColor)
                            .letterSpace(0.7)),
                    Text(" / "),
                    Text(language(context, "${navigation.innerSubList}"),
                        style: appCss.dmOutfitSemiBold14
                            .textColor(appColor(context).appTheme.textColor)
                            .letterSpace(0.7)),
                  ],
                ).paddingSymmetric(horizontal: Insets.i8),
              ],
            ),Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical:Insets.i16),
                  padding: const EdgeInsets.symmetric(vertical:Insets.i10,horizontal: Insets.i12),
                  height: Sizes.s40,
                  width: Sizes.s40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppRadius.r25),color: appColor(context).appTheme.containerCircleColor),
                  child: SvgPicture.asset(svgAssets.iconBag),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(vertical:Insets.i16),
                    height: Sizes.s30,
                    width: Sizes.s30,
                    child: Image.asset(imageAssets.imageProfile, fit: BoxFit.scaleDown)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(language(context, appFonts.profileName),
                        style: appCss.dmOutfitSemiBold14
                            .textColor(appColor(context).appTheme.textColor)
                            .letterSpace(0.7)),
                    Text(language(context, appFonts.designation),
                        style: appCss.dmOutfitSemiBold10
                            .textColor(appColor(context).appTheme.textColor)
                            .letterSpace(0.7))
                  ],
                ).paddingSymmetric(horizontal: Insets.i10)
              ],
            )
          ],
        ),
      );
    });
  }
}
