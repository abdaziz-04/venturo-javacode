import 'package:diet_nyaman_app/configs/routes/route.dart';
import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:diet_nyaman_app/features/announcement/view/components/announcement_card_components.dart';
import 'package:flutter/material.dart';
import 'package:diet_nyaman_app/features/announcement/constants/announcement_assets_constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AnnouncementScreen extends StatelessWidget {
  AnnouncementScreen({super.key});

  final assetsConstant = AnnouncementAssetsConstant();
  List<Map<String, dynamic>> dummyArray = [
    {
      "Hari": "Today",
      "Json": [{}, {}]
    },
    {
      "Hari": "Yesterday",
      "Json": [{}, {}, {}, {}]
    },
    {
      "Hari": "13 Desember",
      "Json": [{}]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Column(
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
                      "Pengumuman",
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
                height: 26.w,
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => Column(
                  children: [
                    Center(
                      child: Text(
                        dummyArray[index]["Hari"] ?? "",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackText800,
                          fontFamily: AppFonts.hankenGrotesk,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, i) {
                        return GestureDetector(
                          onTap: () => Get.toNamed(Routes.detailAnnouncementRoute),
                          child: const AnnouncementCardComponents(),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        height: 8.h,
                      ),
                      itemCount: dummyArray[index]["Json"].length,
                    )
                  ],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 8.h,
                ),
                itemCount: dummyArray.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
