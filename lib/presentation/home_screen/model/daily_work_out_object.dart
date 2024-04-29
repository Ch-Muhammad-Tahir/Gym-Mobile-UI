import 'package:flutter/material.dart';

class DailyWorkOutObject {
  final String image;
  final String title;
  final String data;
  final String notation;
  final Color color;

  DailyWorkOutObject(
      {required this.image,
      required this.title,
      required this.color,
      required this.data,
      required this.notation});
}
