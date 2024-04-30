import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_text.dart';
import 'package:gym_ui/utilities/app_string.dart';

class TodayTargetWidget extends StatelessWidget {
  const TodayTargetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      // height: ,
      // width: ,
      padding: EdgeInsets.all(size.width * 0.04),
      decoration: BoxDecoration(
        color: Colors.amber.withOpacity(0.2),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: AppStrings.todayTarget,
                fontWeight: FontWeight.w500,
              ),
              MyText(
                text: AppStrings.running,
                fontSize: size.width * 0.07,
                fontWeight: FontWeight.w600,
              ),
              MyText(
                text: AppStrings.todayTarget,
                fontSize: size.width * 0.03,
                fontWeight: FontWeight.w500,
              ),
            ],
          )
        ],
      ),
    );
  }
}
