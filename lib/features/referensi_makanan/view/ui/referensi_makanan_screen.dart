import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:diet_nyaman_app/features/diet/constants/diet_assets_constant.dart';
import 'package:diet_nyaman_app/features/diet/view/components/diet_card_components.dart';
import 'package:flutter/material.dart';
import 'package:diet_nyaman_app/features/referensi_makanan/constants/referensi_makanan_assets_constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReferensiMakananScreen extends StatelessWidget {
  ReferensiMakananScreen({super.key});

  final assetsConstant = DietAssetsConstant();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: Text(
                        "Referensi Makanan",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackText800,
                          fontFamily: AppFonts.hankenGrotesk,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: DietCardComponents(
                    title: "Olahan Ikan",
                    background: const Color(0xffFF6091),
                    img: assetsConstant.dietAssets,
                    backgroundImg: const Color(0xffFF806C),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                DietCardComponents(
                  title: "Olahan Daging",
                  background: const Color(0xffFF6091),
                  img: assetsConstant.dietAssets,
                  backgroundImg: const Color(0xffFF806C),
                  isDisable: true,
                ),
                SizedBox(
                  height: 32.h,
                ),
                DietCardComponents(
                  title: "Olahan Tempe",
                  background: const Color(0xffFF6091),
                  img: assetsConstant.dietAssets,
                  backgroundImg: const Color(0xffFF806C),
                  isDisable: true,
                ),
                SizedBox(
                  height: 32.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: DietCardComponents(
                    title: "Lain-Lain",
                    background: const Color(0xff64DC5A),
                    img: assetsConstant.iftarAssets,
                    backgroundImg: const Color(0xff49E5B6),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
