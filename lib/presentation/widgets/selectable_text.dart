import 'package:fooddelivery/core/exports.dart';

class GestureText extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;

  const GestureText({
    Key? key,
    this.text,
    this.onPressed,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: textStyle,
        primary: textStyle!.color,
      ),
      onPressed: onPressed,
      child: Text(text!),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            setState(() {
              _isFavorite = !_isFavorite;
            });
          },
          borderRadius: BorderRadius.circular(50.sp),
          child: _isFavorite
              ? Icon(
                  Icons.favorite,
                  color: primaryColor,
                  size: 35.sp,
                )
              : Icon(
                  Icons.favorite_outline_rounded,
                  color: blackColor,
                  size: 35.sp,
                ),
        ),
      ),
    );
  }
}
