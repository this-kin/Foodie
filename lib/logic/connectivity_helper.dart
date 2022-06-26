import 'package:connectivity/connectivity.dart';
import 'package:fooddelivery/core/exports.dart';

class ConnectivityHelper {
  final Connectivity? connectivity;

  ConnectivityHelper(this.connectivity);

  // checks for internet connection and navigates to respective routes
  Future<void> initialize(context) async {
    connectivity!.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile) {
        //  Navigator.pop(context);
      } else {
        // Navigator.pushNamedAndRemoveUntil(
        //     context, RouteGenerator.connection, (route) => false);
      }
    });
  }
}
