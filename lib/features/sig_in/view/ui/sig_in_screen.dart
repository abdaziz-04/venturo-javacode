import 'dart:io';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../configs/routes/route.dart';
import '../../../../constants/cores/assets/image_constants.dart';
import '../../../../shared/styles/elevated_button_style.dart';
import '../../../../shared/styles/google_text_style.dart';
import '../../constants/sig_in_assets_constant.dart';
import '../../controllers/sig_in_controller.dart';
import '../components/form_signin_component.dart';

class SigIScreen extends StatelessWidget {
  SigIScreen({Key? key}) : super(key: key);
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  final assetsConstant = SigInAssetsConstant();
  final SigInController sc = Get.put(SigInController());
  @override
  Widget build(BuildContext context) {
    /// Google analytics untuk tracking user di setiap halaman
    if (Platform.isAndroid) {
      /// Tracking bawah dia masuk screen sign in di device android
      analytics.setCurrentScreen(
        screenName: 'Sign In Screen',
        screenClassOverride: 'Android',
      );
    } else if (Platform.isIOS) {
      /// Tracking bawah dia masuk screen sign in di device ios
      analytics.setCurrentScreen(
        screenName: 'Sign In Screen',
        screenClassOverride: 'IOS',
      );
    } else if (Platform.isMacOS) {
      /// Tracking bawah dia masuk screen sign in di device macos
      analytics.setCurrentScreen(
        screenName: 'Sign In Screen',
        screenClassOverride: 'MacOS',
      );
    }
    if (kIsWeb) {
      /// Tracking bawah dia masuk screen sign in di device web
      analytics.setCurrentScreen(
        screenName: 'Sign In Screen',
        screenClassOverride: 'Web',
      );
    }
    return Scaffold(
      appBar: null,
      extendBody: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 121.h),
              GestureDetector(
                onDoubleTap: () => SigInController.to.flavorSeting(),
                child: Image.asset(
                  ImageConstants.logo,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 121.h),
              Text(
                'Masuk untuk melanjutkan!',
                style: GoogleTextStyle.fw600.copyWith(
                  fontSize: 22.sp,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
              const FormSignInComponent(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.forgotPasswordRoute);
                    },
                    child: const Text('Lupa Password?'),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              ElevatedButton(
                style: EvelatedButtonStyle.mainRounded,
                onPressed: () => SigInController.to.validateForm(context),
                child: Text(
                  "Masuk",
                  style: GoogleTextStyle.fw800.copyWith(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40.h),
              GoogleAuthButton(
                onPressed: () async {
                  SigInController.to.signInWithGoogle(context);
                },
                style: AuthButtonStyle(
                  buttonType: AuthButtonType.icon,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
