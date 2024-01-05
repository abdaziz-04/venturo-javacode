import 'package:get/get.dart';
    import 'package:diet_nyaman_app/features/chat/controllers/chat_controller.dart';
    class ChatBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(ChatController());
      }
    }
    