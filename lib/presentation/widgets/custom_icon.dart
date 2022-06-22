import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelivery/core/exports.dart';

class CustomIcon extends StatelessWidget {
  final String? icon;
  final VoidCallback? onPressed;

  const CustomIcon({
    Key? key,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(50.sp),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            icon!,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
