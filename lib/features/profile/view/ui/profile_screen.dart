import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/widgets/tile_option_widget.dart';
import '../../constants/profile_assets_constant.dart';
import '../../controllers/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final assetsConstant = ProfileAssetsConstant();
  final ProfileController pc = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profile Screen'),
            Divider(),
            TileOptionWidget(
              title: 'Privacy Policy'.tr,
              message: 'Here',
              onTap: ProfileController.to.privacyPolicyWebView,
            ),
            Divider(),
            Obx(() {
              return ListTile(
                title: Text(pc.productName.value.isNotEmpty
                    ? 'Product Name: ${pc.productName.value}'
                    : 'Loading...'),
                subtitle: Text(pc.apiLevel.value.isNotEmpty
                    ? 'Android Version: ${pc.apiLevel.value}'
                    : 'Loading...'),
              );
            })
          ],
        ),
      ),
    );
  }
}
