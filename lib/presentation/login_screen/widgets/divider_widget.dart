import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_text.dart';
import 'package:gym_ui/common_widgets/fade_animation.dart';
import 'package:gym_ui/common_widgets/side_animation.dart';
import 'package:gym_ui/utilities/color_constant.dart';

class DivideWridget extends StatelessWidget {
  const DivideWridget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SideAnimation(
            direction: SlideDirection.left,
            child: Divider(
              color: ColorConstant.lightGrey,
              endIndent: 10,
            ),
          ),
        ),
        FadeAnimation(
          child: MyText(
            text: "or",
            color: ColorConstant.lightGrey,
          ),
        ),
        Expanded(
          child: SideAnimation(
            direction: SlideDirection.right,
            child: Divider(
              color: ColorConstant.lightGrey,
              indent: 10,
            ),
          ),
        ),
      ],
    );
    ;
  }
}
