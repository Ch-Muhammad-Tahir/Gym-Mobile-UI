import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(
        title: "Login",
      ),
      body: Column(),
    );
  }
}
