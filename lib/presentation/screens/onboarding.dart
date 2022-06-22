import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/core/routes.dart';
import 'package:fooddelivery/presentation/widgets/primary_button.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 76.h),
              Container(
                padding: EdgeInsets.all(7.w),
                decoration: BoxDecoration(
                  color: whiteColor,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  ConstanceData.appicon,
                  height: 45.h,
                  width: 45.w,
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                'Food for\nEveryone',
                style: CustomTheme.largeText(context).copyWith(
                  color: whiteColor,
                  fontSize: 60.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 75.h),
              Center(
                child: Image.asset(
                  ConstanceData.sally1,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 40.h),
              CustomButton(
                text: "Get Started",
                onPressed: () {
                  Navigator.pushNamed(context, RouteGenerator.authentication);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
