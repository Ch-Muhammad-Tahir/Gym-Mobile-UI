import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_button.dart';
import 'package:gym_ui/common_widgets/custom_text.dart';
import 'package:gym_ui/presentation/sign_up_screen/widgets/email_text_field.dart';
import 'package:gym_ui/presentation/sign_up_screen/widgets/password_text_field.dart';
import 'package:gym_ui/presentation/sign_up_screen/widgets/user_name_textfield.dart';
import 'package:gym_ui/utilities/app_string.dart';

import '../../common_widgets/side_animation.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.055),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppBar().preferredSize.height,
            ),
            _backButtonWidget(context),
            SizedBox(
              height: size.width * 0.03,
            ),
            SideAnimation(
              direction: SlideDirection.down,
              child: Align(
                alignment: Alignment.center,
                child: MyText(
                  text: AppStrings.createAccount,
                  fontSize: size.width * 0.07,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: size.width * 0.28,
            ),
            const UserNameTextField(),
            const EmailTextField(),
            const SignUpPasswordTextField(),
            const Spacer(),
            SideAnimation(
              direction: SlideDirection.up,
              child: CustomButton(
                text: AppStrings.register,
                onTap: () {},
              ),
            ),
            SizedBox(
              height: size.width * 0.1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _backButtonWidget(BuildContext context) {
    return SideAnimation(
      direction: SlideDirection.left,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.keyboard_backspace_outlined,
          size: 30,
        ),
      ),
    );
  }
}
