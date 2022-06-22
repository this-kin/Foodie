import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/home_widget/payment_tile.dart';
import 'package:fooddelivery/presentation/widgets/primary_button.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        appBar: AppBar(
          backgroundColor: theme.backgroundColor,
          elevation: 0,
          title: Text(
            'My profile',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontFamily: baseFontUrl,
            ),
          ),
        ),
        backgroundColor: theme.backgroundColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 56.h),
              Text(
                'Information',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontFamily: baseFontUrl,
                ),
              ),
              SizedBox(height: 12.w),
              Center(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(30.sp),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        ConstanceData.user,
                      ),
                      SizedBox(width: 15.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            myName,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontFamily: baseFontUrl,
                            ),
                          ),
                          SizedBox(height: 10.w),
                          Text(
                            myEmail,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: greyTextColor,
                              fontFamily: baseFontUrl,
                            ),
                          ),
                          SizedBox(height: 10.w),
                          Text(
                            myAddress,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: greyTextColor,
                              fontFamily: baseFontUrl,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20.w),
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // edit profile
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 47.h),
              Text(
                'Payment Method',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontFamily: baseFontUrl,
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
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
              // const Spacer(),
              // PrimaryButton(
              //   text: "Update",
              //   onPressed: () {
              //     //
              //   },
              // ),
              // SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
