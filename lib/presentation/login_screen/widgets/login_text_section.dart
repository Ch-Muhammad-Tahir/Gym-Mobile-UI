import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_text.dart';
import 'package:gym_ui/common_widgets/fade_animation.dart';
import 'package:gym_ui/common_widgets/side_animation.dart';
import 'package:gym_ui/utilities/app_string.dart';
import 'package:gym_ui/utilities/color_constant.dart';

class LoginTextSection extends StatelessWidget {
  const LoginTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SideAnimation(
      direction: SlideDirection.down,
      duration: const Duration(milliseconds: 1000),
      child: FadeAnimation(
        duration: const Duration(milliseconds: 1200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyText(
              text: AppStrings.letSignInYou,
              fontSize: size.width * 0.075,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: size.width * 0.03,
            ),
            MyText(
              text: AppStrings.welcomBack,
              fontSize: size.width * 0.055,
              fontWeight: FontWeight.w300,
              color: ColorConstant.grey,
            ),
            SizedBox(
              height: size.width * 0.03,
            ),
            MyText(
                text: AppStrings.youHaveBeenMissed,
                fontSize: size.width * 0.055,
                fontWeight: FontWeight.w300,
                color: ColorConstant.grey),
          ],
        ),
      ),
    );
  }
}
