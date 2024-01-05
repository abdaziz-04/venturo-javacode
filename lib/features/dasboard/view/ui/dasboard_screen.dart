import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/constants/svg_constants.dart';
import 'package:diet_nyaman_app/features/chat/view/ui/chat_screen.dart';
import 'package:diet_nyaman_app/features/dasboard/controllers/dasboard_controller.dart';
import 'package:diet_nyaman_app/features/home/view/ui/home_alternatif_screen.dart';
import 'package:diet_nyaman_app/features/profile/view/ui/profile_screen.dart';
import 'package:diet_nyaman_app/features/toko/view/ui/toko_screen.dart';
import 'package:flutter/material.dart';
import 'package:diet_nyaman_app/features/dasboard/constants/dasboard_assets_constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DasboardScreen extends StatelessWidget {
  DasboardScreen({super.key});

  final assetsConstant = DasboardAssetsConstant();
  final svgConstant = SvgConstants();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: DasboardController.to.tabIndex.value,
          children: [
            const HomeAlternatifScreen(),
            TokoScreen(),
            ChatScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: Obx(
          () => BottomNavigationBar(
              iconSize: 20.r,
              type: BottomNavigationBarType.fixed,
              onTap: DasboardController.to.changeTabIndex,
              currentIndex: DasboardController.to.tabIndex.value,
              backgroundColor: Colors.white,
              selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13.sp,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 13.sp,
              ),
              selectedItemColor: AppColors.primary,
              unselectedItemColor: Colors.grey,
              items: [
                /// icon home
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      bottom: 3.h,
                    ),
                    child: SvgPicture.asset(
                      svgConstant.homeSvg,
                      height: 25.h,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      bottom: 3.h,
                    ),
                    child: SvgPicture.asset(
                      svgConstant.homeSvg,
                      color: AppColors.primary,
                      height: 25.h,
                    ),
                  ),
                  label: 'Beranda',
                ),

                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      bottom: 3.h,
                    ),
                    child: SvgPicture.asset(
                      svgConstant.tokoSvg,
                      height: 25.h,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      bottom: 3.h,
                    ),
                    child: SvgPicture.asset(
                      svgConstant.tokoSvg,
                      color: AppColors.primary,
                      height: 25.h,
                    ),
                  ),
                  label: 'Toko',
                ),

                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      bottom: 3.h,
                    ),
                    child: SvgPicture.asset(
                      svgConstant.chatSvg,
                      height: 25.h,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      bottom: 3.h,
                    ),
                    child: SvgPicture.asset(
                      svgConstant.chatSvg,
                      color: AppColors.primary,
                      height: 25.h,
                    ),
                  ),
                  label: 'Chat',
                ),

                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      bottom: 3.h,
                    ),
                    child: SvgPicture.asset(
                      svgConstant.profilSvg,
                      height: 25.h,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      bottom: 3.h,
                    ),
                    child: SvgPicture.asset(
                      svgConstant.profilSvg,
                      color: AppColors.primary,
                      height: 25.h,
                    ),
                  ),
                  label: 'Profil',
                ),
              ]),
        ),
      ),
    );
  }
}
