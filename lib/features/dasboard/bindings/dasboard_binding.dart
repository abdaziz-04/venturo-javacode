import 'package:diet_nyaman_app/features/chat/controllers/chat_controller.dart';
import 'package:get/get.dart';
import 'package:diet_nyaman_app/features/dasboard/controllers/dasboard_controller.dart';

class DasboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DasboardController());
    Get.put(ChatController());
  }
}
