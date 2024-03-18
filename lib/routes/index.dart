import 'package:mofi/routes/route_method.dart';
import 'package:mofi/routes/route_name.dart';
import '../common/session.dart';
import '../provider/provider_path_list.dart';


RouteName routeName = RouteName();
AppRoute appRoute = AppRoute();
Session session = Session();

ThemeService appColor(context) {
  final themeServices = Provider.of<ThemeService>(context, listen: false);
  return themeServices;
}
