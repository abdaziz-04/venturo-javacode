import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();
  @override
  void onInit() {
    navigateToProfile();

    super.onInit();
  }

  void navigateToProfile() {
    Future.delayed(Duration(seconds: 2), () {
      Get.toNamed('/profile');
    });
  }
}
