import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:diet_nyaman_app/features/home/view/components/home_menu_alternatif_components.dart';
import 'package:diet_nyaman_app/utils/enums/main_menu_service_enum.dart';
import 'package:diet_nyaman_app/utils/functions/get_menu_service_func.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeAlternatifScreen extends StatefulWidget {
  const HomeAlternatifScreen({super.key});

  @override
  State<HomeAlternatifScreen> createState() => _HomeAlternatifScreenState();
}

class _HomeAlternatifScreenState extends State<HomeAlternatifScreen> {
  RxList<MainMenuServiceEnum> allServiceMenu = RxList(
    [
      MainMenuServiceEnum.diet,
      MainMenuServiceEnum.olahraga,
      MainMenuServiceEnum.mindset,
      MainMenuServiceEnum.tips,
      MainMenuServiceEnum.referensi,
      MainMenuServiceEnum.download,
      MainMenuServiceEnum.video,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: .5,
                  blurRadius: 3,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("assets/images/bg_top.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.r),
                bottomRight: Radius.circular(50.r),
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(color: AppColors.white, shape: BoxShape.circle),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(30), // Image radius
                          child: Image.asset(
                            'assets/images/produk1.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Yokevin Febrian Meyer",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                              fontFamily: AppFonts.hankenGrotesk,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Kota Malang, 21 Tahun",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white,
                              fontFamily: AppFonts.hankenGrotesk,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.w,
                                  vertical: 5.h,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                                child: Text(
                                  "Member Aktif",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white,
                                    fontFamily: AppFonts.hankenGrotesk,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Valid Until : 31 Jan 2023",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white,
                                  fontFamily: AppFonts.hankenGrotesk,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: allServiceMenu.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: GetServiceMenuFunc.specifiedMainMenu(allServiceMenu[index]).onTap,
              child: HomeMenuAlternatifComponents(
                colorBegin: GetServiceMenuFunc.specifiedMainMenu(allServiceMenu[index]).colorBegin.toColor(),
                colorEnd: GetServiceMenuFunc.specifiedMainMenu(allServiceMenu[index]).colorEnd.toColor(),
                title: GetServiceMenuFunc.specifiedMainMenu(allServiceMenu[index]).title,
                icon: GetServiceMenuFunc.specifiedMainMenu(allServiceMenu[index]).img,
              ),
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: .9,
              crossAxisSpacing: 2,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.assignment,
                      color: AppColors.secondary,
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Expanded(
                      child: Text(
                        "Pengumuman",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.secondary,
                          fontFamily: AppFonts.hankenGrotesk,
                        ),
                      ),
                    ),
                    Text(
                      "Lihat semua",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondary,
                        fontFamily: AppFonts.hankenGrotesk,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Cuti Bersama Natal 2023",
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.secondary,
                                  fontFamily: AppFonts.hankenGrotesk,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "22 Des 2023",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: AppFonts.hankenGrotesk,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Sehubungan dengan perubahan atas SKB dengan berat menginfokan hari libur nasional untuk kita semua, oleh karena itu kita akan libur selama beberapa dekade ...",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            fontFamily: AppFonts.hankenGrotesk,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Cuti Hari Nasional Indonesia 2023",
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontFamily: AppFonts.hankenGrotesk,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "22 Des 2023",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: AppFonts.hankenGrotesk,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Sehubungan dengan perubahan atas SKB dengan berat menginfokan hari libur nasional untuk kita semua, oleh karena itu kita akan libur selama beberapa dekade ...",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            fontFamily: AppFonts.hankenGrotesk,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Cuti Idul Fitri 2023",
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontFamily: AppFonts.hankenGrotesk,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "22 Des 2023",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: AppFonts.hankenGrotesk,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Sehubungan dengan perubahan atas SKB dengan berat menginfokan hari libur nasional untuk kita semua, oleh karena itu kita akan libur selama beberapa dekade ...",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            fontFamily: AppFonts.hankenGrotesk,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
