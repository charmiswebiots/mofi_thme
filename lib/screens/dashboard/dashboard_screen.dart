import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../config.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  language(context, appFonts.goodDay),
                                  style: appCss.dmOutfitMedium30
                                      .textColor(
                                          appColor(context).appTheme.fontColor)
                                      .letterSpace(0.6),
                                ).paddingOnly(
                                    left: Insets.i10, top: Insets.i10),
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
                                    .paddingOnly(
                                        left: Insets.i10, top: Insets.i10),
                              ],
                            ),
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
