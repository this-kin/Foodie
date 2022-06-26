import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/primary_button.dart';
import 'package:fooddelivery/presentation/widgets/selectable_text.dart';

class FoodScreen extends StatelessWidget {
  final Food? food;

  const FoodScreen({
    Key? key,
    this.food,
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
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
        body: SafeArea(
          top: true,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const FavoriteButton()
                  ],
                ),
                SizedBox(height: 14.h),
                Center(
                  child: Container(
                    height: 280.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(food!.image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Wrap(
                    spacing: 12.w,
                    children: List.generate(
                      4,
                      (index) => Container(
                        height: 10.h,
                        width: 10.w,
                        decoration: BoxDecoration(
                          color:
                              index == 0 ? primaryColor : theme.backgroundColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: index == 0 ? primaryColor : blackColor,
                            width: 2.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 42.h),
                Center(
                  child: Text(
                    food!.name!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontFamily: baseFontUrl,
                      fontWeight: FontWeight.w900,
                      color: blackColor,
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Center(
                  child: Text(
                    food!.price!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontFamily: baseFontUrl,
                      fontWeight: FontWeight.w900,
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Text(
                  "Delivery info",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontFamily: baseFontUrl,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  food!.info!,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: baseFontUrl,
                    fontWeight: FontWeight.w500,
                    color: greyTextColor,
                  ),
                ),
                SizedBox(height: 40.h),
                Text(
                  "Return policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontFamily: baseFontUrl,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  food!.policy!,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: baseFontUrl,
                    fontWeight: FontWeight.w500,
                    color: greyTextColor,
                  ),
                ),
                SizedBox(height: 60.h),
                PrimaryButton(
                  text: "Add to Cart",
                  onPressed: () {
                    // go to checkout
                    Navigator.pushNamed(context, RouteGenerator.checkout);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
