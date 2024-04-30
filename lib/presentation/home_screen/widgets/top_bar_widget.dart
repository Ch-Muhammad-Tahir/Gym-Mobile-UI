import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_text.dart';
import 'package:gym_ui/common_widgets/side_animation.dart';
import 'package:gym_ui/utilities/app_string.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: AppStrings.goodMorning,
              fontSize: size.width * 0.027,
              fontWeight: FontWeight.w400,
            ),
            MyText(
              text: AppStrings.readyToWorkOut,
              fontSize: size.width * 0.05,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        SideAnimation(
          direction: SlideDirection.right,
          child: CircleAvatar(
            radius: size.width * 0.06,
            backgroundColor: Colors.lime.shade200,
            child: Icon(
              Icons.person,
              size: size.width * 0.06,
            ),
          ),
        )
      ],
    );
  }
}
