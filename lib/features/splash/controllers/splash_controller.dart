import 'package:get/get.dart';
import 'package:venturo_core/features/sig_in/view/ui/sig_in_screen.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();
  @override
  void onInit() {
    navigateToProfile();

    super.onInit();
  }

  void navigateToProfile() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(SigIScreen());
    });
  }
}
