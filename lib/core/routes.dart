import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/screens/authentication.dart';
import 'package:fooddelivery/presentation/screens/cart.dart';
import 'package:fooddelivery/presentation/screens/checkout.dart';
import 'package:fooddelivery/presentation/screens/connection.dart';
import 'package:fooddelivery/presentation/screens/food_screen.dart';
import 'package:fooddelivery/presentation/screens/home.dart';
import 'package:fooddelivery/presentation/screens/home_screen.dart';
import 'package:fooddelivery/presentation/screens/more.dart';
import 'package:fooddelivery/presentation/screens/offers.dart';
import 'package:fooddelivery/presentation/screens/onboarding.dart';
import 'package:fooddelivery/presentation/screens/order.dart';
import 'package:fooddelivery/presentation/screens/payment.dart';
import 'package:fooddelivery/presentation/screens/policy.dart';
import 'package:fooddelivery/presentation/screens/security.dart';
import 'package:fooddelivery/presentation/screens/splash.dart';

class RouteGenerator {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String onboarding = '/onboarding';
  static const String authentication = '/authentication';
  static const String more = '/more';
  static const String food = "/food";
  static const String cart = "/cart";
  static const String checkout = "/checkout";
  static const String payment = "/payment";
  static const String connection = "/connection";
  static const String order = "/order";
  static const String homescreen = "/home_screen";
  static const String security = "/security";
  static const String policy = "/policy";
  static const String offers = "/offers";
  // static const String homescreen = "/home_screen";

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
      case cart:
        return MaterialPageRoute(builder: (context) => const Cart());
      case checkout:
        return MaterialPageRoute(builder: (context) => const Checkout());
      case payment:
        return MaterialPageRoute(builder: (context) => const Confirm());
      case connection:
        return MaterialPageRoute(builder: (context) => const Connection());
      case order:
        return MaterialPageRoute(builder: (context) => const Order());
      case homescreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case security:
        return MaterialPageRoute(builder: (context) => const Security());
      case offers:
        return MaterialPageRoute(builder: (context) => const Offers());
      case policy:
        return MaterialPageRoute(builder: (context) => const Policy());
      default:
        return MaterialPageRoute(builder: (context) => const Home());
    }
  }
}
