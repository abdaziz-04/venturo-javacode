import 'package:diet_nyaman_app/features/chat/models/chat_models.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ChatController extends GetxController {
  static ChatController get to => Get.find();
  TextEditingController ctrChatField = TextEditingController();
  RxList<Message> message = RxList(
    [
      Message(isMe: true, message: "Apakah Boleh Nanya ?", createdAt: "2023-12-20"),
      Message(isMe: true, message: "How ?", createdAt: "2023-12-20"),
      Message(isMe: false, message: "Mbolehh ?", createdAt: "2023-12-20"),
    ],
  );
}
