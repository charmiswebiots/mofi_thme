import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mofi/widget/common_button.dart';

import '../../config.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Color(0xff3D434A),
      Color(0xff3D434A),
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];
    return Scaffold(
      backgroundColor: appColor(context).appTheme.white,
      body: HeaderNavLayout(
          child: SingleChildScrollView(
        child: MyMainScreen(
          children: [
            MySubScreen(
              screenDimension:
                  DeviceFormat().generateFormatExtraLargeScreen(4.6),
              child: Container(
                height: 249,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.r17),
                    color: appColor(context).appTheme.white),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppRadius.r17),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                appColor(context)
                                    .appTheme
                                    .white
                                    .withOpacity(0.4),
                                appColor(context)
                                    .appTheme
                                    .white
                                    .withOpacity(0.4),
                                appColor(context)
                                    .appTheme
                                    .containerCircleColor
                                    .withOpacity(0.4),
                                appColor(context)
                                    .appTheme
                                    .primaryColor
                                    .withOpacity(0.2),
                                appColor(context)
                                    .appTheme
                                    .primaryColor
                                    .withOpacity(0.2)
                              ],
                              stops: [
                                0.0,
                                0.25,
                                0.5,
                                0.75,
                                1.0
                              ])),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              imageAssets.imageDashboardShadow,
                              fit: BoxFit.fill,
                            ).paddingOnly(right: Insets.i60, top: Insets.i20),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              imageAssets.imageDashboard,
                              fit: BoxFit.fill,
                            ),
                          ).paddingOnly(right: Insets.i20),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AnimatedTextKit(
                                      animatedTexts: [
                                        ColorizeAnimatedText(
                                          language(context, appFonts.goodDay),
                                          textStyle: appCss.dmOutfitMedium30
                                              .textColor(appColor(context)
                                                  .appTheme
                                                  .fontColor)
                                              .letterSpace(0.6),
                                          colors: colorizeColors,
                                        ),
                                      ],
                                      isRepeatingAnimation: true,
                                    ),
                                    Text(
                                        language(context,
                                            appFonts.goodDayDescription),
                                        maxLines: 3,
                                        style: appCss.dmOutfitMedium16
                                            .textColor(appColor(context)
                                                .appTheme
                                                .fontColor
                                                .withOpacity(0.4))
                                            .letterSpace(0.6))
                                  ],
                                ),
                                ButtonCommon(
                                    title: appFonts.goPremium,
                                    height: Sizes.s35,
                                    width: MediaQuery.of(context).size.width *
                                        0.08)
                              ],
                            ).paddingOnly(
                                left: Insets.i10,
                                top: Insets.i5,
                                bottom: Insets.i10),
                          )
                        ],
                      ),
                    ).paddingAll(Insets.i8),
                  ],
                ),
              ),
            ),
            MySubScreen(
                screenDimension:
                    DeviceFormat().generateFormatExtraLargeScreen(3.2),
                child: Container(
                  height: 249,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.r17),
                    color: Colors.white,
                  ),
                )),
            MySubScreen(
                screenDimension:
                    DeviceFormat().generateFormatExtraLargeScreen(4),
                child: Container(
                  height: 249,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.r17),
                    color: Colors.white,
                  ),
                )),
          ],
        ).paddingOnly(top: Insets.i30, left: Insets.i25),
      )),
    );
  }
}
