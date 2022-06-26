import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/checkout_widgets/delivery_tile.dart';
import 'package:fooddelivery/presentation/widgets/primary_button.dart';
import 'package:fooddelivery/presentation/widgets/selectable_text.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int _selected = 0;

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
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 96.w),
                    Text(
                      'Checkout',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontFamily: baseFontUrl,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 42.h),
                Text(
                  'Delivery',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: baseFontUrl,
                  ),
                ),
                SizedBox(height: 45.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Address details",
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontFamily: baseFontUrl,
                      ),
                    ),
                    GestureText(
                      text: "Change",
                      textStyle: TextStyle(
                        fontSize: 17.sp,
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: baseFontUrl,
                      ),
                      onPressed: () {
                        // change address information
                      },
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Center(
                  child: Container(
                    height: 156.h,
                    width: 315.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 25.h),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(30.sp),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          myName,
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: baseFontUrl,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Center(
                          child: Container(
                            height: 1.h,
                            width: 232.w,
                            color: greyShaded,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          myAddress,
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: baseFontUrl,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Center(
                          child: Container(
                            height: 1.h,
                            width: 232.w,
                            color: greyShaded,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "+234 9068732878",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: baseFontUrl,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 42.h),
                Text(
                  "Delivery method.",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: baseFontUrl,
                  ),
                ),
                SizedBox(height: 20.h),
                Center(
                  child: Container(
                    width: 325.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(30.sp),
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: deliveries.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        final snapshot = deliveries[index];
                        return DeliveryTile(
                          payment: snapshot,
                          selected: index == _selected,
                          onPressed: () {
                            setState(() {
                              _selected = index;
                            });
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Center(
                            child: Container(
                              height: 1.h,
                              width: 232.w,
                              color: greyShaded,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: baseFontUrl,
                      ),
                    ),
                    Text(
                      "N23,000",
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontFamily: baseFontUrl,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50.h),
                PrimaryButton(
                  text: "Proceed to payment",
                  onPressed: () {
                    // go to payment
                    Navigator.pushNamed(context, RouteGenerator.payment);
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
