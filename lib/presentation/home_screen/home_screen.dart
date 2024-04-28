import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: MyAppBar(
        automaticallyImplyLeading: false,
        title: "Home Screen",
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
