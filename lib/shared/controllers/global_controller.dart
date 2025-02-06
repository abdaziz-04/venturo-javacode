import 'dart:io';

import 'package:get/get.dart';

import '../../constants/cores/api/api_constant.dart';

class GlobalController extends GetxController {
  static GlobalController get to => Get.find();
  var isConnect = true.obs;
  var baseUrl = ApiConstant.production;
  var isStaging = false.obs;

  Future<void> checkConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
        isConnect.value = true;
      }
    } on SocketException catch (_) {
      print('not connected');
      isConnect.value = false;
    }
  }
}
