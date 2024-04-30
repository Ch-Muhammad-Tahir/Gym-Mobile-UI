import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_text.dart';
import 'package:gym_ui/presentation/home_screen/widgets/daily_workout_list_view.dart';
import 'package:gym_ui/utilities/app_string.dart';

import 'widgets/today_target.dart';
import 'widgets/top_bar_widget.dart';
import 'widgets/workout_program_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppBar().preferredSize.height,
            ),
            const TopBarWidget(),
            SizedBox(
              height: size.width * 0.04,
            ),
            const DailyWorkOutListView(),
            SizedBox(
              height: size.width * 0.04,
            ),
            const TodayTargetWidget(),
            MyText(
              text: AppStrings.workoutProgram,
              fontSize: size.width * 0.045,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: size.width * 0.02,
            ),
            const WorkOutProgramListView()
          ],
        ),
      ),
    );
  }
}
