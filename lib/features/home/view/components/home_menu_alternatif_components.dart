import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeMenuAlternatifComponents extends StatelessWidget {
  const HomeMenuAlternatifComponents({super.key, required this.icon, required this.title, required this.colorBegin, required this.colorEnd});

  final String icon;
  final String title;
  final Color colorBegin;
  final Color colorEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: 90.w,
      // height: 100.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 50.h,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.blackText800,
              fontFamily: AppFonts.hankenGrotesk,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
