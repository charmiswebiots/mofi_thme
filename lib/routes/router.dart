import 'package:mofi/routes/route_name.dart';
import '../config.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case DashboardRoute:
      return _getPageRoute(const Dashboard());
    default:
      return _getPageRoute(const Dashboard());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}