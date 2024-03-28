import 'package:flutter/cupertino.dart';

import '../../../config.dart';
import '../../../plugin_list.dart';

class NavigationWidget {
  //navigation drawer main name list container decor
  BoxDecoration decorNavContainer(context) => BoxDecoration(
      color: appColor(context).appTheme.containerColor,
      borderRadius: BorderRadius.circular(AppRadius.r6));

//header layout in icon display
  Container headerIconLayout(context, IconModel? data) => Container(
      margin: const EdgeInsets.only(right: Insets.i10),
      height: Sizes.s40,
      width: Sizes.s40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.r25),
          color: appColor(context).appTheme.containerCircleColor),
      child: data!.isIcon != true
          ? SvgPicture.asset(
              data!.imageIcon.toString(),
              fit: BoxFit.contain,
              colorFilter: ColorFilter.mode(
                  appColor(context).appTheme.fontColor, BlendMode.srcIn),
            ).paddingSymmetric(vertical: Insets.i9, horizontal: Insets.i11)
          : Icon(
              data!.icon,
              size: Sizes.s18,
              color: appColor(context).appTheme.fontColor,
            ).paddingSymmetric(vertical: Insets.i10, horizontal: Insets.i12));

  //navigation drawer arrow display
  Transform arrowScale(context) => Transform.scale(
      scale: 0.5, // Adjust the scale factor as needed
      child: SvgPicture.asset(svgAssets.iconArrowForward,
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(
              appColor(context).appTheme.white, BlendMode.srcIn)));

  ValueListenableBuilder valueListen(navigation,controller,turnsTween,context)=>ValueListenableBuilder(
      valueListenable: navigation.isOpen,
      builder: (context2, value, child) {
        return MouseRegion(
          onHover: (val) {
            controller.forward(from: 0.0);
            navigation.notifyListeners();
          },
          onExit: (exit) {
            controller.reverse(from: 1.0);
            navigation.notifyListeners();
          },
          onEnter: (enter) {
            controller.forward(from: 0.0);
            navigation.notifyListeners();
          },
          child: InkWell(onTap: ()=>navigation.toggleIsCollapsed(),
            child: RotationTransition(
                turns: controller.drive(turnsTween), // Here it's used
                child: SvgPicture.asset(svgAssets.iconCategory,
                    fit: BoxFit.scaleDown,
                    colorFilter: ColorFilter.mode(
                        appColor(context).appTheme.white,
                        BlendMode.srcIn))),
          ),
        );
      });
}
