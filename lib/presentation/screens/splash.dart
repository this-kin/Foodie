import 'package:connectivity/connectivity.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/logic/connectivity_helper.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      Future.delayed(const Duration(seconds: 5), () {
        Navigator.pushNamedAndRemoveUntil(
            context, RouteGenerator.onboarding, (route) => false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Image.asset(
          ConstanceData.splash,
          height: height,
          width: width,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    final ConnectivityHelper connectivityHelper =
        ConnectivityHelper(Connectivity());
    connectivityHelper.initialize(context);
  }
}
