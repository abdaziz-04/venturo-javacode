import 'package:diet_nyaman_app/configs/routes/route.dart';
import 'package:diet_nyaman_app/features/home/constants/home_assets_constant.dart';
import 'package:diet_nyaman_app/features/home/constants/home_svgs_constant.dart';
import 'package:diet_nyaman_app/shared/models/menu_service_model/main_menu_service_model.dart';
import 'package:diet_nyaman_app/utils/enums/main_menu_service_enum.dart';
import 'package:get/get.dart';

/// * Function untuk mendapatkan Menu Dari Sebuah Enum
class GetServiceMenuFunc {
  static MainMenuServiceModel specifiedMainMenu(MainMenuServiceEnum service) {
    switch (service) {
      case MainMenuServiceEnum.download:
        return MainMenuServiceModel(
          servicesType: service,
          title: 'Download\nCenter',
          img: HomeAssetsConstant().download,
          colorBegin: "#5B75FF",
          colorEnd: "#27CBFF",
          onTap: () {
            Get.toNamed(Routes.chatRoute);
          },
        );
      case MainMenuServiceEnum.video:
        return MainMenuServiceModel(
          servicesType: service,
          title: 'Video\nTutorial',
          img: HomeAssetsConstant().videoTutorial,
          colorBegin: "#5B75FF",
          colorEnd: "#27CBFF",
          onTap: () {
            Get.toNamed(Routes.chatRoute);
          },
        );
      case MainMenuServiceEnum.diet:
        return MainMenuServiceModel(
          servicesType: service,
          title: 'Diet',
          img: HomeAssetsConstant().produk1,
          colorBegin: "#FF3D00",
          colorEnd: "#FF806C",
          onTap: () {
            Get.toNamed(Routes.dietRoute);
          },
        );
      case MainMenuServiceEnum.olahraga:
        return MainMenuServiceModel(
          servicesType: service,
          title: 'Olahraga',
          img: HomeAssetsConstant().produk2,
          colorBegin: "#5127DD",
          colorEnd: "#FF6091",
          onTap: () {
            Get.toNamed(Routes.olahragaRoute);
          },
        );
      case MainMenuServiceEnum.mindset:
        return MainMenuServiceModel(
          servicesType: service,
          title: 'Mindset',
          img: HomeAssetsConstant().produk3,
          colorBegin: "#7B29FF",
          colorEnd: "#4518DB",
          onTap: () {
            Get.toNamed(Routes.mindsetRoute);
          },
        );
      case MainMenuServiceEnum.referensi:
        return MainMenuServiceModel(
          servicesType: service,
          title: 'Referensi\nMakanan',
          img: HomeAssetsConstant().produk5,
          colorBegin: "#2C8693",
          colorEnd: "#49E5B6",
          onTap: () {
            Get.toNamed(Routes.referensiMakananRoute);
          },
        );
      case MainMenuServiceEnum.tips:
        return MainMenuServiceModel(
          servicesType: service,
          title: 'Tips',
          img: HomeAssetsConstant().produk4,
          colorBegin: "#161616",
          colorEnd: "#C9C9C9",
          onTap: () {
            Get.toNamed(Routes.tipsRoute);
          },
        );
      default:
        return MainMenuServiceModel(
          servicesType: service,
          title: '',
          img: "",
          colorBegin: "",
          colorEnd: "",
          // isActive: true,
          onTap: () {},
        );
    }

    // switch (service) {
    //   case MainMenuServiceEnum.chat:
    //     return MainMenuServiceModel(
    //       servicesType: service,
    //       title: 'Chat',
    //       img: HomeSvgsConstant().chatSvg,
    //       colorBegin: "#5B75FF",
    //       colorEnd: "#27CBFF",
    //       onTap: () {
    //         Get.toNamed(Routes.chatRoute);
    //       },
    //     );
    //   case MainMenuServiceEnum.diet:
    //     return MainMenuServiceModel(
    //       servicesType: service,
    //       title: 'Diet',
    //       img: HomeSvgsConstant().foodSharpSvg,
    //       colorBegin: "#FF3D00",
    //       colorEnd: "#FF806C",
    //       onTap: () {
    //         Get.toNamed(Routes.dietRoute);
    //       },
    //     );
    //   case MainMenuServiceEnum.olahraga:
    //     return MainMenuServiceModel(
    //       servicesType: service,
    //       title: 'Olahraga',
    //       img: HomeSvgsConstant().gymSvg,
    //       colorBegin: "#5127DD",
    //       colorEnd: "#FF6091",
    //       onTap: () {
    //         Get.toNamed(Routes.olahragaRoute);
    //       },
    //     );
    //   case MainMenuServiceEnum.mindset:
    //     return MainMenuServiceModel(
    //       servicesType: service,
    //       title: 'Mindset',
    //       img: HomeSvgsConstant().fluentBrainSvg,
    //       colorBegin: "#7B29FF",
    //       colorEnd: "#4518DB",
    //       onTap: () {
    //         Get.toNamed(Routes.mindsetRoute);
    //       },
    //     );
    //   case MainMenuServiceEnum.referensi:
    //     return MainMenuServiceModel(
    //       servicesType: service,
    //       title: 'Referensi',
    //       img: HomeSvgsConstant().foodTurkeySvg,
    //       colorBegin: "#2C8693",
    //       colorEnd: "#49E5B6",
    //       onTap: () {
    //         Get.toNamed(Routes.referensiMakananRoute);
    //       },
    //     );
    //   case MainMenuServiceEnum.toko:
    //     return MainMenuServiceModel(
    //       servicesType: service,
    //       title: 'Toko',
    //       img: HomeSvgsConstant().solarShopSvg,
    //       colorBegin: "#FF5C00",
    //       colorEnd: "#F3FF6A",
    //       onTap: () {
    //         Get.toNamed(Routes.tokoRoute);
    //       },
    //     );
    //   case MainMenuServiceEnum.tips:
    //     return MainMenuServiceModel(
    //       servicesType: service,
    //       title: 'Tips',
    //       img: HomeSvgsConstant().lightbulbSvg,
    //       colorBegin: "#161616",
    //       colorEnd: "#C9C9C9",
    //       onTap: () {
    //         Get.toNamed(Routes.tipsRoute);
    //       },
    //     );
    //   default:
    //     return MainMenuServiceModel(
    //       servicesType: service,
    //       title: '',
    //       img: "",
    //       colorBegin: "",
    //       colorEnd: "",
    //       // isActive: true
    //       onTap: () {},
    //     );
    // }
  }
}
