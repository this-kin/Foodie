import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/custom_icon.dart';
import 'package:fooddelivery/presentation/widgets/home_widget/product_view.dart';
import 'package:fooddelivery/presentation/widgets/selectable_text.dart';

class Dashboard extends StatelessWidget {
  final Function? onPressed;

  const Dashboard({
    Key? key,
    this.onPressed,
  }) : super(key: key);

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
        length: 4,
        child: Scaffold(
          backgroundColor: theme.backgroundColor,
          body: SafeArea(
            top: true,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIcon(
                        icon: ConstanceData.menu,
                        onPressed: onPressed!.call(),
                      ),
                      CustomIcon(
                        icon: ConstanceData.cart,
                        onPressed: () {
                          // open cart
                          Navigator.pushNamed(context, RouteGenerator.cart);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 43.h),
                  Text(
                    "Delicious\nfood for you",
                    style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w900,
                      fontFamily: baseFontUrl,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(height: 28.h),
                  Center(
                    child: SizedBox(
                      height: 60.h,
                      width: 314.w,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: greyShaded,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.sp),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: SvgPicture.asset(
                            ConstanceData.search,
                            fit: BoxFit.scaleDown,
                          ),
                          hintText: "Search",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 46.h),
                  TabBar(
                    labelColor: primaryColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: primaryColor,
                    unselectedLabelColor: greyColor,
                    labelStyle: TextStyle(
                      fontFamily: baseFontUrl,
                      fontSize: 18.sp,
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                    tabs: const [
                      Tab(text: "Foods"),
                      Tab(text: "Drinks"),
                      Tab(text: "Snacks"),
                      Tab(text: "Sauce"),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      GestureText(
                        text: "see more",
                        textStyle: TextStyle(
                          fontSize: 17.sp,
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: baseFontUrl,
                        ),
                        onPressed: () {
                          // open see more
                          Navigator.pushNamed(context, RouteGenerator.more);
                        },
                      )
                    ],
                  ),
                  SizedBox(height: 5.h),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        ProductView(),
                        ProductView(),
                        ProductView(),
                        ProductView(),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
