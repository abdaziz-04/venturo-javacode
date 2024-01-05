import 'package:get/get.dart';
    import 'package:diet_nyaman_app/features/profile/controllers/profile_controller.dart';
    class ProfileBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(ProfileController());
      }
    }
    