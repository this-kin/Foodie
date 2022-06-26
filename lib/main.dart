import 'package:fooddelivery/core/exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (_, __) {
        return MaterialApp(
          title: 'Foodie App UI',
          debugShowCheckedModeBanner: false,
          theme: CustomTheme.getTheme(context),
          initialRoute: RouteGenerator.splash,
          onGenerateRoute: RouteGenerator.generateRoute,
        );
      },
    );
  }
}

