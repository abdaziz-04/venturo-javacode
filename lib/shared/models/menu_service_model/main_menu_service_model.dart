import 'package:diet_nyaman_app/utils/enums/main_menu_service_enum.dart';

import 'menu_service_model.dart';

class MainMenuServiceModel extends MenuServiceModel {
  final MainMenuServiceEnum servicesType;

  MainMenuServiceModel({
    required this.servicesType,
    required super.img,
    required super.title,
    required super.colorBegin,
    required super.colorEnd,
    super.onTap,
  }) {
    var temporaryOnTap = onTap;
    onTap = () {
      /// Do Something
      if (temporaryOnTap == null) {
        return;
      }

      temporaryOnTap();
      // if (kDebugMode) {
      // } else {
      //   var userData = QoinSaasSdk.accessUser.userData();
      //   if (userData != null) {
      //     temporaryOnTap();
      //   } else {
      //     Get.toNamed(AppRoutes.loginScreen);
      //   }
      // }
    };
  }
}
