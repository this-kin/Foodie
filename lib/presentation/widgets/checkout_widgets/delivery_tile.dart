import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';

class DeliveryTile extends StatefulWidget {
  final DeliveryM? payment;
  final VoidCallback? onPressed;
  final bool? selected;
  const DeliveryTile({
    Key? key,
    this.payment,
    this.onPressed,
    this.selected,
  }) : super(key: key);

  @override
  State<DeliveryTile> createState() => _DeliveryTileState();
}

class _DeliveryTileState extends State<DeliveryTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: widget.onPressed,
        borderRadius: BorderRadius.circular(10.sp),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 15.h),
          child: Row(
            children: [
              AnimatedContainer(
                height: 15.h,
                width: 15.w,
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: widget.selected! ? primaryColor : backgroundColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: widget.selected! ? primaryColor : greyShaded,
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Text(
                widget.payment!.type!,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 17.sp,
                  fontFamily: baseFontUrl,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
