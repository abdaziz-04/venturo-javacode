import 'package:diet_nyaman_app/configs/routes/route.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();

  @override
  void onReady() {
    super.onReady();
    Get.offAllNamed(Routes.authRoute);
  }
}
