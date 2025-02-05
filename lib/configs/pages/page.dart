import 'package:get/get.dart';
import 'package:venturo_core/configs/routes/route.dart';
import 'package:venturo_core/features/profile/view/ui/profile_screen.dart';
import 'package:venturo_core/features/splash/bindings/splash_binding.dart';
import 'package:venturo_core/features/splash/view/ui/splash_screen.dart';

import '../../features/profile/bindings/profile_binding.dart';
import '../../features/profile/view/components/privacy_policy_view.dart';

abstract class Pages {
  static final pages = [
    GetPage(
        name: Routes.splashRoute,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
      name: Routes.profileRoute,
      page: () => ProfileScreen(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.privacyPolicy,
      page: () => const PrivacyPolicyView(),
    )
  ];
}
