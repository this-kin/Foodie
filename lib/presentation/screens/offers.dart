import 'package:fooddelivery/core/exports.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

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
                  SizedBox(width: 50.w),
                  Text(
                    "Offers and Promos",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontFamily: baseFontUrl,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 300.h),
              Text(
                "ohh snap!  No offers yet",
                style: TextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontFamily: baseFontUrl,
                ),
              ),
              SizedBox(height: 17.h),
              Text(
                "Bella dose’t have any offers \nyet please check again.",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w800,
                  color: greyTextColor,
                  fontFamily: baseFontUrl,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
