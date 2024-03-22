class DeviceFormat {
//all device call for display
  String generateFormatAllDevice(
      double extraLargeScreen,
      double desktop,
      double miniDesktop,
      double tablet,
      double miniTablet,
      double largeMobile,
      double small) {
    return 'extraLargeScreen-$extraLargeScreen desktop-$desktop miniDesktop-$miniDesktop tablet-$tablet miniTablet-$miniTablet largeMobile-$largeMobile small-$small';
  }

  //extra large screen call time use
  String generateFormatExtraLargeScreen(double extraLargeScreen) {
    return 'extraLargeScreen-$extraLargeScreen';
  }

  //desktop screen call time use
  String generateFormatDesktop(int desktop) {
    return 'desktop-$desktop';
  }

  //mini desktop call time use
  String generateFormatMiniDesktop(int miniDesktop) {
    return 'miniDesktop-$miniDesktop';
  }

//mini desktop, tablet, large mobile, small layout call time use
  String generateFormatForMdTLS(
      int miniDesktop, int tablet, int largeMobile, int small) {
    return 'miniDesktop-$miniDesktop tablet-$tablet largeMobile-$largeMobile small-$small';
  }

//small and large mobile call time use
  String generateFormatSmallLarge(int largeMobile, int small) {
    return 'largeMobile-$largeMobile small-$small';
  }

//desktop and small layout call time use
  String generateFormatDesktopSmall(int desktop, int small) {
    return 'largeMobile-$desktop small-$small';
  }

//mini desktop and mini tablet layout call time use
  String generateFormatMDesktopMTablet(int miniDesktop, int miniTablet) {
    return 'largeMobile-$miniDesktop small-$miniTablet';
  }
}
