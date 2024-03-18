class DeviceFormat{

  String generateFormatAllDevice(double extraLargeScreen,double desktop,double miniDesktop, double tablet, double miniTablet,double largeMobile, double small) {
    return 'extraLargeScreen-$extraLargeScreen desktop-$desktop miniDesktop-$miniDesktop tablet-$tablet miniTablet-$miniTablet largeMobile-$largeMobile small-$small';
  }
  String generateFormatExtraLargeScreen(int extraLargeScreen){
    return 'extraLargeScreen-$extraLargeScreen';
  }
  String generateFormatDesktop(int desktop){
    return 'desktop-$desktop';
  }
  String generateFormatMiniDesktop(int miniDesktop){
    return 'miniDesktop-$miniDesktop';
  }

  String generateFormatForMdTLS(int miniDesktop, int tablet, int largeMobile, int small) {
    return 'miniDesktop-$miniDesktop tablet-$tablet largeMobile-$largeMobile small-$small';
  }

  String generateFormatSmallLarge(int largeMobile, int small) {
    return 'largeMobile-$largeMobile small-$small';
  }

  String generateFormatDesktopSmall(int desktop, int small) {
    return 'largeMobile-$desktop small-$small';
  }

  String generateFormatMDesktopMTablet(int miniDesktop, int miniTablet) {
    return 'largeMobile-$miniDesktop small-$miniTablet';
  }
}