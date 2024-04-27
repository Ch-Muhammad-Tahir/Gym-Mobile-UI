import 'package:flutter/material.dart';
import 'package:gym_ui/utilities/app_assets.dart';
import 'package:gym_ui/utilities/color_constant.dart';

class GoogleLinkedInAppIdLoginButtons extends StatelessWidget {
  const GoogleLinkedInAppIdLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _loginImageButton(AppAssets.googleIcon),
        _loginImageButton(AppAssets.appleIcon),
        _loginImageButton(AppAssets.facboolLogo),
      ],
    );
  }

  Widget _loginImageButton(String image) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 0.4, color: ColorConstant.lightBlack),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Image.asset(
        image,
        height: 35,
        width: 35,
      ),
    );
  }
}
