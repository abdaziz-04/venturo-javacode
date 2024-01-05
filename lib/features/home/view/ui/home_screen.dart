import 'package:diet_nyaman_app/configs/routes/route.dart';
import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:diet_nyaman_app/constants/svg_constants.dart';
import 'package:diet_nyaman_app/features/announcement/view/components/announcement_card_components.dart';
import 'package:diet_nyaman_app/features/home/constants/home_svgs_constant.dart';
import 'package:diet_nyaman_app/features/home/view/components/home_menu_components.dart';
import 'package:diet_nyaman_app/utils/enums/main_menu_service_enum.dart';
import 'package:diet_nyaman_app/utils/functions/get_menu_service_func.dart';
import 'package:flutter/material.dart';
import 'package:diet_nyaman_app/features/home/constants/home_assets_constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final assetsConstant = HomeAssetsConstant();
  final svgGlobalConstant = SvgConstants();
  final svgConstant = HomeSvgsConstant();
  RxList<MainMenuServiceEnum> allServiceMenu = RxList(
    [
      MainMenuServiceEnum.chat,
      MainMenuServiceEnum.diet,
      MainMenuServiceEnum.olahraga,
      MainMenuServiceEnum.mindset,
      MainMenuServiceEnum.referensi,
      MainMenuServiceEnum.toko,
      MainMenuServiceEnum.tips,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackText800,
                        fontFamily: AppFonts.hankenGrotesk,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 7.5.w, vertical: 7.h),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff8941FF), Color(0xffFF6091)],
                                begin: FractionalOffset(0.0, 0.0),
                                end: FractionalOffset(1, 0.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp,
                              ),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Text(
                              "Member Aktif",
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                                fontFamily: AppFonts.hankenGrotesk,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(color: AppColors.grey2, shape: BoxShape.circle),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(20), // Image radius
                                child: Image.asset(
                                  'assets/images/no_image_profile.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                SizedBox(
                  height: 320.h,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              assetsConstant.homeBanner,
                              height: 220.h,
                              fit: BoxFit.cover,
                            ),
                            SvgPicture.asset(svgGlobalConstant.playButton),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 180.h,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 24.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: AppColors.pink,
                            ),
                            child: Column(
                              children: [
                                IntrinsicHeight(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Jenny Blackpink",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.white,
                                          fontFamily: AppFonts.hankenGrotesk,
                                        ),
                                      ),
                                      const VerticalDivider(
                                        thickness: 1,
                                        color: AppColors.white,
                                      ),
                                      Text(
                                        "37, Kota Malang",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.white,
                                          fontFamily: AppFonts.hankenGrotesk,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 25.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "10 Nov 2023",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.white,
                                          fontFamily: AppFonts.hankenGrotesk,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "10 Feb 2024 ",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.white,
                                            fontFamily: AppFonts.hankenGrotesk,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
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
                                      color: AppColors.green500,
                                      borderRadius: BorderRadius.circular(15.r),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: allServiceMenu.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: GetServiceMenuFunc.specifiedMainMenu(allServiceMenu[index]).onTap,
                    child: HomeMenuComponents(
                      colorBegin: GetServiceMenuFunc.specifiedMainMenu(allServiceMenu[index]).colorBegin.toColor(),
                      colorEnd: GetServiceMenuFunc.specifiedMainMenu(allServiceMenu[index]).colorEnd.toColor(),
                      title: GetServiceMenuFunc.specifiedMainMenu(allServiceMenu[index]).title,
                      icon: GetServiceMenuFunc.specifiedMainMenu(allServiceMenu[index]).img,
                    ),
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: .9,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 12,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Pengumuman",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black300,
                          fontFamily: AppFonts.hankenGrotesk,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(Routes.announcementRoute),
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
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
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 8,
                  ),
                  itemCount: 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
