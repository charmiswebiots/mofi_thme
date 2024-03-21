import 'package:mofi/routes/route_name.dart';
import '../config.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case DashboardRoute:
      return _getPageRoute(const DashboardScreen());
    case ProfileRoute:
      return _getPageRoute(const ProfileScreen());
    default:
      return _getPageRoute(const DashboardScreen());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}