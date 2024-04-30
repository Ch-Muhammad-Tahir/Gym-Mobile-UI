import 'package:flutter/material.dart';
import 'package:gym_ui/common_widgets/custom_text.dart';
import 'package:gym_ui/utilities/app_constants.dart';

class WorkOutProgramListView extends StatefulWidget {
  const WorkOutProgramListView({super.key});

  @override
  State<WorkOutProgramListView> createState() => _WorkOutProgramListViewState();
}

class _WorkOutProgramListViewState extends State<WorkOutProgramListView> {
  bool isChange = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.width * 0.12,
      child: ListView.separated(
        key: UniqueKey(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // setState(() {
              //   isChange = !isChange;
              // });
            },
            child: _workoutProgramTileView(
                size, AppConstants.workoutProgramList[index], isChange),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: AppConstants.workoutProgramList.length,
        shrinkWrap: true,
      ),
    );
  }

  Widget _workoutProgramTileView(var size, String title1, bool isChange1) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.07, vertical: size.width * 0.04),
      decoration: BoxDecoration(
          color:
              title1 == "All Type" ? Colors.blueGrey.withOpacity(0.12) : null,
          borderRadius: BorderRadius.circular(45),
          border: Border.all(color: Colors.black, width: 0.1)),
      child: MyText(
        text: title1,
        fontSize: size.width * 0.027,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
