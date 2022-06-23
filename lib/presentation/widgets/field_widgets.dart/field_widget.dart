import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/border_widget.dart';

class EmailField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final FocusNode? focusNode;

  const EmailField({
    Key? key,
    this.controller,
    this.focusNode,
    this.labelText,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorHeight: 15.5.h,
      focusNode: focusNode,
      cursorColor: primaryColor,
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        fontFamily: baseFontUrl,
        fontSize: 15.sp,
        color: blackColor,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: baseFontUrl,
          fontSize: 18.sp,
          color: blackColor,
          fontWeight: FontWeight.w600,
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          fontFamily: baseFontUrl,
          fontSize: 15.sp,
          color: greyColor,
          fontWeight: FontWeight.w600,
        ),
        errorStyle: TextStyle(
          fontFamily: baseFontUrl,
          fontSize: 12.sp,
          color: primaryColor,
          fontWeight: FontWeight.w600,
        ),
        enabledBorder: enabledBorder,
        focusedBorder: focusBorder,
        border: enabledBorder,
        errorBorder: errorBorder,
      ),
      validator: (dynamic v) {
        if (emailRegex.hasMatch(v)) {
          return null;
        } else if (v.isEmpty) {
          return "Email is required";
        }
        return "Provide a valid email";
      },
    );
  }
}

class PasswordField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final FocusNode? focusNode;

  const PasswordField({
    Key? key,
    this.controller,
    this.focusNode,
    this.labelText,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorHeight: 15.5.h,
      obscureText: true,
      focusNode: focusNode,
      cursorColor: primaryColor,
      controller: controller,
      style: TextStyle(
        fontFamily: baseFontUrl,
        fontSize: 15.sp,
        color: blackColor,
        fontWeight: FontWeight.w600,
      ),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: baseFontUrl,
          fontSize: 18.sp,
          color: blackColor,
          fontWeight: FontWeight.w600,
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          fontFamily: baseFontUrl,
          fontSize: 15.sp,
          color: greyColor,
          fontWeight: FontWeight.w600,
        ),
        errorStyle: TextStyle(
          fontFamily: baseFontUrl,
          fontSize: 12.sp,
          color: primaryColor,
          fontWeight: FontWeight.w600,
        ),
        enabledBorder: enabledBorder,
        focusedBorder: focusBorder,
        border: enabledBorder,
        errorBorder: errorBorder,
      ),
      validator: (dynamic v) {
        if (passwordRegex.hasMatch(v)) {
          return null;
        } else if (v.isEmpty) {
          return "Password is required";
        }
        return "Password must contain atleast one number, one special character and one uppercase letter";
      },
    );
  }
}
