import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardTokoComponents extends StatelessWidget {
  const CardTokoComponents({super.key, required this.kategori, required this.title, required this.harga, required this.gambar});
  final String kategori;
  final String title;
  final String harga;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: .5,
            blurRadius: 3,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: 180.w,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 150.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    gambar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              kategori,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(.3),
                fontFamily: AppFonts.hankenGrotesk,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: AppFonts.hankenGrotesk,
              ),
            ),
            Text(
              harga,
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontFamily: AppFonts.hankenGrotesk,
              ),
            )
          ],
        ),
      ),
    );
  }
}
