import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_text.dart';
import 'package:gym_ui/utilities/app_string.dart';
import 'package:gym_ui/utilities/color_constant.dart';

class LoginTextSection extends StatelessWidget {
  const LoginTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        MyText(
          text: AppStrings.letSignInYou,
          fontSize: size.width * 0.07,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: size.width * 0.03,
        ),
        MyText(
          text: AppStrings.welcomBack,
          fontSize: size.width * 0.06,
          fontWeight: FontWeight.w300,
          color: ColorConstant.lightBlack,
        ),
        SizedBox(
          height: size.width * 0.03,
        ),
        MyText(
            text: AppStrings.youHaveBeenMissed,
            fontSize: size.width * 0.06,
            fontWeight: FontWeight.w300,
            color: ColorConstant.lightBlack),
      ],
    );
  }
}
