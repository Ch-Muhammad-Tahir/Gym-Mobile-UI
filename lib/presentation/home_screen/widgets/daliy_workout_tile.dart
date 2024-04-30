import 'package:flutter/material.dart';
import 'package:gym_ui/presentation/home_screen/model/daily_work_out_object.dart';

import '../../../common_widgets/custom_text.dart';

class DailyWorkOutTile extends StatelessWidget {
  final DailyWorkOutObject object;
  const DailyWorkOutTile({
    super.key,
    required this.object,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.width * 0.35,
      width: size.width * 0.3,
      decoration: BoxDecoration(
          color: object.color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(color: object.color.withOpacity(0.25), width: 0.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(size.width * 0.027),
            height: size.width * 0.11,
            width: size.width * 0.11,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              object.image,
              color: object.color,
              height: size.width * 0.1,
              width: size.width * 0.1,
            ),
          ),
          SizedBox(
            height: size.width * 0.025,
          ),
          MyText(
            text: object.title,
            fontSize: size.width * 0.027,
            fontWeight: FontWeight.w400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: object.data,
                fontSize: size.width * 0.035,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                width: size.width * 0.01,
              ),
              MyText(
                text: object.notation,
                fontSize: size.width * 0.025,
                fontWeight: FontWeight.w500,
              ),
            ],
          )
        ],
      ),
    );
  }
}
