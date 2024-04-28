import 'package:flutter/material.dart';
import 'package:gym_ui/presentation/login_screen/login_screen.dart';
import 'package:gym_ui/utilities/app_assets.dart';

import '../../common_widgets/custom_Tween_anmation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
            fullscreenDialog: true,
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: TweenAnimation(
        duration: const Duration(seconds: 4),
        child: Image.asset(
          AppAssets.splashlogo,
          height: size.width * 0.6,
          width: size.width * 0.6,
        ),
      )),
    );
  }
}
