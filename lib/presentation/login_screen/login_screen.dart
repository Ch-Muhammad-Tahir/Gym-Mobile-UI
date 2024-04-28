import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_button.dart';
import 'package:gym_ui/common_widgets/fade_animation.dart';
import 'package:gym_ui/common_widgets/side_animation.dart';
import 'package:gym_ui/presentation/home_screen/home_screen.dart';
import 'package:gym_ui/presentation/login_screen/widgets/google_linkedIn_appleId_login_buttons.dart';
import 'package:gym_ui/presentation/login_screen/widgets/login_text_field.dart';
import 'package:gym_ui/presentation/login_screen/widgets/login_text_section.dart';
import 'package:gym_ui/presentation/login_screen/widgets/password_text_field.dart';
import 'package:gym_ui/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:gym_ui/utilities/app_string.dart';
import 'package:gym_ui/utilities/color_constant.dart';
import 'package:gym_ui/utilities/helper_function.dart';
import 'widgets/divider_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.055),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: AppBar().preferredSize.height + size.width * 0.15,
            ),
            const LoginTextSection(),
            SizedBox(
              height: size.width * 0.1,
            ),
            const LoginTextField(),
            SizedBox(
              height: size.width * 0.05,
            ),
            const PasswordTextField(),
            SizedBox(
              height: size.width * 0.08,
            ),
            const DivideWridget(),
            SizedBox(
              height: size.width * 0.08,
            ),
            const FadeAnimation(child: GoogleLinkedInAppIdLoginButtons()),
            const Spacer(),
            _registerButton(context),
            SizedBox(
              height: size.width * 0.03,
            ),
            SideAnimation(
              direction: SlideDirection.up,
              child: CustomButton(
                text: "Login",
                onTap: () {
                  navigateToHomeScree(context);
                },
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

  Widget _registerButton(BuildContext context) {
    return FadeAnimation(
      child: Align(
        alignment: Alignment.center,
        child: RichText(
          text: TextSpan(
              style: TextStyle(
                color: ColorConstant.grey,
                fontWeight: FontWeight.w300,
              ),
              text: AppStrings.dontHaveAccount,
              children: [
                TextSpan(
                  text: AppStrings.register,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).push(HelperFunction.createRoute(
                          page: const SignUpScreen()));
                    },
                  style: TextStyle(
                      color: ColorConstant.lightBlack,
                      fontWeight: FontWeight.w500),
                )
              ]),
        ),
      ),
    );
  }

  void navigateToHomeScree(BuildContext context) {
    Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => const HomeScreen(),
        ));
  }
}
