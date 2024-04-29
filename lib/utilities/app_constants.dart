import 'package:flutter/material.dart';
import 'package:gym_ui/utilities/app_assets.dart';

import '../presentation/home_screen/model/daily_work_out_object.dart';

class AppConstants {
  static List<DailyWorkOutObject> workoutList = [
    DailyWorkOutObject(
        image: AppAssets.heart,
        title: "Heart rate",
        color: Colors.red,
        data: "78",
        notation: "BPM"),
    DailyWorkOutObject(
        image: AppAssets.dumble,
        title: "Strength",
        color: Colors.amber,
        data: "40",
        notation: "Mpa"),
    DailyWorkOutObject(
        image: AppAssets.glass,
        title: "Water",
        color: Colors.blue,
        data: "30",
        notation: "ml"),
    DailyWorkOutObject(
        image: AppAssets.muscle,
        title: "Workout",
        color: Colors.cyanAccent,
        data: "70",
        notation: "Rpa"),
  ];

  static List<String> workoutProgramList = [
    "All Type",
    "Cardio",
    "Lower body",
    "Biceps",
    "Chest",
    "Triceps",
    "Legs",
    "Shoulders"
  ];
}
