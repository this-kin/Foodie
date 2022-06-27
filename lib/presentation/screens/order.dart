import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/primary_button.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        top: true,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20.sp,
                    ),
                    onPressed: () {
                      // go back
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 110.w),
                  Text(
                    "Orders",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontFamily: baseFontUrl,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 190.h),
              SvgPicture.asset(
                ConstanceData.order,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(height: 38.h),
              Text(
                "No orders yet",
                style: TextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontFamily: baseFontUrl,
                ),
              ),
              SizedBox(height: 17.h),
              Text(
                "Hit the orange button down\nbelow to Create an order",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w800,
                  color: greyTextColor,
                  fontFamily: baseFontUrl,
                ),
              ),
              SizedBox(height: 227.h),
              PrimaryButton(
                text: "Start Ordering",
                onPressed: () {
                  //
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
