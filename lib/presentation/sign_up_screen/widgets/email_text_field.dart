import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym_ui/common_widgets/custom_text.dart';
import 'package:gym_ui/common_widgets/custom_text_field.dart';
import 'package:gym_ui/common_widgets/fade_animation.dart';
import 'package:gym_ui/utilities/app_string.dart';

class UserNameTextField extends StatelessWidget {
  const UserNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return FadeAnimation(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: MyText(
              text: AppStrings.userName,
              fontSize: size.width * 0.028,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            controller: TextEditingController(),
            fontSize: size.width * 0.03,
            hint: AppStrings.enterUserName,
          ),
          SizedBox(
            height: size.width * 0.03,
          ),
        ],
      ),
    );
  }
}
