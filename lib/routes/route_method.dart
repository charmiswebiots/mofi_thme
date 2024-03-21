import '../config.dart';

class AppRoute {
  Map<String, Widget Function(BuildContext)> route = {
    routeName.DashboardRoute: (p0) => const DashboardScreen(),
    routeName.ProfileRoute: (p0) => const ProfileScreen(),
  };
}
