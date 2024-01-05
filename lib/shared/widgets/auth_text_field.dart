import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
      {super.key,
      required this.hint,
      this.prefixIcon,
      this.readOnly,
      this.maxLines,
      this.onChanged,
      this.controller,
      this.suffixIcon,
      this.obscureText = false,
      this.keyboardType});
  final bool obscureText;
  final String hint;
  final Widget? prefixIcon;
  final bool? readOnly;
  final int? maxLines;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      onChanged: onChanged,
      maxLines: maxLines ?? 1,
      readOnly: readOnly ?? false,
      keyboardType: keyboardType,
      style: primaryTextStyle(color: Colors.white),
      decoration: InputDecoration(
        // labelStyle: TextStyle(
        //   color: Colors.white,
        //   fontSize: 15.sp,
        // ),
        alignLabelWithHint: true,
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.black300, width: 1.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.h,
          horizontal: 10.w,
        ),
        hintStyle: TextStyle(fontSize: 15.sp),
        fillColor: AppColors.grey1.withOpacity(.05),
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        // hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.black300,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }
}
