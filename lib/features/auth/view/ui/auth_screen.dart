import 'package:diet_nyaman_app/configs/routes/route.dart';
import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:diet_nyaman_app/constants/assets_constants.dart';
import 'package:diet_nyaman_app/features/auth/controllers/auth_controller.dart';
import 'package:diet_nyaman_app/shared/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:diet_nyaman_app/features/auth/constants/auth_assets_constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  final assetsConstant = AuthAssetsConstant();
  final assetsGlobalConstant = AssetsConstants();
  @override
  Widget build(BuildContext context) {
    var ctr = AuthController.to;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Center(child: Image.asset(assetsGlobalConstant.logo)),
            SizedBox(
              height: 60.h,
            ),
            Text(
              "Masuk Ke akun anda",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(.5),
                fontFamily: AppFonts.hankenGrotesk,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const AuthTextField(
              hint: "Username atau email",
            ),
            SizedBox(
              height: 20.h,
            ),
            Obx(
              () => AuthTextField(
                hint: "Password",
                obscureText: ctr.passwordVisible.value,
                suffixIcon: IconButton(
                  icon: Icon(
                    ctr.passwordVisible.value ? Icons.visibility : Icons.visibility_off,
                    size: 20,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    ctr.passwordVisible.value = !ctr.passwordVisible.value;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Lupa Password ?",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondary,
                  fontFamily: AppFonts.hankenGrotesk,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondary,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Get.toNamed(Routes.dasboardRoute);
              },
              child: Text(
                "Masuk",
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
