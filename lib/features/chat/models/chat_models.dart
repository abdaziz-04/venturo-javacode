import 'dart:convert';

ChatResponseModel chatResponseModelFromJson(String str) => ChatResponseModel.fromJson(json.decode(str));

String chatResponseModelToJson(ChatResponseModel data) => json.encode(data.toJson());

class ChatResponseModel {
  int? statusCode;
  String? message;
  List<Message>? data;

  ChatResponseModel({
    this.statusCode,
    this.message,
    this.data,
  });

  factory ChatResponseModel.fromJson(Map<String, dynamic> json) => ChatResponseModel(
        statusCode: json["status_code"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Message>.from(json["data"]!.map((x) => Message.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Message {
  bool? isMe;
  String? message;
  String? createdAt;

  Message({
    this.isMe,
    this.message,
    this.createdAt,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        isMe: json["is_me"],
        message: json["message"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "is_me": isMe,
        "message": message,
        "created_at": createdAt,
      };
}
