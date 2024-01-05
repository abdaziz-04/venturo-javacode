import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailAnnouncementScreen extends StatelessWidget {
  const DetailAnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
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
                    height: 35.h,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Odio sed enim augue eget suscipit congue sagittis ultricies eu.",
                    style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackText800,
                      fontFamily: AppFonts.hankenGrotesk,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Today, 15 Desember 2023 08:31",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xff5127DD),
                      fontFamily: AppFonts.hankenGrotesk,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur. Velit maecenas felis facilisis accumsan bibendum est. Rutrum elementum venenatis cursus consectetur. Sed tellus dictumst tellus donec sollicitudin lectus. Cursus luctus et tristique nisi amet at quam urna. Leo amet pellentesque accumsan diam. Nisi tellus amet suspendisse sem egestas pretium viverra diam pulvinar. Consequat nisi pulvinar sed et integer dictum nulla. Pharetra pretium id quam metus. Feugiat id massa habitant ut eget in. Etiam nascetur dignissim ullamcorper purus. Arcu purus tellus eu volutpat tincidunt. Non posuere duis et morbi ut amet tellus erat. Diam nulla duis ornare libero. Aenean pellentesque nisl iaculis adipiscing. Nunc fermentum faucibus quam sem lacus. Eget arcu ac augue arcu et amet.',
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColors.blackText800,
                      fontFamily: AppFonts.hankenGrotesk,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 20.h,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
                decoration: BoxDecoration(color: const Color(0xff48CA3D), borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  children: [
                    const Icon(Icons.check, color: AppColors.white, size: 30),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Sudah Dibaca",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                        fontFamily: AppFonts.hankenGrotesk,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
