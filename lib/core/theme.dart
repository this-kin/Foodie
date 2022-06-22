import 'package:fooddelivery/core/exports.dart';

class CustomTheme {
  CustomTheme();

  static ThemeData getTheme(BuildContext context) {
    if (true) {
      return lightTheme(context);
    }
  }

  static TextStyle largeText(BuildContext context) {
    return Theme.of(context).textTheme.headline5!.copyWith(
          fontSize: 25.0.sp,
          fontWeight: FontWeight.w900,
          color: Colors.black,
          fontFamily: baseFontUrl,
        );
  }

  static TextStyle semiLargeText(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 20.0.sp,
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontFamily: baseFontUrl,
        );
  }

  static TextStyle mediumText(BuildContext context) {
    return Theme.of(context).textTheme.headline6!.copyWith(
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontFamily: baseFontUrl,
        );
  }

  static TextStyle normalText(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 15.0.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontFamily: baseFontUrl,
        );
  }

  static TextStyle smallText(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 12.0.sp,
          fontWeight: FontWeight.w300,
          color: Colors.black,
          fontFamily: baseFontUrl,
        );
  }

  static TextStyle smallestText(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 10.0.sp,
          fontWeight: FontWeight.w300,
          color: Colors.black,
          fontFamily: baseFontUrl,
        );
  }

  static ThemeData lightTheme(context) {
    return ThemeData(
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      accentColor: greyColor,
      scaffoldBackgroundColor: backgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      platform: TargetPlatform.iOS,
      typography: Typography(),
      canvasColor: backgroundColor,
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 20.sp,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      }),
    );
  }
}
