import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService extends GetxService {
  FirebaseService._();

  static final FirebaseService firebaseService = FirebaseService._();

  factory FirebaseService() {
    return firebaseService;
  }

  static FirebaseService get to => Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
