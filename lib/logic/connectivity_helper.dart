import 'package:connectivity/connectivity.dart';
import 'package:fooddelivery/core/exports.dart';

class ConnectivityHelper {
  final Connectivity connectivity;

  const ConnectivityHelper(this.connectivity);

  // checks for internet connection and navigates to respective routes
  Future<void> initialize(context) async {
    connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        Navigator.pushNamedAndRemoveUntil(
            context, RouteGenerator.home, (route) => false);
      } else {
        Navigator.pushNamedAndRemoveUntil(
            context, RouteGenerator.connection, (route) => false);
      }
    });
  }
}
