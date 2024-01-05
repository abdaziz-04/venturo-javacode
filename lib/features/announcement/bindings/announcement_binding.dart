import 'package:get/get.dart';
    import 'package:diet_nyaman_app/features/announcement/controllers/announcement_controller.dart';
    class AnnouncementBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(AnnouncementController());
      }
    }
    