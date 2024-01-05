import 'package:get/get.dart';
    import 'package:diet_nyaman_app/features/toko/controllers/toko_controller.dart';
    class TokoBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(TokoController());
      }
    }
    