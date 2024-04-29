import 'package:flutter/material.dart';
import 'package:gym_ui/presentation/home_screen/widgets/daliy_workout_tile.dart';
import 'package:gym_ui/utilities/app_constants.dart';

class DailyWorkOutListView extends StatelessWidget {
  const DailyWorkOutListView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.width * 0.37,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return DailyWorkOutTile(
              object: AppConstants.workoutList[index],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: AppConstants.workoutList.length),
    );
  }
}
