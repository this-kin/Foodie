import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/checkout_widgets/delivery_tile.dart';
import 'package:fooddelivery/presentation/widgets/home_widget/payment_tile.dart';
import 'package:fooddelivery/presentation/widgets/primary_button.dart';

class Confirm extends StatefulWidget {
  const Confirm({Key? key}) : super(key: key);

  @override
  State<Confirm> createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  int _dev = 0;
  int _payment = 0;

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
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SafeArea(
            top: true,
            child: SingleChildScrollView(
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
                    'Payment',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontFamily: baseFontUrl,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 25.h),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(30.sp),
                      ),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: payments.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, index) {
                          final snapshot = payments[index];
                          return PaymentTile(
                            payment: snapshot,
                            selected: index == _payment,
                            onPressed: () {
                              setState(() {
                                _payment = index;
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
                  SizedBox(height: 19.h),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 25.h),
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
                            selected: index == _dev,
                            onPressed: () {
                              setState(() {
                                _dev = index;
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
                    text: "Checkout",
                    onPressed: () {
                      // go home
                      Navigator.pushNamedAndRemoveUntil(
                          context, RouteGenerator.home, (route) => false);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
