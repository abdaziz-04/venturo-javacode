import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeMenuComponents extends StatelessWidget {
  const HomeMenuComponents({super.key, required this.icon, required this.title, required this.colorBegin, required this.colorEnd});

  final String icon;
  final String title;
  final Color colorBegin;
  final Color colorEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 100.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorBegin, colorEnd],
          begin: const FractionalOffset(0.0, 1.0),
          end: const FractionalOffset(0.5, 0.0),
          stops: const [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          SizedBox(
            height: 5.h,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              fontFamily: AppFonts.hankenGrotesk,
            ),
          )
        ],
      ),
    );
  }
}
