import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';

class PaymentTile extends StatefulWidget {
  final Payment? payment;
  final VoidCallback? onPressed;
  final bool? selected;
  const PaymentTile({
    Key? key,
    this.payment,
    this.onPressed,
    this.selected,
  }) : super(key: key);

  @override
  State<PaymentTile> createState() => _PaymentTileState();
}

class _PaymentTileState extends State<PaymentTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: widget.onPressed,
        borderRadius: BorderRadius.circular(10.sp),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
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
              SizedBox(width: 19.w),
              Container(
                padding: EdgeInsets.all(13.w),
                decoration: BoxDecoration(
                  color: widget.payment!.color,
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: SvgPicture.asset(
                  widget.payment!.image!,
                  height: 22.h,
                  width: 22.w,
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                widget.payment!.name!,
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
