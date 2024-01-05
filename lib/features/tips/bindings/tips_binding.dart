import 'package:get/get.dart';
    import 'package:diet_nyaman_app/features/tips/controllers/tips_controller.dart';
    class TipsBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(TipsController());
      }
    }
    