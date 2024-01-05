import 'package:diet_nyaman_app/features/announcement/bindings/announcement_binding.dart';
import 'package:diet_nyaman_app/features/announcement/view/ui/announcement_screen.dart';
import 'package:diet_nyaman_app/features/announcement/view/ui/detail_announcement_screen.dart';
import 'package:diet_nyaman_app/features/auth/bindings/auth_binding.dart';
import 'package:diet_nyaman_app/features/auth/view/ui/auth_screen.dart';
import 'package:diet_nyaman_app/features/chat/bindings/chat_binding.dart';
import 'package:diet_nyaman_app/features/chat/view/ui/chat_screen.dart';
import 'package:diet_nyaman_app/features/chat/view/ui/detail_chat_screen.dart';
import 'package:diet_nyaman_app/features/dasboard/bindings/dasboard_binding.dart';
import 'package:diet_nyaman_app/features/dasboard/view/ui/dasboard_screen.dart';
import 'package:diet_nyaman_app/features/diet/bindings/diet_binding.dart';
import 'package:diet_nyaman_app/features/diet/view/ui/detail_diet_screen.dart';
import 'package:diet_nyaman_app/features/diet/view/ui/diet_screen.dart';
import 'package:diet_nyaman_app/features/home/bindings/home_binding.dart';
import 'package:diet_nyaman_app/features/home/view/ui/home_alternatif_screen.dart';
import 'package:diet_nyaman_app/features/home/view/ui/home_screen.dart';
import 'package:diet_nyaman_app/features/mindset/bindings/mindset_binding.dart';
import 'package:diet_nyaman_app/features/mindset/view/ui/mindset_screen.dart';
import 'package:diet_nyaman_app/features/olahraga/bindings/olahraga_binding.dart';
import 'package:diet_nyaman_app/features/olahraga/view/ui/olahraga_detail_screen.dart';
import 'package:diet_nyaman_app/features/olahraga/view/ui/olahraga_screen.dart';
import 'package:diet_nyaman_app/features/referensi_makanan/bindings/referensi_makanan_binding.dart';
import 'package:diet_nyaman_app/features/referensi_makanan/view/ui/referensi_makanan_screen.dart';
import 'package:diet_nyaman_app/features/tips/bindings/tips_binding.dart';
import 'package:diet_nyaman_app/features/tips/view/ui/tips_screen.dart';
import 'package:diet_nyaman_app/features/toko/bindings/toko_binding.dart';
import 'package:diet_nyaman_app/features/toko/view/ui/toko_detail_screen.dart';
import 'package:diet_nyaman_app/features/toko/view/ui/toko_screen.dart';
import 'package:get/get.dart';
import 'package:diet_nyaman_app/configs/routes/route.dart';
import 'package:diet_nyaman_app/features/splash/bindings/splash_binding.dart';
import 'package:diet_nyaman_app/features/splash/view/ui/splash_screen.dart';

abstract class Pages {
  static final pages = [
    GetPage(
      name: Routes.splashRoute,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.authRoute,
      page: () => AuthScreen(),
      binding: AuthBinding(),
    ),
    // GetPage(
    //   name: Routes.dasboardRoute,
    //   page: () => DasboardScreen(),
    //   binding: DasboardBinding(),
    // ),
    GetPage(
      name: Routes.dasboardRoute,
      page: () => DasboardScreen(),
      binding: DasboardBinding(),
    ),
    GetPage(
      name: Routes.announcementRoute,
      page: () => AnnouncementScreen(),
      binding: AnnouncementBinding(),
    ),
    GetPage(
      name: Routes.detailAnnouncementRoute,
      page: () => const DetailAnnouncementScreen(),
    ),
    GetPage(
      name: Routes.dietRoute,
      page: () => DietScreen(),
      binding: DietBinding(),
    ),
    GetPage(
      name: Routes.olahragaRoute,
      page: () => OlahragaScreen(),
      binding: OlahragaBinding(),
    ),
    GetPage(
      name: Routes.olahragaDetailRoute,
      page: () => const OlahragaDetailScreen(),
    ),
    GetPage(
      name: Routes.referensiMakananRoute,
      page: () => ReferensiMakananScreen(),
      binding: ReferensiMakananBinding(),
    ),
    GetPage(
      name: Routes.mindsetRoute,
      page: () => MindsetScreen(),
      binding: MindsetBinding(),
    ),
    GetPage(
      name: Routes.tokoDetailRoute,
      page: () => const TokoDetailScreen(),
    ),
    GetPage(
      name: Routes.tipsRoute,
      page: () => TipsScreen(),
      binding: TipsBinding(),
    ),
    GetPage(
      name: Routes.detailDietRoute,
      page: () => const DetailDietScreen(),
    ),
    GetPage(
      name: Routes.detailChatRoute,
      page: () => const DetailChastScreen(),
    ),
  ];
}
