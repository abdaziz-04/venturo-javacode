import 'package:get/get.dart';
    import 'package:diet_nyaman_app/features/mindset/controllers/mindset_controller.dart';
    class MindsetBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(MindsetController());
      }
    }
    