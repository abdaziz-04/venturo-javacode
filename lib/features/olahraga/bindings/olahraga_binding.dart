import 'package:get/get.dart';
    import 'package:diet_nyaman_app/features/olahraga/controllers/olahraga_controller.dart';
    class OlahragaBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(OlahragaController());
      }
    }
    