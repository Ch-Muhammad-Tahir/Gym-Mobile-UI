import 'package:flutter/material.dart';
import 'package:gym_ui/presentation/login_screen/login_screen.dart';
import 'package:gym_ui/utilities/helper_function.dart';

import 'presentation/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GYM UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: GestureDetector(
          onTap: () {
            HelperFunction.hideKeyboard();
          },
          child: const SplashScreen()),
    );
  }
}
