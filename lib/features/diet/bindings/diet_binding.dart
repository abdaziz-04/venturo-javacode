import 'package:get/get.dart';
    import 'package:diet_nyaman_app/features/diet/controllers/diet_controller.dart';
    class DietBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(DietController());
      }
    }
    