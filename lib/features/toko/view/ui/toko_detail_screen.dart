import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:diet_nyaman_app/features/toko/constants/toko_assets_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TokoDetailScreen extends StatefulWidget {
  const TokoDetailScreen({super.key});

  @override
  State<TokoDetailScreen> createState() => _TokoDetailScreenState();
}

class _TokoDetailScreenState extends State<TokoDetailScreen> {
  bool isRead = false;
  @override
  Widget build(BuildContext context) {
    final assetsConstant = TokoAssetsConstant();
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
                        "Toko Detail",
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
                  height: 25.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 300.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      assetsConstant.drummyProduk1,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Super Food - Ubi Jalar",
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: AppFonts.hankenGrotesk,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Icon(Icons.share)
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Rp 100.000",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: AppFonts.hankenGrotesk,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Deskripsi :",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: AppFonts.hankenGrotesk,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: isRead ? null : 200.h,
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur. Fermentum nunc amet pellentesque urna at accumsan. Erat odio odio aliquam augue consectetur facilisis. Laoreet vestibulum in amet luctus ultricies tristique nulla morbi. Maecenas suspendisse venenatis parturient nisi cras sodales mi. Pellentesque varius ut vivamus facilisis ultrices egestas nisl. Fermentum pharetra a libero in blandit vel. Nunc quis sed pellentesque ut viverra sed. Feugiat sollicitudin viverra tincidunt risus nec at lacus. Vel curabitur libero dignissim accumsan nulla vitae tellus iaculis fermentum. Neque praesent non ipsum accumsan. Ultrices arcu sit pellentesque leo leo vulputate. Id at nibh in sit quam turpis at malesuada. Magna non facilisi sed nisl sem hac in est. Eget non in sed elementum suspendisse. Ut ultrices id bibendum eget etiam purus sit. At aenean cursus maecenas nisl elementum rhoncus. Neque feugiat aliquet auctor non mauris aliquam eleifend. Malesuada at sed ut pharetra quis bibendum etiam. Tellus adipiscing consequat consectetur tellus ac vitae integer eu. Elementum in a sed mattis interdum pulvinar",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackText800,
                      fontFamily: AppFonts.hankenGrotesk,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: isRead
                        ? []
                        : [
                            const BoxShadow(
                              color: Colors.white,
                              spreadRadius: .5,
                              blurRadius: 3,
                              offset: Offset(0, -3), // changes position of shadow
                            ),
                          ],
                  ),
                  child: const Divider(
                    thickness: 1,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    isRead = !isRead;
                    setState(() {});
                  },
                  child: !isRead
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Selengkapnya"),
                            SizedBox(
                              width: 5.w,
                            ),
                            const Icon(Icons.keyboard_arrow_down_sharp)
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Sembunyikan"),
                            SizedBox(
                              width: 5.w,
                            ),
                            const Icon(Icons.keyboard_arrow_up_sharp)
                          ],
                        ),
                ),
                SizedBox(
                  height: 70.h,
                )
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: .5,
                blurRadius: 3,
                offset: const Offset(0, -1), // changes position of shadow
              ),
            ],
          ),
          height: 60.h,
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  assetsConstant.tokpedIcon,
                  height: 50.h,
                ),
              ),
              VerticalDivider(
                width: 0.h,
                thickness: 1,
                color: AppColors.blackText800.withOpacity(.2),
              ),
              Expanded(
                child: Image.asset(
                  assetsConstant.shopeeIcon,
                  height: 40.h,
                ),
              ),
              VerticalDivider(
                width: 0.h,
                thickness: 1,
                color: AppColors.blackText800.withOpacity(.2),
              ),
              Expanded(
                child: Image.asset(
                  assetsConstant.waIcon,
                  height: 35.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
