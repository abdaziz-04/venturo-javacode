import 'package:get/get.dart';

class DasboardController extends GetxController {
  static DasboardController get to => Get.find();

  RxBool isLoading = RxBool(false);

  @override
  void onReady() async {
    // Get called after widget is rendered on the screen
    super.onReady();
  }

  /// Navigation bar
  RxInt tabIndex = RxInt(0);

  /// Change tab index
  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
