import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_appbar.dart';

import 'widgets/top_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            SizedBox(
              height: AppBar().preferredSize.height,
            ),
            const TopBarWidget()
          ],
        ),
      ),
    );
  }
}
