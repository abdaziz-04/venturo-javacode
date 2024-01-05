import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:diet_nyaman_app/features/diet/constants/diet_assets_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DietCardComponents extends StatelessWidget {
  const DietCardComponents(
      {super.key, required this.title, required this.background, required this.img, required this.backgroundImg, this.isDisable = false});
  final String title;
  final Color background;
  final String img;
  final Color backgroundImg;
  final bool isDisable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 13.w),
      child: Center(
        child: Stack(
          alignment: Alignment.centerLeft,
          clipBehavior: Clip.none,
          children: [
            // ColorFiltered(
            // colorFilter: ColorFilter.mode(
            //   Colors.grey,
            //   isDisable ? BlendMode.saturation : BlendMode.dst,
            // ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: isDisable ? Colors.grey : background,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 150.h,
                    width: double.infinity,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 150.h,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 65.w),
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 29.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                            fontFamily: AppFonts.hankenGrotesk,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ),
            Positioned(
              left: -30,
              child: Container(
                height: 110.h,
                width: 110.w,
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.shade50),
              ),
            ),
            Positioned(
              left: -20,
              child: Container(
                width: 90.w,
                height: 90.h,
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h), // Border width
                decoration: BoxDecoration(color: isDisable ? Colors.grey : backgroundImg, shape: BoxShape.circle),
                child: Container(
                  foregroundDecoration: BoxDecoration(
                    color: Colors.grey,
                    backgroundBlendMode: isDisable ? BlendMode.saturation : BlendMode.dst,
                  ),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(48), // Image radius
                      child: Image.asset(
                        "assets/images/diet_lo.png",
                        fit: BoxFit.cover,
                        scale: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
