import '../../common/theme/app_theme.dart';
import '../../config.dart';
import '../../plugin_list.dart';
import '../../routes/index.dart';

class ThemeService extends ChangeNotifier {
  final SharedPreferences sharedPreferences;
  bool isMode = false; //
  ThemeService(this.sharedPreferences);

  bool get isDarkMode => sharedPreferences.getBool(session.isDarkMode) ?? false;
  ThemeMode get theme => isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    sharedPreferences.setBool(session.isDarkMode, isDarkMode ? false : true);
    notifyListeners();
  }

  /// Switch theme and save to local storage
  AppTheme get appTheme => isDarkMode
      ? AppTheme.fromType(ThemeType.dark)
      : AppTheme.fromType(ThemeType.light);

  btnMode() {
    isMode = !isMode;
    sharedPreferences.setBool(session.isDarkMode, isMode);
    notifyListeners();
  }

  bool get getMode => sharedPreferences.getBool(session.isDarkMode) ?? false;
}
