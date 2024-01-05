import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnnouncementCardComponents extends StatelessWidget {
  const AnnouncementCardComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.pink.withOpacity(.1),
      ),
      child: Text(
        "Lorem ipsum dolor sit amet consectetur. Odio sed enim augue eget suscipit congue sagittis ultricies eu.",
        style: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.black300,
          fontFamily: AppFonts.hankenGrotesk,
        ),
      ),
    );
  }
}
