import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/screens/authentication.dart';
import 'package:fooddelivery/presentation/screens/food_screen.dart';
import 'package:fooddelivery/presentation/screens/home.dart';
import 'package:fooddelivery/presentation/screens/more.dart';
import 'package:fooddelivery/presentation/screens/onboarding.dart';
import 'package:fooddelivery/presentation/screens/splash.dart';

class RouteGenerator {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String onboarding = '/onboarding';
  static const String authentication = '/authentication';
  static const String more = '/more';
  static const String food = "/food";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const Splash());
      case onboarding:
        return MaterialPageRoute(builder: (context) => const Onboarding());
      case home:
        return MaterialPageRoute(builder: (context) => const Home());
      case authentication:
        return MaterialPageRoute(builder: (context) => const Authentication());
      case more:
        return MaterialPageRoute(builder: (context) => const More());
      case food:
        return MaterialPageRoute(
            builder: (context) => FoodScreen(food: settings.arguments as Food));
      default:
        return MaterialPageRoute(builder: (context) => const Splash());
    }
  }
}
