import '../config.dart';

enum VisualDisplaySize {
  small(420, "small"),
  largeMobile(650, "largeMobile"), //(650-768)error
  miniTablet(750, "miniTablet"),
  tablet(900, "tablet"),
  miniDesktop(1400, "miniDesktop"),
  desktop(1700, "desktop"),
  extraLargeScreen(1800, "extraLargeScreen");

  final double screenResolution;
  final String visualDisplayName;

  const VisualDisplaySize(this.screenResolution, this.visualDisplayName);

  static List<VisualDisplaySize> list = [
    VisualDisplaySize.small,
    VisualDisplaySize.largeMobile,
    VisualDisplaySize.miniTablet,
    VisualDisplaySize.tablet,
    VisualDisplaySize.miniDesktop,
    VisualDisplaySize.desktop,
    VisualDisplaySize.extraLargeScreen,
  ];
}

extension VisualDisplaySizeExtension on VisualDisplaySize {
  bool get isMobile => this == VisualDisplaySize.small;

  bool get isLargeMobile => this == VisualDisplaySize.largeMobile;

  bool get isMiniTablet => this == VisualDisplaySize.miniTablet;

  bool get isTablet => this == VisualDisplaySize.tablet;

  bool get isMiniDesktop => this == VisualDisplaySize.miniDesktop;

  bool get isDesktop => this == VisualDisplaySize.desktop;

  bool get isExtraLargeScreen => this == VisualDisplaySize.extraLargeScreen;
}

class MediaQueryUtils {
  static VisualDisplaySize getVisualDisplaySize(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 420) {
      return VisualDisplaySize.small;
    } else if (screenWidth > 420 && screenWidth <= 650) {
      return VisualDisplaySize.largeMobile;
    } else if (screenWidth > 650 && screenWidth <= 750) {
      return VisualDisplaySize.miniTablet;
    } else if (screenWidth > 750 && screenWidth <= 900) {
      return VisualDisplaySize.tablet;
    } else if (screenWidth > 900 && screenWidth <= 1400) {
      return VisualDisplaySize.miniDesktop;
    } else if (screenWidth > 1400 && screenWidth <= 1700) {
      return VisualDisplaySize.desktop;
    } else {
      return VisualDisplaySize.extraLargeScreen;
    }
  }
}
