import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_appbar.dart';
import 'package:gym_ui/common_widgets/custom_text_field.dart';

import 'package:gym_ui/presentation/login_screen/widgets/login_text_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(
        title: "",
      ),
      body: Column(
        children: [
          const LoginTextSection(),
          CustomTextField(controller: TextEditingController())
        ],
      ),
    );
  }
}
