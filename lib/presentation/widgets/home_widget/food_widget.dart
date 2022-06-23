import 'package:fooddelivery/core/exports.dart';

class FoodWidget extends StatelessWidget {
  final String? image;
  final String? name;
  final String? price;
  final VoidCallback? onPressed;

  const FoodWidget({
    Key? key,
    this.image,
    this.name,
    this.price,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(30.w),
      child: SizedBox(
        height: 300.h,
        width: 250.w,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 250.h,
                width: 220.w,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(30.w),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Text(
                      name!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontFamily: baseFontUrl,
                        fontWeight: FontWeight.w800,
                        color: blackColor,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      price!,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: baseFontUrl,
                        fontWeight: FontWeight.w800,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0.h,
              left: 0,
              right: 0,
              child: Image.asset(
                image!,
                height: 200.h,
                width: 200.w,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SecondFoodWidget extends StatelessWidget {
  final String? image;
  final String? name;
  final String? price;
  final VoidCallback? onPressed;

  const SecondFoodWidget({
    Key? key,
    this.image,
    this.onPressed,
    this.name,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(30.w),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 300.h,
              width: 160.w,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(30.w),
              ),
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    name!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: baseFontUrl,
                      fontWeight: FontWeight.w800,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    price!,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: baseFontUrl,
                      fontWeight: FontWeight.w800,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
          Positioned(
            top: -20.h,
            left: 0,
            right: 0,
            child: Image.asset(
              image!,
              height: 165.h,
              width: 165.w,
            ),
          )
        ],
      ),
    );
  }
}
