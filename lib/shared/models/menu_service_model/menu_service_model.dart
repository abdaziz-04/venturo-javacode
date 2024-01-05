import 'package:flutter/material.dart';

abstract class MenuServiceModel {
  final String img;
  final String title;
  final String colorBegin;
  final String colorEnd;
  Function()? onTap;

  MenuServiceModel({
    required this.img,
    required this.title,
    required this.colorBegin,
    required this.colorEnd,
    this.onTap,
  });
}
