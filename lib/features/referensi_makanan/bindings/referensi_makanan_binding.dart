import 'package:get/get.dart';
    import 'package:diet_nyaman_app/features/referensi_makanan/controllers/referensi_makanan_controller.dart';
    class ReferensiMakananBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(ReferensiMakananController());
      }
    }
    