import 'package:mofi/plugin_list.dart';
import 'package:mofi/routes/router.dart';
import 'package:mofi/screens/layoutScreen.dart';
import 'config.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context2, AsyncSnapshot<SharedPreferences> snapData) {
          if (snapData.hasData) {
            return MultiProvider(
                providers: [
                  ChangeNotifierProvider(
                      create: (_) => ThemeService(snapData.data!)),
                  ChangeNotifierProvider(
                      create: (_) => LanguageProvider(snapData.data!)),
                  ChangeNotifierProvider(
                      create: (_) => NavigationDrawerProvider()),
                ],
                child: Consumer2<ThemeService, LanguageProvider>(
                    builder: (context1, theme, lang, child) {
                  return MaterialApp(
                      title: appFonts.appName,
                      debugShowCheckedModeBanner: false,
                      theme: AppTheme.fromType(ThemeType.light).themeData,
                      darkTheme: AppTheme.fromType(ThemeType.dark).themeData,
                      locale: lang.locale,
                      localizationsDelegates: const [
                        AppLocalizations.delegate,
                        AppLocalizationDelagate(),
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate
                      ],
                      supportedLocales: appArray.localList,
                      themeMode: theme.theme,
                      onGenerateRoute: generateRoute,
                      initialRoute: "/");
                }));
          } else {
            return MaterialApp(
                theme: AppTheme.fromType(ThemeType.light).themeData,
                darkTheme: AppTheme.fromType(ThemeType.dark).themeData,
                themeMode: ThemeMode.light,
                debugShowCheckedModeBanner: false,
                home: const LayoutScreen());
          }
        });
  }
}
