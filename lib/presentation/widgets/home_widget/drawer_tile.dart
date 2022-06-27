import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelivery/core/exports.dart';

class DrawerTile extends StatelessWidget {
  final String? title;
  final String? icon;
  final String? page;

  const DrawerTile({
    Key? key,
    this.icon,
    this.page,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, page!);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 27.h),
          child: Row(
            children: [
              SvgPicture.asset(
                icon!,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(width: 10.w),
              Text(
                title!,
                style: TextStyle(
                  fontFamily: baseFontUrl,
                  fontWeight: FontWeight.w700,
                  fontSize: 17.sp,
                  color: whiteColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
