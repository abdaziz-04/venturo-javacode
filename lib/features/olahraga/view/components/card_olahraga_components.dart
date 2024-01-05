import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:diet_nyaman_app/constants/svg_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardOlahragaComponents extends StatelessWidget {
  const CardOlahragaComponents({super.key, required this.thumbnail, required this.title, this.isDone = true});
  final String thumbnail;
  final String title;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    final svgGlobalConstant = SvgConstants();
    return SizedBox(
      height: 75.h,
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: 75.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        thumbnail,
                        height: 75.h,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: AppColors.blackText800.withOpacity(.2),
                        height: 75.h,
                      ),
                      SvgPicture.asset(
                        svgGlobalConstant.playButton,
                        width: 25.w,
                        height: 25.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20.h,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackText800,
                        fontFamily: AppFonts.hankenGrotesk,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      height: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff5127DD),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 25.h,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: isDone ? const Color(0xff5127DD) : Colors.grey,
                shape: BoxShape.circle,
              ),
              child: GestureDetector(
                onTap: null,
                child: SvgPicture.asset(svgGlobalConstant.checkButton, color: AppColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
