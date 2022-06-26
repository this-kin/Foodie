import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/field_widgets.dart/field_widget.dart';
import 'package:fooddelivery/presentation/widgets/primary_button.dart';
import 'package:fooddelivery/presentation/widgets/selectable_text.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  //
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: theme.backgroundColor,
          body: Container(
            color: theme.backgroundColor,
            //padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 400.h,
                      width: 414.w,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(30.w),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: borderColor,
                            blurRadius: 0,
                            spreadRadius: 0,
                            offset: const Offset(0, 0),
                          ),
                          BoxShadow(
                            color: borderColor,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 113.h),
                          Center(
                            child: Image.asset(
                              ConstanceData.appicon,
                              height: 150.h,
                              width: 150.w,
                            ),
                          ),
                          SizedBox(height: 50.h),
                          TabBar(
                            labelColor: blackColor,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: primaryColor,
                            unselectedLabelColor: blackColor,
                            labelStyle: TextStyle(
                              fontFamily: baseFontUrl,
                              fontSize: 18.sp,
                              color: blackColor,
                              fontWeight: FontWeight.w600,
                            ),
                            tabs: const <Tab>[
                              Tab(text: "Login"),
                              Tab(text: "Sign-up"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 64.h),
                          EmailField(
                            controller: _emailController,
                            hintText: "Dosamarvis@gmail.com",
                            labelText: "Email address",
                            focusNode: _emailFocusNode,
                          ),
                          SizedBox(height: 46.h),
                          PasswordField(
                            controller: _passwordController,
                            hintText: "* * * * * * * * ",
                            labelText: "Password",
                            focusNode: _passwordFocusNode,
                          ),
                          SizedBox(height: 34.h),
                          GestureText(
                            text: "Forgot passcode?",
                            textStyle: TextStyle(
                              color: primaryColor,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: baseFontUrl,
                            ),
                            onPressed: () {
                              // TODO: implement go to forgot password screen
                            },
                          ),
                          SizedBox(height: 70.h),
                          PrimaryButton(
                            text: "Login",
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    RouteGenerator.homescreen,
                                    (route) => false);
                              }
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
